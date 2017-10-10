#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/opt/homebrew-cask/Caskroom/iterm2/2.1.4/iTerm.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/opt/homebrew-cask/Caskroom/evernote/6.6_453293/Evernote.app"

killall Dock
