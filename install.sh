#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update
brew install zsh vim git tmux wget curl

sudo echo /opt/homebrew/bin/zsh >> /etc/shells
chsh -s /opt/homebrew/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
nvm install --lts

# Ensure ~/.config is exists
mkdir -p $HOME/.config
mkdir -p $HOME/.config/tmux

cp .zshrc $HOME
cp .gitignore $HOME
cp .gitconfig $HOME
cp .config/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

# For vim mode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.phpstorm ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.webstorm ApplePressAndHoldEnabled -bool false

# Bun install
curl -fsSL https://bun.sh/install | bash # for macOS, Linux, and WSL
