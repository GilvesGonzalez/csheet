# Comandos para linux

## Comandos generales

Directorios:
```
$ cd RUTA
```

Ir a ruta anterior
```
$ cd -
```

Manual:
```
$ man COMANDO
```

Mostrar hostname:
```
$ hostname
```

Mostrar directorio actual:
```
$ pwd
```

Crear archivo de texto vacío:
```
$ touch NOMBRE
```

Crear carpeta:
```
$ mkdir NOMBRE
```

Crear carpeta y subcarpetas:
```
$ mkdir -p NOMBRE
```

Listar archivos:
```
$ ls
$ ls -l (permisos)
$ ls -tr (por fecha)
$ ls -a (archivos ocultos)
$ ls -lh (incluye tamaño)
```

Fecha:
```
$ date
$ date +"%Y%m%d%H%M"
```

Calendario:
```
$ cal
$ cal -y
$ cal -y AÑO
```

Calcular duración de ejecución de un comando:
```
$ time COMANDO
```

Seguimiento de archivo de texto:
```
$ tailf ARCHIVO
```

Leer archivo de texto:
```
$ cat ARCHIVO
$ more ARCHIVO
```

Buscar archivos duplicados:
```
$ duff -r RUTA
$ fdupes -r RUTA
```

Historial de comandos:
```
$ history
```

Montar dispositivo:
```
# mount PARTICION RUTA
```

Desmontar dispoditivo:
```
# umount PARTICION
# eject PARTICION
```

Mover/renombrar archivo:
```
$ mv ORIGEN DESTINO
```

Copiar archivo:
```
$ cp ORIGEN DESTINO
```

Eliminar archivo:
```
$ rm RUTA
```

Eliminar directorio:
```
$ rm -rf RUTA
```

Descargar:
```
$ wget URL
```

Descargar y nombrar:
```
$ wget URL -O NOMBRE
```

Crear enlace simbólico:
```
$ ln -s ORIGEN DESTINO
```

Localizar archivo:
```
$ locate NOMBRE
```

Actualizar BD de archivos:
```
$ updatedb
```

Localizar programa:
```
$ whereis NOMBRE
```

Tamaño de carpeta:
```
$ du -h RUTA
$ du -sh /RUTA/*
```

Tamaño de disco:
```
$ df -h
$ df -Th (con formato de archivo)
```

Correr en segundo plano:
```
$ nohup PROGRAMA &
```

Navegador web:
```
$ elinks URL
```

Buscar archivo:
```
$ find RUTA -name NOMBRE
```

Buscar sin warning:
```
$ find RUTA -name NOMBRE -print 2>/dev/null
```

Probar puerto:
```
$ telnet <<ip>> <<puerto>>
```

## Usuarios

Mostrar usuario actual:
```
$ whoami
```

Mostrar usuarios conectados:
```
$ w
$ who
$ who -a
$ who -H
$ users
```

Listar usuarios/grupos:
```
$ cat /etc/group | cut -d":" -f1
$ cat /etc/passwd | awk -F ":" '{print $1}'
```

Editar contraseña:
```
$ passwd
$ passwd USUARIO
```

Agregar usuario:
```
# useradd -m NOMBRE
# useradd -m NOMBRE -g GRUPO
```

Remover usuario:
```
# userdel NOMBRE
# userdel -r NOMBRE (se elimina archivos)
```

Agregar grupo:
```
# groupadd NOMBRE
```

Remover grupo:
```
# groupdel NOMBRE
```

Añadir usuario a grupo:
```
# adduser NOMBRE GRUPO
```

Remover usuario de grupo:
```
# deluser NOMBRE GRUPO
```

Propietario grupo:
```
# chgrp GRUPO RUTA
```

Propietario usuario:
```
# chown USUARIO RUTA
# chown USUARIO:GRUPO RUTA
```

## ISO

Crear iso de carpeta:
```
$ mkisofs -o DESTINO.iso CARPETA
```

Quemar iso en usb (se debe listar los dispositivos primero: `lsblk`):
```
# dd if=ISO of=/dev/sdLETRA
```

## Información del sistema

Mostrar información de manera agradable:
```
$ neofetch
```

Conocer ip publica:
```
$ curl ipinfo.io/ip
```    

Información detallada del equipo:
```
# dmidecode
# dmidecode -s
```

Fabricante del equipo:
```
# dmidecode -s system-manufacturer
```    

Fabricante del procesador:
```
# dmidecode -s processor-manufacturer
```

Nombre del producto:
```
# dmidecode -s system-product-name
```

Versión del producto:
```
# dmidecode -s system-version
```

Número de serie del equipo:
```
# dmidecode -s system-serial-number
```

SKU (Stock Keeping Unit) ó P/N (Part Number) del producto:
```
# dmidecode | grep -i sku
```

Mostrar particiones:
```
$ lsblk
# blkid
# fdisk -l
```

Mostrar información:
```
$ lscpu   (cpu)
$ nproc (número de procesadores)
$ lsblk   (dispositivos)
$ lsusb   (buses usb)
$ lsmod   (módulos del kernel)
```

