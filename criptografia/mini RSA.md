## Objetivo

Let's decrypt this: [ciphertext](https://jupiter.challenges.picoctf.org/static/ee7e2388b45f521b285334abb5a63771/ciphertext)? Something seems a bit small.
## Solución

```
Al descargar el archivo nos encontramos con que la e es muy pequeña, entonces al elevar c a la e no llegamos a n, por tanto podemos eliminarla de la formula, por ende solo debemos encontrar un numero que al elevarlo a la potencia 3 nos de c

c = 2205316413931134031074603746928247799030155221252519872649649212867614751848436763801274360463406171277838056821437115883619169702963504606017565783537203207707757768473109845162808575425972525116337319108047893250549462147185741761825125
def find_cubic_root(n):
    a = 1
    b = n
    while b - a > 1:
        mid = (a + b) // 2
        if mid**3 > n:
            b = mid
        else:
            a = mid

    if a ** 3 == n:
        return a
    elif b ** 3 == n:
        return b
    else:
        return 0

m = find_cubic_root(c)
h = hex(m)
print(h)
p = str(hex(m)[2:])
p = bytes.fromhex(p).decode()
print(p)

flag: picoCTF{n33d_a_lArg3r_e_606ce004}
```
## Notas adicionales

## Referencias