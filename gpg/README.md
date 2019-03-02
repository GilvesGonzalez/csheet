# Comandos GPG

- https://msol.io/blog/tech/back-up-your-pgp-keys-with-gpg/
- http://sidgan.me/technical/2015/01/05/creating-and-revoking-gpg-keys

### Generar

```
$ gpg --full-generate-key
```

### Listar

```
$ gpg --list-secret-keys --keyid-format LONG
$ gpg --list-keys
```

### Enviar

```
$ gpg --send-keys CLAVE
```