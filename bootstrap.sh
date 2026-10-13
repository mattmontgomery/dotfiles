#!/bin/bash
# Installs Homebrew and the Brewfile, then sources zsh/aliases.zsh from ~/.zshrc.
set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle --file="$DIR/Brewfile"

LINE="source \"$DIR/zsh/aliases.zsh\""
grep -qxF "$LINE" ~/.zshrc 2>/dev/null || echo "$LINE" >> ~/.zshrc
