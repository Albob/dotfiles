#! /bin/bash

function main()
{
    local filename=$1
    local tmp="${filename}.tmp"

    if [ ! -f $filename ]; then
        (>&2 echo "Error: $filename doesn't exist")
        exit 1;
    fi
    
    cat "$filename" | sed -e '1s/^\xef\xbb\xbf//' | grep "^using " | sort -f -d -u > "$tmp"
    cat "$filename" | sed -e '1s/^\xef\xbb\xbf//' | grep -v "^using " >> "$tmp"

    cp -f "$tmp" "$filename"
    rm -f "$tmp"
}

main $*
