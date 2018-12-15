# Instalación

```
$ sudo apt install tmux
```

Agregar variable de entorno al principio del archivo `vim ~/.zshrc`:
```
tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
export TERM="xterm-256color"
```

### Tema

Clonar:
```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Configurar tmux `vim ~/.tmux.conf`:
```
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/block/cyan'
run -b '~/.tmux/plugins/tpm/tpm'
```

Activar plugins:
```
Prefijo + I
```
```
$ tmux source ~/.tmux.conf
```

### Tips para agregar memoria ram a la barra
```
vim .tmux/plugins/tmux-themepack/powerline/double/blue.tmuxtheme
```

Modificar línea:
```
set -g status-right "#[fg=colour235,bg=colour233]#[fg=colour240,bg=colour235] %H:%M:%S #[fg=colour240,bg=colour235]#[fg=colour233,bg=colour240] %d-%b-%y #[fg=colour24,bg=colour240]#[fg=colour232,bg=colour24,bold] #H #[fg=colour130,bg=colour24,nobold]#[fg=colour233,bg=colour130,bold] #(free -m | awk 'NR==2 {print $7}')MB "
```

> Comando para ver la memoria disponible `free -m | awk 'NR==2 {print $7}'`

### Comandos

Prefijo:
```
Ctrl + b
```

Split horizontal:
```
Prefijo + "
```

Split vertical:
```
Prefijo + %
```

Moverse entre terminales:
```
Prefijo + flechas
```

Cerrar terminal:
```
Prefijo + x
```

Modo copiar (activa el scroll del mouse):
```
Prefijo + [
```

Limpiar todo:
```
Prefijo + c
```

Moverse entre todos los paneles:
```
Prefijo + o
```

Moverse al el panel actual y el anterior:
```
Prefijo + ;
```

Cerrar modo copiar:
```
Ctrl + c
```

Cerrar panel:
```
Ctrl + d
```
