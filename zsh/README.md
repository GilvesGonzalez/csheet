# Configuración de **zsh** (ubuntu 18.04)

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

instalar fuentes:

```
$ git clone git@github.com:powerline/fonts.git powerline-fonts
$ cd powerline-fonts
$ ./install
```

en elementary os:

```
$ gsettings set io.elementary.terminal.settings font 'Roboto Mono for Powerline 12' 
```

abrir archivo de configuración:

```
$ vi ~/.zshrc    
```

actualizar tema:

```
ZSH_THEME="agnoster"
```

#### Instalar [powerlevel9k](https://github.com/bhilburn/powerlevel9k)

```
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

abrir archivo de configuración:

```
$ vi ~/.zshrc    
```

actualizar tema:

```
ZSH_THEME="powerlevel9k/powerlevel9k"
```

agregar configuraciones:

```
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram time)
```

en caso de usar [tmux](tmux):

```
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
```

en caso de usar [tmux](tmux), [nodeenv](https://github.com/ekalinin/nodeenv) y [virtualenv](https://virtualenv.pypa.io/en/latest/):

```
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline nodeenv virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
```

#### Mejora del elemento `virtualenv`
Abrir archivo de configuración:

```
$ vi ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
```

Y reemplazar la función `prompt_virtualenv` por:

```
prompt_virtualenv() {
  [[ -z "$VIRTUAL_ENV" ]] && return

  local info="\ue63c v$(python -c 'from platform import python_version; print(python_version())')[${VIRTUAL_ENV:t}]"
  "$1_prompt_segment" "$0" "$2" "black" "green" "$info"
}
```

Instalar en el sistema la fuente: [devicons](https://github.com/gabrielelana/awesome-terminal-fonts/blob/master/fonts/devicons-regular.ttf)
