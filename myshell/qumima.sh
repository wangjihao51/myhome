#!/bin/bash
a=`sed -n '/bash$/s#:.*##p' /etc/passwd`
for i in $a
    do 
     pass1=`grep $i /etc/shadow`
     pass2=${pass1#*:}
     pass3=${pass2%%:*}
     echo "$i---->$pass3"
done
