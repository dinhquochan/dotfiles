#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update
brew install bash git tmux wget curl

# Install global Composer packages
composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Ensure ~/.config is exists
mkdir -p $HOME/.config
mkdir -p $HOME/.config/git
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.config/git/git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O $HOME/.config/git/git-prompt.sh

cp .bash* $HOME
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
