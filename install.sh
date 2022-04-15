#!/bin/bash

sudo apt install -s neofetch zsh kitty

# install OhMyZsh framework (ohmyz.sh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/plugins}/zsh-autosuggestions

mkdir -p $HOME/.config/kitty/
cp kitty.conf $HOME/.config/kitty/

./install_tools.sh
