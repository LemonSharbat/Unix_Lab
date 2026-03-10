# cmdline -args

if [ "$#" -eq 0 ]; then
    echo "Usage : $0 <path-1> <path-2> ..."
    exit 1
fi

for path in "$@"; do
    mkdir -p "$path"
    echo "Created directories for the path : $path"
done