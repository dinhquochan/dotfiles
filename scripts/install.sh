#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "Setting up your Mac..."

# Homebrew (its installer also sets up the Xcode command line tools)
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle

# Use Homebrew bash as the login shell
BREW_BASH="/opt/homebrew/bin/bash"
grep -qxF "$BREW_BASH" /etc/shells || echo "$BREW_BASH" | sudo tee -a /etc/shells >/dev/null
[ "$(dscl . -read "/Users/$USER" UserShell | awk '{print $2}')" = "$BREW_BASH" ] || chsh -s "$BREW_BASH" "$USER"

# Developer tools (installed before the dotfiles are copied, so our bashrc wins)
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$HOME/.local/bin:$PNPM_HOME/bin:$HOME/.opencode/bin:$PATH"

# pnpm
command -v pnpm >/dev/null 2>&1 || curl -fsSL https://get.pnpm.io/install.sh | PNPM_NO_MODIFY_PATH=1 sh -

# Claude Code
command -v claude >/dev/null 2>&1 || curl -fsSL https://claude.ai/install.sh | bash

# opencode
command -v opencode >/dev/null 2>&1 || curl -fsSL https://opencode.ai/install | bash -s -- --no-modify-path

# tmux plugin manager
[ -d "$HOME/.tmux/plugins/tpm" ] || git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"

# Dotfiles
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
cp config/bash/bashrc "$HOME/.bashrc"
cp config/bash/bash_profile "$HOME/.bash_profile"
cp config/bash/inputrc "$HOME/.inputrc"
cp config/git/gitignore_global "$HOME/.gitignore_global"
cp config/git/gitconfig "$HOME/.gitconfig"
cp config/tmux/tmux.conf "$HOME/.tmux.conf"
cp config/vim/vimrc "$HOME/.vimrc"
cp config/ghostty/config.ghostty "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty"

# tmux plugins listed in tmux.conf
"$HOME/.tmux/plugins/tpm/bin/install_plugins"

# Fonts
find fonts -type f \( -iname '*.ttf' -o -iname '*.otf' \) -exec cp {} "$HOME/Library/Fonts/" \;

# Show ~/Library in Finder
chflags nohidden "$HOME/Library"

# Disable macOS corner windows radius
defaults write -g NSConvolutionOverride1 -float 4
defaults write -g NSSplitViewItemGlassMinimumCornerRadius -float 4

# Disable macOS floating sidebar
defaults write -g NSSplitViewItemSidebarDefaultsToFloatingAppearance -bool false

# Disable macOS smooth fonts
defaults write -g AppleFontSmoothing -int 0

echo "Done."
