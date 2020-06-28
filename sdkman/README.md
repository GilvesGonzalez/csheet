# SDK Manager

Cómo instalar [aquí](https://sdkman.io/install). Otros comandos [aquí](https://sdkman.io/usage).

## Instalación

```
$ curl -s "https://get.sdkman.io" | bash
```

## Comandos

Listar posibilidades:
```
$ sdk list SDK
```

Ver SDK actualmente configurados:
```
$ sdk current
```

Instalar SDK:
```
$ sdk install SDK VERSION
```

Cambiar temporalmente de SDK:
```
$ sdk use SDK VERSION
```

ambiar permanentemente de SDK:
```
$ sdk default SDK VERSION
```

## Autoconfiguración de proyecto

En la raiz del proyecto se necesita un archivo `.sdkmanrc`

Crear con:
```
$ sdk env init
```

Utilizará la configuración actual de sdkman.

Para activar el `.sdkmanrc`:
```
$ sdk env
```

> Para la activación automática `vim ~/.sdkman/etc/config` y cambiar `sdkman_auto_env=true`.
