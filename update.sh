#!/usr/bin/env bash

cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp ~/.phpcs.xml .
cp ~/.php_cs .
cp ~/.gitignore_global .
cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/Sublime\ Text/User/Preferences.sublime-settings sublime-settings.json

brew leaves > brew/leaves
brew list --cask > brew/casks
