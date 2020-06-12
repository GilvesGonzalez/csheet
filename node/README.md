# Configuración de node en linux

### Instalación global (no recomendada)

```
$ sudo apt install nodejs npm
```

### Instalación de [nvm](https://github.com/nvm-sh/nvm)

```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
```

### Comandos yarn

Instalación:
```
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
$ sudo apt install yarn
```

Instalar dependencias:
```
$ yarn
```

### Comandos nvm

Instalar node:

```
$ nvm install 14.0.0
```

o LTS

```
$ nvm install --lts
```

### Instalación de [nodeenv](https://github.com/ekalinin/nodeenv)

Primero instalar [python](https://github.com/sauljabin/linux-commands/tree/master/python) y [virtualenv](https://github.com/sauljabin/linux-commands/tree/master/python).


```
$ pip3 install nodeenv
```

### Comandos nodeenv

Lista de nodes disponibles:

```
$ nodeenv --list
```

Crear env:

```
$ nodeenv env
```

Crear node con version (usar `--prebuilt` para que sea mas rápido):

```
$ nodeenv --node=0.10.25 --prebuilt env
```

Activar:
```
$ . env/bin/activate
```

Versiones:

```
(env) $ node -v
(env) $ npm -v
```

Desactivar environment:

```
(env) $ deactivate_node
```

### Comandos typescript

Instalación de typescript (`-g` global):
```
$ npm install -g typescript
```

Versión:
```
$ tsc -v
```

Iniciar proyecto:
```
$ tsc -init
```

Compilación (`-w` continua, `*` todos):
```
$ tsc -w
$ tsc archivo.ts -w
$ tsc *.ts -w
```

### Comandos tslint

Instalación (`-g` global):
```
$ npm install -g tslint
```

Iniciar tslint:
```
$ tslint --init
```

Correr tslint:
```
$ tslint *.ts
```
