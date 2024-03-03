## Objetivo

Can you find the flag in [file](https://jupiter.challenges.picoctf.org/static/315d3325dc668ab7f1af9194f2de7e7a/file)? This would be really tedious to look through manually, something tells me there is a better way.
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/FG$ wget https://jupiter.challenges.picoctf.org/static/315d3325dc668ab7f1af9194f2de7e7a/file
--2024-03-02 22:57:25--  https://jupiter.challenges.picoctf.org/static/315d3325dc668ab7f1af9194f2de7e7a/file
Resolving jupiter.challenges.picoctf.org (jupiter.challenges.picoctf.org)...
 3.131.60.8
Connecting to jupiter.challenges.picoctf.org (jupiter.challenges.picoctf.org)|3.131.60.8|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 14551 (14K) [application/octet-stream]
Saving to: ‘file’

file               100%[================>]  14.21K  --.-KB/s    in 0s

2024-03-02 22:57:26 (45.1 MB/s) - ‘file’ saved [14551/14551]

lorenzo@LAPTOP-1F71H10Q:~/FG$ ls -la
total 24
drwxr-xr-x  2 lorenzo lorenzo  4096 Mar  2 22:57 .
drwxr-x--- 10 lorenzo lorenzo  4096 Mar  2 22:56 ..
-rw-r--r--  1 lorenzo lorenzo 14551 Oct 26  2020 file
lorenzo@LAPTOP-1F71H10Q:~/FG$ cat file | grep pico
picoCTF{grep_is_good_to_find_things_f77e0797}
```
## Notas adicionales

Los pipelines nos ayudan a redireccionar la salida estandar a otro comando.
## Referencias