## Objetivo

There is a nice program that you can talk to by using this command in a shell: `$ nc mercury.picoctf.net 7449`, but it doesn't speak English...
## Solución
```
lorenzo@LAPTOP-1F71H10Q:~/picoCTF$ nc mercury.picoctf.net 7449
112
105
99
111
67
84
70
123
103
48
48
100
95
107
49
116
116
121
33
95
110
49
99
51
95
107
49
116
116
121
33
95
102
50
100
55
99
97
102
97
125
10


Pasar los números ASCII en un conversor para obtener los caracteres.
```
## Notas adicionales

**nc** crea una conexión con un puerto de un servidor.
## Referencias

Conversor de datos:
https://gchq.github.io/CyberChef/
