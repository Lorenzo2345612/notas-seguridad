## Objetivo

I've hidden a flag in this file. Can you find it? [Forensics is fun.pptm](https://mercury.picoctf.net/static/d3dd8cd51524d9fafcccd1b7d55f85e7/Forensics%20is%20fun.pptm)
## Solución


```
Descargamos el archivo
El archivo es una presentacion que es un conjunto de archivos, por ende podemos hacer un unzip
En los archivos podemos encontrar uno llamado hidden
Su contenido es la siguiente cadena
Z m x h Z z o g c G l j b 0 N U R n t E M W R f d V 9 r b j B 3 X 3 B w d H N f c l 9 6 M X A 1 f Q
La decodificamos en base 64 y el resultado es:

flag: picoCTF{D1d_u_kn0w_ppts_r_z1p5}
```
## Notas adicionales

## Referencias