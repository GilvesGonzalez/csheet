# Comandos para linux

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

Mostrar datos del cpu:
```
$ lscpu
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

### Systemd

Consultar version:
```
systemd --version
```    

Calcular tiempos de arranque:
```
systemd-analyze
systemd-analyze blame
```

Consultar servicios:
```
systemctl list-unit-files
```    

Consultar servicios iniciados:
```
systemctl list-units
```    

Activar servicio al iniciar sistema:
```
systemctl enable name.service
```    

Desactivar servicio al iniciar sistema:
```
systemctl disable name.service
```    

Iniciar servicio:
```
systemctl start name.service
```    

Detener servicio:
```
systemctl stop name.service
```    

Reiniciar servicio:
```
systemctl restart name.service
```    

Informacion de servicio:
```
systemctl status name.service
```    

Recargar servicio:
```
systemctl reload name.service
```    

Evitar que un servicio se inicie:
```
systemctl mask name.service
```    

Desactivar mask:
```
systemctl unmask name.service
```    

Reiniciar systemd:
```
systemctl daemon-reload
```    

Historial de servicio:
```
journalctl -u name.service
```    

## Variables de entorno

Mostrar variables:
```
env
printenv
```

Agregar variable: abrir `vi ~/.zshrc` (en el caso de usar zsh) y agregar la variable
```
export VAR=VALOR
```

Luego:
```
source ~/.zshrc
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
