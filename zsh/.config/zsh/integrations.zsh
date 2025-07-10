# Shell integrations that should be evaluated at the end of the startup process.

eval "$(starship init zsh)"
eval "$(zoxide init --cmd=cd zsh)"
eval "$(fzf --zsh)"
eval "$(uv generate-shell-completion zsh)"