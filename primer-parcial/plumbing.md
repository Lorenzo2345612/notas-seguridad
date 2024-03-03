## Objetivo

Sometimes you need to handle process data outside of a file. Can you find a way to keep the output from this program and search for the flag? Connect to `jupiter.challenges.picoctf.org 14291`.
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~$ nc jupiter.challenges.picoctf.org 14291 >> o.txt
^C
lorenzo@LAPTOP-1F71H10Q:~$ cat o.txt | grep pico
picoCTF{digital_plumb3r_ea8bfec7}
lorenzo@LAPTOP-1F71H10Q:~$
```
## Notas adicionales

Con los signos **>>** se redirige la salida estandar a un lugar definido.
## Referencias