
## Objetivo

There is a git repository at `ssh://bandit29-git@localhost/home/bandit29-git/repo` via the port `2220`. The password for the user `bandit29-git` is the same as for the user `bandit29`.

Clone the repository and find the password for the next level.
## Datos de acceso

**username**: bandit29
**host**:  bandit.labs.overthewire.org
**password**: tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S
**port**: 2220
## Solución

```
bandit29@bandit:/tmp/tmp.hw6tU93mtD$ cd repo/
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ ls -la
total 16
drwxrwxr-x 3 bandit29 bandit29 4096 Feb 28 04:12 .
drwx------ 3 bandit29 bandit29 4096 Feb 28 04:12 ..
drwxrwxr-x 8 bandit29 bandit29 4096 Feb 28 04:12 .git
-rw-rw-r-- 1 bandit29 bandit29  131 Feb 28 04:12 README.md
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ cat README.md
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: <no passwords in production!>

bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git log
commit 4364630b3b27c92aff7b36de7bb6ed2d30b60f88 (HEAD -> master, origin/master, origin/HEAD)
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:43 2023 +0000

    fix username

commit fca34ddb7d1ff1f78df36538252aea650b0b040d
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:43 2023 +0000

    initial commit of README.md
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git show fca34
commit fca34ddb7d1ff1f78df36538252aea650b0b040d
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:43 2023 +0000

    initial commit of README.md

diff --git a/README.md b/README.md
new file mode 100644
index 0000000..2da2f39
--- /dev/null
+++ b/README.md
@@ -0,0 +1,8 @@
+# Bandit Notes
+Some notes for bandit30 of bandit.
+
+## credentials
+
+- username: bandit29
+- password: <no passwords in production!>
+
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git show 436463
commit 4364630b3b27c92aff7b36de7bb6ed2d30b60f88 (HEAD -> master, origin/master, origin/HEAD)
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:43 2023 +0000

    fix username

diff --git a/README.md b/README.md
index 2da2f39..1af21d3 100644
--- a/README.md
+++ b/README.md
@@ -3,6 +3,6 @@ Some notes for bandit30 of bandit.

 ## credentials

-- username: bandit29
+- username: bandit30
 - password: <no passwords in production!>

bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ ls -la
total 16
drwxrwxr-x 3 bandit29 bandit29 4096 Feb 28 04:12 .
drwx------ 3 bandit29 bandit29 4096 Feb 28 04:12 ..
drwxrwxr-x 8 bandit29 bandit29 4096 Feb 28 04:12 .git
-rw-rw-r-- 1 bandit29 bandit29  131 Feb 28 04:12 README.md
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ cd \.git
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo/.git$ ls -la
total 52
drwxrwxr-x 8 bandit29 bandit29 4096 Feb 28 04:12 .
drwxrwxr-x 3 bandit29 bandit29 4096 Feb 28 04:12 ..
drwxrwxr-x 2 bandit29 bandit29 4096 Feb 28 04:12 branches
-rw-rw-r-- 1 bandit29 bandit29  281 Feb 28 04:12 config
-rw-rw-r-- 1 bandit29 bandit29   73 Feb 28 04:12 description
-rw-rw-r-- 1 bandit29 bandit29   23 Feb 28 04:12 HEAD
drwxrwxr-x 2 bandit29 bandit29 4096 Feb 28 04:12 hooks
-rw-rw-r-- 1 bandit29 bandit29  137 Feb 28 04:12 index
drwxrwxr-x 2 bandit29 bandit29 4096 Feb 28 04:12 info
drwxrwxr-x 3 bandit29 bandit29 4096 Feb 28 04:12 logs
drwxrwxr-x 4 bandit29 bandit29 4096 Feb 28 04:12 objects
-rw-rw-r-- 1 bandit29 bandit29  252 Feb 28 04:12 packed-refs
drwxrwxr-x 5 bandit29 bandit29 4096 Feb 28 04:12 refs
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo/.git$ cd ..
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git branch
* master
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/dev
  remotes/origin/master
  remotes/origin/sploits-dev
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ git checkout dev
Branch 'dev' set up to track remote branch 'dev' from 'origin'.
Switched to a new branch 'dev'
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ ls -la
total 20
drwxrwxr-x 4 bandit29 bandit29 4096 Feb 28 04:16 .
drwx------ 3 bandit29 bandit29 4096 Feb 28 04:12 ..
drwxrwxr-x 2 bandit29 bandit29 4096 Feb 28 04:16 code
drwxrwxr-x 8 bandit29 bandit29 4096 Feb 28 04:16 .git
-rw-rw-r-- 1 bandit29 bandit29  134 Feb 28 04:16 README.md
bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$ cat README.md
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS

bandit29@bandit:/tmp/tmp.hw6tU93mtD/repo$
```

## Notas adicionales

con el comando **git checkout** podemos cambiarnos de ramas en el repositorio.
con el comando **git branch -a** podemos ver las ramas que tiene el repositorio.
## Referencias