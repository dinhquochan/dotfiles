#!/usr/bin/env bash

mkdir -p .config/tmux

cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.bash_aliases .
cp ~/.gitignore .
cp ~/.gitconfig .

brew leaves > brew/leaves
brew list --cask > brew/casks
