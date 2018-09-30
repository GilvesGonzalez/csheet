# Comandos Docker

### Docker

Listar contenedores corriendo:
```
docker ps
```

Listar todos los contenedores:
```
docker ps -a
```

ELiminar todos los contenedores:
```
docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
```

Eliminar todas las imagenes:
```
docker rmi -f $(docker images -aq)
```

Eliminar todos los volúmenes:
```
docker volume rm $(docker volume ls -q)
```

Descargar imagen:
```
docker pull IMAGEN
```

Ejecutar consola dentro de contenedor:
```
docker exec -ti CONTENEDOR /bin/sh
```

Ejecutar imagen con puerto, volumen y variable:
```
docker run -d -p LOCAL:CONTENEDOR -e VARIABLE=valor -v /LOCAL:/CONTENEDOR IMAGEN
```

### Docker Compose

Borrar contenedores:
```
docker-compose rm -fv
```

Costruir imagenes:
```
docker-compose build
```

Iniciar:
```
docker-compose up
```

Ejecutar comando:
```
docker-compose run MAQUINA COMANDO
```

Ejecutar consola dentro de contenedor:
```
docker-compose exec SERVICIO sh
```
