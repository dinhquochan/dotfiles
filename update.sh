#!/usr/bin/env bash

mkdir -p .config/nvim
mkdir -p .config/tmux

cp -r ~/.config/nvim .config
cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.zshrc .
cp ~/.gitignore .
cp ~/.gitconfig .
cp ~/.php-cs-fixer.php .

cp ~/OneDrive/Sublime\ Text/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
