#!/bin/bash

read -p "请输入任意字符:" key
case $key in
[a-z])
    echo "您输入的是小写字母.";;
[A-Z])
    echo "您输入的是大写字母.";;
[0-9])
    echo "您输入的是数字.";;
*)
    echo "您输入的是其他特殊符号.";;
esac