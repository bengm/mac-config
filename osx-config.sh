# See also  https://gist.github.com/brandonb927/3195465/

# DOCK
# Indicate hidden running apps in dock
defaults write com.apple.dock showhidden -bool TRUE
# Set autohide timer
defaults write com.apple.dock autohide-time-modifier -float 1
# Speed dock animations
defaults write com.apple.dock expose-animation-duration -float 0.12
# Autohide
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.2
defaults write com.apple.dock autohide-time-modifier -float 0.2

killall Dock

# FINDER
# show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool YES
# Don't show files stored on desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder
# default finder windows to column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

killall Finder

# OTHER
# list branches as console output not editor
git config --global pager.branch false
# silence the power chime
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true && killall PowerChime

# XCODE
xcode-select --install
# This should generate a prompt confirming command line tools (yes/confirm/install). 