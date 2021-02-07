#
# Personal environment setup makefile
#

VUNDLE_PATH=~/.vim/bundle/Vundle.vim

up: update install # Do it

update: # Update the system
	sudo apt -y update && sudo apt -y upgrade

install:  vim-install git-install vim-vundle-install vim-plugin-install xclip-install openvpn-install pandoc-install # Install all packages

vim-install:
	sudo apt install -y vim

git-install:
	sudo apt install -y git

vim-vundle-install:
	-@test -f ${VUNDLE_PATH} && \
		git clone -q https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_PATH}

vim-plugin-install:
	vim +PluginInstall +qall

xclip-install:
	sudo apt install -y xclip

openvpn-install:
	sudo apt install -y openvpn

pandoc-install:
	sudo apt install -y pandoc \
		texlive-xetex

