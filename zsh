---
tags: [ zsh ]
---
# To install nerd-fonts: https://github.com/romkatv/nerd-fonts
git clone --depth 1 https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
cd ~/.nerd-fonts
./install.sh

# oh-my-zsh: https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  add some plugins:

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

vim ~/.zshrc

  and change the plugin list:

plugins=( git zsh-syntax-highlighting zsh-autosuggestions )

# To install powerlevel: https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

vim ~/.zshrc

  and add or change the theme:

ZSH_THEME="powerlevel10k/powerlevel10k"

  then:

p10k configure
