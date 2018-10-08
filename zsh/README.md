# Configuración de **zsh** (ubuntu 18.04)

#### Prerequisitos

```
# apt install zsh vim git curl wget
```

#### Instalar [oh my zsh](https://ohmyz.sh/)

```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

actualizar el shell a zsh:

```
# chsh -s `which zsh`
```

y cerrar/iniciar sesión:

```
$ pkill -KILL -u $USER
```

#### Actualizar tema a [agnoster](https://github.com/agnoster/agnoster-zsh-theme) (opcional)

instalar fuentes:

```
# apt install fonts-powerline
```

abrir archivo de configuración:

```
$ vi ~/.zshrc    
```

actualizar tema:

```
ZSH_THEME="agnoster"
```

### Otros

- [Cheat sheet](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)
