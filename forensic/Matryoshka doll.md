## Objetivo

Matryoshka dolls are a set of wooden dolls of decreasing size placed one inside another. What's the final one? Image: [this](https://mercury.picoctf.net/static/2978e1270538613cd8181c7b0dabe9bd/dolls.jpg)
## Solución

```
Descargar el archivo
Nos damos cuenta que el archivo es muy pesado, además con exiftool vemos que los headers son raros
Usamos binwallk y vemos que el archivo contiene un zip dentro
Hacemos unzip hasta que aparezca el archivo flag.txt
hacemos cat al archivo
flag: picoCTF{4cf7ac000c3fb0fa96fb92722ffb2a32}
```
## Notas adicionales

## Referencias
