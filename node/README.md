# Configuración de node en linux

### Instalación global (no recomendada)

```
$ sudo apt install nodejs npm
```

### Instalación de [nvm](https://github.com/nvm-sh/nvm)

```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

Mac:
```
$ brew install nvm
```

### Comandos nvm

```
$ nvm install --lts
$ nvm alias default stable
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
