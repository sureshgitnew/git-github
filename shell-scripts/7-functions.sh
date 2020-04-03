#!/bin/bash
ADD() {
    echo $a + $b | bc
}
a=$1
b=$2
ADD