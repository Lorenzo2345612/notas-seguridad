## Objetivo

The credentials for the next level can be retrieved by submitting the password of the current level to **a port on localhost in the range 31000 to 32000**. First find out which of these ports have a server listening on them. Then find out which of those speak SSL and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
## Datos de acceso

**username**: bandit16
**host**:  bandit.labs.overthewire.org
**password**: JQttfApK4SeyHwDlI9SXGR50qclOAil1
**port**: 2220

## Solución

```
bandit16@bandit:~$ nmap localhost
Starting Nmap 7.80 ( https://nmap.org ) at 2024-02-22 18:16 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00014s latency).
Not shown: 994 closed ports
PORT      STATE SERVICE
22/tcp    open  ssh
1111/tcp  open  lmsocialserver
1840/tcp  open  netopia-vo2
4321/tcp  open  rwhois
8000/tcp  open  http-alt
30000/tcp open  ndmps

Nmap done: 1 IP address (1 host up) scanned in 0.08 seconds
bandit16@bandit:~$ nmap localhost -p31000-32000
Starting Nmap 7.80 ( https://nmap.org ) at 2024-02-22 18:18 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00026s latency).
Not shown: 996 closed ports
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 0.10 seconds
bandit16@bandit:~$ openssl s_client -connect localhost:31046
CONNECTED(00000003)
80DBF0F7FF7F0000:error:0A0000F4:SSL routines:ossl_statem_client_read_transition:unexpected message:../ssl/statem/statem_clnt.c:398:
---
no peer certificate available
---
No client certificate CA names sent
---
SSL handshake has read 293 bytes and written 300 bytes
Verification: OK
---
New, (NONE), Cipher is (NONE)
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
bandit16@bandit:~$ openssl s_client -connect localhost:31518
CONNECTED(00000003)
Can't use SSL_get_servername
depth=0 CN = localhost
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = localhost
verify error:num=10:certificate has expired
notAfter=Feb 22 18:04:07 2024 GMT
verify return:1
depth=0 CN = localhost
notAfter=Feb 22 18:04:07 2024 GMT
verify return:1
---
Certificate chain
 0 s:CN = localhost
   i:CN = localhost
   a:PKEY: rsaEncryption, 2048 (bit); sigalg: RSA-SHA1
   v:NotBefore: Feb 22 18:03:07 2024 GMT; NotAfter: Feb 22 18:04:07 2024 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIDCzCCAfOgAwIBAgIEX2JjdTANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
b2NhbGhvc3QwHhcNMjQwMjIyMTgwMzA3WhcNMjQwMjIyMTgwNDA3WjAUMRIwEAYD
VQQDDAlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDt
h6CuzWl9fWIzJZ94yvFL1T8PaxSTXcQwib1JlZkRih1G1ju3ZL17w3YocIqw1xzC
NtQ+7ux2rV5v8Pwe5Yg/WOKVGUnq6qH4La1H3I6AA7Bjw/0zw4jqeGY04M+3KQjC
nsphanCHk21PvWlfQ4HmNq8vgnRjf8WI6M/a6LehTXl7JjjMyM4NIg1j/dIgYQzo
Qse/a2orQCizztD/bVFOw2Phep/DmJxAEjc4SCuGQ/CrWqNmF5nk0wjKeRHPTmUv
2T3gulxBP9bGVa95IHTPM4LuuEXbXEvvAxRLjs5Onr3kosYjH1FtRrPiGi3ERN1B
Y4R1ppdwOexX29DPc713AgMBAAGjZTBjMBQGA1UdEQQNMAuCCWxvY2FsaG9zdDBL
BglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0ZWQgYnkgTmNhdC4g
U2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3DQEBBQUAA4IBAQC4
+wIeeI2hhn6WRVsnJgtoFMQud6OWLQTB2DNRuhNsMgia50WXZJeB2/rTGDdRL3Lm
yq7lbXTrsDRvid6ZbR5KkzZDHci6gMLQMzSlsEGOzRVYWc2AHQUa22K/RLAM7XEE
tDRtvPclx4VCfFp2l8ccGwv6YoeJYimVj3cYSQ94eUk7JLlqlXjgHr/jHftK8LZR
Etho2bmJjZjnHUX+bhEksmAyui5RyesX0f0tYnHqvTu4RvVhpGiwmA42m+OQgW3S
cvzTrm0ayclxl2TvvnF2HQv+yhwX0x2x+/A8nUPOT//pWjPp4QVs870wZAsTuiBV
wskXiCXcGAR1qbFGuxpF
-----END CERTIFICATE-----
subject=CN = localhost
issuer=CN = localhost
---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: RSA-PSS
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 1339 bytes and written 373 bytes
Verification error: certificate has expired
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 2048 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 10 (certificate has expired)
---
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: D97A365A2AC88C4ECDD485FB9D4D06328EB8DC6B3C06336F60221987549B822E
    Session-ID-ctx:
    Resumption PSK: 9C3E6C4FBB8F4C196EA60A797AFBD4FA598760BC66BCC82BFB7EE362B86AC62FF718EC44B1E5F49F05C4362C270A0496
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 68 56 d1 a1 a1 c6 63 c0-7e 9e 4f 9f 3a 92 b8 03   hV....c.~.O.:...
    0010 - 7b dc 8c e2 ee ba b9 21-e6 37 64 ab 33 41 64 b7   {......!.7d.3Ad.
    0020 - c1 d5 d1 51 47 18 23 f8-a2 1f be 4e 3b 2a 6e 08   ...QG.#....N;*n.
    0030 - cb 50 9d 31 a8 30 6e 1c-b4 e3 a3 0d 53 e9 34 8d   .P.1.0n.....S.4.
    0040 - c3 7d 41 2f e0 9a 10 90-36 d1 cd ad 1f 29 ca 5e   .}A/....6....).^
    0050 - 37 73 41 0c 93 6e a2 bc-e9 df aa fa 86 3d 83 d0   7sA..n.......=..
    0060 - 8b 53 57 36 e8 78 1d b7-b3 40 15 90 aa 48 5c 59   .SW6.x...@...H\Y
    0070 - 47 af 76 b4 af a4 7f 6c-6f fd ae 37 48 6a f9 49   G.v....lo..7Hj.I
    0080 - ba 6a c9 c5 da aa 91 15-6f ee f8 2c 2e e9 7f 5f   .j......o..,..._
    0090 - 7f 4c b1 49 32 70 7d 50-0d b3 f4 0d fb 43 ab ae   .L.I2p}P.....C..
    00a0 - d8 7e 23 be 2a e3 04 54-5e b6 02 0b 1b 0a 4d e8   .~#.*..T^.....M.
    00b0 - b7 af cb 29 2c 5a 4a b0-d3 01 ce 68 03 5f 7c 30   ...),ZJ....h._|0
    00c0 - 2a 54 f1 98 4a 2d f7 e5-a1 05 71 c3 98 14 fe 12   *T..J-....q.....

    Start Time: 1708626039
    Timeout   : 7200 (sec)
    Verify return code: 10 (certificate has expired)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
---
Post-Handshake New Session Ticket arrived:
SSL-Session:
    Protocol  : TLSv1.3
    Cipher    : TLS_AES_256_GCM_SHA384
    Session-ID: B633943F83642C09BA0812ECA1E69DF65D185FE430C3629D71958D815EF16976
    Session-ID-ctx:
    Resumption PSK: AB204B61B4A2DFB24FF556B2A016181669B957B38AF45DAB3B69052BB4B9FF6229745F8F89825B6946DCEDA81DF9586E
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 68 56 d1 a1 a1 c6 63 c0-7e 9e 4f 9f 3a 92 b8 03   hV....c.~.O.:...
    0010 - 4a e4 5a a7 fa 55 93 90-ac bd 17 64 11 73 a6 9f   J.Z..U.....d.s..
    0020 - 1c 65 b3 7d 93 58 b6 a9-0a 3f 8e f3 6b 5f 44 55   .e.}.X...?..k_DU
    0030 - 89 ed e3 88 85 67 d0 e7-8c 82 25 6d cf d2 64 e4   .....g....%m..d.
    0040 - 4b 48 58 7a 65 9c 96 4c-e8 4a 71 cb 9b fc 2c 88   KHXze..L.Jq...,.
    0050 - 9f bd a7 75 11 3c d5 62-20 2a 65 ba 94 60 7e 6b   ...u.<.b *e..`~k
    0060 - f9 8b 4a a3 97 f9 ef ff-52 06 39 9f 72 e0 f6 e0   ..J.....R.9.r...
    0070 - ef 74 a8 7b 35 d0 f1 49-e3 ea 6b ee 9c 6d 19 9f   .t.{5..I..k..m..
    0080 - 70 09 5c 68 34 1c f1 1f-4f 1b 0b 7b ac 51 b8 e6   p.\h4...O..{.Q..
    0090 - 5e a6 af 0d de 72 31 3f-d2 10 0c 74 f8 b6 3b 5f   ^....r1?...t..;_
    00a0 - 35 61 3e 0f 2a da fa fe-0f 16 50 9b 15 1b 8b f7   5a>.*.....P.....
    00b0 - 05 89 22 0e e3 a2 19 e0-a0 8f 3b 9f e1 76 b9 c2   ..".......;..v..
    00c0 - f9 9e a4 1d d6 fb d7 aa-7d 66 7c 14 48 c2 47 34   ........}f|.H.G4

    Start Time: 1708626039
    Timeout   : 7200 (sec)
    Verify return code: 10 (certificate has expired)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
^C
bandit16@bandit:~$ echo "JQttfApK4SeyHwDlI9SXGR50qclOAil1" | openssl s_client -connect localhost:3790
80DBF0F7FF7F0000:error:8000006F:system library:BIO_connect:Connection refused:../crypto/bio/bio_sock2.c:125:calling connect()
80DBF0F7FF7F0000:error:10000067:BIO routines:BIO_connect:connect error:../crypto/bio/bio_sock2.c:127:
connect:errno=111
bandit16@bandit:~$ echo "JQttfApK4SeyHwDlI9SXGR50qclOAil1" | openssl s_client -connect localhost:31790
CONNECTED(00000003)
Can't use SSL_get_servername
depth=0 CN = localhost
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = localhost
verify error:num=10:certificate has expired
notAfter=Feb 22 18:04:08 2024 GMT
verify return:1
depth=0 CN = localhost
notAfter=Feb 22 18:04:08 2024 GMT
verify return:1
---
Certificate chain
 0 s:CN = localhost
   i:CN = localhost
   a:PKEY: rsaEncryption, 2048 (bit); sigalg: RSA-SHA1
   v:NotBefore: Feb 22 18:03:08 2024 GMT; NotAfter: Feb 22 18:04:08 2024 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIDCzCCAfOgAwIBAgIEWdQAXzANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
b2NhbGhvc3QwHhcNMjQwMjIyMTgwMzA4WhcNMjQwMjIyMTgwNDA4WjAUMRIwEAYD
VQQDDAlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC0
EWB28TWVpVUtrYSaYvmbjtrgpiTuEqg01/SReTOErvDgCyz8mhJ06BhcWK0RDiNz
E1BeQ1s7bo4V8knTeqgTd3cA9XIKO8BgqmGwYiPJyBVDMO+9S4dojnuJGViyhoM7
e0kKwdp7+uEER22koJg+ZqyI/dSSmvaDqMAU+D6FKxcxKjF8vTQzn0CLsYSXPHxT
mhshEAC8jWhYggcUxG0L1qMJnh/NL18e0jwBeCrE2PwsRuh1Qc6vl4Fd/mUByDJb
KSjsR3zDoegCWzh5lTAbnt5eaT47PBNA4foRLypdCG1tG+Cbgk6d0BGtluAJz9D8
5vEfrVpm38OelPOo0vBJAgMBAAGjZTBjMBQGA1UdEQQNMAuCCWxvY2FsaG9zdDBL
BglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0ZWQgYnkgTmNhdC4g
U2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3DQEBBQUAA4IBAQAl
z9TnfQ4cqpUeKMFRzhzuHEvuglEdfmmWmhpQ+NnpcI686OZDshzpHFRVUQjwMulr
XuhDoohLwnd+AOB4BqYWWYoF2z1mo3rsxZxxCoI7y8SP331O46Aqc4SyKMEfYBXq
mCaK5VQebSZotRPqI6jS2W7/+UmJXXKG4pEKI5pBA5tTnvNSbh6Yk87cFlAitTcN
36V1lq8S7tj2BZSfcC+nyoqwPPeLTb5beQTmKG0/JFDnYeHCbVQALq5AhXXH5G67
ytpppb4itSOMr9bfv+Awx6PPLbOJ/gxF1c1HkXX5/Pjbdy2W4sCykvXAJBir2BFe
ixo6bdA2sW0cz3uzk5x7
-----END CERTIFICATE-----
subject=CN = localhost
issuer=CN = localhost
---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: RSA-PSS
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 1339 bytes and written 373 bytes
Verification error: certificate has expired
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 2048 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 10 (certificate has expired)
---
DONE
bandit16@bandit:~$
```

## Notas adicionales

**nmap**: lista los puertos abiertos en un servidor, con la opcion -p es para especificar un puerto o rango de puertos

## Referencias