## Objetivo

This program has constructed the flag using hex ascii values. Identify the flag text by disassembling the program.You can download the file from [here](https://artifacts.picoctf.net/c/508/asciiftw).
## Solución

```
Descargar el archivo 
Abrirlo con Ghidra
encontrar una linea que termine con 0x70
copiar todos los valores hexadecimales del final de la linea hasta que dejen de aparecer valores hexadecimales
convertirlo a ASCII

flag: picoCTF{ASCII_IS_EASY_8960F0AF}
```
## Notas adicionales

## Referencias

Hexadecimal to ASCII
https://www.rapidtables.com/convert/number/hex-to-ascii.html