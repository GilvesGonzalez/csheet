# tmux
[[ "$TERM_PROGRAM" != "vscode" ]] && [[ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]] && [[ "$TERM" != "screen" ]] && [[ -z "$TMUX" ]] && exec tmux

#variables
export TERM="xterm-256color"
export TERMINAL=gnome-terminal
export PATH="/home/saul/.local/bin:$PATH"
export ZSH="/home/saul/.oh-my-zsh"

#brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# oh my zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
nvm
kubectl
kubectx
minikube
docker
httpie
brew
virtualenv
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# aliases
alias dps='docker ps --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
alias dpa='docker ps -a --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
alias dvl='docker volume ls'
alias dim='docker images --format "table{{.Repository}}:{{.Tag}}\t{{.ID}}\t{{.Size}}"'
alias drmps='docker rm -f $(docker ps -aq)'
alias drmvol='docker volume rm $(docker volume ls -q)'
alias drmim='docker rmi -f $(docker images -aq)'
alias drmimd='docker rmi -f $(docker images -f "dangling=true" -q)'
alias upgrade='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo snap refresh'
alias ram="free -h --giga | awk 'FNR==2{print \$7}'"
alias open='xdg-open '
alias ipwifi="ip a | grep wlp | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*'"
alias ippublic='curl checkip.amazonaws.com'
alias killport='fuser -v -n tcp -k '
alias dir='basename $(pwd)'
alias cd..='cd ..'
alias rmdir='rm -rf '
alias ls="colorls"
alias tree="colorls --tree"
alias la="colorls -al"
alias wdisk="watch -tc 'df -H | grep -vE \"(tmpfs|loop|udev)\"'"

