## Objetivo

Can you crack the password to get the flag?Download the password checker [here](https://artifacts.picoctf.net/c/11/level1.py) and you'll need the encrypted [flag](https://artifacts.picoctf.net/c/11/level1.flag.txt.enc) in the same directory too.
## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/PWC1$ wget https://artifacts.picoctf.net/c/11/level1.py
--2024-03-02 23:19:52--  https://artifacts.picoctf.net/c/11/level1.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.108, 18.154.132.32, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.108|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 876 [application/octet-stream]
Saving to: ‘level1.py’

level1.py          100%[================>]     876  --.-KB/s    in 0s

2024-03-02 23:19:53 (113 MB/s) - ‘level1.py’ saved [876/876]

lorenzo@LAPTOP-1F71H10Q:~/PWC1$ wget https://artifacts.picoctf.net/c/11/level1.flag.txt.enc
--2024-03-02 23:20:02--  https://artifacts.picoctf.net/c/11/level1.flag.txt.enc
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.108, 18.154.132.32, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.108|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 30 [application/octet-stream]
Saving to: ‘level1.flag.txt.enc’

level1.flag.txt.en 100%[================>]      30  --.-KB/s    in 0s

2024-03-02 23:20:03 (5.54 MB/s) - ‘level1.flag.txt.enc’ saved [30/30]

lorenzo@LAPTOP-1F71H10Q:~/PWC1$ cat level1.py
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


flag_enc = open('level1.flag.txt.enc', 'rb').read()



def level_1_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    if( user_pw == "1e1a"):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")



level_1_pw_check()
lorenzo@LAPTOP-1F71H10Q:~/PWC1$ python3 level1.py
Please enter correct password for flag: 1e1a
Welcome back... your flag, user:
picoCTF{545h_r1ng1ng_fa343060}
lorenzo@LAPTOP-1F71H10Q:~/PWC1$
```
## Notas adicionales

Con el comando **python3** se ejecutan archivos de python.
## Referencias