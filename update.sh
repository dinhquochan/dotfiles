#!/usr/bin/env bash

mkdir -p .config/tmux

cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.bash_profile .
cp ~/.config/git/ignore .config/git/ignore
cp ~/.config/git/message .config/git/message
cp -R ~/.config/kitty .config/kitty
cp ~/.gitconfig .

brew bundle dump --force

