# Instalación

```
$ sudo apt install tmux
```

o

```
$ brew install tmux
```

Agregar variable de entorno al principio del archivo `vim ~/.zshrc`:
```bash
[[ "$TERM_PROGRAM" != "vscode" ]] && [[ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]] && [[ "$TERM" != "screen" ]] && exec tmux
export TERM="xterm-256color"
```

### Instalar manejador de plugins

Clonar:
```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Configurar tmux `vi ~/.tmux.conf`:
```bash
set -g prefix C-Space
set -g default-shell /bin/zsh
set -g @plugin 'tmux-plugins/tpm'
run -b '~/.tmux/plugins/tpm/tpm'
```

Activar nueva configuración:
```
$ tmux source ~/.tmux.conf
```

Activar/Actualizar plugins:
```
Prefijo + I
```

### Temas

Instalar fuentes desde [nerd-fonts](https://github.com/romkatv/nerd-fonts):

```
$ git clone https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
$ cd ~/.nerd-fonts
$ ./install.sh
```

Configurar [tmux-themepack](https://github.com/jimeh/tmux-themepack) tmux `vim ~/.tmux.conf`:

```bash
...
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/default/blue'
...
```

Configurar [tmux-power](https://github.com/wfxr/tmux-power) tmux `vim ~/.tmux.conf`:

```bash
...
set -g @plugin 'wfxr/tmux-power'
set -g @tmux_power_theme 'sky'
...
```

Configurar [dracula](https://github.com/dracula/tmux) tmux `vim ~/.tmux.conf`:

```bash
...
set -g @plugin 'dracula/tmux'
set -g @dracula-plugins "battery network cpu-usage ram-usage time"
set -g @dracula-show-left-icon session
set -g @dracula-military-time true
...
```

### Configuración mouse

Linux:

```bash
sudo apt install xclip
```

Abrir `vim ~/.tmux.conf`:

```bash
...
set -g mouse on
set -s set-clipboard off
bind-key -T copy-mode MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "xclip -selection clipboard -i"
...
```

o mac:

```bash
...
set -g mouse on
set -s set-clipboard off
bind-key -T copy-mode MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "pbcopy"
...
```

## Comandos

Prefijo:
```
Ctrl + Space (default Ctrl + b)
```

### Paneles

Split horizontal:
```
Prefijo + "
```

Split vertical:
```
Prefijo + %
```

Moverse entre panel:
```
Prefijo + flechas
```

Cambiar tamaño de panel:
```
Prefijo + Ctrl + flechas
```

Cerrar panel:
```
Prefijo + x
```

Moverse entre todos los paneles:
```
Prefijo + o
```

Rotar todos los paneles:
```
Prefijo + Ctrl + o
```

Moverse entre panel actual y el anterior:
```
Prefijo + ;
```

Cerrar panel:
```
Ctrl + d
```

Hacer zoom sobre panel (volver a ejecutar para salir del zoom):
```
Prefijo + z
```

### Modo copiar (activa movimiento vertical y scroll del ratón)

Modo copiar (activa el scroll del ratón):
```
Prefijo + [
```

Cerrar modo copiar:
```
Ctrl + c
```

### Windows

Crear ventana:
```
Prefijo + c
```

Cambiar a ventana anterior:
```
Prefijo + p
```

Cambiar a siguiente ventana:
```
Prefijo + n
```

Cambiar a ventana usando índice:
```
Prefijo + 0-9
```

Mostrar/Elegir ventanas a través de menú:
```
Prefijo + w
```

Se puede cerrar una ventana cerrando todos los paneles o:
```
Prefijo + : + kill-w -t 0-9
```

### Sesiones

Abrir sesión:
```
Prefijo + : + new-s
```

Cerrar sesión:
```
Prefijo + : + kill-ses -t 0-9
```

Cambiar a sesión previa:
```
Prefijo + (
```

Cambiar a siguiente sesión:
```
Prefijo + )
```

Mostrar/Eligir sesiones:
```
Prefijo + s
```

### Otros comandos

Matar todo tmux:
```
$ tmux kill-server
```

Listar sesiones:
```
$ tmux list-sessions
```

Matar todas las sesiones menos la actual:
```
$ tmux kill-session -a
```
