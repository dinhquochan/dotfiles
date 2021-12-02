#!/usr/bin/env bash

cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp ~/.php-cs-fixer.php .
cp ~/.gitignore_global .
cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/Sublime\ Text/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
