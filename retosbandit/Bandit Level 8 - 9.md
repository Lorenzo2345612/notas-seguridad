## Objetivo

The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once

## Datos de acceso

**username**: bandit7
**host**:  bandit.labs.overthewire.org
**password**: TESKZC0XvTetK0S9xNwm25STk5iWrBvP
**port**: 2220

## Solución

```
bandit8@bandit:~$ sort data.txt | uniq -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t
bandit8@bandit:~$
```

## Notas adicionales

El comando **sort** ordena y el comando **uniq** encuentra las ocurrecias de algo.

## Referencias