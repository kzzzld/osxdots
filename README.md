# kzzzl's macOS dotfiles

My personal macOS configuration, managed with [GNU Stow](https://www.gnu.org/software/stow/)
and installed via [Homebrew](https://brew.sh). Tested on macOS Sequoia.

## Requirements

- macOS (Apple Silicon — paths assume `/opt/homebrew`)
- Git

## Install

Clone the repo, then run the bootstrap script:

```sh
git clone ssh://forgejo@git.kzzzl.xyz/kzzzl/macos_dotfiles.git ~/Dotfiles
cd ~/Dotfiles
./install.sh
```

The script will:

1. Install Homebrew if it isn't already present.
2. Install everything in the `Brewfile` (`brew bundle`).
3. Stow the into `$HOME` so dotfiles land in the right places.
4. Apply macOS tweaks: reverse scroll direction, Dock autohide on the left, and set the wallpaper.
