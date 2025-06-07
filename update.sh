#!/usr/bin/env bash

cp ~/.tmux.conf tmux.conf
cp ~/.bash_profile bash_profile
cp ~/.bashrc bashrc

if [ -f ~/.bash_linux ]; then
    cp ~/.bash_linux bash_linux
fi

if [ -f ~/.bash_macos ]; then
    cp ~/.bash_macos bash_macos
fi

cp ~/.config/git/ignore config/git/ignore
cp ~/.config/git/message config/git/message
cp -R ~/.config/kitty/* config/kitty/
cp ~/.gitconfig gitconfig

brew bundle dump --force
