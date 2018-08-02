#! /bin/bash

echo "Working..."

for f in $(find . -iname "*.cs"); do
    ~/bin/cleanUsingStatements.sh "$f"
done

echo "Done."
