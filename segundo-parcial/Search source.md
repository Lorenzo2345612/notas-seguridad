## Objetivo

The developer of this website mistakenly left an important artifact in the website source, can you find it?The website is [here](http://saturn.picoctf.net:59405/)
## Solución

```
Usar el comando wget -r -np -l 0  http://saturn.picoctf.net:59405/
para descargar todos los archivos del sitio web
Usar el comando grep -r pico "ruta de la carpeta creada por wget" para encontrar la bandera
flag: picoCTF{1nsp3ti0n_0f_w3bpag3s_8de925a7}
```
## Notas adicionales

La opción **-r** de wget nos ayuda a descargar todo el contenido de una url 
## Referencias