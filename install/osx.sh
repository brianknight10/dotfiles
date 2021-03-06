#!/usr/bin/env bash

# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap homebrew/versions
brew tap caskroom/versions
brew update --system

# Install brew and brew-cask packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

# Install bash (with Homebrew)

brew install bash
grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash

# Install extra stuff

if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install/osx.sh" ]; then
    . "$EXTRA_DIR/install/osx.sh"
fi
