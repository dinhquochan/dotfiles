#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Ensure ~/.config is exists
mkdir -p $HOME/.config

cp .zshrc $HOME
cp .tmux.conf $HOME
cp .php-cs-fixer.php $HOME
cp .gitignore $HOME
cp .gitconfig $HOME
cp -r .config/nvim $HOME/.config

# For vim mode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.phpstorm ApplePressAndHoldEnabled -bool false 
defaults write com.jetbrains.webstorm ApplePressAndHoldEnabled -bool false 
