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

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Ensure ~/.config is exists
mkdir -p $HOME/.config
mkdir -p $HOME/.config/git
mkdir -p $HOME/.config/kitty

cp zshrc $HOME/.zshrc
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp zsh_macos $HOME/.zsh_macos
else
    cp zsh_linux $HOME/.zsh_linux
fi

cp config/git/ignore $HOME/.config/git/ignore
cp config/git/message $HOME/.config/git/message
cp gitconfig $HOME/.gitconfig
cp tmux.conf $HOME/.tmux.conf
cp -R config/kitty/* $HOME/.config/kitty/

# For vim mode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.phpstorm ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.webstorm ApplePressAndHoldEnabled -bool false
