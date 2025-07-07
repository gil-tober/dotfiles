# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load Cargo Packages
. ~/.config/cargo/env

# Load Zinit
source /opt/homebrew/opt/zinit/zinit.zsh

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ll='eza -la --icons --group-directories-first --classify --git'
alias ls='eza --icons --group-directories-first --classify --git'
alias gg='git fetch --all --prune && git checkout master && git pull'
alias gcb='git checkout -b'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias cat='bat'
alias aaw='airflow webserver'
alias aas='airflow scheduler'
alias aat='airflow triggerer'
alias pip='uv pip'
alias bb="echo 'Running brew upgrade' && brew upgrade && echo 'Running brew autoremove' && brew autoremove && echo 'Running brew cleanup' && brew cleanup --prune=all --scrub --verbose"

# Shell Integrations
eval "$(starship init zsh)"
eval "$(zoxide init --cmd=cd zsh)"
eval "$(fzf --zsh)"
eval "$(uv generate-shell-completion zsh)"

# Show hidden files/folders by default
defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder; 
autoload -U compinit; compinit
