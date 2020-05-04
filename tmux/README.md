# Instalación

```
$ sudo apt install tmux
```

Agregar variable de entorno al principio del archivo `vim ~/.zshrc`:
```
[[ $TERM != "screen" ]] && exec tmux
```

## Tema

- https://github.com/jimeh/tmux-themepack
- https://github.com/tmux-plugins/tpm

Clonar:
```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Configurar tmux `vim ~/.tmux.conf`:
```
set-option -g prefix C-x
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/default/blue'
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

Instalar [fuente](https://github.com/powerline/fonts) (no recomendada):

```
$ git clone git@github.com:powerline/fonts.git ~/.powerline-fonts
$ cd ~/.powerline-fonts
$ ./install
```

O Instalar fuentes desde [nerd-fonts](https://github.com/romkatv/nerd-fonts) (recomendada):

```
$ git clone --depth=1 https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
$ cd ~/.nerd-fonts
$ ./install
```

## Comandos

Prefijo:
```
Ctrl + x (default Ctrl + b)
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
