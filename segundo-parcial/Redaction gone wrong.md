## Objetivo

Now you DON’T see me.This [report](https://artifacts.picoctf.net/c/84/Financial_Report_for_ABC_Labs.pdf) has some critical data in it, some of which have been redacted correctly, while some were not. Can you find an important key that was not redacted properly?
## Solución

```
Extraer el contenido en texto plano del pdf con pdftotext
hacerle grep al archivo txt buscando la palabra pico
flag: picoCTF{C4n_Y0u_S33_m3_fully}
```
## Notas adicionales

## Referencias