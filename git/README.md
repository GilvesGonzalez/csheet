# Comandos git (alias de zsh)

### Help

```
$ git help
$ git help COMANDO
```

### Config

Usuario y correo:
```
$ git config --global user.name "Saúl Piña"
$ git config --global user.email "sauljabin@gmail.com"
$ git config --global core.editor "vim"
```

Listar configuración:
```
$ git config --global --list (toda la máquina)

$ git config --list
(alias) $ gcf
```

### Init

Iniciar repo:
```
$ git init
$ git init RUTA
```

### Clone

Clonar proyecto:
```
$ git clone RUTA
(alias) $ gcl RUTA
```

Clonar proyecto sin historial:
```
$ git clone RUTA_REMOTA --depth 1 --branch NOMBRE_BRANCH --single-branch DIRECTORIO
```

### Status

Estatus del repositorio:
```
$ git status -s (reducido)
(alias) $ gss

$ git status
(alias) $ gst
```

**Ver status de muchos repositorios**
```
$ find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} status \;
```

### Log

Registro de commits:
```
$ git log
(alias) $ glg

$ git log --graph
(alias) $ glgg
(alias) $ glgga

$ git log --oneline
(alias) $ glo
(alias) $ glog
```

### Add

Agregar archivo/cambio:
```
$ git add NOMBRE
(alias) $ ga NOMBRE
```

Agregar todos los archivos/cambios:
```
$ git add -A
(alias) $ gaa
```

Agregar dinamicamente:
```
$ git add -p
(alias) $ gapa
(alias) $ ga -p
```

### Commit

Commit cambios:
```
$ git commit
(alias) $ gc
```

Commit cambios más mensaje:
```
$ git commit -m "MENSAJE"
(alias) $ gcmsg "MENSAJE"
```

Se agregan cambios y commit:
```
$ git commit -a
(alias) $ gca
```

Se agregan cambios y commit más mensaje:
```
$ git commit -am "MENSAJE"
(alias) $ gcam "MENSAJE"
```

Editar commit (antes se puede hacer add):
```
$ git commit --amend -m "MENSAJE"
(alias) $ gc! -m "MENSAJE"
```

Se agregan cambios y se edita commit:
```
$ git commit --amend -am "MENSAJE"
(alias) $ gca! -m "MENSAJE"
```

Se agregan cambios y se edita commit pero no se edita el mensaje:
```
$ git commit -a --no-edit --amend
(alias) $ gcan!
```

### Pull

**Descargar cambios remotos y fusionar:**
```
$ git pull
(alias) $ gl

$ git pull origin master (se invoca el repositorio remoto "origin" y la rama "master")
```
En caso de conflictos, resolverlos y luego agregarlos al stage.
Hacer commit y push.


**Pull rebase: Al tener commits**
```
$ git pull -r
(alias) $ gup
```    

En caso de conflictos, resolverlos y luego agregarlos al stage.
```
$ git rebase --continue
(alias) $ grbc
```

**Hacer pull de muchos repositorios**
```
$ find . -mindepth 1 -maxdepth 1 -type d -printf "\n\n>>>>%f\n" -exec git --git-dir={}/.git --work-tree=$PWD/{} pull -r origin master \;
```

Hacer push.

### Push

Borrar rama remota:
```
$ git push REMOTE :NOMBRE
```

Enviar cambios:
```
$ git push
(alias) $ gp

$ git push origin
$ git push REMOTO
$ git push REMOTO BRANCH (crea rama)
$ git push -f
$ git push -u origin master (-u recordar parametros)
```

Enviar cambios a rama master desde ejemplo:
```
$ git push remoto ejemplo:master
```    

Subir tag (-f forzar):
```
$ git push origin --tags
(alias) & gpoat

$ git push origin TAG
$ git push REMOTO TAG
```

### Reset

Reset archivo:
```
$ git reset --soft ARCHIVO
$ git reset --soft HEAD ARCHIVO
```

Eliminar commit sin tocar el fuente:
```
$ git reset --soft SHA
$ git reset --soft HEAD^
$ git reset --soft HEAD^^ (dos commit atras)
```

Eliminar commit completamente:
```
$ git reset --hard SHA
```

Limpiar proyecto en punto actual completamente:
```
$ git reset --hard
```

Eliminar ultimo commit atras:
```
$ git reset --hard HEAD~1
$ git reset --hard HEAD^
```

Eliminar varios commit atras:
```
$ git reset --hard HEAD~NUMERO
```

Limpiar commits hasta upstream:
```
$ git reset --hard @{u}
```

