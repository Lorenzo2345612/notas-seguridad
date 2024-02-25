## Objetivo

The password for the next level is stored in a file **readme** in the homedirectory. Unfortunately, someone has modified **.bashrc** to log you out when you log in with SSH.
## Datos de acceso

**username**: bandit18
**host**:  bandit.labs.overthewire.org
**password**: hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg
**port**: 2220

## Solución

```
lorenzo@LAPTOP-1F71H10Q:~$ ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
kex_exchange_identification: Connection closed by remote host
Connection closed by 51.20.13.48 port 2220
lorenzo@LAPTOP-1F71H10Q:~$ ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
                         _                     _ _ _
                        | |__   __ _ _ __   __| (_) |_
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_
                        |_.__/ \__,_|_| |_|\__,_|_|\__|


                      This is an OverTheWire game server.
            More information on http://www.overthewire.org/wargames

bandit18@bandit.labs.overthewire.org's password:
awhqfNnAbc1naukrpqDYcF95h7HoMTrC
lorenzo@LAPTOP-1F71H10Q:~$
```

## Notas adicionales

En el comando **ssh** se puede ejecutar un comando despues de intentar la conexión, este puede ser pasado despues del comando **ssh**

## Referencias