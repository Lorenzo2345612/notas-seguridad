
## Objetivo

The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions
## Datos de acceso


**username**: bandit11
**host**:  bandit.labs.overthewire.org
**password**: 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
**port**: 2220

## Solución

```
bandit11@bandit:~$ ls
data.txt
bandit11@bandit:~$ cat data.txt  | tr '[a-zA-Z]' '[n-za-mN-ZA-M]'
The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
bandit11@bandit:~$
```

## Notas adicionales

El comando **tr** nos ayuda a transformar un texto escrito como la primer regex, a la segunda regex.

## Referencias
