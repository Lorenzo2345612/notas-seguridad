## Objetivo

Can you figure out what is in the `eax` register? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Download the assembly dump [here](https://artifacts.picoctf.net/c/530/disassembler-dump0_c.txt).
## Solución

```
Se descarga el archivo
Lo que hace es guardar 0x9fe1a en [rbp-0xc]
luego guarda `0x4` en `[rbp-0x8]`
luego carga el valor en `[rbp-0xc]` en el registro `eax`
luego se multiplica `eax` por el valor en `[rbp-0x8]`
luego suma `0x1f5` al valor de `eax`
el resultado es 2,619,997 en decimal

flag: picoCTF{2619997}
```
## Notas adicionales

## Referencias