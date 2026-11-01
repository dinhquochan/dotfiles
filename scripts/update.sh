#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

cp "$HOME/.tmux.conf" config/tmux/tmux.conf
cp "$HOME/.vimrc" config/vim/vimrc
cp "$HOME/.bashrc" config/bash/bashrc
cp "$HOME/.bash_profile" config/bash/bash_profile
cp "$HOME/.inputrc" config/bash/inputrc
cp "$HOME/.gitignore_global" config/git/gitignore_global
cp "$HOME/.gitconfig" config/git/gitconfig
cp "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty" config/ghostty/config.ghostty

brew bundle dump --force
