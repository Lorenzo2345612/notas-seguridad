
## Objetivo

There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).
## Datos de acceso

**username**: bandit20
**host**:  bandit.labs.overthewire.org
**password**: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
**port**: 2220

## Solución

```
bandit20@bandit:~$ nc -lmp 4897 <<< VxCazJaVykI6W36BkBU0mJTCM8rR95XT
nc: minttl is invalid
bandit20@bandit:~$ nc -lnvp 4897 <<< VxCazJaVykI6W36BkBU0mJTCM8rR95XT &
[1] 144896
bandit20@bandit:~$ Listening on 0.0.0.0 4897
./suconnect 4897
Connection received on 127.0.0.1 51118
Read: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
Password matches, sending next password
NvEJF7oVjkddltPSrdKEFOllh9V1IBcq
bandit20@bandit:~$
```
## Notas adicionales

Con el comando **nc** podemos abrir un puerto en nuestra máquina, con el signo de ampersand se puede ejecutar en segundo plano.

## Referencias


