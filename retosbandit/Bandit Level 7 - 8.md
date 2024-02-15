## Objetivo

The password for the next level is stored in the file **data.txt** next to the word **millionth**

## Datos de acceso

**username**: bandit6
**host**:  bandit.labs.overthewire.org
**password**: z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
**port**: 2220

## Solución

```
bandit7@bandit:~$ grep millionth data.txt
millionth       TESKZC0XvTetK0S9xNwm25STk5iWrBvP
bandit7@bandit:~$
```

## Notas adicionales

**wc** cuenta las lineas o caracteres de un archivo 
**head** muestra las primeras lineas de un archivo, **tail** muestras las ultimas lineas de un archivo
**grep** filtra lineas en base a un patron.
## Referencias