#!/bin/bash
#tells system where to find bash
rm -f ~/.vimrc
#removes ~/.vimrc file
sed -r 's/source ~\/.dotfiles\/bashrc_custom//' ~/.bashrc
#removes line from ~/.bashrc
rm -rf ~/.TRASH
#removes trash directory
