#!/usr/bin/env bash

cp -r ~/.config/nvim .config
cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.gitignore .
cp ~/.gitconfig .
cp ~/.php-cs-fixer.php .

cp ~/OneDrive/Sublime\ Text/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
