HISTFILE="$XDG_STATE_HOME/zsh/history"

autoload -U compinit
[ -d "$XDG_CACHE_HOME/zsh" ] || mkdir -p "$XDG_CACHE_HOME/zsh"
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

export NVM_DIR="$HOME/.local/share/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

gpg-connect-agent updatestartuptty /bye >/dev/null
