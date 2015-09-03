#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/opt/homebrew-cask/Caskroom/sublime-text3/Build 3083/Sublime Text.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"
dockutil --no-restart --add "/opt/homebrew-cask/Caskroom/slack/1.1.3/Slack.app"
dockutil --no-restart --add "/opt/homebrew-cask/Caskroom/evernote/6.1_452115/Evernote.app"

killall Dock