#!/bin/bash
ADD() {
    echo $a + $b | bc
}

a=$1
b=$2
ADD
##Declare variable in main program
B() {
    b=20
}
B
echo B= $b