Informacion del sistema:
```
$ uname -a
$ cat /etc/*-release
```

Información de red:
```
$ ip a
```

## Systemd

Consultar version:
```
$ systemd --version
```    

Calcular tiempos de arranque:
```
$ systemd-analyze
$ systemd-analyze blame
```

Consultar servicios:
```
$ systemctl list-unit-files
```    

Consultar servicios iniciados:
```
$ systemctl list-units
```    

Activar servicio al iniciar sistema:
```
# systemctl enable NOMBRE.service
```    

Desactivar servicio al iniciar sistema:
```
# systemctl disable NOMBRE.service
```    

Iniciar servicio:
```
# systemctl start NOMBRE.service
```    

Detener servicio:
```
# systemctl stop NOMBRE.service
```    

Reiniciar servicio:
```
# systemctl restart NOMBRE.service
```    

Informacion de servicio:
```
$ systemctl status NOMBRE.service
```    

Recargar servicio:
```
# systemctl reload NOMBRE.service
```    

Evitar que un servicio se inicie (elimina el servicio de la lista):
```
# systemctl mask NOMBRE.service
```    

Desactivar mask:
```
# systemctl unmask NOMBRE.service
```    

Reiniciar systemd:
```
# systemctl daemon-reload
```    

Historial de servicio:
```
$ journalctl -u NOMBRE.service
```    

## Variables de entorno

Mostrar variables:
```
$ env
$ printenv
```

Ver valor de una variable:
```
$ echo $VAR
```

Agregar variable: abrir `vi ~/.zshrc` (en el caso de usar zsh) y agregar la variable
```
export VAR=VALOR
```

Luego:
```
$ source ~/.zshrc
```

## Revisión de puertos

Revisión de puertos escuchas localmente:
```
# netstat -plnt
# netstat -plunt
```

Revisión de puestos escuchas TCP con nmap:
```
# nmap -sT -O IP
```    

Revisión de puestos escuchas TCP con nmap:
```
# nmap -sU -O IP
```    

Revisión de puestos escuchas con nmap:
```
# nmap -sT -sU -O IP
```

## Benchmark GPU

Instalar utilitarios:
```
# apt install mesa-utils glmark2
```

Ejecutar Benchmark:
```
$ glxgears
$ glmark2
```

Ver tarjetas:
```
$ xrandr --listproviders
$ lspci -k | grep -EA3 'VGA|3D|Display'
$ lspci -nnk | grep -i vga -A3
# lshw -c video
```
Correr con diferentes tarjetas:
```
$ DRI_PRIME=0 glxinfo | grep "OpenGL renderer"
$ DRI_PRIME=1 glxinfo | grep "OpenGL renderer"
$ DRI_PRIME=0 glmark2 --fullscreen
$ DRI_PRIME=1 glmark2 --fullscreen
```

## Grep

Buscar dentro de archivos de texto:
```
$ grep PATRON *
$ grep -r PATRON
$ grep PATRON ARCHIVO
$ grep -r PATRON RUTA
$ grep -Lr PATRON RUTA (Archivos que no coinciden)
```

## SCP

Copia segura local a servidor:
```
$ scp RUTALOCAL USUARIO@IP:RUTASERVIDOR
```

Copia segura servidor a local:
```
$ scp USUARIO@IP:RUTASERVIDOR RUTALOCAL
```

## SSH

SSH:
```
$ ssh USUARIO@IP
```

SSH con puerto:
```
$ ssh -p PUERTO USUARIO@IP
```

Tunel SSH:
```
$ ssh -L PUERTOLOCAL:IPREMOTO:PUERTOREMOTO USUARIO@IPREMOTO
```

Tunel SSH con puerto:
```
$ ssh -L PUERTOLOCAL:IPREMOTO:PUERTOREMOTO -p PUERTOSSH USUARIO@IPREMOTO
```

Generar y copiar clave pública SSH:
```
$ ssh-keygen
$ cat ~/.ssh/id_rsa.pub | xclip -sel clip
```

## Copiar archivos al portapapeles


Copiar archivo al portapapeles:
```
$ xclip -sel clip < RUTAARCHIVO
```

Copiar archivo al portapapeles usando cat:
```
$ cat RUTAARCHIVO | xclip -sel clip
```

## Procesos

Listar procesos:
```
$ top
$ htop
$ ps -ae
$ ps -ae | grep NOMBRE
```

Listar procesos con usuario:
```
$ ps -ef
$ ps -eF
```

Matar proceso:
```
$ kill IDPROCESO
```

## ZIP

Empaquetar folder:
```
$ zip -r NOMBRE.zip FOLDER/
```

Empaquetar archivo:
```
$ zip NOMBRE.zip ARCHIVO
```

Extraer zip:
```
$ unzip NOMBRE.zip
```

Extraer zip en folder:
```
$ unzip NOMBRE.zip -d /FOLDER
```

Extraer zip en archivo:
```
$ unzip NOMBRE.zip ARCHIVO
```

## Divertidos

Cow Say:
```
$ cowsay MENSAJE
```
