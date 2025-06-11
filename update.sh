#!/usr/bin/env bash

cp $HOME/.tmux.conf tmux.conf

cp $HOME/.zshrc zshrc

if [ -f $HOME/.zsh_linux ]; then
    cp $HOME/.zsh_linux zsh_linux
fi

if [ -f $HOME/.zsh_macos ]; then
    cp $HOME/.zsh_macos zsh_macos
fi

cp $HOME/.config/git/ignore config/git/ignore
cp $HOME/.config/git/message config/git/message
cp -R $HOME/.config/kitty/* config/kitty/
cp $HOME/.gitconfig gitconfig

brew bundle dump --force
