
## Objetivo

To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

## Datos de acceso

**username**: bandit19
**host**:  bandit.labs.overthewire.org
**password**: awhqfNnAbc1naukrpqDYcF95h7HoMTrC
**port**: 2220

## Solución

```
bandit19@bandit:~$ ls
bandit20-do
bandit19@bandit:~$ ./bandit20-do
Run a command as another user.
  Example: ./bandit20-do id
bandit19@bandit:~$ ls -la
total 36
drwxr-xr-x  2 root     root      4096 Oct  5 06:19 .
drwxr-xr-x 70 root     root      4096 Oct  5 06:20 ..
-rwsr-x---  1 bandit20 bandit19 14876 Oct  5 06:19 bandit20-do
-rw-r--r--  1 root     root       220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root     root      3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root     root       807 Jan  6  2022 .profile
bandit19@bandit:~$ whoami
bandit19
bandit19@bandit:~$ id
uid=11019(bandit19) gid=11019(bandit19) groups=11019(bandit19)
bandit19@bandit:~$ cp bandit20-do bina
cp: cannot create regular file 'bina': Permission denied
bandit19@bandit:~$ ./bandit20-do id
uid=11019(bandit19) gid=11019(bandit19) euid=11020(bandit20) groups=11019(bandit19)
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/
cat: /etc/bandit_pass/: Is a directory
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit_17
cat: /etc/bandit_pass/bandit_17: No such file or directory
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit_20
cat: /etc/bandit_pass/bandit_20: No such file or directory
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
VxCazJaVykI6W36BkBU0mJTCM8rR95XT
bandit19@bandit:~$
```

## Notas adicionales

Al ejecutar un archivo al que tenemos acceso, temporalmente obtenemos los permisos del dueño del archivo, pudiendo asi ejecutar comando a su nombre.

## Referencias
