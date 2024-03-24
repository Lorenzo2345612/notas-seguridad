## Objetivo

We found this [packet capture](https://jupiter.challenges.picoctf.org/static/fbf98e695555a2a48fe42c9a245de376/capture.pcap) and [key](https://jupiter.challenges.picoctf.org/static/fbf98e695555a2a48fe42c9a245de376/picopico.key). Recover the flag.
## Solución

```
Descargamos los archivos
 utilizamos el siguiente comando
 ssldump -r capture.pcap -k picopico.key -d | grep -A 10 pico
 Tomamos las partes de la bandera que estan en multiples lineas
picoCTF{honey.roasted.peanuts}
```
## Notas adicionales

## Referencias