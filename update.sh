#!/usr/bin/env bash

echo "Update VIM settings..."
cp ~/.vimrc .
cp ~/.gvimrc .
cp ~/.vim/plugins.vim .vim_plugins

echo "Update ZSH settings..."
cp ~/.zshrc .
cp ~/.zsh_aliases .

echo "Update PHPCS, PHP CS Fixer settings..."
cp ~/.phpcs.xml .
cp ~/.php_cs .

echo "Update .gitignore_global..."
cp ~/.gitignore_global .

echo "Update Sublinme Text settings..."
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings sublime-settings.json

echo "Update alacritty..."
cp ~/.config/alacritty/alacritty.yml .
