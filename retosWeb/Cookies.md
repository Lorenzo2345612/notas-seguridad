## Objetivo

#### Description

Who doesn't love cookies? Try to figure out the best one. [http://mercury.picoctf.net:54219/](http://mercury.picoctf.net:54219/)
## Solución

```
Abrir el link
Inspeccionar la página
La cookie name es la que nos indica si ingresamos el nombre de la galleta correcta
Como no sabemos que numero de galleta es la correcta utilizaremos el siguiente codigo bash:

for i in {0..20}; do curl -s http://mercury.picoctf.net:17781/check -H "Cookie: name=$i"; done | grep pico

para hacer peticiones a fuerza bruta

flag: picoCTF{3v3ry1_l0v3s_c00k135_bb3b3535}
```
## Notas adicionales

Con la opcion **-H** en curl podemos especificar los headers de la peticion
## Referencias