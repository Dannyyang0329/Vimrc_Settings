#!/bin/bash

# Update packages
sudo apt update

# Download 'git', 'curl', 'gcc', 'vim-gtk3'
sudo apt install git curl gcc vim-gtk3

# Download vim plugin autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone vimrc and bashrc file from repository
git clone https://github.com/Dannyyang0329/Vimrc_Settings.git


