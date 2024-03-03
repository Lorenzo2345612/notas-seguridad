## Objetivo

Can you look at the data in this binary: [static](https://mercury.picoctf.net/static/66932732825076cad4ba43e463dae82f/static)? This [BASH script](https://mercury.picoctf.net/static/66932732825076cad4ba43e463dae82f/ltdis.sh) might help!
## Solución

```
Descargar ambos archivos

Ejecutar el archivo ltdis.sh con static como parámetro

hacer un grep al archivo resultante  static.ltdis.strings.txt buscando la palabra pico

picoCTF{d15a5m_t34s3r_f5aeda17}
```
## Notas adicionales
 **grep** es el comando que nos ayuda a buscar patrones en un archivo.
## Referencias