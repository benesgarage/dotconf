#
# Personal environment setup makefile (for Debian)
#

VUNDLE_PATH=~/.vim/bundle/Vundle.vim
ST_PATH=~/github/LukeSmithxyz/st/
VERSION=$(shell lsb_release -cs)

up: update install config # Do it

update: # Update the system
	sudo apt -y update && sudo apt -y upgrade

install:  vim git vim-vundle vim-plugin st xclip openvpn pandoc docker docker-compose # Install core packages

config: docker-config # Configure core packages

python3-install: python3 pip3 virtualenv

vim: # Install vim-nox for support for scripting
	sudo apt install -y vim-nox

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

docker:
	sudo apt -y install \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg-agent \
		software-properties-common

	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
	sudo add-apt-repository \
	        "deb [arch=amd64] https://download.docker.com/linux/debian \
		 ${VERSION} \
		stable"
	sudo apt -y update
	sudo apt -y install docker-ce docker-ce-cli containerd.io

docker-config:
	-@sudo groupadd docker
	sudo usermod -aG docker $(USER)
	@echo "You may need to logout/login for group changes to take permananent effect"

docker-compose: # Install docker-compose (yes, it lacks a 'latest' tag :()
	sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(shell uname -s)-$(shell uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
