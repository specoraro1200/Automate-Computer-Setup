#! /bin/bash

sudo dscl . -create /Users/Admin@Mikan
sudo dscl . -create /Users/Admin@Mikan UserShell /bin/bash
sudo dscl . -create /Users/Admin@Mikan realname 'Admin @Mikan'
sudo dscl . -create /Users/Admin@Mikan UniqueID 1001
sudo dscl . -create /Users/Admin@Mikan PrimaryGroupID 1000
sudo dscl . -create /Users/Admin@Mikan NFSHomeDirectory /Local/Users/Admin@Mikan
sudo dscl . -passwd /Users/Admin@Mikan adminpassword1
sudo dscl . -append /Groups/admin GroupMembership Admin@Mikan

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install dockutil
brew install google-chrome
brew install firefox
brew install snip
brew install adobe-acrobat-reader
brew install zoom
brew install --cask onedrive
brew install microsoft-powerpoint
brew install microsoft-word 
brew install microsoft-excel

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/System/Library/Desktop Pictures/Solid Colors/Black.png"' 
osascript -e 'tell app "System Events" to set current screen saver to screen saver "FloatingMessage"'

defaults write com.apple.systemuiserver menuExtras -array \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \

dockutil --remove "News"
dockutil --remove "TV"
dockutil --remove "Podcasts"
dockutil --remove "Music"
dockutil --remove "Photos"
dockutil --remove "Maps"
dockutil --remove "App Store"

dockutil --add /Applications/FireFox.app
dockutil --add /Applications/Adobe\ Acrobat\ Reader\ DC.app
dockutil --add /Applications/Google\ Chrome.app
dockutil --add /Applications/Microsoft\ Word.app
dockutil --add /Applications/Adobe\ Acrobat\ Reader\ DC.app
dockutil --add /Applications/Microsoft\ Excel.app
dockutil --add /Applications/Microsoft\ PowerPoint.app
dockutil --add /Applications/OneDrive.app
