## Objetivo

Find the flag being held on this server to get ahead of the competition [http://mercury.picoctf.net:45028/](http://mercury.picoctf.net:45028/)
## Solución
```
Abrir la página web
La solución es enviar una petición HEAD a la página, la bandera estará en el header llamado flag.

Puede haber varias soluciones, la mas sencilla es:

Con un api consumer como PostMan enviar una peticion HEAD al sitio.

La segunda seria:

Instalar Burpsuite (proxy) 
Configurar el puerto asignado a burpsuite en el navegador en el apartado de configuración de red
Encender la intercepción en burpsuite
Modificar el método get por head
Dejar pasar la peticion modificada
Obtener la bandera

flag: picoCTF{r3j3ct_th3_du4l1ty_775f2530}
```
## Notas adicionales

Los proxis son intermediarios entre las conexiones por ejemplo una computadora lanza una petición y el proxi la reenvia al destinatario, eso se hace para no salir directamente a la red con nuestra IP.
## Referencias