## Objetivo

Can you figure out what is in the `eax` register? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Download the assembly dump [here](https://artifacts.picoctf.net/c/509/disassembler-dump0_a.txt).
## Solución

```
Descargar el archivo
Nos damos cuenta que en la linea +15 se le asigna el valor 0x30 a eax entonces el resultado es la conversión de 0x30 a  decimal

flag: picoCTF{48}
```
## Notas adicionales

## Referencias