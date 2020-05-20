# Kubernetes

## Docker

Instalar `docker` [aquí](https://docs.docker.com/engine/install/ubuntu/).

Agregar usuario a docker:
```
$ sudo adduser $(whoami) docker
```

Verificar (no debería ser necesario usar `sudo`):
```
$ docker run hello-world
```

En caso de problemas con permisos reiniciar sesión.

## VirtualBox

Istalar `VirtualBox` [aquí](https://www.virtualbox.org/wiki/Linux_Downloads).

### kubectl (kubernetes command line tool)

Instalar `kubectl` [aquí](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

Verificar:
```
$ kubectl version --client
```

### minikube


no activar como swarm, de lo contrario, desactivarlo con:

```
docker swarm leave --force
```

Instalar `minikube` [aquí](https://minikube.sigs.k8s.io/docs/start/):

Iniciar (intentará seleccionar docker por defecto):
```
$ minikube start
```

Para iniciar usando virtualbox:
```
$ minikube start --vm-driver=virtualbox
```

Ver dashboard:
```
$ minikube dashboard
```

Verificar `kubectl`:
```
$ kubectl cluster-info
```
