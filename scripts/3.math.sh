echo "Basic Arithmatic Operations"

read -p "Enter first number: " num1
read -p "Enter second number: " num2

#Addition using let operator
let sum=num1+num2
echo "Sum using let operator: $sum"

echo "Sum usng parentthesis :$((num1+num2))"

#unary operator
let num1++
echo "Value after increament : $num1"

let num2++
echo "Value after increament : $num2"

echo "Addition using square-brackets : $[ num1 + num2 ]"

#using bc operator for floating point operations
read -p "Enter first floating point number: " fnum1
read -p "Enter second floating point number: " fnum2

floating_sum=$(echo "$fnum1*$fnum2" | bc)
echo "Floating point multiplication using bc : $floating_sum"

scale=3
#defining floating point number after decimal point
floating_sum=$(echo "scale=$scale; $fnum1+$fnum2" | bc)
echo "Floating sum with $scale : $floating_sum"
