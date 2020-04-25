#!/usr/bin/env bash

echo "Restore VIM settings..."
cp .vimrc ~/.config/nvim/init.vim

echo "Restore Tmux settings..."
cp .tmux.conf ~/.tmux.conf

echo "Restore ZSH settings..."
cp .zshrc ~/
cp .zsh_aliases ~/

echo "Restore PHPCS settings..."
cp .phpcs.xml ~/
cp .php_cs ~/

echo "Restore .gitignore_global..."
cp .gitignore_global ~/

echo "Restore alacritty settings..."
mkdir -p ~/.config/alacritty/
cp alacritty.yml ~/.config/alacritty/

echo "Settings macOS..."
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false
