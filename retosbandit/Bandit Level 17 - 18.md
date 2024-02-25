## Objetivo

There are 2 files in the homedirectory: **passwords.old and passwords.new**. The password for the next level is in **passwords.new** and is the only line that has been changed between **passwords.old and passwords.new**

**NOTE: if you have solved this level and see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19**
## Datos de acceso

**username**: bandit17
**host**:  bandit.labs.overthewire.org
**password**: JQttfApK4SeyHwDlI9SXGR50qclOAil1
**port**: 2220

## Solución

```
bandit17@bandit:~$ dif passwords.old passwords.new --color
Command 'dif' not found, did you mean:
  command 'kif' from snap kif (0.2.0)
  command 'dir' from deb coreutils (8.32-4.1ubuntu1)
  command 'dig' from deb bind9-dnsutils (1:9.18.12-0ubuntu0.22.04.3)
  command 'diff' from deb diffutils (1:3.8-0ubuntu2)
  command 'din' from deb din (51.1.1-2build1)
  command 'dia' from deb dia (0.97.3+git20160930-9build1)
  command 'df' from deb coreutils (8.32-4.1ubuntu1)
  command 'uif' from deb uif (1.1.9-5)
  command 'dnf' from deb dnf (4.5.2-6)
  command 'di' from deb di (4.48-1)
  command 'duf' from deb duf (0.6.2-1build1)
See 'snap info <snapname>' for additional versions.
bandit17@bandit:~$ diff passwords.old passwords.new --color
42c42
< p6ggwdNHncnmCNxuAt0KtKVq185ZU7AW
---
> hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg
bandit17@bandit:~$
```

## Notas adicionales
El comando **diff** nos ayuda a identificar la diferencia entre el contenido de dos archivos.
## Referencias