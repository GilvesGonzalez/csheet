# Aliases Ubuntu

Abrir archivo de configuración y agregar alias (depende si usas `zsh` o `bash`):
```
$ vi ~/.zshrc    
```

Para describir un alias:
```
$ type ALIAS
```

### Docker

Obtener procesos:
```
alias dps='docker ps --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
```

Listar todos los contenedores incluidos los detenidos:
```
alias dpa='docker ps -a --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
```

Listar todos los volúmenes:

```
alias dvl='docker volume ls'
```

Listar imagenes:
```
alias dim='docker images --format "table{{.Repository}}:{{.Tag}}\t{{.ID}}\t{{.Size}}"'
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

### Sistema

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

### IP

Wifi:
```
alias ipwifi="ip a | grep wlp | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*'"
```

IP pública:
```
alias ippublic='curl checkip.amazonaws.com'
```

### Procesos

Matar un proceso en un puerto:
```
alias killport='fuser -v -n tcp -k '
```

Use `$ killport 80`

### Git

Pull rebase de muchos repositorios (recursivo):
```
alias gupr='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} pull -r origin master \;'
```

Git status de muchos repositorios (recursivo):
```
alias gstr='find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} status \;'
```

### Random

Random mensaje de commit:
```
alias whatthecommit='curl http://whatthecommit.com/index.txt'
```

Secreto aleatorio:
```
alias secret='python -c "import secrets; print(secrets.token_hex(16))"'
```

### Directorios

Nombre del directorio actual:
```
alias dir='basename $(pwd)'
```

Subir nivel:
```
alias cd..='cd ..'
```

Eliminar directorio:
```
alias rmdir='rm -rf '
```

### Mejorar el `ls`

```bash
$ sudo apt install ruby-full
$ sudo gem install colorls
```

o mac:

```bash
$ brew install exa
```

abrir archivo de configuración:

```bash
$ vi ~/.zshrc
```

agregar en linux:

```bash
if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias tree="colorls --tree"
    alias la="colorls -al"
fi
```

o mac:

```bash
if [ -x "$(command -v exa)" ]; then
    alias ls="exa --icons"
    alias tree="exa --icons --tree"
    alias la="exa --icons --long --all --group"
fi
```

### Watch

Disco:

```
alias wdisk="watch -tc 'df -H | grep -vE \"(tmpfs|loop|udev)\"'"
```

### Otros Usando ohmyzsh

- [Cheat sheet](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)
