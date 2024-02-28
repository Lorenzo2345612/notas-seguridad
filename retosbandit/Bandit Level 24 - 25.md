## Objetivo

A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.  
You do not need to create new connections each time
## Datos de acceso

**username**: bandit24
**host**:  bandit.labs.overthewire.org
**password**: VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
**port**: 2220

## Solución
```
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Wrong! Please enter the correct pincode. Try again.
Correct!
The password of user bandit25 is p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d

Exiting.
bandit24@bandit:/tmp/ltr$
```
## Notas adicionales

```
#!/bin/bash

for i in {0000..9999}
do
        echo UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i >> possibilities.txt
done

cat possibilities.txt | nc localhost 30002 > result.txt
```

## Referencias

https://mayadevbe.me/posts/overthewire/bandit/level25/