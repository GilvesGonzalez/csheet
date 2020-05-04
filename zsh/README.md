# Configuración de **zsh**

### Prerequisitos

```
# apt install zsh vim git curl wget
```

### Instalar [oh my zsh](https://ohmyz.sh/)

```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Temas

#### Actualizar tema a [agnoster](https://github.com/agnoster/agnoster-zsh-theme)

instalar [fuente](https://github.com/powerline/fonts) (no recomendada):

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

abrir archivo de configuración:

```
$ vi ~/.zshrc    
```

actualizar tema:

```
ZSH_THEME="agnoster"
```

#### Instalar [powerlevel10k](https://github.com/romkatv/powerlevel10k)

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

ejecutar:

```
$ p10k configure
```
