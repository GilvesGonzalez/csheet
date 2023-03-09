---
tags: [ tmux ]
---
# To install tmux:
sudo apt install tmux

vim ~/.zshrc

Add some configurations at the begining of the file:

[[ "$TERM_PROGRAM" != "vscode" ]] && [[ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]] && [[ "$TERM" != "screen" ]] && [[ -z "$TMUX" ]] && exec tmux
export TERM="xterm-256color"

# To install plugins:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim ~/.tmux.conf

Add some configurations:

set -g prefix C-Space
set -g default-shell /bin/zsh
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/default/cyan'
run -b '~/.tmux/plugins/tpm/tpm'

Restart terminal and activate them using:

tmux source ~/.tmux.conf

Ctrl-Space + I