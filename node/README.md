# Configuración de node en linux

[nodeenv](https://github.com/ekalinin/nodeenv).

### Instalación global

```
$ sudo apt install nodejs npm
```

### Instalación de nodeenv

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

Compilación:
```
$ tsc -v
```
