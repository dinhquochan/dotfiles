# dotfiles

Hey you what settings do you use?

These are my config setting for various apps, editors and linters. I'd suggest not copying them directly but referencing what I have and what ones might make sense for you.

## Usage

Built for macOS on Apple Silicon (Homebrew in `/opt/homebrew`).

```sh
git clone https://github.com/dinhquochan/dotfiles.git
cd dotfiles
make install
```

| Command        | What it does                                                         |
| -------------- | -------------------------------------------------------------------- |
| `make install` | Set up this machine and copy the dotfiles into `$HOME`               |
| `make update`  | Copy the dotfiles from `$HOME` back into this repo and dump `Brewfile` |
| `make`         | List the commands                                                    |

`make install` overwrites the matching files in `$HOME`. Steps that are already done are skipped, so it is safe to run again. It will:

1. Install Homebrew (which also sets up the Xcode command line tools), then everything in `Brewfile`.
2. Make Homebrew bash the login shell (adds it to `/etc/shells`, asks for your password).
3. Install pnpm, Claude Code and opencode with their official installers.
4. Install the tmux plugin manager.
5. Copy the config files and fonts into place, then install the tmux plugins.
6. Apply a few macOS `defaults` tweaks.

## Layout

```
.
├── Brewfile                  Homebrew formulae, casks and VS Code extensions
├── Makefile                  make install / make update
├── config/
│   ├── bash/
│   │   ├── bashrc            → ~/.bashrc
│   │   ├── bash_profile      → ~/.bash_profile
│   │   └── inputrc           → ~/.inputrc
│   ├── ghostty/
│   │   └── config.ghostty    → ~/Library/Application Support/com.mitchellh.ghostty/
│   ├── git/
│   │   ├── gitconfig         → ~/.gitconfig
│   │   └── gitignore_global  → ~/.gitignore_global
│   ├── tmux/
│   │   └── tmux.conf         → ~/.tmux.conf
│   └── vim/
│       └── vimrc             → ~/.vimrc
├── fonts/                    Monotional and Monotional Nerd Font → ~/Library/Fonts
└── scripts/
    ├── install.sh
    └── update.sh
```

To add a new dotfile, put it under `config/<tool>/` and add a `cp` line to both `scripts/install.sh` and `scripts/update.sh`.

Enjoy! 😘
