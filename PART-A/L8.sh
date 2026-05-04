read -p "Enter First filename: " file1
read -p "Enter Second filename: " file2

if [ -e "$file1" ] && [ -e "$file2" ]; then
    p1=$(ls -l "$file1" | cut -c 2-10)      # or use `` backtics instead of $()
    p2=$(ls -l "$file2" | cut -c 2-10)

    if [ "$p1" = "$p2" ]; then      # space is important
        echo "$file1 and $file2 have same permission : $p1"
    else
        echo "$file1 has permission : $p1"
        echo "$file2 has permission : $p2"
    fi
else
    echo "Invalid file names!"
fi

# TO chnage file permission
# chmod 741 L1.sh

# check permissions
# ls -l or for perticular file : ls -l L1.sh