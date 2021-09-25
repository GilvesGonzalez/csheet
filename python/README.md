# Comandos en python

_Si usas zsh puedes activar el plugin **python**, **pyenv** y **virtualenv**_

### Usando pyenv

Prerrequisitos:

```
sudo apt install zlib1g-dev libedit-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev build-essential
```

Instalar:
```
curl https://pyenv.run | bash
```

Agregar a `.zshrc`:
```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
```

Instalar python:
```
pyenv install 3.9.7
pyenv global 3.9.7
```

Virtual env:
```
pyenv virtualenv 3.9.7 python3-env
```

### virtualenv/virtualenvwrapper

Instalar:
```
sudo apt install python3 python3-pip virtualenv virtualenvwrapper pipenv
```

Abrir la configuración de zsh o bash:
```
vi ~/.zshrc
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
source ~/.zshrc
mkdir -p $WORKON_HOME
```

## Usando virtualenvwrapper

Listar virtualenv:
```
lsvirtualenv
```

Crear virtualenv para python 2:
```
mkvirtualenv --python=python2 NOMBRE
```

Crear virtualenv para python 3:
```
mkvirtualenv --python=python3 NOMBRE
```

Activar virtualenv:
```
workon NOMBRE
```

Desactivar virtualenv:
```
deactivate
```

Remover virtualenv:
```
rmvirtualenv NOMBRE
```

## Usando sólo virtualenv

Crear virtualenv para python 2:
```
virtualenv --python=python2 NOMBRE
```

Crear virtualenv para python 3:
```
virtualenv --python=python3 NOMBRE
```

Activar virtualenv:
```
source NOMBRE/bin/activate
```

Desactivar virtualenv:
```
deactivate
```

### PIP

Listar paquetes:
```
pip list
pip freeze
```

Listar paquetes desactualizados:
```
pip list --outdated
```

Mostrar información de un paquete:
```
pip show NOMBRE
pip show --files NOMBRE
```

Instalar paquete:
```
pip install NOMBRE
```

Desinstalar paquete:
```
pip uninstall NOMBRE
```

Actualizar paquete:
```
pip install --upgrade NOMBRE
```

Generar archivo requirements.txt:
```
pip freeze > requirements.txt
```

Instalar desde requirements.txt:
```
pip install -r requirements.txt
```

### pipenv

Crear nuevo proyecto:
```
pipenv --python 3.7
```

Abre el shell:
```
pipenv shell
```
