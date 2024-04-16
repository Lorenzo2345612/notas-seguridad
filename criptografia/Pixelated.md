## Objetivo

I have these 2 images, can you make a flag out of them? [scrambled1.png](https://mercury.picoctf.net/static/49743139fb7c10765dbf462d40987d2a/scrambled1.png) [scrambled2.png](https://mercury.picoctf.net/static/49743139fb7c10765dbf462d40987d2a/scrambled2.png)
## Solución

```
Combinamos ambas imagenes con el siguiente código
  

from PIL import Image

  

i1 = Image.open('./scrambled1.png')

i2 = Image.open('./scrambled2.png')

  

width1, height1 = i1.size

  
  

i3 = Image.new('RGB', (width1, height1))

  
  

pixels = i3.load()

  
  

for i in range(width1):

    for j in range(height1):

  

        x = i1.getpixel((i,j))[0] ^ i2.getpixel((i,j))[0]

        y = i1.getpixel((i,j))[1] ^ i2.getpixel((i,j))[1]

        z = i1.getpixel((i,j))[2] ^ i2.getpixel((i,j))[2]

  

        if (x,y,z) == (255,255,255):

            (x,y,z) = (0,0,0)

  

        i3.putpixel((i,j), (x,y,z))

  

i3.save("test.png", "PNG")


flag: picoCTF{2a4d45c7}
```
## Notas adicionales

## Referencias