## Objetivo

Can you figure out what is in the `eax` register at the end of the `main` function? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Disassemble [this](https://artifacts.picoctf.net/c/512/debugger0_a).
## Solución

```
Abrir el archivo con ghidra
Ir al apartado de funciones y ver el archivo main
copiar el valor de retorno

flag: picoCTF{549698}
```
## Notas adicionales

## Referencias