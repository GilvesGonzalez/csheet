# Aliases Ubuntu

Abrir archivo de configuración y agregar alias (depende si usas `zsh` o `bash`):
```
$ vi ~/.zshrc    
```

Para describir un alias:
```
$ type ALIAS
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

Abrir archivo con app asociada:
```
alias open='xdg-open'
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
