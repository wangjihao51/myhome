#!/bin/bash
[ $(who|wc -l)  -ge  3  ] && echo "危险"|mail -s "Who" root 
