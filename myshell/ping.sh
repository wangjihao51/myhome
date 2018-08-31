#!/bin/bash
ping -c 2 -i 0.2 -W 1 $1 &>/dev/null
if [ $? -eq 0 ];then 
    echo "$1 life!"
else 
    echo "$1 dead!"
fi
