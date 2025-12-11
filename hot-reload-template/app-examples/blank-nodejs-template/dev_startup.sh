#!/usr/bin/env bash
#
# Blank Node.js Express Template Development Startup Script
# Monitors package.json for dependency changes and automatically reinstalls
#
set -euo pipefail
cd "$(dirname "$0")"

echo "=========================================="
echo "Starting Blank Node.js Template"
echo "=========================================="
echo ""

# Create .npmrc with legacy-peer-deps
if [ ! -f .npmrc ]; then
  echo "Creating .npmrc with legacy-peer-deps=true..."
  echo "legacy-peer-deps=true" > .npmrc
fi

# Function for hard rebuild
hard_rebuild() {
  echo "Performing hard rebuild: removing node_modules and package-lock.json..."
  rm -rf node_modules package-lock.json
  echo "Reinstalling dependencies..."
  npm install
}

# Initial install
echo "Installing dependencies..."
if ! npm install; then
  echo "Initial npm install failed. Attempting hard rebuild..."
  hard_rebuild
fi

echo "Creating package hash for change detection..."
sha256sum package.json | awk '{print $1}' > .package_hash

# Runner script invoked by nodemon on package.json changes
cat > .dev_run.sh <<'RUN'
#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

hard_rebuild() {
  echo "Performing hard rebuild..."
  rm -rf node_modules package-lock.json
  npm install
}

current=$(sha256sum package.json | awk '{print $1}')
previous=$(cat .package_hash 2>/dev/null || true)
if [ "$current" != "$previous" ]; then
  echo "package.json changed. Reinstalling dependencies..."
  if ! npm install; then
    echo "npm install failed. Performing hard rebuild..."
    hard_rebuild
  fi
  echo "$current" > .package_hash
else
  echo "package.json unchanged. Skipping npm install."
fi
exec node index.js
RUN
chmod +x .dev_run.sh

echo ""
echo "Starting nodemon to watch for changes..."
echo "App will be available on http://0.0.0.0:8080"
echo ""

# Start nodemon to watch package.json and JS files
exec npx nodemon --watch package.json --watch index.js --ext json,js --exec "bash .dev_run.sh"
