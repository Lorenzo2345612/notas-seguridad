## Objetivo

We found this [packet capture](https://jupiter.challenges.picoctf.org/static/0c84d3636dd088d9fe4efd5d0d869a06/capture.pcap) and [key](https://jupiter.challenges.picoctf.org/static/0c84d3636dd088d9fe4efd5d0d869a06/picopico.key). Recover the flag.
## Solución

```
 Descargamos los archivos
 utilizamos el siguiente comando
 ssldump -r capture.pcap -k picopico.key -d | grep -A 10 pico
 Tomamos las partes de la bandera que estan en multiples lineas
 picoCTF{nongshim.shrimp.crackers}
```
## Notas adicionales

**ssldump** nos ayuda a analizar la comunicación SSL/TLS entre computadoras.
## Referencias