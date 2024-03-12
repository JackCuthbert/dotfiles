#!/usr/bin/env bash

echo "Linking dotfiles"
. link.sh > install.log

echo "Setting up macOS defaults"
. defaults.sh >> install.log

echo "Installing Homebrew packages"
brew bundle >> install.log
