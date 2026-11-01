.PHONY: help install update

help:
	@echo "make install  Set up this machine and copy dotfiles into \$$HOME"
	@echo "make update   Copy dotfiles from \$$HOME back into this repo and dump the Brewfile"

install:
	@./scripts/install.sh

update:
	@./scripts/update.sh
