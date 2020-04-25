# Configuración de node en linux

[nodeenv](https://github.com/ekalinin/nodeenv).

### Instalación

Primero instalar [python](https://github.com/sauljabin/linux-commands/tree/master/python) y [virtualenv](https://github.com/sauljabin/linux-commands/tree/master/python).

```
$ pip3 install nodeenv
```

### Comandos

Lista de nodes disponibles:

```
$ nodeenv --list
```

Crear env:

```
$ nodeenv env
```

Crear node con version (usar --prebuilt para que sea mas rápido):

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

### Comandos npm

Instalación de typescript:
```
$ npm install -g typescript
```

### Comandos typescript

Compilación:
```
$ tsc helloworld.ts
```