Borrar commit en github:
```
$ git reset --hard SHA
$ git push -f origin HEAD^:master
```

### Checkout

Reinicia archivos en el wip:
```
$ git checkout
(alias) & gco
```

Ir a branch o archivo:
```
$ git checkout master
(alias) & gcm

$ git checkout NOMBRE
```

Ir a commit:
```
$ git checkout SHA
```

Restaurar archivo desde commit:
```
$ git checkout SHA NOMBRE
```

Descartar cambios (para wip):
```
$ git checkout -- NOMBRE
```

Descartar cambios interativamente (para wip):
```
$ git checkout -p
```

Ir a branch nueva:
```
$ git checkout -b NOMBRE
$ git checkout -b NOMBRE origin/NOMBRE
```

### Branch

Crear branch:
```
$ git branch NOMBRE
(alias) & gb NOMBRE
```

Listar branch:
```
$ git branch
(alias) & gb

$ git branch -a (todas)
(alias) & gba

$ git branch -v
```

Listar branch remotas:
```
$ git branch -r
```

Borrar rama:
```
$ git branch -d NOMBRE
(alias) & gbd NOMBRE
```

Borrar rama fusionada:
```
$ git branch -D NOMBRE
```

### Merge

Fusionar: Situarse en la rama que va a fusionar
```
$ git merge NOMBRE
```

Cancelar merge:
```
$ git merge --abort
```

Fusionar sin FF: Situarse en la rama que va a fusionar
```
$ git merge --no-ff NOMBRE
```

### Remote

Agregar un origen:
```
$ git remote add origin RUTA_REMOTA
```

Agregar otro remoto:
```
$ git remote add NOMBRE RUTA_REMOTA
```

Remover remoto:
```
$ git remote rm NOMBRE
```

Mostar un remoto:
```
$ git remote show origin
```

Podar ramas remotas:
```
$ git remote prune origin
```

Listar repos remotos:
```
$ git remote
(alias) & gr

$ git remote -v
(alias) & grv
```

### Tag

Listar tags:
```
$ git tag
```

Crear tag (-f forzar):
```
$ git tag VERSION
$ git tag VERSION SHA
$ git tag -a VERSION -m "MENSAJE"
$ git tag -a VERSION -m "MENSAJE" SHA
```

### Fetch

Descargar tags:
```
$ git fetch --tags
```

### Clean

Limpiar repo:
```
$ git clean -f -d
$ git clean -xfd
```

### Satsh

Respaldar cambios en wip (Stash):
```
$ git stash
(alias) & gsta
```

Recuperar cambios del wip:
```
$ git stash pop
(alias) & gstp
```

Limpiar último stash:
```
$ git stash drop
(alias) & gstd
```

Limpiar stash:
```
$ git stash clear
```

### Diff

Diff stash:
```
$ git diff stash
$ git diff stash -- ARCHIVO
```

Revisar cambios:
```
$ git diff (para cambios no agregados)
(alias) & gd

$ git diff ARCHIVO

$ git diff --staged (para cambios agregados)
$ git diff --cached (para cambios agregados)
(alias) & gdca

$ git diff HEAD~NUMERO ARCHIVO
```

Comparación con commit anterior:
```
$ git diff HEAD^ HEAD
$ git diff HEAD^ HEAD ARCHIVO
$ git diff HEAD~NUMERO_MAYOR HEAD~NUMERO_MENOR
$ git diff SHA_ANTERIOR SHA_MAS_RECIENTE
```

### Remove

Remover:
```
$ git rm NOMBRE
$ git rm -r FOLDER
```

### Show

Mostrar commit:
```
$ git show
(alias) & gsps

$ git show HEAD
$ git show SHA
```

Mostrar un commit anterior:
```
$ git show HEAD^
$ git show HEAD~1
```

Mostrar dos commit anterior:
```
$ git show HEAD^^
$ git show HEAD~2
```

Mostrar varios commit anterior:
```
$ git show HEAD~NUMERO
```

### Patch

Crear patch:
```
$ git format-patch -1
$ git format-patch -1 SHA
$ git format-patch -NUMBER
```

Ver patch:
```
$ git apply --stat ARCHIVO
```

Verificar patch:
```
$ git apply --check ARCHIVO
```

Aplicar patch:
```
$ git apply ARCHIVO
$ git apply -3 ARCHIVO
```

### Rebase

Rebase: Situarse en la rama que va a fusionar
```
$ git rebase BRANCH
(alias) & grb BRANCH
```
