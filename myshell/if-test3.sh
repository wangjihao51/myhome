#!/bin/bash
wc=$(who|wc -l)
[ $wc -ge 4 ] && echo "危险！！！"
