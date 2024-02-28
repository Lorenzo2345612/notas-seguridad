
## Objetivo

There is a git repository at `ssh://bandit30-git@localhost/home/bandit30-git/repo` via the port `2220`. The password for the user `bandit30-git` is the same as for the user `bandit30`.

Clone the repository and find the password for the next level.
## Datos de acceso

**username**: bandit30
**host**:  bandit.labs.overthewire.org
**password**: xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS
**port**: 2220
## Solución

```
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK$ git clone ssh://bandit30-git@localhost:2220/home/bandit30-git/repo
Cloning into 'repo'...
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit30/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit30/.ssh/known_hosts).
                         _                     _ _ _
                        | |__   __ _ _ __   __| (_) |_
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_
                        |_.__/ \__,_|_| |_|\__,_|_|\__|


                      This is an OverTheWire game server.
            More information on http://www.overthewire.org/wargames

bandit30-git@localhost's password:
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), done.
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK$ cd repo/
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ cat README.md
just an epmty file... muahaha
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ ls -la
total 16
drwxrwxr-x 3 bandit30 bandit30 4096 Feb 28 04:18 .
drwx------ 3 bandit30 bandit30 4096 Feb 28 04:18 ..
drwxrwxr-x 8 bandit30 bandit30 4096 Feb 28 04:18 .git
-rw-rw-r-- 1 bandit30 bandit30   30 Feb 28 04:18 README.md
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ git status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ git log
commit d39631d73f786269b895ae9a7b14760cbf40a99f (HEAD -> master, origin/master, origin/HEAD)
Author: Ben Dover <noone@overthewire.org>
Date:   Thu Oct 5 06:19:45 2023 +0000

    initial commit of README.md
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ git tag
secret
bandit30@bandit:/tmp/tmp.mL5Vn4LuIK/repo$ git show secret
OoffzGDlzhAlerFJ2cAiz1D41JW1Mhmt
```

## Notas adicionales

Los tags se utilizan para crear versiones específicas de un proyecto.
## Referencias