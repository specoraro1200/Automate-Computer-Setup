#! /bin/bash

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#brew install google-chrome
#brew install firefox
#brew install snip
#brew install adobe-acrobat-reader
#brew install zoom
#brew install microsoft-powerpoint
#brew install microsoft-word
#brew install microsoft-excel
#brew install onedrive

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/System/Library/Desktop Pictures/Solid Colors/Black.png"' 
osascript -e 'tell app "System Events" to set current screen saver to screen saver "Random"'

dockutil --remove "Contacts"
dockutil --remove "FaceTime"
dockutil --remove "Messages"

dockutil --add /Applications/FireFox.app --position 1
