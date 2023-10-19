#!/bin/bash
echo -e "\n"

echo "            CALCULATOR             "
sleep 0.5
echo "Enter first number: "
read n1
echo "Enter second number: "
read n2

sum=`expr $n1 + $n2 `


echo "Sum of two integers is: $sum"

diff=`expr $n1 - $n2`

echo "Difference between two integers is: $diff"

product=`expr $n1 \* $n2`


echo "Product of two integers is: $product"
echo -e "\n"

