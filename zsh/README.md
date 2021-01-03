# Configuración de **zsh**

### Prerequisitos

```
# apt install zsh vim git curl wget
```

### Instalar [oh my zsh](https://ohmyz.sh/)

```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Instalar [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Instalar fuentes desde [nerd-fonts](https://github.com/romkatv/nerd-fonts):
```
$ git clone --depth=1 https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
$ cd ~/.nerd-fonts
$ ./install.sh
```

Configurar fuente `MesloLGS Nerd Font Regular` en terminal [ver](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

Instalar tema:
```
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

abrir archivo de configuración:

```
$ vi ~/.zshrc    
```

actualizar tema:

```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

verificar variable `TERM`:
```
export TERM="xterm-256color"
```

### COnfigurar tema

Luego de los pasos anteriores cerrar e iniciar sesión de nuevo.

En caso de ejecutar el terminal y no activarse el `zsh` ejecutar:

```
$ chsh -s $(which zsh)
```

Cerrar e iniciar sesión nuevamente.

Ejecutar para configurar:

```
$ p10k configure
```

### Configurar plugins

Ver lista de plugins e instrucciones [aquí](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
