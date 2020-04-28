#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type.
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet friendsofphp/php-cs-fixer

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Install PHPCS
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
chmod +x phpcs.phar
mv phpcs.phar /usr/local/bin/phpcs


echo "Restore ZSH settings..."
cp .zshrc ~/
cp .zsh_aliases ~/
cp .zsh_paths ~/

echo "Restore PHPCS settings..."
cp .phpcs.xml ~/
cp .php_cs ~/

echo "Restore .gitignore_global..."
cp .gitignore_global ~/

echo "Settings macOS..."
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false


