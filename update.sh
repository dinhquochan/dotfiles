#!/usr/bin/env bash

mkdir -p .config/tmux
mkdir -p .config/alacritty

cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.config/alacritty/alacritty.yml .config/alacritty/alacritty.yml
cp ~/.config/starship.toml .config/starship.toml
cp ~/.zshrc .
cp ~/.gitignore .
cp ~/.gitconfig .
cp ~/.php-cs-fixer.php .

brew leaves > brew/leaves
brew list --cask > brew/casks
