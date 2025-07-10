# ~/.zshenv
# This file IS version controlled.
# It handles non-sensitive environment setup and loads local secrets.

# --- Non-sensitive, universal environment setup ---
# Load Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Cargo Packages environment
[ -f "${HOME}/.config/cargo/env" ] && . "${HOME}/.config/cargo/env"

export CARGO_HOME="$HOME/.config/cargo"
export LANG=en_US.UTF-8

# --- Load local, secret, and machine-specific variables ---
# This sources a local file (.zshenv_local) that is NOT version controlled.
if [ -f "${HOME}/.zshenv_local" ]; then
  source "${HOME}/.zshenv_local"
fi
