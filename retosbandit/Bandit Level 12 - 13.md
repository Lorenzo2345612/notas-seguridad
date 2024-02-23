
## Objetivo

The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv (read the manpages!)

## Datos de acceso

**username**: bandit12
**host**:  bandit.labs.overthewire.org
**password**: JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
**port**: 2220
## Solución


```
bandit12@bandit:~$ mkdir /tmp/ltr
bandit12@bandit:~$ cp data.txt /tmp/ltr
bandit12@bandit:~$ mv  /tmp/ltr/data.txt /tmp/ltr/1.txt
bandit12@bandit:~$ cd / tmp/ltr
-bash: cd: too many arguments
bandit12@bandit:~$ cd /tmp/ltr
bandit12@bandit:/tmp/ltr$ xxd -r 1.txt
�h44�z��A����@=�h4hh�␦␦␦��hd����������������9���1����������;,�
�����2�3d*58�~  �S�ZP^��luY��Br$�FP!%�s��h�?�)[=�h��O(B��2A���)�tZc��:�pã)�A�ˈ�0���΅A�yjeϢx,�(����z�E�+"�2�/�-��e"���^����t�j���$�d�@�dJơ'7\���$��m1c��#>�aԽ�EV��F��OCӐc@M�C���]��Y2^h8���D=��~        O�I��NDpF�+�|b#Jv�#�J��d�LފW$�Û�͖y�`
                                                                                                                    �\&��[�@*w�M�0θ��nr��C��`e$b�
                         ~�{���
                               ��`�<����a��?e:T���e�T4±b����)�@ِ���x=bandit12@bandit:/tmp/ltr$ ls
1.txt
bandit12@bandit:/tmp/ltr$ file 1.txt
1.txt: ASCII text
bandit12@bandit:/tmp/ltr$
bandit12@bandit:/tmp/ltr$ xxd -r 1.txt >> 2.txt
bandit12@bandit:/tmp/ltr$ file 1.txt
1.txt: ASCII text
bandit12@bandit:/tmp/ltr$ file 2.txt
2.txt: gzip compressed data, was "data2.bin", last modified: Thu Oct  5 06:19:20 2023, max compression, from Unix, original size modulo 2^32 573
bandit12@bandit:/tmp/ltr$ mv 2.txt 2.gzip
bandit12@bandit:/tmp/ltr$ gzip 2.gzip -d
gzip: 2.gzip: unknown suffix -- ignored
bandit12@bandit:/tmp/ltr$ gzip -d 2.gzip
gzip: 2.gzip: unknown suffix -- ignored
bandit12@bandit:/tmp/ltr$ mv 2.txt 2.gz
mv: cannot stat '2.txt': No such file or directory
bandit12@bandit:/tmp/ltr$ mv 2.gzip 2.gz
bandit12@bandit:/tmp/ltr$ gzip -d 2.gz
bandit12@bandit:/tmp/ltr$ ls
1.txt  2
bandit12@bandit:/tmp/ltr$ file 2
2: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/ltr$ mv 2 2.bz
bandit12@bandit:/tmp/ltr$ bzip -d 2.bz
Command 'bzip' not found, but there are 20 similar ones.
bandit12@bandit:/tmp/ltr$ bzip2 -d 2.bz
bandit12@bandit:/tmp/ltr$ file 2
2: gzip compressed data, was "data4.bin", last modified: Thu Oct  5 06:19:20 2023, max compression, from Unix, original size modulo 2^32 20480
bandit12@bandit:/tmp/ltr$ ls
1.txt  2
bandit12@bandit:/tmp/ltr$ mv 2 2.gz
bandit12@bandit:/tmp/ltr$ gzip -d 2.gz
bandit12@bandit:/tmp/ltr$ ls
1.txt  2
bandit12@bandit:/tmp/ltr$ file 2
2: POSIX tar archive (GNU)
bandit12@bandit:/tmp/ltr$ mv 2 3.tar
bandit12@bandit:/tmp/ltr$ tar -d 3.tar
tar: Refusing to read archive contents from terminal (missing -f option?)
tar: Error is not recoverable: exiting now
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar
bandit12@bandit:/tmp/ltr$ tar xf 3.tar
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar  data5.bin
bandit12@bandit:/tmp/ltr$ file data5.bin
data5.bin: POSIX tar archive (GNU)
bandit12@bandit:/tmp/ltr$ mv data5.bin 4.tar
bandit12@bandit:/tmp/ltr$ tar xf 4.tar
bandit12@bandit:/tmp/ltr$ file 4.tar
4.tar: POSIX tar archive (GNU)
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar  4.tar  data6.bin
bandit12@bandit:/tmp/ltr$ file data6.bin
data6.bin: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/ltr$ mv data6.bin 5.bz
bandit12@bandit:/tmp/ltr$ bzip2 -d 5.bz
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar  4.tar  5
bandit12@bandit:/tmp/ltr$ file 5
5: POSIX tar archive (GNU)
bandit12@bandit:/tmp/ltr$ mv 5 6.tar
bandit12@bandit:/tmp/ltr$ tar xf 6.tar
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar  4.tar  6.tar  data8.bin
bandit12@bandit:/tmp/ltr$ file data8.bin
data8.bin: gzip compressed data, was "data9.bin", last modified: Thu Oct  5 06:19:20 2023, max compression, from Unix, original size modulo 2^32 49
bandit12@bandit:/tmp/ltr$ mv data8.bin 7.gz
bandit12@bandit:/tmp/ltr$ gzip -d 7.gz
bandit12@bandit:/tmp/ltr$ ls
1.txt  3.tar  4.tar  6.tar  7
bandit12@bandit:/tmp/ltr$ file 7
7: ASCII text
bandit12@bandit:/tmp/ltr$ cat 7
The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
```

## Notas adicionales

el comando **tar xf** nos ayuda a descomprimir un archivo .tar.
el comando **gzip -d** nos ayuda a descomprimir un archivo.gz.
el comando **bzip -d** nos ayuda a descomprimir un archivo .bz.

## Referencias
