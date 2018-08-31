#!/bin/bash
read -p "请输入一个参数：" name
read -p "是否创建目录yes或者YES:" make
if [ "$make" = "YES"  ];then
   mkdir $name
elif [ $make =  "yes" ];then
   mkdir $name
   read -p "是否创建文件yes或者no:" i 
      if [ $i = yes ];then
         cd  $name
         touch test01.txt
         echo "创建成功！"
      elif [ $i = no ];then
         echo "谢谢"
         exit      

     fi
fi
         
 
