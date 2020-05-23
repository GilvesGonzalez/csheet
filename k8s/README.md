# Kubernetes

Website [aquí](https://kubernetes.io/es/).

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

No activar el modo `swarm`, de lo contrario, desactivarlo con:

```
docker swarm leave --force
```

## VirtualBox

Instalar `VirtualBox` [aquí](https://www.virtualbox.org/wiki/Linux_Downloads).

### kubectl (kubernetes command line tool)

Instalar `kubectl` [aquí](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

Verificar:
```
$ kubectl version --client
```

### minikube

Instalar `minikube` [aquí](https://minikube.sigs.k8s.io/docs/start/):

Iniciar (intentará usar `docker` por defecto):
```
$ minikube start
```

Para iniciar usando virtualbox (recomandado si estas corriendo docker en modo `swarm`):
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

### Correr app

```
$ kubectl create -f ARCHIVO.yml
```

Ver nodos (permite obtener la ip de los nodos):
```
$ kubectl get nodes
```

Ver todos los pods:
```
$ kubectl get pods
```

Información de un pod:
```
$ kubectl describe pod <pod>
```

Exponer un puerto (crea un nuevo servicio):
```
$ kubectl expose pod <pod> --name=<service name> --type=<tipo>
```

Ver todos los servicios:
```
$ kubectl get services
```

Información de un servicio:
```
$ kubectl describe service <service>
```

Abrir el servicio expuesto usando minikube (apuntando hacia el nodo):
```
$ minikube service <service>
```

Hacer un forward de un puerto local hacia un pod:
```
$ kubectl port-forward <pod> <puerto local>:<puerto pod>
```

Abrir terminal (o ejecutar algun comando):
```
$ kubectl exec -i --tty <pod> -- bash
```

Ejecutar algun comando:
```
$ kubectl exec <pod> -- <comandos>
```

Ver logs del pod:
```
$ kubectl logs <pod>
```

Correr pod volatil para ejecutar comandos:
```
$ kubectl run -i --tty <nombre> --image=<docker image> --restart=Never -- sh
