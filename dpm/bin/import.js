import fs from "fs";
import path from "path";
import { execSync } from "child_process";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const dpmRoot = path.resolve(__dirname, "..");   // dist
const nodeModulesPath = path.join(dpmRoot, "node_modules");

if (!fs.existsSync(nodeModulesPath)) {
    console.warn("Node modules missing, installing..");
    try {
        execSync("npm i", {
            cwd: dpmRoot,
            stdio: "inherit",
        });
    } catch (err) {
        console.error("Failed to install dependencies:", err);
        process.exit(1);
    }
    console.log("Dependencies installed.\n");
};

import(path.resolve(__dirname, "dpm.js"))
    .then((dpm) => {
        // loaded
        dpm.default(process.argv);
    })
    .catch((err) => {
        console.error("[DPM] Failed to load dpm.js:", err);
        process.exit(1);
    });