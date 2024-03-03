## Objetivo

Can you invoke help flags for a tool or binary? [This program](https://mercury.picoctf.net/static/beec4f433e5ee5bfcd71bba8d5863faf/warm) has extraordinarily helpful information...
## Solución

```
lorenzo@LAPTOP-1F71H10Q:/mnt/c/Users/loren/Downloads$ wget https://mercury.picoctf.net/static/beec4f433e5ee5bfcd71bba8d5
863faf/warm
--2024-02-27 12:24:34--  https://mercury.picoctf.net/static/beec4f433e5ee5bfcd71bba8d5863faf/warm
Resolving mercury.picoctf.net (mercury.picoctf.net)... 18.189.209.142
Connecting to mercury.picoctf.net (mercury.picoctf.net)|18.189.209.142|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 10936 (11K) [application/octet-stream]
Saving to: ‘warm.1’

warm.1                        100%[=================================================>]  10.68K  --.-KB/s    in 0.001s

2024-02-27 12:24:37 (8.41 MB/s) - ‘warm.1’ saved [10936/10936]

lorenzo@LAPTOP-1F71H10Q:/mnt/c/Users/loren/Downloads$ chmod 777 warm
lorenzo@LAPTOP-1F71H10Q:/mnt/c/Users/loren/Downloads$ ./warm
Hello user! Pass me a -h to learn what I can do!
lorenzo@LAPTOP-1F71H10Q:/mnt/c/Users/loren/Downloads$ ./warm -h
Oh, help? I actually don't do much, but I do have this flag here: picoCTF{b1scu1ts_4nd_gr4vy_616f7182}
```

## Notas adicionales
El comando **chmod** sirve para cambiar los permisos de un archivo.

Los archivos ejecutables se ejecutan con **./**
## Referencias