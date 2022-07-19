#!/bin/bash

# Backup
mkdir ~/OriginSettings
cp ./.bashrc ~/OriginSettings
cp ./.vimrc ~/OriginSettings
cp -r ./.vim ~/OriginSettings
touch ~/OriginSettings/README.txt
echo -e "Two files and one directory is in the current work directory!
 2 Files
     * .bashrc 
     * .vimrc
 Directory
     * .vim" >> ~/OriginSettings/README.txt

# Adapt settings
cp ./.bashrc ~/.bashrc
cp ./.vimrc ~/.vimrc
cp -r ./vim ~/.vim
source ~/.bashrc

echo "Setting Finish!!!"
