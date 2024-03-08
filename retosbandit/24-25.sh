:w
#!/bin/bash

nc localhost 30002
for i in {0..9}
do
    for j in {0..9}
    do
        for k in {0..9}
        do
            for l in {0..9}
            do
                echo "$i$j$k$l"
            done
        done
    done
done