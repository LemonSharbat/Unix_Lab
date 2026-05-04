read -p "Enter a string : " str

if [ -z "$str" ]; then
    echo "Invalid String"
    exit 1
fi

length=$(expr "$str" : '.*')
echo "Length of the string : $length"

if [ "$length" -ge 6 ]; then
    first=$(expr "$str" : '\(...\).*')
    last=$(expr "$str" : '.*\(...\)')

    echo "First 3 characters substring = $first"
    echo "Last 3 characters substring = $last"
else
    echo "String length is less than 6"
fi