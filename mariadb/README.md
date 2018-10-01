# Comandos más usados con MariaDB

#### Tips
- Usuario por defecto root

#### Acceder a mariadb:
```
$ mysql -u USUARIO -p
```

#### Salir:
```
> exit;
```

#### Mostrar bases de datos actuales para el usuario con el que hemos accedido:
```
> show databases;
```

#### Listar usuarios:
```
> select user from mysql.user;
```

#### Crear base de datos:
```
> create database DB;
```

#### Crear Usuario:
```
> create user 'USUARIO'@'localhost' identified by 'CLAVE';
> create user 'USUARIO' identified by 'CLAVE';
```

#### Accesos limitados:
```
> grant select, insert on DB.* to 'USUARIO'@'localhost' identified by 'CLAVE';
```

#### Acceder/conectar/usar una base de datos:
```
> use DB;
> connect DB;
```

#### Mostrar las tablas de una base de datos:
```
> show tables;
> show tables from DB;
```

#### Mostrar las columnas de una tabla determinada:
```
> describe DB.TABLA;
> describe TABLA;
```

#### Eliminar una tabla y su contenido:
```
> drop table TABLA;
```

#### Eliminar el contenido de la tabla (los registros) pero no su estructura:
```
> truncate table TABLA;
```

#### Renombrar una tabla:
```
> rename table TABLA to NUEVATABLA;
```

#### Realizar copia de una base de datos determinada:
```
$ mysqldump -u USUARIO -p DB > DB.sql
```

#### Realizar copia de una base de datos determinada permitiendo restaurarla sin tener que eliminar la vieja:
```
$ mysqldump --add-drop-table -u USUARIO -p DB > DB.sql
```

#### Realizar restauración de la copia:
```
$ mysql -u USUARIO -p DB < DB.sql
```
