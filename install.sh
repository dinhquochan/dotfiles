#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Brew bundle
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
nvm install --lts

# Install Oh-My-Zsh

# Ensure ~/.config is exists
mkdir -p $HOME/.config
mkdir -p $HOME/.config/tmux
mkdir -p $HOME/.config/git

cp .zshrc $HOME
cp .config/git/ignore $HOME/.config/git/ignore
cp .config/git/message $HOME/.config/git/message
cp .gitconfig $HOME
cp .config/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

# For vim mode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.phpstorm ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.webstorm ApplePressAndHoldEnabled -bool false

