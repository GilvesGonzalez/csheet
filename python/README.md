# Comandos en python

_Si usas zsh puedes activar el plugin **python** y **virtualenv**_

### virtualenv/virtualenvwrapper

Instalar:
```
# apt install python3 python3-pip virtualenv virtualenvwrapper pipenv
```

Abrir la configuración de zsh o bash:
```
$ vi ~/.zshrc
```

Agregar al final del archivo:
```
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
```

Cargar configuraciones y crear carpeta para los virtualenv:
```
$ source ~/.zshrc
$ mkdir -p $WORKON_HOME
```

## Usando virtualenvwrapper

Listar virtualenv:
```
$ lsvirtualenv
```

Crear virtualenv para python 2:
```
$ mkvirtualenv --python=python2 NOMBRE
```

Crear virtualenv para python 3:
```
$ mkvirtualenv --python=python3 NOMBRE
```

Activar virtualenv:
```
$ workon NOMBRE
```

Desactivar virtualenv:
```
$ deactivate
```

Remover virtualenv:
```
$ rmvirtualenv NOMBRE
```

## Usando sólo virtualenv

Crear virtualenv para python 2:
```
$ virtualenv --python=python2 NOMBRE
```

Crear virtualenv para python 3:
```
$ virtualenv --python=python3 NOMBRE
```

Activar virtualenv:
```
$ source NOMBRE/bin/activate
```

Desactivar virtualenv:
```
$ deactivate
```

### PIP

Listar paquetes:
```
$ pip list
$ pip freeze
```

Listar paquetes desactualizados:
```
$ pip list --outdated
```

Mostrar información de un paquete:
```
$ pip show NOMBRE
$ pip show --files NOMBRE
```

Instalar paquete:
```
$ pip install NOMBRE
```

Desinstalar paquete:
```
$ pip uninstall NOMBRE
```

Actualizar paquete:
```
$ pip install --upgrade NOMBRE
```

Generar archivo requirements.txt:
```
$ pip freeze > requirements.txt
```

Instalar desde requirements.txt:
```
$ pip install -r requirements.txt
```

### pipenv

Crear nuevo proyecto:
```
$ pipenv --python 3.7
```

Abre el shell:
```
$ pipenv shell
```
