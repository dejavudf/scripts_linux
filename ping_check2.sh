#!/bin/bash


net="192.168.4"
for i in $(seq 254)
do
    ping -c2 -i0.2 -W1 $net.$i &>/dev/null
    if [ $? -eq 0 ];then
        echo "$net.$i is up."
    else
        echo "$net.$i is down."
    fi
done

#for i in `seq 254`
#do
#    ping -c2 -i0.2 -W1 $net.$i &>/dev/null
#    if [ $? -eq 0 ];then
#        echo "$net.$i is up."
#    else
#        echo "$net.$i is down."
#    fi
#done
