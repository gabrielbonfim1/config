#!/bin/bash

# Preparing a new MAC for development
# Script Created by gabrielbonfim1.medium.com

#INSTALL HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#INSTALL iTerm2
brew install --cask iterm2

#INSTALL ZSH
brew install zsh

#Define HomeBrew's ZSH as Default Shell
chsh -s /opt/homebrew/bin/zsh

#Install OH-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#Install PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Copy .zshrc file and 

curl -o ~/.zshrc "https://raw.githubusercontent.com/gabrielbonfim1/config/main/.zshrc"
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/gabrielbonfim1/config/main/.p10k.zsh"

#Install Python
brew install python

#Instal Karabiner Elements
brew install --cask karabiner-elements

#Download Karabiner configs
curl -o ~/.config/karabiner/ "https://raw.githubusercontent.com/gabrielbonfim1/config/main/karabiner.json"

#Install SideNotes
brew install --cask sidenotes

#Install Alfred
brew install --cask alfred

#Install VsCode
brew install --cask visual-studio-code

#install AppStore CLI
brew install mas

#Install MacMouseFix
brew install --cask mouse-fix

#Install Magnet From AppStore
mas install 441258766

#Install LanScan from AppStore
mas install 472226235

#Install Whatsapp Desktop
mas install 1147396723
