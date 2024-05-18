## Objetivo

Can you figure out what is in the `eax` register? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Download the assembly dump [here](https://artifacts.picoctf.net/c/510/disassembler-dump0_b.txt).
## Solución

```
Descargar el archivo
Nos damos cuenta que lo unico que hace el programa asigna el valor 0x9fe1a a [rbp-0x4]
y posteriormente [rbp-0x4] a eax, entonces el valor de eax es 0x9fe1a

flag: picoCTF{654874}
```
## Notas adicionales

## Referencias