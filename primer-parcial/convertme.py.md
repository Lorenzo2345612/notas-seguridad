## Objetivo

Run the Python script and convert the given number from decimal to binary to get the flag.[Download Python script](https://artifacts.picoctf.net/c/24/convertme.py)
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/convme$ wget https://artifacts.picoctf.net/c/24/convertme.py
--2024-03-02 22:52:37--  https://artifacts.picoctf.net/c/24/convertme.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.74, 18.154.132.88, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1189 (1.2K) [application/octet-stream]
Saving to: ‘convertme.py’

convertme.py       100%[================>]   1.16K  --.-KB/s    in 0s

2024-03-02 22:52:38 (406 MB/s) - ‘convertme.py’ saved [1189/1189]

lorenzo@LAPTOP-1F71H10Q:~/convme$ ls -la
total 12
drwxr-xr-x 2 lorenzo lorenzo 4096 Mar  2 22:52 .
drwxr-x--- 9 lorenzo lorenzo 4096 Mar  2 22:52 ..
-rw-r--r-- 1 lorenzo lorenzo 1189 Mar 15  2023 convertme.py
lorenzo@LAPTOP-1F71H10Q:~/convme$ python3 convertme.py
If 25 is in decimal base, what is it in binary base?
Answer: 11001
That is correct! Here's your flag: picoCTF{4ll_y0ur_b4535_722f6b39}
lorenzo@LAPTOP-1F71H10Q:~/convme$
```
## Notas adicionales

## Referencias

Decimal a binario:

https://www.rapidtables.com/convert/number/decimal-to-binary.html