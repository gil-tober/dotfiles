# ~/.zshenv - Version controlled.
# Handles non-sensitive environment setup and loads local secrets.

# Universal environment setup (non-sensitive)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Cargo environment if available
[ -f "${HOME}/.config/cargo/env" ] && . "${HOME}/.config/cargo/env"

export CARGO_HOME="$HOME/.config/cargo"
export LANG=en_US.UTF-8

# Load local, secret, and machine-specific variables (not version controlled)
if [ -f "${HOME}/.zshenv_local" ]; then
  source "${HOME}/.zshenv_local"
fi
if [ -f "${HOME}/.zshenv_local" ]; then
  source "${HOME}/.zshenv_local"
fi
