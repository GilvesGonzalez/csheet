# Vagrant

Website [aquí](https://www.vagrantup.com/).

Catalogo de boxes [aquí](https://app.vagrantup.com/boxes/search).


## VirtualBox

Instalar [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads).
```
$ sudo apt install virtualbox
```

## Instalar Vagrant

Descargar desde [aquí](https://www.vagrantup.com/downloads.html).

Instalar con `gdebi`.

## Aprovisionar

Crear Vagrantfile:
```
$ vagrant init hashicorp/bionic64
```

Correr:
```
$ vagrant up
```

Detener:
```
$ vagrant halt
```

Eliminar:
```
$ vagrant destroy
```

Entrar por ssh:
```
$ vagrant ssh
```
