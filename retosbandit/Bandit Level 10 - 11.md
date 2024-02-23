
## Objetivo

The password for the next level is stored in the file **data.txt**, which contains base64 encoded data
## Datos de acceso

**username**: bandit10
**host**:  bandit.labs.overthewire.org
**password**: G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
**port**: 2220

## Solución


```
bandit10@bandit:~$ ls
data.txt
bandit10@bandit:~$ cat data.txt
VGhlIHBhc3N3b3JkIGlzIDZ6UGV6aUxkUjJSS05kTllGTmI2blZDS3pwaGxYSEJNCg==
bandit10@bandit:~$ cat data.txt >> base64 -d
-bash: base64: Permission denied
bandit10@bandit:~$ cat data.txt | base64 -d
The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
```

## Notas adicionales

**base64**: Este comando nos permite realizar una codificación en base 64 y con la opción -d nos permite decodificar.

## Referencias
