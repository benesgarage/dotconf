export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/golang
export GODEPPATH=/opt/go-dep
export PATH=$GOPATH/bin:$GOROOT/bin:$GODEPPATH/bin:$PATH
export EDITOR=vim

GIT_PROMPT_ONLY_IN_REPO=0
. $HOME/github/magicmonty/bash-git-prompt/gitprompt.sh

export PATH="$HOME/.cargo/bin:$HOME/Downloads/GoLand/bin:$PATH"

# Bash aliases
if [ -f ~/.bash_aliases ]; then
	    . ~/.bash_aliases
    fi
