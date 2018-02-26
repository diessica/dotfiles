#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Install Homebrew
if test ! $(which brew)
then
  echo " → Installing Homebrew for package management..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "→ Installing applications..."
# Set up Cask, for Homebrew
brew tap caskroom/cask
# Set up Caskroom-versions, which allows apps' alternative versions, like Canary
brew tap caskroom/versions
# Install all apps listed in the caskfile
brew cask install $(cat brew/caskfile|grep -v "#")

echo "→ Installing fonts..."
# Set up Caskroom-fonts
brew tap caskroom/fonts
# Install all fonts listed in the fontfile
brew cask install $(cat brew/fontfile|grep -v "#")
