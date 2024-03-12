#!/usr/bin/env bash

# enable key repeat for VSCode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# fast key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
