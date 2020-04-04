#!/bin/bash
##sudo command check by script 
##clor code
R="\e[31m"
N="\e[0m"
ID=(id -u)
if[$ID -ne 0];then
echo -e "$R script should be run as root user ,sudo access"
exit 1
fi
 