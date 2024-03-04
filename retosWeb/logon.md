## Objetivo

The factory is hiding things from all of its users. Can you login as Joe and find what they've been looking at? `https://jupiter.challenges.picoctf.org/problem/15796/` ([link](https://jupiter.challenges.picoctf.org/problem/15796/)) or http://jupiter.challenges.picoctf.org:15796
## Solución
```
Abrir la página web
Introducir cualquier usuario y contraseña
Inspeccionar la página
Abrir la pestaña de aplicación
Cambiar la cookie de admin de False a True
Recargar la página.
```
## Notas adicionales

En las cookies no debemos guardar información tan básica como si es admin, lo mejor es guardar un token y validarlo en el backend.
## Referencias