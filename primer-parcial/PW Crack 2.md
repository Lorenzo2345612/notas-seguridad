## Objetivo

Can you crack the password to get the flag?Download the password checker [here](https://artifacts.picoctf.net/c/13/level2.py) and you'll need the encrypted [flag](https://artifacts.picoctf.net/c/13/level2.flag.txt.enc) in the same directory too.
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/PWC2$ wget https://artifacts.picoctf.net/c/13/level2.py
--2024-03-02 23:23:07--  https://artifacts.picoctf.net/c/13/level2.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.108, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 914 [application/octet-stream]
Saving to: ‘level2.py’

level2.py          100%[================>]     914  --.-KB/s    in 0s

2024-03-02 23:23:07 (223 MB/s) - ‘level2.py’ saved [914/914]

lorenzo@LAPTOP-1F71H10Q:~/PWC2$ wget https://artifacts.picoctf.net/c/13/level2.flag.txt.enc
--2024-03-02 23:23:22--  https://artifacts.picoctf.net/c/13/level2.flag.txt.enc
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.108, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 31 [application/octet-stream]
Saving to: ‘level2.flag.txt.enc’

level2.flag.txt.en 100%[================>]      31  --.-KB/s    in 0s

2024-03-02 23:23:22 (820 KB/s) - ‘level2.flag.txt.enc’ saved [31/31]

lorenzo@LAPTOP-1F71H10Q:~/PWC2$ ls -la
total 16
drwxr-xr-x  2 lorenzo lorenzo 4096 Mar  2 23:23 .
drwxr-x--- 16 lorenzo lorenzo 4096 Mar  2 23:22 ..
-rw-r--r--  1 lorenzo lorenzo   31 Mar 15  2023 level2.flag.txt.enc
-rw-r--r--  1 lorenzo lorenzo  914 Mar 15  2023 level2.py
lorenzo@LAPTOP-1F71H10Q:~/PWC2$ cat level2.py
### THIS FUNCTION WILL NOT HELP YOU FIND THE FLAG --LT ########################
def str_xor(secret, key):
    #extend key to secret length
    new_key = key
    i = 0
    while len(new_key) < len(secret):
        new_key = new_key + key[i]
        i = (i + 1) % len(key)
    return "".join([chr(ord(secret_c) ^ ord(new_key_c)) for (secret_c,new_key_c) in zip(secret,new_key)])
###############################################################################

flag_enc = open('level2.flag.txt.enc', 'rb').read()



def level_2_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    if( user_pw == chr(0x64) + chr(0x65) + chr(0x37) + chr(0x36) ):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")



level_2_pw_check()
lorenzo@LAPTOP-1F71H10Q:~/PWC2$ python3
Python 3.10.12 (main, Jun 11 2023, 05:26:28) [GCC 11.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> chr(0x64) + chr(0x65) + chr(0x37) + chr(0x36)
'de76'
>>> exit()
lorenzo@LAPTOP-1F71H10Q:~/PWC2$ python3 level2.py
Please enter correct password for flag: de76
Welcome back... your flag, user:
picoCTF{tr45h_51ng1ng_489dea9a}
lorenzo@LAPTOP-1F71H10Q:~/PWC2$
```
## Notas adicionales

## Referencias