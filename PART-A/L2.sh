# From keyboard
read -p "Enter the first number (n) : " n
read -p "Enter the second number (m) : " m

# Command line Argument
# n=$1
# m=$2


# n is divisible by m => n = km
# n = km + 0; n/m -> remainder = 0

if [ $m -eq 0 ]; then
    echo "Division by Zero Not Allowed"
    exit 1
fi

remainder=$(expr $n % $m)

if [ $remainder -eq 0 ]; then
    echo "$n is divisible by $m"
else
    echo "$n is NOT divisible by $m"
fi