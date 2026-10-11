#!/usr/bin/env bash

# Brew
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >> /Users/kzzzl/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> /Users/kzzzl/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
fi
brew bundle

# Stow
mkdir ~/.config || true
stow -d config osx -t "$HOME"

# Trackpad
defaults write -g com.apple.swipescrolldirection -boolean NO

# Dock
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

# Wallpaper
desktoppr "walls/tokyo_night_catppuccin.jpg"

# Restart some services
killall Dock
