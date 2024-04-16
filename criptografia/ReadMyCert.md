## Objetivo

How about we take you on an adventure on exploring certificate signing requestsTake a look at this CSR file [here](https://artifacts.picoctf.net/c/420/readmycert.csr).
## Solución

```
Descargar el archivo
hacerle un cat
copiar el certificado
Decodificarlo en una pagina de CSR

La bandera esta en el nombre comun

flag: picoCTF{read_mycert_a7163be8}
```
## Notas adicionales

## Referencias

CSR Decoder

https://www.sslshopper.com/csr-decoder.html