## Objetivo

The password for the next level is stored **somewhere on the server** and has all of the following properties:

- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

## Datos de acceso

**username**: bandit5
**host**:  bandit.labs.overthewire.org
**password**: P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
**port**: 2220

## Solución

```
bandit6@bandit:/home$ find / -group bandit6 -user bandit7 2> /dev/null
/var/lib/dpkg/info/bandit7.password
bandit6@bandit:/home$ cat /var/lib/dpkg/info/bandit7.password
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
bandit6@bandit:/home$
```

## Notas adicionales

La opcion **-group** es para especificar el grupo al que pertenece.
La opcion **-user** es para especificar el usuario al que pertenece.

## Referencias