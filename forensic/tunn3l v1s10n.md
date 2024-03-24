## Objetivo

We found this [file](https://mercury.picoctf.net/static/01be2b38ba97802285a451b94505ea75/tunn3l_v1s10n). Recover the flag.
## Solución

```
Se descarga el archivo
Se repara el header de la imagen
Cambiamos el lugar donde comienzan los datos de la imagen
Al abrir la imagen nos damos cuenta que no se ve la bandera, pero la imágen es muy ancha y su tamaño es más grande de lo que parece
Cambiamos el tamaño de la imagen a cuadrada.
```
## Notas adicionales

El **hexeditor** nos ayuda a editar los datos hexadecimales de un archivo.

## Referencias