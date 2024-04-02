## Objetivo

Files can always be changed in a secret way. Can you find the flag? [cat.jpg](https://mercury.picoctf.net/static/d1375e383810d8d957c04eef9e345732/cat.jpg)
## Solución

```
Descargar la imagen
Usar una herramienta para ver los metadatos de la imagen
La información de license es una cadena en base 64
La decodificamos y obtenemos la bandera
flag: picoCTF{the_m3tadata_1s_modified}
```
## Notas adicionales

## Referencias