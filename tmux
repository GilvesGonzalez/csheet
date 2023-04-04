---
tags: [ tmux ]
---
# To install tmux:
sudo apt install tmux
vim ~/.zshrc

  and add some configurations at the begining of the file:

[[ "$TERM_PROGRAM" != "vscode" ]] && [[ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]] && [[ "$TERM" != "screen" ]] && [[ -z "$TMUX" ]] && exec tmux
export TERM="xterm-256color"

# To install plugins:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
vim ~/.tmux.conf

  add some configurations:

set -g prefix C-Space
set -g default-shell /bin/zsh
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/default/cyan'
run -b '~/.tmux/plugins/tpm/tpm'

  restart terminal and activate them using next command:

tmux source ~/.tmux.conf

  and use next shortcuts combination:

Ctrl-Space + I

# To split horizontal:
Ctrl-Space + "

# To split vertical:
Ctrl-Space + %

# To move between panels:
Ctrl-Space + arrows

# To change panel size:
Ctrl-Space + Ctrl-arrows

# To close panel:
Ctrl-Space + x
Ctrl + d

# To zoom in or out over a panel:
Ctrl-Space + z

# To activate copy mode (activate mouse scroll):
Ctrl-Space + [

# To close copy mode:
Ctrl + c

# To create new window:
Ctrl-Space + c

# To move to previous window:
Ctrl-Space + p

# To move to next window:
Ctrl-Space + n

# To move to specific window:
Ctrl-Space + 0-9

# To show windows menu:
Ctrl-Space + w

# To kill window (also killing all panels):
Ctrl-Space + : 
kill-w -t <0-9>

# To kill all:
tmux kill-server
