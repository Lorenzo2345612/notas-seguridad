## Objetivo

There is a website running at `https://jupiter.challenges.picoctf.org/problem/53751/` ([link](https://jupiter.challenges.picoctf.org/problem/53751/)). Someone has bypassed the login before, and now it's being strengthened. Try to see if you can still login! or http://jupiter.challenges.picoctf.org:53751
## Solución

```
Abrir el enlace
Abrir la pestaña de admin
(El sistema usa la encripción rot 13 para modificar la contraseña, entonces deberiamos cambiar el texto de la inyeccion a rot 13)
poner de contraseña ' BE 1=1;
Entrar

bandera: picoCTF{3v3n_m0r3_SQL_4424e7af}
```
## Notas adicionales

Es bueno realizar encriptaciones para las contraseñas, eso nos asegura que no cualquiera puede leer el contenido real de estas, pero hay que ser concientes del algoritmo que usamos, por ejemplo rot13 no es un algoritmo seguro.

## Referencias

https://rot13.com/