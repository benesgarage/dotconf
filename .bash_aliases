# .bash_aliases

#
# Common aliases
#

# git command for all dotconf files, anywhere
alias dot='/usr/bin/env git --git-dir=/home/benes/.dotconf/ --work-tree=/home/benes'

# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
	. /usr/share/bash-completion/completions/git
	__git_complete dot _git
else
	echo "Error loading git completions"
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Vim
alias vw='vim -c ":VimwikiIndex"'
alias vimc='vim ~/.vimrc'
