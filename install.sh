#!/usr/bin/env bash

# Brew
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >>$HOME/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >>$HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
fi
brew bundle

# Stow
mkdir ~/.config 2>/dev/null || true
stow -d config osx -t "$HOME"
stow -d config common -t "$HOME"

# Create Hushlogin File
[ ! -f "~/.hushlogin" ] && touch ~/.hushlogin

# Settings for macOS 26
osxVersion=$(sw_vers -productVersion)
if [[ "$osxVersion" == 26* ]]; then
  defaults write -g NSConvolutionOverride1 -float 16
  defaults write -g NSSplitViewItemSidebarDefaultsToFloatingAppearance -bool false
fi

# Trackpad
defaults write -g com.apple.swipescrolldirection -boolean NO

# Dock
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

# Wallpaper
desktoppr "walls/nord_hills.png"

# Restart some services
killall Dock
