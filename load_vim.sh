#!/bin/bash

# Clone vimrc and bashrc file from repository
git clone https://github.com/Dannyyang0329/Vimrc_Settings.git

# Backup
mkdir ~/OriginSettings
cp ~/Vimrc_Settings/.bashrc ~/OriginSettings
cp ~/Vimrc_Settings/.vimrc ~/OriginSettings
cp -r ~/Vimrc_Settings/.vim ~/OriginSettings
touch ~/OriginSettings/README.txt
echo -e "Two files and one directory is in the current work directory!
 2 Files
     * .bashrc
     * .vimrc
 Directory
     * .vim" >> ~/OriginSettings/README.txt

# Adapt settings
cp ~/Vimrc_Settings/.bashrc ~/
cp ~/Vimrc_Settings/.vimrc ~/
cp -r ~/Vimrc_Settings/.vim ~/
source ~/.bashrc

vim -c PlugInstall

echo "Setting Finish!!!"

