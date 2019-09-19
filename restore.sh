#!/usr/bin/env bash

echo "Restore VIM settings..."
cp .vimrc ~/
cp .gvimrc ~/
cp .vim_plugins ~/.vim/plugins.vim

echo "Restore ZSH settings..."
cp .zshrc ~/
cp .zsh_aliases ~/

echo "Restore PHPCS & PHPCS Fixer..."
cp .phpcs.xml ~/
cp .php_cs ~/

echo "Restore .gitignore_global..."
cp .gitignore_global ~/


