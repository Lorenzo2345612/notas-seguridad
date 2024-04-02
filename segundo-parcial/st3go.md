## Objetivo

Download this image and find the flag.

- [Download image](https://artifacts.picoctf.net/c/217/pico.flag.png)
## Solución

```
Primero intentamos decodificar la imagen con un decodificador de steganografía online, pero no funciona
Para ver el tipo de steganografia con la que esta codificado utilizaremos zsteg asi como un grep para obtener la bandera
zsteg -a -v pico.flag.png | grep pico
flag: picoCTF{7h3r3_15_n0_5p00n_a9a181eb}
```
## Notas adicionales

## Referencias