## Objetivo

What does asm1(0x2e0) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://jupiter.challenges.picoctf.org/static/f1c2358ff7d1e9386e41552c549cf2f6/test.S)
## Solución

```
Descargamos el código

Podemos observar que el código solo hace comparaciones con otros valores

En la primer comparación verifica si es mayor que 0x3fb, no es, por ende salta a la linea 37 que lo compara con 0x280, pero como no es igual le resta 0xa

flag: 0x2d6
```

## Notas adicionales

## Referencias

Assembly Guide

https://www.cs.virginia.edu/~evans/cs216/guides/x86.html