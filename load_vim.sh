#!/bin/bash

cd ~

if [ !$(dpkg-query -W git) ]; then
    echo "Need package : git"
    exit 1
elif [ !$(dpkg-query -W vim-gtk3) ]; then 
    echo "Need package : vim-gtk3"
    exit 1
elif [ !$(dpkg-query -W powerline) ]; then 
    echo "Need package : powerline"
    exit 1
else 
    # Clone vimrc and bashrc file from repository
    git clone https://github.com/Dannyyang0329/Vimrc_Settings.git

    # Backup
    mkdir ~/OriginSettings
    cp ~/.bashrc ~/OriginSettings
    cp ~/.vimrc ~/OriginSettings
    cp -r ~/.vim ~/OriginSettings
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
fi
