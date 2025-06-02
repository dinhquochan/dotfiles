#!/usr/bin/env bash

mkdir -p .config/tmux

cp ~/.config/tmux/tmux.conf config/tmux/tmux.conf
cp ~/.zshrc zshrc
cp ~/.config/git/ignore config/git/ignore
cp ~/.config/git/message config/git/message
cp -R ~/.config/kitty/* config/kitty/
cp ~/.gitconfig gitconfig

brew bundle dump --force
