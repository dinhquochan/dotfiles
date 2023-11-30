#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update
brew install bash vim git tmux wget curl

sudo echo /opt/homebrew/bin/bash >> /etc/shells
chsh -s /opt/homebrew/bin/bash

# Install global Composer packages
composer global require laravel/installer

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
nvm install --lts

# Ensure ~/.config is exists
mkdir -p $HOME/.config
mkdir -p $HOME/.config/tmux

# Git completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.config/git-completion.bash

cp .bashrc $HOME
cp .bash_profile $HOME
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
