## Objetivo

The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several ‘=’ characters.

## Datos de acceso

**username**: bandit7
**host**:  bandit.labs.overthewire.org
**password**: EN632PlfYiZbn3PhVK3XOGSlNInNE00t
**port**: 2220

## Solución

```
bandit9@bandit:~$ ls
data.txt
bandit9@bandit:~$ strings data.txt | grep --
Usage: grep [OPTION]... PATTERNS [FILE]...
Try 'grep --help' for more information.
bandit9@bandit:~$ strings data.txt | grep "=="
x]T========== theG)"
========== passwordk^
========== is
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
bandit9@bandit:~$
```

## Notas adicionales

**strings** muestra las cadenas que estan en el archivo 

## Referencias
