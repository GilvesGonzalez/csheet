# Aliases Ubuntu

Abrir archivo de configuración y agregar alias (depende si usas `zsh` o `bash`):

```
$ vi ~/.zshrc    
```


#### Docker

Remover contenedores:

```
alias docker-destroy-all-ps='docker rm -f $(docker ps -aq)'
```

Remover contenedores y volúmenes:

```
alias docker-destroy-all-ps-v='docker rm -f $(docker ps -aq) ; docker volume rm $(docker volume ls -q)'
```

Remover imágenes:

```
alias docker-destroy-all-i='docker rmi -f $(docker images -aq)'
```

Remover todo:

```
alias docker-destroy-all='docker rm -f $(docker ps -aq) ; docker volume rm $(docker volume ls -q) ; docker rmi -f $(docker images -aq)'
```

#### Sistema

Actualizar:

```
alias upgrade='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove && sudo snap refresh'
```

Obtener ram en GB:
```
alias ram="free -h --giga | awk 'FNR==2{print \$7}'"
```

#### IP

```
alias ipwifi="ip a | grep wlp | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*'"
```

#### Procesos

Matar un proceso en un puerto:

```
alias killport='fuser -v -n tcp -k'
```

Use `$ killport 80`

#### Git

Pull rebase de muchos repositorios:

```
alias gup-all='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} pull -r origin master \;'
```

Git status de muchos repositorios:

```
alias gst-all='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} status \;'
```

### Otros Usando ohmyzsh

- [Cheat sheet](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)

### Atajos

- `Tab`: autocompleta comandos o rutas de directorios o archivos.
- `Ctrl+a`: lleva el cursor al inicio de la línea de comandos.
- `Ctrl+e`: lleva el cursor al final de la línea de comandos.
- `Ctrl+l`: limpia la terminal, similar a lo que hace el comando clear.
- `Ctrl+c`: termina el proceso que se esté ejecutando, útil para recuperar el control del sistema.
- `Ctrl+d`: sale de la terminal, similar al comando exit.
- `Ctrl+z`: suspende la ejecución del proceso que se está ejecutando y lo pone en segundo plano, con el comando `fg` podremos volver a continuar su ejecución.
- `Ctrl+right`: mueve el cursor al inicio de la palabra siguiente de la línea.
- `Ctrl+left`: mueve el cursor al inicio de la palabra anterior de la línea.
- [Otros](https://picodotdev.github.io/blog-bitix/2016/06/atajos-de-teclado-basicos-de-la-terminal-en-gnu-linux/)
