## Objetivo

#### Description

Can you break into this super secure portal? `https://jupiter.challenges.picoctf.org/problem/6353/` ([link](https://jupiter.challenges.picoctf.org/problem/6353/)) or http://jupiter.challenges.picoctf.org:6353
## Solución

```
Abrir el link
Acceder a los archivos fuente en el boton de ispeccionar
En la parte del script tomar las posiciones de la lista que sean de la bandera, armarla con las combinaciones hasta que sea la correcta.
flag: picoCTF{not_this_again_50a029}
```
## Notas adicionales

No debemos validar cosas en el lado del front, eso debe hacerse en el backend.
## Referencias