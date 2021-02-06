# .bash_profile: executed by bash on login shells.

# Just include .profile and .bashrc
if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

