## Objetivo

Can you crack the password to get the flag?Download the password checker [here](https://artifacts.picoctf.net/c/17/level3.py) and you'll need the encrypted [flag](https://artifacts.picoctf.net/c/17/level3.flag.txt.enc) and the [hash](https://artifacts.picoctf.net/c/17/level3.hash.bin) in the same directory too.There are 7 potential passwords with 1 being correct. You can find these by examining the password checker script.

## Solución

```
lorenzo@LAPTOP-1F71H10Q:~/PWC3$ wget https://artifacts.picoctf.net/c/17/level3.py
--2024-03-02 23:27:26--  https://artifacts.picoctf.net/c/17/level3.py
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.108, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1337 (1.3K) [application/octet-stream]
Saving to: ‘level3.py’

level3.py          100%[================>]   1.31K  --.-KB/s    in 0s

2024-03-02 23:27:27 (275 MB/s) - ‘level3.py’ saved [1337/1337]

lorenzo@LAPTOP-1F71H10Q:~/PWC3$ wget https://artifacts.picoctf.net/c/17/level3.flag.txt.enc
--2024-03-02 23:27:34--  https://artifacts.picoctf.net/c/17/level3.flag.txt.enc
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.108, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 31 [application/octet-stream]
Saving to: ‘level3.flag.txt.enc’

level3.flag.txt.en 100%[================>]      31  --.-KB/s    in 0s

2024-03-02 23:27:35 (9.64 MB/s) - ‘level3.flag.txt.enc’ saved [31/31]

lorenzo@LAPTOP-1F71H10Q:~/PWC3$ wget https://artifacts.picoctf.net/c/17/level3.hash.bin
--2024-03-02 23:27:55--  https://artifacts.picoctf.net/c/17/level3.hash.bin
Resolving artifacts.picoctf.net (artifacts.picoctf.net)... 18.154.132.32, 18.154.132.108, 18.154.132.74, ...
Connecting to artifacts.picoctf.net (artifacts.picoctf.net)|18.154.132.32|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 16 [application/octet-stream]
Saving to: ‘level3.hash.bin’

level3.hash.bin    100%[================>]      16  --.-KB/s    in 0s

2024-03-02 23:27:56 (2.85 MB/s) - ‘level3.hash.bin’ saved [16/16]

lorenzo@LAPTOP-1F71H10Q:~/PWC3$ ls -la
total 20
drwxr-xr-x  2 lorenzo lorenzo 4096 Mar  2 23:27 .
drwxr-x--- 17 lorenzo lorenzo 4096 Mar  2 23:27 ..
-rw-r--r--  1 lorenzo lorenzo   31 Mar 15  2023 level3.flag.txt.enc
-rw-r--r--  1 lorenzo lorenzo   16 Mar 15  2023 level3.hash.bin
-rw-r--r--  1 lorenzo lorenzo 1337 Mar 15  2023 level3.py
lorenzo@LAPTOP-1F71H10Q:~/PWC3$ cat level3.py
import hashlib

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

flag_enc = open('level3.flag.txt.enc', 'rb').read()
correct_pw_hash = open('level3.hash.bin', 'rb').read()


def hash_pw(pw_str):
    pw_bytes = bytearray()
    pw_bytes.extend(pw_str.encode())
    m = hashlib.md5()
    m.update(pw_bytes)
    return m.digest()


def level_3_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    user_pw_hash = hash_pw(user_pw)

    if( user_pw_hash == correct_pw_hash ):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")



level_3_pw_check()


# The strings below are 7 possibilities for the correct password.
#   (Only 1 is correct)
pos_pw_list = ["f09e", "4dcf", "87ab", "dba8", "752e", "3961", "f159"]

lorenzo@LAPTOP-1F71H10Q:~/PWC3$ python3
Python 3.10.12 (main, Jun 11 2023, 05:26:28) [GCC 11.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> pos_pw_list = ["f09e", "4dcf", "87ab", "dba8", "752e", "3961", "f159"]
>>> for i in pos_pow_list:
...     i
...
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'pos_pow_list' is not defined. Did you mean: 'pos_pw_list'?
>>> import hashlib
>>> for i in pos_pw_list:
...     pw_bytes = bytearray()
...     pw_bytes.extend(i.encode())
...     m = hashlib.md5()
...     m.update(pw_bytes)
...     print(m.digest())
...
b'\xdd\xd2C\xee\xc9\x1f\xa3\xc3\x03\xda\xa5\xf81\x91\x17\x94'
b'\xa3c\x03FAp\xda\xfe5\xd3\xfcv\xe9\xb2\x88L'
b'\xe1mU\xa5]\x80\xdd\xddR\xa8>\xab\xeaW+{'
b'e\xd9\xc6\x8e\x03\x80yi\x85\x1a\x83\xb2\x8b\xbe\xbe\xd1'
b'\x14\xc97-\x1f\xd1\x1e\xda\x1c\x0c\x8c\xbb\xbe\xf4_\xfc'
b'$\xe0\x180\xd2\x13\xd7]\xeb\x99\xc2+\x9c\xd9\x1d\xdd'
b'\x86\xfe\x19\xc3,3i\x7f\xcf>\xbb<4&\x9dk'
>>> print(open('level3.hash.bin', 'rb').read())
b'\xe1mU\xa5]\x80\xdd\xddR\xa8>\xab\xeaW+{'
>>> exit()
lorenzo@LAPTOP-1F71H10Q:~/PWC3$ python3 level3.py
Please enter correct password for flag: 87ab
Welcome back... your flag, user:
picoCTF{m45h_fl1ng1ng_cd6ed2eb}
lorenzo@LAPTOP-1F71H10Q:~/PWC3$
```
## Notas adicionales

Con la opción **rb** se le da la opción a python de abrir archivos en forma de bytes.
## Referencias