#!/usr/bin/env bash

cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp -r ~/.vim vim
cp ~/.phpcs.xml .
cp ~/.gitignore_global .
cp ~/Dropbox/Sublime/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
