#!/usr/bin/env bash


# --------------–-------–--------–--------–-------–--–-----
# Prerequisites
# --------------–-------–--------–--------–-------–--–-----
sudo -v # Ask for admin upfront

echo "→ Installing Xcode Command Line Tools..."
xcode-select --install
echo "✓ Xcode OK."

if test ! $(which brew)
then
  echo " → Installing Homebrew for package management..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
brew upgrade
echo "✓ Homebrew OK."

echo "→ Downloading dotfiles into user folder..."
git clone https://github.com/diessica/dotfiles.git ~/dotfiles
cd ~/dotfiles
echo "✓ dotfiles download OK."


# --------------–-------–--------–--------–-------–--–-----
# GUI apps
# --------------–-------–--------–--------–-------–--–-----
echo "→ Installing packages from brew..."
brew install $(cat brew/brewfile|grep -v "#")
echo "✓ fonts and CLI/GUI apps OK."

echo "→ Configuring git..."
ln -s ~/dotfiles/git/config ~/.gitconfig
ln -s ~/dotfiles/git/ignore_global ~/.gitignore_global
# Add personal information in your .gitlocal, not .gitconfig!
echo "✓ git configuration OK."

echo "→ Configuring fish shell..."
echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells > /dev/null
chsh -s /opt/homebrew/bin/fish # Set Fish as default shell
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/fish/utils ~/.config/fish/functions/custom
ln -sf ~/dotfiles/fish/fishfile ~/.config/fish/fishfile
fish # Switch to fish
fisher install $(cat fish/fishfile) # Install fish plugins
echo "✓ fish shell OK."

echo "→ Configuring kitty..."
ln -s ~/dotfiles/misc/kitty.conf ~/.config/kitty/kitty.conf
echo "✓ kitty terminal OK."

echo "→ Configuring ssh..."
ln -s ~/dotfiles/git/ssh-config ~/.ssh/config
echo "✓ ssh OK."


# --------------–-------–--------–--------–-------–--–-----
# macOS settings
# --------------–-------–--------–--------–-------–--–-----
echo "→ Setting macOS defaults... (It'll shut down Terminal, bye!)"
sh misc/macos
