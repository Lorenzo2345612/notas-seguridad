## Objetivo

There is a website running at `https://jupiter.challenges.picoctf.org/problem/53751/` ([link](https://jupiter.challenges.picoctf.org/problem/53751/)). Someone has bypassed the login before, and now it's being strengthened. Try to see if you can still login! or http://jupiter.challenges.picoctf.org:53751
## Solución

```
Abrir el enlace
Abrir la pestaña de admin
poner de usuario admin';
Entrar

bandera: picoCTF{m0R3_SQL_plz_c34df170}
```
## Notas adicionales

Despues de ; la sentencia SQL se ignora, por lo tanto al hacer admin'; se cierra la sentencia y no se comprueba el password.

## Referencias