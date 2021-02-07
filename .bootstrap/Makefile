#
# Personal environment setup makefile
#

VUNDLE_PATH=~/.vim/bundle/Vundle.vim
ST_PATH=~/github/LukeSmithxyz/st/

up: update install # Do it

update: # Update the system
	sudo apt -y update && sudo apt -y upgrade

install:  vim git vim-vundle vim-plugin st xclip openvpn pandoc # Install core packages

python3-install: python3 pip3 virtualenv

vim:
	sudo apt install -y vim

git:
	sudo apt install -y git

vim-vundle:
	-@test -f ${VUNDLE_PATH} && \
		git clone -q https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_PATH}

vim-plugin:
	vim +PluginInstall +qall

st: # Luke smith's version of st
	-@test -f ${ST_PATH} && \
		git clone -q https://github.com/LukeSmithxyz/st.git ${ST_PATH}

xclip:
	sudo apt install -y xclip

openvpn:
	sudo apt install -y openvpn

pandoc:
	sudo apt install -y pandoc \
		texlive-xetex

python3:
	sudo apt install -y python3

pip3:
	sudo apt install -y python3-pip 

virtualenv:
	pip3 install virtualenv
