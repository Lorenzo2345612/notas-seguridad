
## Objetivo

The password for the next level can be retrieved by submitting the password of the current level to **port 30000 on localhost**.
## Datos de acceso

**username**: bandit14
**host**:  bandit.labs.overthewire.org
**password**: fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq
**port**: 2220
## Solución


```
bandit14@bandit:~$ ls
bandit14@bandit:~$ cd /etc/bandit_pass/bandit14
-bash: cd: /etc/bandit_pass/bandit14: Not a directory
bandit14@bandit:~$ cd /etc/bandit_pass/
bandit14@bandit:/etc/bandit_pass$ ls
bandit0   bandit11  bandit14  bandit17  bandit2   bandit22  bandit25  bandit28  bandit30  bandit33  bandit6  bandit9
bandit1   bandit12  bandit15  bandit18  bandit20  bandit23  bandit26  bandit29  bandit31  bandit4   bandit7
bandit10  bandit13  bandit16  bandit19  bandit21  bandit24  bandit27  bandit3   bandit32  bandit5   bandit8
bandit14@bandit:/etc/bandit_pass$ cd bandit14
-bash: cd: bandit14: Not a directory
bandit14@bandit:/etc/bandit_pass$ cat bandit14
fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq
bandit14@bandit:/etc/bandit_pass$ echo "fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq" | nc 127.0.0.1 30000
Correct!
jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt

bandit14@bandit:/etc/bandit_pass$
```
## Notas adicionales

El comando **nc** nos permite establecer conexión con un puerto de una maquina.

## Referencias
