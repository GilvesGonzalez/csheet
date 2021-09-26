#!/bin/sh

set -e

echo ">> Adding PPA"
sudo add-apt-repository -y ppa:papirus/papirus

echo ">> Update"
sudo apt update
sudo apt upgrade -y

echo ">> Install utilities"
sudo apt install -y \
    zsh vim git curl wget httpie jq tmux build-essential apt-transport-https ca-certificates gnupg lsb-release dconf-cli uuid-runtime software-properties-common \
    pip python3 \
    gnome-tweaks gnome-shell-extensions papirus-icon-theme plank\

echo ">> Config git"
git config --global user.name "Saúl Piña"
git config --global user.email "sauljabin@gmail.com"

echo ">> Install pip apps"
pip install --upgrade pip
pip install poetry licensegh gitignoregh

echo ">> Install package manager"
echo | bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -s "https://get.sdkman.io" | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo ">> Install docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

echo ">> Install enpass"
echo "deb https://apt.enpass.io/ stable main" > sudo tee /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc
sudo apt update
sudo apt install -y enpass

echo ">> Install vscode"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code

echo ">> Install chrome"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install -y google-chrome-stable

echo ">> Install kubernetes"
sudo apt install -y virtualbox minikube
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install kubectl kubectx

echo ">> Install spotify"
sudo snap install spotify

echo ">> Install oh-my-zsh"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo ">> Install fonts"
git clone --depth 1 https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
cd ~/.nerd-fonts
./install.sh
cd -

echo ">> Install gnome theme"
git clone https://github.com/Jannomag/Yaru-Colors ~/.yaru-colors
cd ~/.yaru-colors
./install.sh
cd -

echo ">> Install zsh plugins"
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo ">> Install zsh theme"
git clone https://github.com/Mayccoll/Gogh.git ~/.gogh
cd ~/.gogh/themes
./afterglow.sh

echo ">> Restore files"
wget -O ~/.zshrc https://raw.githubusercontent.com/sauljabin/linux-commands/main/ubuntu/.zshrc 
wget -O ~/.tmux.conf https://raw.githubusercontent.com/sauljabin/linux-commands/main/ubuntu/.tmux.conf 