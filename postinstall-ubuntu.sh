#!/bin/sh

# Primary Apps Install
sudo apt update && sudo apt install nala -y
sudo nala fetch
sudo nala update && sudo nala upgrade -y
sudo nala install -y zsh git neofetch nano lnav htop build-essential curl wget openssh-server 

#Oh My ZSH
sudo chsh -s $(which zsh) $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

