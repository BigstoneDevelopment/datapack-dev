#!/usr/bin/env node
import path from "path";
import fs, { promises } from "fs";
import { fs as fs$1 } from "memfs";
import AdmZip from "adm-zip";
import https from "https";
import { Command } from "commander";
const RESET = "\x1B[0m";
const BOLD = "\x1B[1m";
const hexToRgb = (hex) => {
  const bigint = parseInt(hex.slice(1), 16);
  const r = bigint >> 16 & 255;
  const g = bigint >> 8 & 255;
  const b = bigint & 255;
  return [r, g, b];
};
const hexToAnsi = (hex, type = "fg") => {
  const [r, g, b] = hexToRgb(hex);
  const code = type === "bg" ? 48 : 38;
  return `\x1B[${code};2;${r};${g};${b}m`;
};
const colors = {
  tagBg: "#45464F",
  tagText: "#DAAA95",
  info: "#58A6FF",
  warn: "#FFD33D",
  error: "#FF6A6A",
  success: "#3FB950",
  debug: "#B392F0",
  gray: "#a7a7a7ff"
};
const TAG_BG = hexToAnsi(colors.tagBg, "bg");
const TAG_FG = hexToAnsi(colors.tagText, "fg");
const INFO_FG = hexToAnsi(colors.info, "fg");
const WARN_FG = hexToAnsi(colors.warn, "fg");
const ERROR_FG = hexToAnsi(colors.error, "fg");
const SUCCESS_FG = hexToAnsi(colors.success, "fg");
const DEBUG_FG = hexToAnsi(colors.debug, "fg");
const GRAY_FG = hexToAnsi(colors.gray, "fg");
const tag = `${TAG_BG}${TAG_FG}${BOLD} DPM ${RESET}`;
const pad = `${GRAY_FG}›${RESET}`;
const timers = /* @__PURE__ */ new Map();
const log = {
  info: (...msg) => console.log(`${tag} ${pad} ${INFO_FG}${msg.join(" ")}${RESET}`),
  warn: (...msg) => console.log(`${tag} ${pad} ${WARN_FG}${msg.join(" ")}${RESET}`),
  error: (...msg) => console.error(`${tag} ${pad} ${ERROR_FG}${msg.join(" ")}${RESET}`),
  success: (...msg) => console.log(`${tag} ${pad} ${SUCCESS_FG}${msg.join(" ")}${RESET}`),
  debug: (...msg) => {
    if (process.env.DEBUG === "true" || process.argv.includes("--debug")) {
      console.log(`${tag} ${pad} ${DEBUG_FG}${msg.join(" ")}${RESET}`);
    }
  },
  timeStart: (label = "default") => {
    timers.set(label, process.hrtime.bigint());
  },
  timeEnd: (label = "default", successMsg) => {
    const start = timers.get(label);
    if (!start) return log.warn(`Timer '${label}' not found.`);
    const end = process.hrtime.bigint();
    const durationMs = Number(end - start) / 1e6;
    const durationSec = (durationMs / 1e3).toFixed(2);
    const msg = successMsg ? `${successMsg} in ${durationSec}s` : `Finished '${label}' in ${durationSec}s`;
    log.success(msg);
    timers.delete(label);
  },
  line: () => console.log(""),
  divider: () => console.log(`${GRAY_FG}────────────────────────────${RESET}`)
};
function findConfig(startDir = process.cwd()) {
  let currentDir = path.resolve(startDir);
  while (true) {
    const configPath = path.join(currentDir, "dpm.json");
    if (fs.existsSync(configPath)) return configPath;
    const parentDir = path.dirname(currentDir);
    if (parentDir === currentDir) break;
    currentDir = parentDir;
  }
  return null;
}
async function copyRecursive(fs2, src, dest) {
  await fs2.mkdir(dest, { recursive: true });
  const entries = await fs2.readdir(src, { withFileTypes: true });
  await Promise.all(entries.map(async (entry) => {
    const srcPath = path.join(src, entry.name);
    const destPath = path.join(dest, entry.name);
    if (entry.isDirectory()) {
      await copyRecursive(fs2, srcPath, destPath);
    } else {
      await fs2.copyFile(srcPath, destPath);
    }
  }));
}
async function exists(fs2, p) {
  try {
    await fs2.access(p);
    return true;
  } catch (e) {
    return false;
  }
}
const jsonCache = /* @__PURE__ */ new Map();
async function readJSONCached(fs2, filePath) {
  if (jsonCache.has(filePath)) return jsonCache.get(filePath);
  const data = await fs2.readFile(filePath, "utf8");
  const parsed = JSON.parse(data);
  jsonCache.set(filePath, parsed);
  return parsed;
}
const fsp = fs$1.promises;
class DPMBuilder {
  constructor(projectDir = process.cwd(), logs = true) {
    this.projectDir = projectDir;
    this.logs = logs;
    this.configPath = path.join(projectDir, "dpm.json");
    this.modulesDir = path.join(projectDir, "dpm_modules");
    this.licenseTexts = [];
    this.dataPaths = [];
    this.tickFunctions = [];
    this.loadFunctions = [];
    this.overlays = [];
    this.mcMeta = {};
    this.config = null;
  }
  async importFiles(realDir, memDir) {
    async function walk(rdir, vdir) {
      const items = await promises.readdir(rdir, { withFileTypes: true });
      for (const item of items) {
        const src = path.join(rdir, item.name);
        const dst = path.join(vdir, item.name);
        if (item.isDirectory()) {
          await fsp.mkdir(dst, { recursive: true });
          await walk(src, dst);
        } else {
          const data = await promises.readFile(src);
          await fsp.writeFile(dst, data);
        }
      }
    }
    await walk(realDir, memDir);
  }
  async exportFiles(dir, diskDir) {
    async function walk(vdir, rdir) {
      const items = await fsp.readdir(vdir, { withFileTypes: true });
      for (const item of items) {
        const src = path.join(vdir, item.name);
        const dst = path.join(rdir, item.name);
        if (item.isDirectory()) {
          await promises.mkdir(dst, { recursive: true });
          await walk(src, dst);
        } else {
          const data = await fsp.readFile(src);
          await promises.writeFile(dst, data);
        }
      }
    }
    await walk(dir, diskDir);
  }
  async loadConfig() {
    if (!await exists(promises, this.configPath)) {
      log.error("No dpm.json found in", this.projectDir);
      process.exit(1);
    }
    this.config = await readJSONCached(promises, this.configPath);
    this.buildDir = path.resolve(this.projectDir, this.config.buildPath || "./build");
    this.datapackSrc = path.resolve(this.projectDir, this.config.datapackPath || "./src");
  }
  async resetBuild() {
    if (await exists(promises, this.buildDir)) await promises.rm(this.buildDir, { recursive: true, force: true });
  }
  async parseProjectBase() {
    if (this.logs) log.info("Parsing project datapack...");
    const meta = await readJSONCached(fsp, "/build/pack.mcmeta");
    if (meta) this.mcMeta = meta;
    else throw new Error("Pack.mcmeta not found");
    if (this.config.tick) this.tickFunctions = [
      ...this.tickFunctions,
      ...this.config.tick
    ];
    if (this.config.load) this.loadFunctions = [
      ...this.loadFunctions,
      ...this.config.load
    ];
    const licensePath = path.resolve(this.projectDir, this.config.licensePath || "./LICENSE.txt");
    if (await exists(fsp, licensePath)) {
      const licenseText = await fsp.readFile(licensePath, { encoding: "utf8" });
      const detailedText = `
         


----- [From Datapack] -----

${licenseText}`;
      this.licenseTexts.push(detailedText);
    }
  }
  async mergeDependencies() {
    const deps = this.config.dependencies || [];
    if (deps.length === 0) {
      if (this.logs) log.warn("No dependencies found in dpm.json.");
      return [];
    }
    if (!await exists(promises, this.modulesDir)) {
      if (this.logs) log.error("No dependencies installed from dpm.json.");
      return process.exit();
    }
    await this.importFiles(this.modulesDir, "/dpm_modules");
    if (this.logs) log.info(`Merging ${deps.length} dependencies...`);
    await Promise.all(deps.map((depOrig) => this.processDependency(depOrig)));
  }
  async processDependency(depOrig) {
    const parts = depOrig.replace(/^@/, "").split("/");
    let [user, repo, branch = "main"] = parts;
    if (branch == "") branch = "main";
    if (!user || !repo) {
      log.error(`Invalid package format: ${depOrig}`);
      return;
    }
    const dep = `${user}/${repo}/${branch}`;
    const depName = dep.replace(/[^\w.-]/g, "_");
    const depPath = path.join("/dpm_modules", depName);
    if (!await exists(fsp, depPath)) {
      log.warn(`Dependency not found: ${dep}`);
      return;
    }
    const depConfigPath = path.join(depPath, "dpm-package.json");
    if (!await exists(fsp, depConfigPath)) {
      log.warn(`Invalid DPM package (missing dpm-package.json): ${dep}`);
      return;
    }
    const depConfig = await readJSONCached(fsp, depConfigPath);
    if (depConfig.tick) this.tickFunctions = [
      ...this.tickFunctions,
      ...depConfig.tick
    ];
    if (depConfig.load) this.loadFunctions = [
      ...this.loadFunctions,
      ...depConfig.load
    ];
    const depBase = path.join(depPath, depConfig.base || "./datapack");
    const depBuildPath = path.join("/build", depName);
    const depDataPath = path.join(depBuildPath, "data");
    if (!await exists(fsp, depBase)) {
      log.warn(`Invalid DPM package (missing datapack path): ${dep}`);
      return;
    }
    await fsp.mkdir(depBuildPath, { recursive: true });
    await copyRecursive(fsp, depBase, depDataPath);
    this.dataPaths.push(depDataPath);
    this.overlays.push({
      range: depConfig.supportedVersions || "*",
      directory: depName
    });
    if (depConfig.overlays) {
      for await (const [key, overlayPath] of Object.entries(depConfig.overlays)) {
        const folderName = path.basename(path.join(depPath, overlayPath));
        const destName = `${depName}_${folderName.replace(/\W+/g, "_")}`;
        const overlaySrc = path.join(depPath, overlayPath);
        const outPath = path.join("/build", destName);
        const outDataPath = path.join(outPath, "data");
        await fsp.mkdir(outPath, { recursive: true });
        await copyRecursive(fsp, overlaySrc, outDataPath);
        this.dataPaths.push(outDataPath);
      }
      Object.entries(depConfig.overlays).forEach(([key, directory]) => {
        const folderName = path.basename(path.join(depPath, directory));
        const destName = `${depName}_${folderName.replace(/\W+/g, "_")}`;
        this.overlays.push({
          range: key,
          directory: destName
        });
      });
    }
    const licensePath = path.resolve(depPath, depConfig.licensePath || "./LICENSE.txt");
    if (await exists(fsp, licensePath)) {
      const parts2 = dep.replace(/^@/, "").split("/");
      let [user2, repo2, branch2 = "main"] = parts2;
      if (branch2 == "") branch2 = "main";
      const repoUrl = `https://github.com/${user2}/${repo2}/tree/${branch2}/`;
      const licenseText = await fsp.readFile(licensePath, { encoding: "utf8" });
      const detailedText = `
         


----- [${dep}] ( ${repoUrl} ) -----

${licenseText}`;
      this.licenseTexts.push(detailedText);
    }
  }
  async mergePackMetaOverlays() {
    if (this.logs) log.info("Merging pack.mcmeta overlays...");
    let finalMeta = this.mcMeta || {};
    if (Array.isArray(finalMeta)) throw new Error("Invalid pack.mcmeta file");
    if (!finalMeta.overlays) finalMeta.overlays = {};
    if (!finalMeta.overlays.entries) finalMeta.overlays.entries = [];
    const MAX_SAFE_INTEGER = 999999;
    const entries = this.overlays.map(({ range, directory }) => {
      let minFormat = 0;
      let maxFormat = MAX_SAFE_INTEGER;
      let formats = {};
      if (range.startsWith("<=")) {
        maxFormat = parseInt(range.slice(2));
        formats = { min_inclusive: 0, max_inclusive: maxFormat };
      } else if (range.startsWith("<")) {
        maxFormat = parseInt(range.slice(1)) - 1;
        formats = { min_inclusive: 0, max_inclusive: maxFormat };
      } else if (range.startsWith(">=")) {
        minFormat = parseInt(range.slice(2));
        formats = { min_inclusive: minFormat, max_inclusive: MAX_SAFE_INTEGER };
      } else if (range.startsWith(">")) {
        minFormat = parseInt(range.slice(1)) + 1;
        formats = { min_inclusive: minFormat, max_inclusive: MAX_SAFE_INTEGER };
      } else if (range.includes("-")) {
        const [min, max] = range.split("-").map(Number);
        minFormat = min;
        maxFormat = max;
        formats = { min_inclusive: min, max_inclusive: max };
      } else if (range == "*") {
        formats = { min_inclusive: 0, max_inclusive: MAX_SAFE_INTEGER };
      } else {
        const format = parseInt(range);
        minFormat = maxFormat = format;
        formats = { min_inclusive: format, max_inclusive: format };
      }
      return {
        directory,
        min_format: minFormat,
        max_format: maxFormat,
        formats
      };
    });
    finalMeta.overlays.entries = [
      ...entries,
      ...finalMeta.overlays.entries
    ];
    this.mcMeta = finalMeta;
  }
  async createLoadTickFunctions() {
    for (const dataPath of this.dataPaths) {
      const tagFunctionPath2 = path.join(dataPath, "minecraft", "tags", "function");
      const loadTagPath2 = path.join(tagFunctionPath2, "load.json");
      const tickTagPath2 = path.join(tagFunctionPath2, "tick.json");
      if (await exists(fsp, loadTagPath2)) await fsp.rm(loadTagPath2);
      if (await exists(fsp, tickTagPath2)) await fsp.rm(tickTagPath2);
    }
    const tagFunctionPath = path.join("build", "data", "minecraft", "tags", "function");
    const loadTagPath = path.join(tagFunctionPath, "load.json");
    const tickTagPath = path.join(tagFunctionPath, "tick.json");
    await fsp.mkdir(path.dirname(loadTagPath), { recursive: true });
    await fsp.mkdir(path.dirname(tickTagPath), { recursive: true });
    await fsp.writeFile(loadTagPath, JSON.stringify({
      values: this.loadFunctions
    }, null, 4));
    await fsp.writeFile(tickTagPath, JSON.stringify({
      replace: false,
      values: this.tickFunctions
    }, null, 4));
  }
  async generateDummyFiles(dataPaths) {
    const creditHeader = ``;
    const targetDataDir = path.join("/build", "data");
    const tasks = [];
    for (const sourcePath of dataPaths) {
      if (!await exists(fsp, sourcePath)) continue;
      log.debug(`Overlay: scanning ${sourcePath}`);
      tasks.push(this.copyDummyRecursive(sourcePath, targetDataDir, creditHeader));
    }
    await Promise.all(tasks);
  }
  async copyDummyRecursive(src, dest, content) {
    const entries = await fsp.readdir(src, { withFileTypes: true });
    await Promise.all(entries.map(async (entry) => {
      const srcFull = path.join(src, entry.name);
      const destFull = path.join(dest, entry.name);
      if (entry.isDirectory()) {
        await fsp.mkdir(destFull, { recursive: true });
        return this.copyDummyRecursive(srcFull, destFull, content);
      } else {
        await fsp.mkdir(path.dirname(destFull), { recursive: true });
        return fsp.writeFile(destFull, content, { encoding: "utf8" });
      }
    }));
  }
  async writeFinalBuild(licenses) {
    if (this.logs) log.info("Writing licenses...");
    const creditHeader = `Generated by DPM — https://github.com/BigstoneDevelopment/DPM

DPM - Datapack Package Managers
Copyright (c) 2025 Bigstone Development
Under MIT License`;
    const finalLicense = [
      creditHeader,
      ...licenses
    ].join();
    await fsp.writeFile(path.join("/build", "LICENSES.txt"), finalLicense, { encoding: "utf8" });
    await fsp.writeFile(path.join("/build", "pack.mcmeta"), JSON.stringify(this.mcMeta, null, 4));
  }
  async build() {
    try {
      await this.loadConfig();
      await this.resetBuild();
      if (this.logs) log.info("Importing into memory..");
      await fsp.mkdir("/build");
      await fsp.mkdir("/dpm_modules");
      await this.importFiles(this.datapackSrc, "/build");
      await this.parseProjectBase();
      await this.mergeDependencies();
      await this.mergePackMetaOverlays();
      await this.createLoadTickFunctions();
      await this.generateDummyFiles(this.dataPaths);
      await this.writeFinalBuild(this.licenseTexts);
      await this.exportFiles("/build", this.buildDir);
    } catch (e) {
      log.error(e);
    }
  }
  async updateFile(abs, filename) {
    const destPath = path.resolve(this.buildDir, filename);
    await promises.copyFile(abs, destPath);
  }
}
const build = {
  name: "build",
  alias: "b",
  description: "Builds the datapack with packages.",
  run: async () => {
    log.timeStart("build");
    let projectDir = process.cwd();
    const configPath = findConfig();
    if (!configPath) {
      log.error("No dpm.json found in", projectDir);
      log.info("Use dpm install to create dpm.json");
      process.exit(1);
    }
    projectDir = path.dirname(configPath);
    log.info(`Building datapack in ${projectDir}`);
    const builder = new DPMBuilder(projectDir, true);
    await builder.build();
    log.timeEnd("build", "Build complete");
    process.exit();
  }
};
const __vite_glob_0_0 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: build
}, Symbol.toStringTag, { value: "Module" }));
class Watcher {
  constructor(targetPath, ignoredPaths, onChange) {
    this.targetPath = targetPath;
    this.onChange = onChange;
    this.ignoredPaths = [];
    for (const ignoredPath of ignoredPaths) {
      const abs = path.resolve(ignoredPath);
      this.ignoredPaths.push(abs);
    }
    this.watcherInstance = null;
  }
  _handleChange(eventType, filename) {
    if (!filename) return;
    const absFile = path.resolve(this.targetPath, filename);
    for (const ignoredPath of this.ignoredPaths) {
      if (absFile.startsWith(ignoredPath)) {
        log.debug(`Ignoring change in modules folder: ${this.targetPath}`);
        return;
      }
    }
    log.debug(`File ${eventType}: ${this.targetPath}`);
    let rebuild = false;
    if (absFile.endsWith(".mcmeta") || absFile.endsWith("dpm.json")) {
      rebuild = true;
    }
    setImmediate(() => {
      this.onChange(rebuild, absFile, eventType).catch((err) => log.error("Error during DPM hot reload:", err));
    });
  }
  start() {
    if (this.watcherInstance) {
      log.warn("Watcher is already running.");
      return;
    }
    if (!fs.existsSync(this.targetPath)) {
      log.error(`Watcher: Source path not found, ${this.targetPath}`);
      return;
    }
    log.info(`Watching for changes in ${this.targetPath}...`);
    this.watcherInstance = fs.watch(this.targetPath, { recursive: true }, this._handleChange.bind(this));
    this.watcherInstance.on("error", (err) => {
      log.error(`Watcher error on ${this.targetPath}:`, err.message);
    });
  }
  close() {
    if (this.watcherInstance) {
      this.watcherInstance.close();
      log.info("File watcher closed.");
      this.watcherInstance = null;
    }
  }
}
function watcher(targetPath, ignoredPaths, onChange) {
  if (!fs.existsSync(targetPath)) {
    log.error(`Watcher: Path not found, ${targetPath}`);
    return;
  }
  const watcherInst = new Watcher(targetPath, ignoredPaths, onChange);
  watcherInst.start();
  return watcherInst;
}
const dev = {
  name: "dev",
  alias: "d",
  description: "Watch the datapack and build with hotreload.",
  run: async () => {
    let projectDir = process.cwd();
    const configPath = findConfig();
    if (!configPath) {
      log.error("No dpm.json found in", projectDir);
      log.info("Use dpm install to create dpm.json");
      process.exit(1);
    }
    projectDir = path.dirname(configPath);
    const config = JSON.parse(fs.readFileSync(configPath, "utf8"));
    const srcFolder = path.resolve(projectDir, config.datapackPath || "./src");
    const buildFolder = path.resolve(projectDir, config.buildPath || "./build");
    const builder = new DPMBuilder(projectDir, false);
    await builder.build();
    watcher(projectDir, [buildFolder], async (rebuild, filename, eventType) => {
      if (rebuild == true) {
        await builder.build();
      } else {
        await builder.updateFile(filename, path.relative(srcFolder, filename));
      }
      log.success(`[HOTRELOAD] ${eventType} → ${filename}`);
    });
  }
};
const __vite_glob_0_1 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: dev
}, Symbol.toStringTag, { value: "Module" }));
const info = {
  name: "info",
  description: "See DPM info.",
  run: async () => {
    log.line();
    console.log(`DPM - Datapack Package Manager
Copyright (c) 2025 Bigstone Development
Under MIT License`);
    log.divider();
    console.log(`bigstone.dev
discord.bigstone.dev`);
    log.divider();
    console.log(`Main contributor: Huckle / CrazyH2
(https://github.com/crazyh2)`);
    log.line();
    process.exit();
  }
};
const __vite_glob_0_2 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: info
}, Symbol.toStringTag, { value: "Module" }));
function downloadFile(url, dest) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(dest);
    const follow = (targetUrl) => {
      https.get(targetUrl, (res) => {
        if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
          const redirectUrl = new URL(res.headers.location, targetUrl).toString();
          res.destroy();
          follow(redirectUrl);
          return;
        }
        if (res.statusCode !== 200) {
          reject(new Error(`HTTP ${res.statusCode} while fetching ${targetUrl}`));
          return;
        }
        res.pipe(file);
        file.on("finish", () => {
          file.close(resolve);
        });
      }).on("error", (err) => {
        fs.unlink(dest, () => reject(err));
      });
    };
    follow(url);
  });
}
async function fetchDpmConfig(url) {
  return new Promise((resolve) => {
    https.get(url, (res) => {
      if (res.statusCode !== 200) return resolve(null);
      let data = "";
      res.on("data", (chunk) => data += chunk);
      res.on("end", () => {
        try {
          const parsed = JSON.parse(data);
          resolve(parsed);
        } catch {
          resolve(null);
        }
      });
    }).on("error", () => resolve(null));
  });
}
function validateDpmConfig(config, pkgName) {
  const required = ["name", "base"];
  const missing = required.filter((key) => !(key in config));
  if (missing.length > 0) {
    log.warn(`${pkgName} missing required fields: ${missing.join(", ")}`);
    return false;
  }
  return true;
}
async function install$1(pkg, projectDir) {
  const parts = pkg.replace(/^@/, "").split("/");
  let [user, repo, branch = "main"] = parts;
  if (branch == "") branch = "main";
  if (!user || !repo) {
    log.error(`Invalid package format: ${pkg}`);
    return;
  }
  const repoUrl = `https://github.com/${user}/${repo}`;
  const zipUrl = `${repoUrl}/archive/refs/heads/${branch}.zip`;
  const apiUrl = `https://raw.githubusercontent.com/${user}/${repo}/${branch}/dpm-package.json`;
  const modulesDir = path.join(projectDir, "dpm_modules");
  const pkgDir = path.join(modulesDir, `${user}_${repo}_${branch}`);
  fs.mkdirSync(modulesDir, { recursive: true });
  const config = await fetchDpmConfig(apiUrl);
  if (!config) {
    log.error(`${pkg} does not contain a valid dpm-package.json at the branch root.`);
    log.debug(`Expected at: ${apiUrl}`);
    return;
  }
  if (!validateDpmConfig(config, pkg)) {
    log.error(`Invalid dpm-package.json for ${pkg}`);
    return;
  }
  log.debug(`- ${zipUrl}`);
  const tmpZip = path.join(modulesDir, `${repo}-${branch}.zip`);
  await downloadFile(zipUrl, tmpZip);
  if (!fs.existsSync(tmpZip) || fs.statSync(tmpZip).size < 500) {
    throw new Error("Downloaded ZIP file is invalid or empty.");
  }
  const zip = new AdmZip(tmpZip);
  zip.extractEntryTo(`${repo}-${branch}/`, pkgDir, false, true);
  fs.unlinkSync(tmpZip);
  log.success(`Installed ${pkg} > ${pkgDir}`);
}
const install = {
  name: "install [packages...]",
  alias: "i",
  description: "Install datapack packages.",
  run: async (packages = []) => {
    let projectDir = process.cwd();
    let configPath = findConfig();
    if (!configPath) {
      const newConfigPath = path.join(projectDir, "dpm.json");
      log.error("No dpm.json found in", projectDir);
      log.info("Creating template, please edit the metadata..");
      const exampleConfig = {
        name: path.basename(projectDir),
        licensePath: "./LICENSE.txt",
        datapackPath: "./src",
        buildPath: "./build",
        load: [
          "namespace:load"
        ],
        tick: [
          "namespace:tick"
        ],
        dependencies: []
      };
      fs.writeFileSync(newConfigPath, JSON.stringify(exampleConfig, null, 4));
      log.success("Created template dpm.json");
      configPath = findConfig();
    }
    projectDir = path.dirname(configPath);
    const config = JSON.parse(fs.readFileSync(configPath, "utf8"));
    if (!Array.isArray(config.dependencies)) config.dependencies = [];
    let targets = [];
    if (packages.length === 0) {
      if (config.dependencies.length === 0) {
        log.warn("No dependencies listed in dpm.json");
        return;
      }
      targets = config.dependencies;
      log.info(`Installing ${targets.length} package(s) from dpm.json...`);
    } else {
      targets = packages;
      let warningShown = false;
      for (const pkg of packages) {
        if (!config.dependencies.includes(pkg)) {
          const parts = pkg.replace(/^@/, "").split("/");
          let [user, repo, branch = "main"] = parts;
          if (branch == "") branch = "main";
          if (!user || !repo) {
            log.error(`Invalid package format: ${pkg}`);
            continue;
          }
          config.dependencies.push(`${user}/${repo}/${branch}`);
        } else {
          log.warn(`Already found package in dpm.json: ${pkg}`);
          warningShown = true;
        }
      }
      fs.writeFileSync(configPath, JSON.stringify(config, null, 4));
      if (warningShown) log.line();
      log.success("Updated dependencies in dpm.json");
    }
    log.line();
    let successCount = 0;
    for (const pkg of targets) {
      log.info(`Installing ${pkg}...`);
      try {
        await install$1(pkg, projectDir);
        successCount++;
      } catch (err) {
        log.error(`Failed to install ${pkg}: ${err.message}`);
      }
    }
    log.line();
    log.success(`${successCount} package(s) installed successfully.`);
    process.exit();
  }
};
const __vite_glob_0_3 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: install
}, Symbol.toStringTag, { value: "Module" }));
const _package = {
  name: "package",
  alias: "pkg",
  description: "Create a DPM package template.",
  run: async () => {
    const projectDir = process.cwd();
    const overlayDir = path.join(projectDir, "overlays", "example", "namespace", "function");
    const datapackDir = path.join(projectDir, "datapack", "namespace", "function");
    const configPath = path.join(projectDir, "dpm-package.json");
    const dirs = [overlayDir, datapackDir];
    for (const dir of dirs) {
      if (!fs.existsSync(dir)) {
        fs.mkdirSync(dir, { recursive: true });
        log.info(`Created folder: ${dir.replace(projectDir + "/", "")}`);
      }
    }
    if (fs.existsSync(configPath)) {
      log.warn("dpm_package.json already exists. Skipping creation.");
      return;
    }
    const pkgConfig = {
      name: "Example Package",
      description: "An example DPM package.",
      author: "Someone",
      licensePath: "./LICENSE.txt",
      supportedVersions: "10-27",
      base: "./datapack",
      overlays: {
        "<10": "./overlays/example",
        "10-15": "./overlays/example",
        "26": "./overlays/example",
        ">=27": "./overlays/example"
      },
      load: [
        "namespace:load"
      ],
      tick: [
        "namespace:tick"
      ]
    };
    fs.writeFileSync(configPath, JSON.stringify(pkgConfig, null, 4));
    log.success("Created dpm-package.json template.");
    log.line();
    log.success("Package structure created successfully!");
    log.info("You can now edit dpm_package.json and start developing your DPM package.");
    process.exit();
  }
};
const __vite_glob_0_4 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: _package
}, Symbol.toStringTag, { value: "Module" }));
const uninstall = {
  name: "uninstall [packages...]",
  alias: "u",
  description: "Uninstall datapack packages.",
  run: async (packages = []) => {
    let projectDir = process.cwd();
    const configPath = findConfig();
    if (!configPath) {
      log.error("No dpm.json found in", projectDir);
      log.info("Use 'dpm install' to create one first.");
      process.exit(1);
    }
    projectDir = path.dirname(configPath);
    const config = JSON.parse(fs.readFileSync(configPath, "utf8"));
    if (!Array.isArray(config.dependencies)) {
      log.warn("No dependencies array found in dpm.json");
      return;
    }
    if (packages.length === 0) {
      log.warn("No packages specified to uninstall.");
      log.info("Example: dpm uninstall @user/repo");
      return;
    }
    for (const pkg of packages) {
      const parts = pkg.replace(/^@/, "").split("/");
      let [user, repo, branch = "main"] = parts;
      if (branch == "") branch = "main";
      if (!user || !repo) {
        log.error(`Invalid package format: ${pkg}`);
        continue;
      }
      packages[packages.indexOf(pkg)] = `${user}/${repo}/${branch}`;
    }
    const beforeCount = config.dependencies.length;
    config.dependencies = config.dependencies.filter(
      (dep) => !packages.includes(dep)
    );
    const removedCount = beforeCount - config.dependencies.length;
    if (config.dependencies.length < 1) delete config.dependencies;
    fs.writeFileSync(configPath, JSON.stringify(config, null, 4));
    if (removedCount > 0) {
      log.success(`Removed ${removedCount} package(s) from dpm.json`);
    } else {
      log.warn("No matching packages found in dependencies.");
    }
    for (const pkg of packages) {
      const pkgName = pkg.replace(/^@/, "").replace(/\//g, "_");
      const pkgPath = path.join(projectDir, "dpm_modules", pkgName);
      if (fs.existsSync(pkgPath)) {
        fs.rmSync(pkgPath, { recursive: true, force: true });
        log.info(`Deleted local files for ${pkg}`);
      }
    }
    const modulesDir = path.join(projectDir, "dpm_modules");
    if (fs.readdirSync(modulesDir).length === 0) {
      fs.rm(modulesDir, { force: true, recursive: true });
    }
    log.line();
    log.success("Uninstall complete.");
    process.exit();
  }
};
const __vite_glob_0_5 = /* @__PURE__ */ Object.freeze(/* @__PURE__ */ Object.defineProperty({
  __proto__: null,
  default: uninstall
}, Symbol.toStringTag, { value: "Module" }));
const program = new Command();
const modules = /* @__PURE__ */ Object.assign({ "./commands/build.js": __vite_glob_0_0, "./commands/dev.js": __vite_glob_0_1, "./commands/info.js": __vite_glob_0_2, "./commands/install.js": __vite_glob_0_3, "./commands/package.js": __vite_glob_0_4, "./commands/uninstall.js": __vite_glob_0_5 });
for (const path2 in modules) {
  const mod = modules[path2];
  const cmd = mod.default;
  if (!cmd) continue;
  const sub = program.command(cmd.name).description(cmd.description).action(cmd.run);
  if (cmd.alias) sub.alias(cmd.alias);
}
program.parse(process.argv);
