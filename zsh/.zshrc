# ~/.zshrc
# This is the main configuration file for interactive Zsh sessions.
# Its primary job is to source the modular configuration files in order.

# Load Zinit - must be sourced before loading plugins
source /opt/homebrew/opt/zinit/zinit.zsh

# --- Source Custom Configuration Files ---
ZSH_CONFIG_DIR="$HOME/.config/zsh"

# Check if the config directory exists before sourcing files
if [ -d "$ZSH_CONFIG_DIR" ]; then
  source "${ZSH_CONFIG_DIR}/plugins.zsh"
  source "${ZSH_CONFIG_DIR}/history.zsh"
  source "${ZSH_CONFIG_DIR}/keybindings.zsh"
  source "${ZSH_CONFIG_DIR}/completions.zsh"
  source "${ZSH_CONFIG_DIR}/aliases.zsh"
  source "${ZSH_CONFIG_DIR}/integrations.zsh"
fi