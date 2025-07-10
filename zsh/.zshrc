# ~/.zshrc - Main configuration file for interactive Zsh sessions.
# Loads Zinit and modular configuration files.

# Load Zinit (must be sourced before loading plugins)
source /opt/homebrew/opt/zinit/zinit.zsh

# Source custom configuration files from $ZSH_CONFIG_DIR if it exists
ZSH_CONFIG_DIR="$HOME/.config/zsh"

if [ -d "$ZSH_CONFIG_DIR" ]; then
  source "${ZSH_CONFIG_DIR}/plugins.zsh"
  source "${ZSH_CONFIG_DIR}/history.zsh"
  source "${ZSH_CONFIG_DIR}/keybindings.zsh"
  source "${ZSH_CONFIG_DIR}/completions.zsh"
  source "${ZSH_CONFIG_DIR}/aliases.zsh"
  source "${ZSH_CONFIG_DIR}/integrations.zsh"
fi