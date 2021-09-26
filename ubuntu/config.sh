#!/bin/sh

echo "Welcome to ubuntu configurer"

# add ppa
sudo add-apt-repository ppa:papirus/papirus

# update and upgrade
sudo apt update
sudo apt upgrade

# install utilities
sudo apt install -y \
# basic
    zsh vim git curl wget httpie jq tmux build-essential apt-transport-https ca-certificates gnupg lsb-release dconf-cli uuid-runtime \
# python
    pip python3   \
# ui
    gnome-tweaks gnome-shell-extensions papirus-icon-theme plank

# package manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -s "https://get.sdkman.io" | sh

# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"