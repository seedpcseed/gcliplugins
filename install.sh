#!/usr/bin/env bash
set -e
REPO="https://github.com/seedpcseed/gcliplugins" # Replace <owner> with the repository owner's GitHub username or organization
TEMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TEMP_DIR"' EXIT
git clone --depth 1 "$REPO" "$TEMP_DIR" >/dev/null 2>&1
mkdir -p "$HOME/.gemini/commands"
cp -r "$TEMP_DIR/base/.gemini/commands/"* "$HOME/.gemini/commands/"
echo "Gemini CLI base commands installed to $HOME/.gemini/commands"
