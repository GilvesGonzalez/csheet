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
