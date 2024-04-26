## Objetivo

What does asm2(0x4,0x2d) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://jupiter.challenges.picoctf.org/static/ceac75672637589213b952abe32c84b3/test.S)
## Solución

```
Descargamos el código
Vemos que se le agrega 1 al parametro 2 mientras que el parametro 1 sea menor que 0x5fa1, en cada iteración del ciclo el parametro 1 crece 0xd1

flag: 0xa3

```

## Notas adicionales

## Referencias