#!/bin/bash

cd ~

if ! dpkg-query -W vim-gtk3 > /dev/null  ; then 
    echo "Need package : vim-gtk3"
    exit 1
elif ! dpkg-query -W powerline > /dev/null  ; then 
    echo "Need package : powerline"
    exit 1
else 
    # Backup
    mkdir ~/OriginSettings
    if [ -e "~/.bashrc" -a -f "~/.bashrc" ]; then
        cp ~/.bashrc ~/OriginSettings
    fi
    if [ -e "~/.vimrc" -a -f "~/.vimrc" ]; then
        cp ~/.vimrc ~/OriginSettings
    fi
    if [ -e "~/.vim" -a -d "~/.vim" ]; then
        cp -r ~/.vim ~/OriginSettings
    fi
    touch ~/OriginSettings/README.txt
    ls -alf > ~/OriginSettings/README.txt

    # Adapt settings
    cp ~/Vimrc_Settings/.bashrc ~/
    cp ~/Vimrc_Settings/.vimrc ~/
    cp -r ~/Vimrc_Settings/.vim ~/

    vim -c PlugInstall

    echo "Setting Finish!!!"
fi
