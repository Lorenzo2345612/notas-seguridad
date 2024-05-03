## Objetivo

We have recovered a [binary](https://jupiter.challenges.picoctf.org/static/7aa5f383ec616fe9d72c2ffe1fabd0d9/rev) and a [text file](https://jupiter.challenges.picoctf.org/static/7aa5f383ec616fe9d72c2ffe1fabd0d9/rev_this). Can you reverse the flag.

## Solución

```
Decodificamos el binario con ghidra
Nos vamos a la función main
Analizando los dos for del final de la función nos damos cuenta que hace el siguiente proceso

flag = "picoCTF{r3v3rs36ad73964}"

print(flag[:8], end='')
for i in range(8, len(flag) - 1):
    if i%2==0:
        print(chr(ord(flag[i])+5), end='')
    else:
        print(chr(ord(flag[i])-2), end='')
print('}')

Entonces creamos el algoritmo inverso

flag = "picoCTF{r3v3rs36ad73964}"

print(flag[:8], end='')
for i in range(8, len(flag) - 1):
    if i%2==0:
        print(chr(ord(flag[i])-5), end='')
    else:
        print(chr(ord(flag[i])+2), end='')
print('}')

Flag: picoCTF{r3v3rs36ad73964}
```
## Notas adicionales

## Referencias