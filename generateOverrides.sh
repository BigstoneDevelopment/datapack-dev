OVERRIDE_DIR="1.21.10-overrides"
REMOTE_BRANCH="1.21.10-implimentation"

git fetch origin
mkdir -p "$OVERRIDE_DIR"

git diff --name-only --diff-filter=MAR main origin/"$REMOTE_BRANCH" | while read FILE; do
    mkdir -p "$OVERRIDE_DIR/$(dirname "$FILE")"
    
    git show "origin/$REMOTE_BRANCH:$FILE" > "$OVERRIDE_DIR/$FILE"
done

echo "Override folder '$OVERRIDE_DIR' created with changed files."