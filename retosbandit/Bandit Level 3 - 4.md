## Objetivo

The password for the next level is stored in a hidden file in the **inhere** directory.

## Datos de acceso

**username**: bandit3
**host**:  bandit.labs.overthewire.org
**password**: aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
**port**: 2220

## Solución

```
bandit3@bandit:~$ ls
inhere
bandit3@bandit:~$ cd inhere/
bandit3@bandit:~/inhere$ ls -a
.  ..  .hidden
bandit3@bandit:~/inhere$ cat .hidden
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
bandit3@bandit:~/inhere$
```

## Notas adicionales

El comando **cd** se utiliza para cambiar de directorio.
La opcion **-a** en el comando **ls** se utiliza para listar todos los archivos, incluso los ocultos.

## Referencias

Listar archivos ocultos
[https://phoenixnap.com/kb/show-hidden-files-linux]