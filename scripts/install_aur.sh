#!/bin/bash

#--------------------------------#
# import variables and functions #
#--------------------------------#
source ./scripts/functions.sh
if [ $? -ne 0 ]; then
    echo "Error: failed to source functions.sh, please execute from $(dirname $(realpath $0))..."
    exit 1
fi


aurhlpr="${1:-yay}"

if pkg_installed yay || pkg_installed paru; then
    echo "aur helper is already installed..."
    exit 0
fi

# create Clone directory if it doesn't exist
if [ -d $HOME/Clone ]; then
    echo "$HOME/Clone directory exists..."
    rm -rf $HOME/Clone/$aurhlpr
else
    mkdir $HOME/Clone
    echo -e "[Desktop Entry]\nIcon=default-folder-git" > $HOME/Clone/.directory
    echo "$HOME/Clone directory created..."
fi

# clone aur helper from aur
if pkg_installed git; then
    git clone https://aur.archlinux.org/"$aurhlpr".git $HOME/Clone/$aurhlpr
else
    echo "git dependency is not installed..."
    exit 1
fi

# install aur helper
cd $HOME/Clone/$aurhlpr || exit
makepkg ${use_default} -si

# check if aur helper is installed
if [ $? -eq 0 ]; then
    echo "$aurhlpr aur helper installed..."
    exit 0
else
    echo "$aurhlpr installation failed..."
    exit 1
fi
