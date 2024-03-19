## Objetivo

We found this [packet capture](https://jupiter.challenges.picoctf.org/static/b506393b6f9d53b94011df000c534759/capture.pcap). Recover the flag that was pilfered from the network.
## Solución

```
La respuesta esta en las UDP que tienen como destino el puerto 22 y que se lanzan de puertos mayores al 5000
La respuesta se puede obtener con este código:

from scapy.all import *

pack = rdpcap('capture.pcap')

flag = ''

for p in pack:
        if UDP in p and p[UDP].dport == 22 and p[UDP].sport > 5000:
                flag += chr(p[UDP].sport - 5000)
print(flag)

flag: picoCTF{p1LLf3r3d_data_v1a_st3g0}
```

## Notas adicionales

La librería scapy nos ayuda a trabajar con la información obtenida de la capturación de paquetes.
## Referencias