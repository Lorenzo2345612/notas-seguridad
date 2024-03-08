## Objetivo

Check the admin scratchpad! `https://jupiter.challenges.picoctf.org/problem/58210/` or http://jupiter.challenges.picoctf.org:58210
## Solución

```
Abrir el enlace
Loggearse con cualquier usuario
Acceder a las cookies 
Copiar el token jwt
Hacerle un ataque de fuerza bruta con el comando john y probando con diccionarios de datos.
En un editor de jwt desencriptar el token, cambiar el usuario a admin y firmarlo con la contraseña indicada
Recargar la página

bandera: picoCTF{jawt_was_just_what_you_thought_44c752f5}
```
## Notas adicionales

El comando john nos ayuda a hacer ataques de fuerza bruta para para crackear contraseñas.

## Referencias