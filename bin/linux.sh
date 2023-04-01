#!/bin/bash
#tells system where to find bash
if [ "$uname" != "Linux" ];
#if the return of uname does not equal linux
then
	echo "Error: non-linux system" > linuxsetup.log
	#writes error message to linuxsetup.log
	exit
fi

mkdir ~/.TRASH
#makes a hidden directory called TRASH
if [ -f "~/.vimrc"];
#if ~/.vimrc exists
then
	mv ~/.vimrc ~/.bup_vimrc
	#rename ~/.vimrc to ~/.bup_vimrc
	echo "Current .vimrc file changed to .bup_vimrc" >> linuxsetup.log
	#write log message to linuxsetup.log
fi
cat etc/vimrc > ~/.vimrc
#writes contents of etc/vimrc to ~/.vimrc
source ~/.dotfiles/etc/bashrc_custom
#reads and executes commands in bashrc_custom
