#!/bin/bash

cd ~

if [ -e ~/OriginSettings -a -d ~/OriginSettings ]; then
    read -p "Do you want to delete directory ~/OriginSettings ? (y/n) " reply
    if [ ${reply} = 'y' ]; then
        rm -rf ~/OriginSettings
        echo "Remove directory : ~/OriginSettings"
    elif [ ${reply} = 'n' ]; then
        echo "Don't remove directory : ~/OriginSettings"
    else 
        echo "Unknown answer!"
        exit 1
    fi
fi

if [ -e ~/Vimrc_Settings -a -d ~/Vimrc_Settings ]; then
    read -p "Do you want to delete directory ~/Vimrc_Settings ? (y/n) " reply
    if [ ${reply} = 'y' ]; then
        rm -rf ~/Vimrc_Settings
        echo "Remove directory : ~/Vimrc_Settings"
    elif [ ${reply} = 'n' ]; then
        echo "Don't remove directory : ~/Vimrc_Settings"
    else 
        echo "Unknown answer!"
        exit 1
    fi
fi

echo "Task finished!"
