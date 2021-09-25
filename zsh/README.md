# Configuración de **zsh**

### Prerequisitos

```bash
$ sudo apt install zsh vim git curl wget
```

o mac:

```bash
$ brew install zsh vim git curl wget
```

### Instalar [oh my zsh](https://ohmyz.sh/)

```bash
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Instalar [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Instalar fuentes desde [nerd-fonts](https://github.com/romkatv/nerd-fonts):

```bash
$ git clone --depth 1 https://github.com/romkatv/nerd-fonts.git ~/.nerd-fonts
$ cd ~/.nerd-fonts
$ ./install.sh
```

Configurar fuente `MesloLGS Nerd Font Regular` en terminal [ver](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

Instalar tema:

```bash
$ git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

abrir archivo de configuración:

```bash
$ vi ~/.zshrc
```

actualizar la variable `ZSH_THEME` tema:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

verificar o actualizar la variable `TERM`:

```bash
export TERM="xterm-256color"
```

ejecutar para configurar:

```bash
$ p10k configure
```

### Configurar plugins

Ver lista de plugins e instrucciones [aquí](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

Instalar plugins `zsh-syntax-highlighting` y `zsh-autosuggestions`:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

abrir archivo de configuración:

```bash
$ vi ~/.zshrc
```

actualizar los plugins:

```bash
plugins=( git zsh-syntax-highlighting zsh-autosuggestions )
```
