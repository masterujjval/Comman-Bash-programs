#!/bin/bash

echo "Enter the integer to get its table "
read num1
echo "The multipilcation table is:"
for i in {1..10}
do
    num=`expr $num1 \* $i`
    echo "$num "
done

