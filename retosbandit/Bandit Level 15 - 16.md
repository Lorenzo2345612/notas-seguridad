## Objetivo

The password for the next level can be retrieved by submitting the password of the current level to **port 30001 on localhost** using SSL encryption.

**Helpful note: Getting “HEARTBEATING” and “Read R BLOCK”? Use -ign_eof and read the “CONNECTED COMMANDS” section in the manpage. Next to ‘R’ and ‘Q’, the ‘B’ command also works in this version of that command…**
## Datos de acceso

**username**: bandit15
**host**:  bandit.labs.overthewire.org
**password**: jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt
**port**: 2220
## Solución

```
bandit15@bandit:~$ echo "jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt" | openssl s_client -connect localhost:30001 -ign_eof
CONNECTED(00000003)
Can't use SSL_get_servername
depth=0 CN = localhost
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = localhost
verify error:num=10:certificate has expired
notAfter=Feb 20 17:51:06 2024 GMT
verify return:1
depth=0 CN = localhost
notAfter=Feb 20 17:51:06 2024 GMT
verify return:1
---
Certificate chain
 0 s:CN = localhost
   i:CN = localhost
   a:PKEY: rsaEncryption, 2048 (bit); sigalg: RSA-SHA1
   v:NotBefore: Feb 20 17:50:06 2024 GMT; NotAfter: Feb 20 17:51:06 2024 GMT
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIDCzCCAfOgAwIBAgIEIivS1jANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
b2NhbGhvc3QwHhcNMjQwMjIwMTc1MDA2WhcNMjQwMjIwMTc1MTA2WjAUMRIwEAYD
VQQDDAlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC4
XC9dgne8ha9I/vXn4uTtObLhI/PPyLyl4jyDQPp61VtsEMcOb95KhXxdtQiDtzSD
3KXQVFLaPlVGKDWSR9nV+GoazSNPmNLH/IMVrUYxXjYikPxo1jjYKyuqfjV5bNm3
Hz6z4eDl7wNbPRaPAMPo0WU23m9M04bKQHLINfN7Abz3a+7ChLeICrWXiXp9mWfj
PY8cK7Vayz0eHU4Lg64q4jUaXQqZ/ta1RqZEwv7ZuTKctcazpK/u2+h4zvQCPyLh
uDjUXZTLlIuhfjyKUJLQsmYHAQprV6sY3ybFN32dW6MSE0/ApT6Th0LzKeaYxk5b
3NIeaYyPeKsjqFSwy+2zAgMBAAGjZTBjMBQGA1UdEQQNMAuCCWxvY2FsaG9zdDBL
BglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0ZWQgYnkgTmNhdC4g
U2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3DQEBBQUAA4IBAQBQ
RXG1k+cB357X43fsiyaCQQh4RbWHOcg1jBes5eiC/H8MyC3ec1znXvOUfqJcWNQJ
9UJDMwbkpo+IcwJiOe9n/D3Zeypv1g+ta8KKLsQ+zcbp5RdltKy7GuO/s5WjVofE
/IHz/5g+IMoqqYLlquQ539CZykPMC9TB9uWfJj/i8faCox4gjtkSCri+27tUZuHi
eYR3zxY1ptsJti/pMaItC6Oc2/pSlotQ4fXdciLZYGXqlmSFBt8Y8/v1YkhME5gN
3HmBV/Zg1SghA57zYsbf3npvQwudr04f2iF493pe0VRN6DfiXTxWkJe1VKuyGHEr
Q4L4OdVlgMSeyYyKgFc7
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
    Session-ID: BD16B13A155510FBB328656C690EDD1403DE97D29F9F9206E3D0E91E6F3B23FC
    Session-ID-ctx:
    Resumption PSK: 4A6C27755C30087ED92EA20DAB40BF25A05D675C3C3E8ED14ED7BB92CB21379E53CBCE4F1D1B312035AB688337030674
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 81 c9 7a 81 90 61 a2 44-6e 83 ab 39 4b a2 9f d6   ..z..a.Dn..9K...
    0010 - d4 ec 6b df 73 61 61 45-e2 c5 0b 71 ef 3a 06 5f   ..k.saaE...q.:._
    0020 - 54 0f e5 28 45 24 b6 b1-06 77 c3 e1 6e ba 09 1f   T..(E$...w..n...
    0030 - 5b 83 f4 08 61 06 f1 9c-ab 8e e9 a9 1d df dd d8   [...a...........
    0040 - bf b0 13 ea 90 a2 b1 25-42 9e 91 3e 3d 15 58 19   .......%B..>=.X.
    0050 - 1c e0 2a ec b7 f9 8a 63-9f 50 45 4c 40 ad 54 14   ..*....c.PEL@.T.
    0060 - c0 d4 ed fe 20 f3 a2 48-a3 46 ac 64 46 d7 99 2a   .... ..H.F.dF..*
    0070 - 7c 5b 75 3c a2 de ee 11-c1 92 43 e5 cd 8a c1 f0   |[u<......C.....
    0080 - 15 31 e9 67 84 93 d9 7c-42 7d 05 cf f1 34 da 45   .1.g...|B}...4.E
    0090 - 29 49 c2 00 6b 9d 92 a4-af ac 54 8b ed fb 55 34   )I..k.....T...U4
    00a0 - 9a 50 4e 02 64 20 ed 92-1b ed 65 fe 93 59 6d 44   .PN.d ....e..YmD
    00b0 - 36 8a 23 c9 0c 7e 7d df-40 35 64 1e 8a 50 dd a6   6.#..~}.@5d..P..
    00c0 - f0 c4 24 39 19 08 d4 f5-f9 75 e9 3c e1 12 ae c0   ..$9.....u.<....

    Start Time: 1708455895
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
    Session-ID: 37AD9E7C73B6EF3F9F6AA368CE46CE7D26BFDEE81619D80331A5C8A9CCC2CA94
    Session-ID-ctx:
    Resumption PSK: 24EE06D5D13AB973BC2C0FBE7CCD173BC42FD62E92B92AECFA640049B48C4127B8CACDFF12EF0A4A500F54198F83079F
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 7200 (seconds)
    TLS session ticket:
    0000 - 81 c9 7a 81 90 61 a2 44-6e 83 ab 39 4b a2 9f d6   ..z..a.Dn..9K...
    0010 - 7c 47 6d d9 83 1e aa 5f-69 76 77 64 75 86 f4 a5   |Gm...._ivwdu...
    0020 - 0c e0 b0 ae 92 3e 29 ae-08 3e 25 e2 45 3b 5e b8   .....>)..>%.E;^.
    0030 - 1d be 1a 43 d4 41 7f 57-4e 70 6a 0c 10 6f 9c e0   ...C.A.WNpj..o..
    0040 - 0c fd 3a f0 7e 18 e0 87-66 6e b6 75 b6 31 71 bd   ..:.~...fn.u.1q.
    0050 - 06 1f 70 17 59 79 df b6-c6 b4 c5 14 e8 6d ec b7   ..p.Yy.......m..
    0060 - 5c dc 45 80 cd e6 88 97-5d 2a 29 e7 f8 bf 52 98   \.E.....]*)...R.
    0070 - 45 aa 3d 15 58 ee 00 23-75 b0 12 74 50 9f f5 64   E.=.X..#u..tP..d
    0080 - 9c c5 e3 c0 81 76 18 d9-49 fa 5c a5 78 fa 98 33   .....v..I.\.x..3
    0090 - 40 72 b4 7e dc bc 49 7b-c9 3d a6 53 00 b3 fe 8e   @r.~..I{.=.S....
    00a0 - d8 37 01 0e ef b0 da 83-21 86 9f 8a 2b 51 3f b0   .7......!...+Q?.
    00b0 - 10 6f 5c e1 a2 3d eb 8d-fc fa 8a a4 b2 6b f2 01   .o\..=.......k..
    00c0 - 5d 7a 79 32 74 7f 12 bc-32 10 2f 0c c9 46 d2 48   ]zy2t...2./..F.H

    Start Time: 1708455895
    Timeout   : 7200 (sec)
    Verify return code: 10 (certificate has expired)
    Extended master secret: no
    Max Early Data: 0
---
read R BLOCK
Correct!
JQttfApK4SeyHwDlI9SXGR50qclOAil1

closed
bandit15@bandit:~$
```
## Notas adicionales

El comando **openssl** se utiliza para crear conexiones SSL y con su opcion s_client se especifica que la queremos como clientes, con la opcion -connect se especifica el dominio al que se quiere conectar y con -ign_eof se mantiene abierta la conexion. 

## Referencias


