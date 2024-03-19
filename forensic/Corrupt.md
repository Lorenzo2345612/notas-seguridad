## Objetivo

We found this [file](https://jupiter.challenges.picoctf.org/static/ab30fcb7d47364b4190a7d3d40edb551/mystery). Recover the flag.
## Solución

```
Descargar el archivo
Corregir el header del png
Corregir el nombre de los chunks
Corregir el tamaño de la imagen
(Para todo esto nos ayudamos de pngcheck)
Abrir la imagen
flag: picoCTF{c0rrupt10n_1847995}
```

## Notas adicionales

**pngcheck -v** nos ayuda a verificar la integridad de un archivo png.
## Referencias
