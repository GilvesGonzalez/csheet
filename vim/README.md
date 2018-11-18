# Instalación

```
$ sudo apt install vim
```

### Instalación de plugins

- [vim-plug](https://github.com/junegunn/vim-plug) - Plugin Manager
- vim-airline [1](https://github.com/vim-airline/vim-airline) [2](https://github.com/vim-airline/vim-airline/wiki/Screenshots) - Tema

> Alternativa para vim-plug: [vundle](https://github.com/VundleVim/Vundle.vim)

Abrir vimrc

```
$ vim ~/.vimrc
```

Agregar

```
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
```

Guargar y ejecutar en la consola

```
$ vim +PlugInstall +qall
```

### Instalación de vim-airline

```
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
```

# Comandos/Shortcuts en Vim

Ayuda:
```
:help
```

Salir:
```
:q
```

Salir sin guardar:
```
:q!
```

Salir y guardar:
```
:wq
```

o

```
:x
```

Guardar:
```
:w
```

Guardar más nombre de archivo:
```
:w nombre
```

Insertar:
```
i para insertar delante del cursor
a para insertar luego del cursor
```

Eliminar línea (cortar línea para luego pegar):
```
dd
```

Buscar:
```
/texto
```
luego usar `n` para siguiente.

Deshacer:
```
u
```

Rehacer:
```
Ctrl + r
```

Seleccionar bloque (modo visual):
```
v
```

Copiar (modo visual):
```
y
```

Copiar línea:
```
yy
```

Pegar:
```
p
```

Cortar (también eliminar):
```
d
```
Insertar nueva línea:
```
o
```
