## Objetivo

Can you figure out what is in the `eax` register? Put your answer in the picoCTF flag format: `picoCTF{n}` where `n` is the contents of the `eax` register in the decimal number base. If the answer was `0x11` your flag would be `picoCTF{17}`.Download the assembly dump [here](https://artifacts.picoctf.net/c/511/disassembler-dump0_d.txt).
## Solución

```
Se descargó el archivo
el código sigue la liguiente lógica

si 0x9fe1a es mayor a 0x2710 se le resta 0x65 si no, se le suma 0x65

flag: picoCTF{654773}
```
## Notas adicionales

## Referencias