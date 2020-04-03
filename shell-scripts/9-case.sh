#!/bin/bash
ACTION=$1
PACKAGE_NAME=$2
CASE $ACTION in
 install)
   sudo yum install $PACKAGE_NAME -y &>>$LOG
   STATUS=$?
   ;;
   remove)
   sudo yum remove $PACKAGE_NAME -y &>>$LOG
   STATUS=$?
   ;;
   esac

case $STATUS in
    0)
      echo "$ACTION success"
      exit 0
      ;;
      1)
      echo "$ACTION FAILURE"
      exit1
      ;;
      esac