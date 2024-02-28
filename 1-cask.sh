#!/bin/bash

# Determine OS name
os=$(uname)
if [ "$os" != "Darwin" ]; then
  echo "This script support Darwin only"
  exit 1
fi

echo "Installing homebrew"
echo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing zsh thru homebrew"
brew install zsh
chsh -s /opt/homebrew/bin/zsh

cask_pkgs=(
  raycast
  ngrok
  visual-studio-code
  spectacle
  warp
  cloudflare-warp
  discord
  google-chrome
  brave-browser
  tableplus
  telegram
  steam
  iterm2
)

echo "Installing homebrew cask app"
for pkg in "${cask_pkgs[@]}"; do
  echo "Installing cask $pkg"
  brew install --cask $pkg
done

echo "Installing nvm & related pkg"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts
