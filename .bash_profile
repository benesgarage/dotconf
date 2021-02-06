export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/golang
export GODEPPATH=/opt/go-dep
export PATH=$GOPATH/bin:$GOROOT/bin:$GODEPPATH/bin:$PATH
export EDITOR=vim
export PATH="$HOME/.cargo/bin:$HOME/Downloads/GoLand/bin:$PATH"

if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

