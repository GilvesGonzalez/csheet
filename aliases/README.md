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

Obtener procesos:

```
alias dps='docker ps --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
```

Listar todos los contenedores incluidos los detenidos:

```
alias dpa='docker ps -a --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
```

Listar imagenes:

```
alias dim='docker images'
```

Remover contenedores:

```
alias drmps='docker rm -f $(docker ps -aq)'
```

Remover volúmenes:

```
alias drmvol='docker volume rm $(docker volume ls -q)'
```

Remover imágenes:

```
alias drmim='docker rmi -f $(docker images -aq)'
```

Remover dangling images:

```
alias drmimd='docker rmi -f $(docker images -f "dangling=true" -q)'
```

#### Sistema

Actualizar:

```
alias upgrade='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo snap refresh'
```

Obtener ram en GB:

```
alias ram="free -h --giga | awk 'FNR==2{print \$7}'"
```

Abrir archivo con app asociada:

```
alias open='xdg-open '
```

#### IP

Wifi:

```
alias ipwifi="ip a | grep wlp | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*'"
```

IP pública:

```
alias ippublic='curl checkip.amazonaws.com'
```

#### Procesos

Matar un proceso en un puerto:

```
alias killport='fuser -v -n tcp -k '
```

Use `$ killport 80`

#### Git

Pull rebase de muchos repositorios (recursivo):

```
alias gupr='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} pull -r origin master \;'
```

Git status de muchos repositorios (recursivo):

```
alias gstr='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} status \;'
```

### Watch

Reescribir alias:
```
alias watch='watch -txc '
```

### Otros

Random commit:

```
alias whatthecommit='curl http://whatthecommit.com/index.txt'
```

### Otros Usando ohmyzsh

- [Cheat sheet](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)
