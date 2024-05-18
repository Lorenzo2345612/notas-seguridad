## Objetivo

Can you figure out what is in the `eax` register at the end of the `main` function? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Debug [this](https://artifacts.picoctf.net/c/520/debugger0_b).
## Solución

```
Descargar el archivo
abrirlo con ghidra
Ver la función main
ejecutarla en un compilador c++
imprimir la variable de retorno

flag: picoCTF{307019}
```
## Notas adicionales

## Referencias