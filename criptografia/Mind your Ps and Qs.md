## Objetivo

In RSA, a small `e` value can be problematic, but what about `N`? Can you decrypt this? [values](https://mercury.picoctf.net/static/b9ddda080c56fb421bf30409bec3460d/values)
## Solución

```
Descargar el archivo
Nos damos cuenta que n es pequeño, por ende podemos factorizarlo
Con eso encontramos p y q, con eso calculamos tn
Con eso calculamos la llave privada
Con eso calculamos el texto plano

Lo decodificamos a hex y luego a bytes, así tenemos la bandera

flag: picoCTF{sma11_N_n0_g0od_73918962}
```
## Notas adicionales

## Referencias