export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nvim"
export SHELL_SESSIONS_DISABLE=1
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GPG_TTY=$(tty)
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/python_history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/node_repl_history"
export PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:/opt/homebrew/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
