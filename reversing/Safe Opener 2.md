## Objetivo

What can you do with this file?I forgot the key to my safe but this [file](https://artifacts.picoctf.net/c/287/SafeOpener.class) is supposed to help me with retrieving the lost key. Can you help me unlock my safe?
## Solución

```
Decompilar el archivo .class 

la bandera se encuentra en esta función

 public static boolean openSafe(String password) {
      String encodedkey = "picoCTF{SAf3_0p3n3rr_y0u_solv3d_it_b427942b}";
      if (password.equals(encodedkey)) {
         System.out.println("Sesame open");
         return true;
      } else {
         System.out.println("Password is incorrect\n");
         return false;
      }
   }

flag: picoCTF{SAf3_0p3n3rr_y0u_solv3d_it_b427942b}
```

## Notas adicionales

## Referencias
