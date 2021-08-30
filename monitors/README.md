# Instalar monitores

### Sistema [htop](https://htop.dev/)

```bash
$ sudo apt install htop
```

o mac:

```bash
$ brew install htop
```

### Sistema [gtop](https://github.com/aksakalli/gtop)

```bash
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
$ nvm install 16
$ npm install gtop -g
```

o mac:

```bash
$ brew install nvm
$ nvm install 16
$ npm install gtop -g
```

### Tamaño de archivo [ncdu](https://dev.yorhel.nl/ncdu)

```bash
$ sudo apt install ncdu
```

### Disco usado

```bash
$ watch -tc 'df -H | grep -vE "(tmpfs|loop|udev)"'
```

### Docker [lazydocker](https://github.com/jesseduffield/lazydocker)

```bash
$ curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

o mac:

```bash
$ brew install lazydocker
```

### Docker listar contenedores

```bash
$ watch -tc 'docker ps --format "table{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
```

### Docker listar volumenes

```bash
$ watch -tc 'docker volume ls'
```

### Docker listar imagenes

```bash
$ watch -tc 'docker images --format "table{{.Repository}}:{{.Tag}}\t{{.ID}}\t{{.Size}}"'
```