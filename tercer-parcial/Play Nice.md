## Objetivo

Not all ancient ciphers were so bad... The flag is not in standard format. `nc mercury.picoctf.net 21003` [playfair.py](https://mercury.picoctf.net/static/3329978ea3a249ef44d929b41afc5370/playfair.py)
## Solución

```
Hacer la conexión a nc mercury.picoctf.net 21003
En un decodificador de PlayFair ingresar el mensaje como el cyphertext
Ingresar el alfabeto a la matriz
A lo que se decodifica se le hace lower
y se envia a la ventana del nc
flag: 3f4b60ebf36369258d8638d2038c7ad1
```
## Notas adicionales

## Referencias

PlayFair desencriptador

https://www.dcode.fr/playfair-cipher