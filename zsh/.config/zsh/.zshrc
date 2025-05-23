HISTFILE="$XDG_STATE_HOME/zsh/history"

autoload -U compinit
[ -d "$XDG_CACHE_HOME/zsh" ] || mkdir -p "$XDG_CACHE_HOME/zsh"
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

. $HOME/.local/bin/git-prompt.sh

export GIT_PS1_SHOWSTASHSTATE=1 #'$'
export GIT_PS1_SHOWUNTRACKEDFILES=1 #'%'
export GIT_PS1_SHOWDIRTYSTATE=1 #'*': unstaged, '+': staged
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto" #'<': behind, '>': ahead, '<>': diverged, '=': no diff
export GIT_PS1_SHOWCONFLICTSTATE="yes"

precmd () { __git_ps1 "%n" ":%~$ " "(%s)" }
