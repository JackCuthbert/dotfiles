#!/usr/bin/env bash

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false

# fast key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
