#
# Personal environment setup makefile
#

VUNDLE_PATH=~/.vim/bundle/Vundle.vim
ST_PATH=~/github/LukeSmithxyz/st/

up: update install # Do it

update: # Update the system
	sudo apt -y update && sudo apt -y upgrade

install:  vim-install git-install vim-vundle-install vim-plugin-install st-install xclip-install openvpn-install pandoc-install # Install all packages

vim-install:
	sudo apt install -y vim

git-install:
	sudo apt install -y git

vim-vundle-install:
	-@test -f ${VUNDLE_PATH} && \
		git clone -q https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_PATH}

vim-plugin-install:
	vim +PluginInstall +qall

st-install: # Luke smith's version of st
	-@test -f ${ST_PATH} && \
		git clone -q https://github.com/LukeSmithxyz/st.git ${ST_PATH}

xclip-install:
	sudo apt install -y xclip

openvpn-install:
	sudo apt install -y openvpn

pandoc-install:
	sudo apt install -y pandoc \
		texlive-xetex

