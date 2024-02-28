
## Objetivo

There is a git repository at `ssh://bandit28-git@localhost/home/bandit28-git/repo` via the port `2220`. The password for the user `bandit28-git` is the same as for the user `bandit28`.

Clone the repository and find the password for the next level.
## Datos de acceso

**username**: bandit28
**host**:  bandit.labs.overthewire.org
**password**: AVanL161y9rsbcJIsFHuw35rjaOM19nR
**port**: 2220
## Solución

```
bandit28@bandit:/tmp/tmp.BjbCyfJqJj$ ls
repo
bandit28@bandit:/tmp/tmp.BjbCyfJqJj$ cd repo/
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ ls
README.md
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ cat README.md
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ ls -la README.md
-rw-rw-r-- 1 bandit28 bandit28 111 Feb 28 04:00 README.md
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ ls -la
total 16
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 .
drwx------ 3 bandit28 bandit28 4096 Feb 28 04:00 ..
drwxrwxr-x 8 bandit28 bandit28 4096 Feb 28 04:00 .git
-rw-rw-r-- 1 bandit28 bandit28  111 Feb 28 04:00 README.md
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ cd \.git
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ ls
branches  config  description  HEAD  hooks  index  info  logs  objects  packed-refs  refs
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ ls -la
total 52
drwxrwxr-x 8 bandit28 bandit28 4096 Feb 28 04:00 .
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 ..
drwxrwxr-x 2 bandit28 bandit28 4096 Feb 28 04:00 branches
-rw-rw-r-- 1 bandit28 bandit28  281 Feb 28 04:00 config
-rw-rw-r-- 1 bandit28 bandit28   73 Feb 28 04:00 description
-rw-rw-r-- 1 bandit28 bandit28   23 Feb 28 04:00 HEAD
drwxrwxr-x 2 bandit28 bandit28 4096 Feb 28 04:00 hooks
-rw-rw-r-- 1 bandit28 bandit28  137 Feb 28 04:00 index
drwxrwxr-x 2 bandit28 bandit28 4096 Feb 28 04:00 info
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 logs
drwxrwxr-x 4 bandit28 bandit28 4096 Feb 28 04:00 objects
-rw-rw-r-- 1 bandit28 bandit28  114 Feb 28 04:00 packed-refs
drwxrwxr-x 5 bandit28 bandit28 4096 Feb 28 04:00 refs
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ file
Usage: file [-bcCdEhikLlNnprsSvzZ0] [--apple] [--extension] [--mime-encoding]
            [--mime-type] [-e <testname>] [-F <separator>]  [-f <namefile>]
            [-m <magicfiles>] [-P <parameter=value>] [--exclude-quiet]
            <file> ...
       file -C [-m <magicfiles>]
       file [--help]
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ file .
.: directory
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ cd logs/
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs$ ls -la
total 16
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 .
drwxrwxr-x 8 bandit28 bandit28 4096 Feb 28 04:00 ..
-rw-rw-r-- 1 bandit28 bandit28  189 Feb 28 04:00 HEAD
drwxrwxr-x 4 bandit28 bandit28 4096 Feb 28 04:00 refs
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs$ cat HEAD
0000000000000000000000000000000000000000 14f754b3ba6531a2b89df6ccae6446e8969a41f3 Ben Dover <noone@overthewire.org> 1709092857 +0000    clone: from ssh://localhost:2220/home/bandit28-git/repo
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs$ cd refs/
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs/refs$ ls -la
total 16
drwxrwxr-x 4 bandit28 bandit28 4096 Feb 28 04:00 .
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 ..
drwxrwxr-x 2 bandit28 bandit28 4096 Feb 28 04:00 heads
drwxrwxr-x 3 bandit28 bandit28 4096 Feb 28 04:00 remotes
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs/refs$ cd ..
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git/logs$ cd ..
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo/.git$ cd ..
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ git log
commit 14f754b3ba6531a2b89df6ccae6446e8969a41f3 (HEAD -> master, origin/master, origin/HEAD)
Author: Morla Porla <morla@overthewire.org>
Date:   Thu Oct 5 06:19:41 2023 +0000

    fix info leak

commit f08b9cc63fa1a4602fb065257633c2dae6e5651b
Author: Morla Porla <morla@overthewire.org>
Date:   Thu Oct 5 06:19:41 2023 +0000

    add missing data

commit a645bcc508c63f081234911d2f631f87cf469258
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:41 2023 +0000

    initial commit of README.md
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ git show 14
fatal: ambiguous argument '14': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$ git show 14f754b3ba6531a2b89df6ccae6446e8969a41f3
commit 14f754b3ba6531a2b89df6ccae6446e8969a41f3 (HEAD -> master, origin/master, origin/HEAD)
Author: Morla Porla <morla@overthewire.org>
Date:   Thu Oct 5 06:19:41 2023 +0000

    fix info leak

diff --git a/README.md b/README.md
index b302105..5c6457b 100644
--- a/README.md
+++ b/README.md
@@ -4,5 +4,5 @@ Some notes for level29 of bandit.
 ## credentials

 - username: bandit29
-- password: tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S
+- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.BjbCyfJqJj/repo$
```
## Notas adicionales

Con la información de los **logs** podemos ver los commits realizados a un archivo en git.

Con el comando **show** podemos ver los cambios hechos a un archivo en git.
## Referencias