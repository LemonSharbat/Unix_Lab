read -p "Enter a string: " str

if [ -z "$str" ]; then
    echo "Invalid String"
    exit 1
fi

# length
length=$(expr "$str" : '.*')
echo "Length of the string: $length"

# Extract substring
if [ "$length" -ge 3 ]; then
    first=$(expr "$str" : '\(...\).*')
    echo "First 3 characters: $first"
else
    echo "String length is less than 3"
fi

# Position of character
read -p "Enter a character to be searched: " ch
res=$(expr "$str" : "[^$ch]*$ch") # check in Lab; res=`expr "$str" : '[^'$ch']*'$ch`
if [ "$res" -ne 0 ]; then
    echo "Position of character $ch in the string is $res"
else
    echo "Character $ch does not exist in the string"
fi

