
## Objetivo

The password for the next level is stored in a file called **readme** located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
## Datos de acceso

**username**: bandit0
**host**:  bandit.labs.overthewire.org
**password**: bandit0
**port**: 2220

## Solución

```
bandit0@bandit:~$ ls
readme
bandit0@bandit:~$ cat readme
NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
```

## Notas adicionales

El comando **cat** sirve para ver el contenido de un archivo.
El comando **ls** lista los archivos de un directorio.
El comando **man** es el manual de uso de un comando.
## Referencias