## Objetivo

Our flag printing service has started glitching!`$ nc saturn.picoctf.net 55826`
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~$ nc saturn.picoctf.net 55826
'picoCTF{gl17ch_m3_n07_' + chr(0x39) + chr(0x63) + chr(0x34) + chr(0x32) + chr(0x61) + chr(0x34) + chr(0x35) + chr(0x64) + '}'

Tomar el código de python, eh imprimirlo con python.

flag: picoCTF{gl17ch_m3_n07_9c42a45d}
```
## Notas adicionales

la función **chr** en python se usa para convertir de ASCII a caracter.
## Referencias