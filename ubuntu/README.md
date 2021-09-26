# Configuración inicial

```
sudo apt update
sudo apt upgrade
sudo apt install -y zsh vim git curl wget pip python3 build-essential httpie jq tmux apt-transport-https ca-certificates gnupg lsb-release
```

# Agregar aliases

[aliases](../aliases)

# Temas

### Extensions

```
sudo apt install gnome-tweaks gnome-shell-extensions
```

### Iconos papirus

```
sudo add-apt-repository ppa:papirus/papirus
sudo apt install papirus-icon-theme
```

### Yaru Theme

```
git clone https://github.com/Jannomag/Yaru-Colors ~/.yaru-colors
cd ~/.yaru-colors
./install.sh
```

### Instalar dock

```
sudo apt install plank
```

### Terminal theme

[temas](/afterglow.sh)

```
sudo apt-get install dconf-cli uuid-runtime
git clone https://github.com/Mayccoll/Gogh.git ~/.gogh
cd ~/.gogh/themes
./afterglow.sh
```

### Zsh y Tux

- [zsh](../zsh)
- [tmux](../tmux)

# Configuración

- Instalar [brew](https://brew.sh/)
- Instalar [sdk](https://sdkman.io/)
- Instalar [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
- Instalar [k8s](https://kubernetes.io/docs/tasks/tools/)

