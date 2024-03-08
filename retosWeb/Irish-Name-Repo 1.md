## Objetivo

There is a website running at `https://jupiter.challenges.picoctf.org/problem/50009/` ([link](https://jupiter.challenges.picoctf.org/problem/50009/)) or http://jupiter.challenges.picoctf.org:50009. Do you think you can log us in? Try to see if you can login!
## Solución

```
Abrir el enlace
Abrir la pestaña de admin
poner de usuario ' OR 1=1;
Entrar

bandera: picoCTF{s0m3_SQL_fb3fe2ad}
```
## Notas adicionales

Las validaciones deben de verificar que lo que se esta introduciendo no es código SQL, porque esto puede generar vulnerabilidades en el sistema.

## Referencias