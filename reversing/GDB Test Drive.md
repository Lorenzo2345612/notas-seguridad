
## Objetivo

Can you get the flag?Download this [binary](https://artifacts.picoctf.net/c/85/gdbme).Here's the test drive instructions:

- `$ chmod +x gdbme`
- `$ gdb gdbme`
- `(gdb) layout asm`
- `(gdb) break *(main+99)`
- `(gdb) run`
- `(gdb) jump *(main+104)`
## Solución

```
Ejecutar los comandos que nos proporciona

flag: picoCTF{d3bugg3r_dr1v3_197c378a}
```

## Notas adicionales

info functions: nos da la lista de funciones del archivo
run: se utiliza para ejecutar el programa

## Referencias
