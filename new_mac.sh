#!/bin/bash

# Preparing a new MAC for development
# Script Created by gabrielbonfim1.medium.com

#INSTALL HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#INSTALL iTerm2
brew install --cask iterm2

#INSTALL ZSH
brew install zsh

#Define HomeBrew's ZSH as Default Shell
chsh -s /opt/homebrew/bin/zsh

#Install OH-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Copy .zshrc file

curl -o ~/.zshrc "https://raw.githubusercontent.com/gabrielbonfim1/config/main/.zshrc"
