
## Objetivo

Good job getting a shell! Now hurry and grab the password for bandit27!
## Datos de acceso

**username**: bandit26
**host**:  bandit.labs.overthewire.org
**password**: c7GvcKlw9mC7aUQaPx7nwFstuAIBw1o1
**port**: 2220
## Solución

```
:shell
bandit26@bandit:~$ ls
bandit27-do  text.txt
bandit26@bandit:~$ ./bandit27-do /etc/bandit_pass/bandit27
env: ‘/etc/bandit_pass/bandit27’: Permission denied
bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/ba
ndit27
YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS
bandit26@bandit:~$
```
## Notas adicionales

En **vim** se pueden ejecutar comandos de consola al indicar la instrucción **:shell** 
Podemos usar los permisos de ejecución de un archivo para tener acceso temporal a los permisos del dueño del archivo.
## Referencias