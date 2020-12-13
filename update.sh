#!/usr/bin/env bash

cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp ~/.phpcs.xml .
cp ~/.gitignore_global .
cp ~/Dropbox/sublime-text/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
