## Objetivo

Can you find the flag in [file](https://jupiter.challenges.picoctf.org/static/94d00153b0057d37da225ee79a846c62/strings) without running it?
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/stgsit$ wget https://jupiter.challenges.picoctf.org/static/94d00153b0057d37da225ee79a846c62/strings
--2024-03-02 23:05:34--  https://jupiter.challenges.picoctf.org/static/94d00153b0057d37da225ee79a846c62/strings
Resolving jupiter.challenges.picoctf.org (jupiter.challenges.picoctf.org)...
 3.131.60.8
Connecting to jupiter.challenges.picoctf.org (jupiter.challenges.picoctf.org)|3.131.60.8|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 776032 (758K) [application/octet-stream]
Saving to: ‘strings’

strings            100%[================>] 757.84K  89.2KB/s    in 9.6s

2024-03-02 23:05:44 (78.6 KB/s) - ‘strings’ saved [776032/776032]

lorenzo@LAPTOP-1F71H10Q:~/stgsit$ ls -la
total 768
drwxr-xr-x  2 lorenzo lorenzo   4096 Mar  2 23:05 .
drwxr-x--- 12 lorenzo lorenzo   4096 Mar  2 23:05 ..
-rw-r--r--  1 lorenzo lorenzo 776032 Oct 26  2020 strings
lorenzo@LAPTOP-1F71H10Q:~/stgsit$ strings strings | grep pico
picoCTF{5tRIng5_1T_d66c7bb7}
```
## Notas adicionales

El comando **strings** regresa las cadenas legibles de un archivo.
## Referencias