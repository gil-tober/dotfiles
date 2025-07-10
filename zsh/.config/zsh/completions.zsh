# Zsh completion system setup and styling.

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Add Homebrew and Docker completions to FPATH
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
[ -d "${HOME}/.docker/completions" ] && fpath+=("${HOME}/.docker/completions")

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'