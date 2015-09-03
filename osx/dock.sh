#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "$HOME/Applications/Sublime Text.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"

killall Dock