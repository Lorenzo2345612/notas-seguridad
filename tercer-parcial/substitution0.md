

## Objetivo

A message has come in but it seems to be all scrambled. Luckily it seems to have the key at the beginning. Can you crack this substitution cipher?Download the message [here](https://artifacts.picoctf.net/c/154/message.txt).
## Solución

```
Lo unico que tenemos que hacer es cambiar las letras depende el alfabeto dado por el normal

a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
b = "ZGSOCXPQUYHMILERVTBWNAFJDK"

text = """Qctcnrel Mcptzlo ztebc, fuwq z ptzac zlo bwzwcmd zut, zlo gtenpqw ic wqc gccwmc
xtei z pmzbb szbc ul fqusq uw fzb clsmebco. Uw fzb z gcznwuxnm bsztzgzcnb, zlo, zw
wqzw wuic, nlhlefl we lzwntzmubwb—ex sentbc z ptczw rtukc ul z bsuclwuxus reulw
ex aucf. Wqctc fctc wfe tenlo gmzsh brewb lczt elc cjwtciuwd ex wqc gzsh, zlo z
melp elc lczt wqc ewqct. Wqc bszmcb fctc cjsccoulpmd qzto zlo pmebbd, fuwq zmm wqc
zrrcztzlsc ex gntlubqco pemo. Wqc fcupqw ex wqc ulbcsw fzb actd tcizthzgmc, zlo,
wzhulp zmm wqulpb ulwe selbuoctzwuel, U senmo qztomd gmzic Ynruwct xet qub eruluel
tcbrcswulp uw.

Wqc xmzp ub: ruseSWX{5NG5717N710L_3A0MN710L_357GX9XX}""".upper()

print(text)

for i in text:
    if i in a:
        idx = b.index(i)
        print(a[idx], end='')
    else:
        print(i, end='')

flag: picoCTF{5UB5717U710N_3V0LU710N_357BF9FF}
```

## Notas adicionales

## Referencias