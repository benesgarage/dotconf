# To get started:
# 1. clone the repo
# 2. git clone --bare git@github.com:benesgarage/dotconf.git $HOME/.dotconf
# 3. copy this file to your home folder
# 4. Done! Use `dotconf` to check/update all your versioned dotconf files!

# git command for all dotconf files, anywhere
alias dot='/usr/bin/git --git-dir=/home/benes/.dotconf/ --work-tree=/home/benes'
alias vw="vim -c ':VimwikiIndex'"
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
