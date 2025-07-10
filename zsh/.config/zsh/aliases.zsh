# All custom shell aliases.

alias ll='eza -la --icons --group-directories-first --classify --git'
alias ls='eza --icons --group-directories-first --classify --git'
alias gg='git fetch --all --prune && git checkout master && git pull'
alias gcb='git checkout -b'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias cat='bat --theme="Nord"'
alias aaw='airflow webserver'
alias aas='airflow scheduler'
alias aat='airflow triggerer'
alias pip='uv pip'
alias bb="echo 'Running brew upgrade' && brew upgrade && echo 'Running brew autoremove' && brew autoremove && echo 'Running brew cleanup' && brew cleanup --prune=all --scrub --verbose"