#!/usr/bin/env bash

mkdir -p .config/tmux

cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.config/git/ignore .config/git/ignore
cp ~/.config/git/message .config/git/message
cp ~/.gitconfig .

brew leaves > brew/leaves
brew list --cask > brew/casks
