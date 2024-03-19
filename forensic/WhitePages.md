## Objetivo

I stopped using YellowPages and moved onto WhitePages... but [the page they gave me](https://jupiter.challenges.picoctf.org/static/fa4a277cfa846e07a5981d8a19288a2e/whitepages.txt) is all blank!
## Solución

```
Descargar el archivo
Cambiar todos los espacios en unicode por 0
Cambiar todos los espacios normales por 1
Esto se puede hacer con un editor de texto
Tomar el binario resultante y convertirlo de binario a caracteres.
flag: picoCTF{not_all_spaces_are_created_equal_3e2423081df9adab2a9d96afda4cfad6}
```
## Notas adicionales

Los caracteres Unicode son un estándar de codificación de caracteres diseñado para representar texto en la mayoría de los sistemas de escritura del mundo.

## Referencias

Cyberchef

[https://gchq.github.io/CyberChef/]