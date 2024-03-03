## Objetivo

Run the `runme.py` script to get the flag. Download the script with your browser or with `wget` in the webshell.[Download runme.py Python script](https://artifacts.picoctf.net/c/34/runme.py)
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/rme$ wget https://artifacts.picoctf.net/c/34/runme.py
--2024-03-02 23:34:26--  https://artifacts.picoctf.net/c/34/runme.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.108, 18.154.132.74, 18.154.132.32, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.108|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 270 [application/octet-stream]
Saving to: ‘runme.py’

runme.py           100%[================>]     270  --.-KB/s    in 0s

2024-03-02 23:34:27 (32.8 MB/s) - ‘runme.py’ saved [270/270]

lorenzo@LAPTOP-1F71H10Q:~/rme$ chmod 777 runme.py
lorenzo@LAPTOP-1F71H10Q:~/rme$ ./runme.py
picoCTF{run_s4n1ty_run}
lorenzo@LAPTOP-1F71H10Q:~/rme$
```
## Notas adicionales

La linea **#!/usr/bin/python3** indica la forma de ejecución de un archivo.
## Referencias