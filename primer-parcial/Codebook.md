## Objetivo

Run the Python script `code.py` in the same directory as `codebook.txt`.

- [Download code.py](https://artifacts.picoctf.net/c/1/code.py)
- [Download codebook.txt](https://artifacts.picoctf.net/c/1/codebook.txt)
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/cobook$ wget https://artifacts.picoctf.net/c/1/code.py
--2024-03-02 22:47:51--  https://artifacts.picoctf.net/c/1/code.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.108, 18.154.132.74, 18.154.132.32, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.108|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1278 (1.2K) [application/octet-stream]
Saving to: ‘code.py’

code.py            100%[================>]   1.25K  --.-KB/s    in 0s

2024-03-02 22:47:52 (471 MB/s) - ‘code.py’ saved [1278/1278]

lorenzo@LAPTOP-1F71H10Q:~/cobook$ wget https://artifacts.picoctf.net/c/1/codebook.txt
--2024-03-02 22:48:04--  https://artifacts.picoctf.net/c/1/codebook.txt
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.108, 18.154.132.74, 18.154.132.32, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.108|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 27 [application/octet-stream]
Saving to: ‘codebook.txt’

codebook.txt       100%[================>]      27  --.-KB/s    in 0s

2024-03-02 22:48:05 (4.07 MB/s) - ‘codebook.txt’ saved [27/27]

lorenzo@LAPTOP-1F71H10Q:~/cobook$ python3 code.py
picoCTF{c0d3b00k_455157_d9aa2df2}
```
## Notas adicionales

El comando **wget** nos ayuda a descargar un archivo de internet.

Con el comando **python3** se ejecutan los archivos **.py**.
## Referencias