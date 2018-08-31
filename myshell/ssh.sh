#!/bin/bash

expect << EOF
 spawn ssh -o StrictHostKeyChecking=no  192.168.4.$1
 expect "password"   {send "1\n"}
 expect "#"          {send "touch /$2.txt\n"}
 expect "#"          {send "exit\r" } 
EOF
