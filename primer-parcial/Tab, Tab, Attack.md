## Objetivo

Using tabcomplete in the Terminal will add years to your life, esp. when dealing with long rambling directory structures and filenames: [Addadshashanammu.zip](https://mercury.picoctf.net/static/72712e82413e78cc8aa8d553ffea42b0/Addadshashanammu.zip)
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ wget https://mercury.picoctf.net/static/72712e82413e78cc8aa8d553ffea42b0/Addadshashanammu.zip
--2024-03-02 21:48:39--  https://mercury.picoctf.net/static/72712e82413e78cc8aa8d553ffea42b0/Addadshashanammu.zip
Resolving mercury.picoctf.net (mercury.picoctf.net)... 18.189.209.142
Connecting to mercury.picoctf.net (mercury.picoctf.net)|18.189.209.142|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 4520 (4.4K) [application/octet-stream]
Saving to: ‘Addadshashanammu.zip’

Addadshashanammu.z 100%[================>]   4.41K  --.-KB/s    in 0s

2024-03-02 21:48:40 (550 MB/s) - ‘Addadshashanammu.zip’ saved [4520/4520]

lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ ls -la
total 16
drwxr-xr-x 2 lorenzo lorenzo 4096 Mar  2 21:48 .
drwxr-xr-x 8 lorenzo lorenzo 4096 Mar  2 21:48 ..
-rw-r--r-- 1 lorenzo lorenzo 4520 Mar 15  2021 Addadshashanammu.zip
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ gzip Addadshashanammu.zip -d
gzip: Addadshashanammu.zip: unknown suffix -- ignored
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ unzip Addadshashanammu.zip -d
error:  must specify directory to which to extract with -d option
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ unzip Addadshashanammu.zip -d .
Archive:  Addadshashanammu.zip
   creating: ./Addadshashanammu/
   creating: ./Addadshashanammu/Almurbalarammi/
   creating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/
   creating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/
   creating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/
   creating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/
   creating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku/
  inflating: ./Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku/fang-of-haynekhtnamet
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta$ cd Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku/
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta/Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku$ cat fang-of-haynekhtnamet
 HH/lib64/ld-linux-x86-64.so.2GNUGNU� �"!�@����a        ~���=
                                                              Y h "libc.so.6puts__cxa_finalize__libc_start_mainGLIBC_2.2.5_ITM_deregisterTMCloneTable__g � � � � � � H�H��gisterTMCloneTableu␦i 1�
 H��t��H���5�
 �%�
 @�%�
8#TT 1tt$D���o�N
�� ��0)@�H��H���(;�lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta/Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku$ ^C
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta/Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku$ ls -la
total 20
drwxr-xr-x 2 lorenzo lorenzo 4096 Mar 15  2021 .
drwxr-xr-x 3 lorenzo lorenzo 4096 Mar 15  2021 ..
-rwxr-xr-x 1 lorenzo lorenzo 8320 Mar 15  2021 fang-of-haynekhtnamet
lorenzo@LAPTOP-1F71H10Q:~/picoCTF/tta/Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku$ ./fang-of-haynekhtnamet ��W���H��t 1��L��L��D��A��H��H9�u�H�[]A\A]A^A_Ðf.���H�H��*ZAP!
*ZAP!* picoCTF{l3v3l_up!_t4k3_4_r35t!_6f332f10}�������X"����H��������0zRx
```
## Notas adicionales

El **tab** nos ayuda a autocompletar nombres de archivos que hacen match con lo que se esta escribiendo.

El comando **unzip -d** nos ayuda a descomprimir un archivo **.zip**
## Referencias

Descomprimir un .zip

https://kinsta.com/es/base-de-conocimiento/descomprimir-archivo-zip/