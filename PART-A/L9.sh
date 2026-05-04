# cmdline - args

if [ "$#" -eq 0 ]; then
    echo "Usage $0 <filename1> <filename2> ..."
    exit 1
fi

for file in "$@"; do
    if [ -e "$file" ]; then
        upper_file=$(echo "$file" | tr '[:lower:]' '[:upper:]')

        if [ -e "$upper_file" ]; then
            echo "Cannot rename $file to $upper_file : file with new name already exists"
        else
            mv "$file" "$upper_file"
            echo "Renamed $file to $upper_file"
        fi
    else
        echo "File $file does not exist in the current directory"
    fi
done


# ```
# file = a1.txt

# echo "$file"
#      ↓
# a1.txt
#      ↓
# tr lower→upper
#      ↓
# A1.TXT
# ```