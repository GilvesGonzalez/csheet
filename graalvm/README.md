# GraalVM

## Intalación

Usando `sdkman`:
```
$ sdk list java | grep grl
$ sdk install java x.y.z-grl
```

Instalar `native-image` (compilar Java bytecode a bajo nivel):
```
$ gu install native-image
```

## Verificación de Instalación

Versión de java:
```
$ java --version
```

Versión de `gu` (GraalVM Updater):
```
$ gu --version
```

Versión de `native-image`:
```
$ native-image --version
```

## Comandos Java

Compilar `.java`:
```
$ javac CLASE.java
```

Correr:
```
$ java CLASE
```

## Comandos Native Image

Compilar `.java`:
```
$ javac CLASE.java
```

Crear una imagen nativa:
```
$ native-image CLASE
```

Correr:
```
$ ./COMPILADO
```

Verificar compilado (`ldd` List Dynamic Dependencies):
```
$ ldd COMPILADO
```

## Comparar tiempos

```
$ time java CLASE ; time ./COMPILADO
```
