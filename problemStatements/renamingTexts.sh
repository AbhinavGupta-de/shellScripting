#!/bin/bash

CURRENT_DIR=$(pwd)
EXTENSION="txt"
PREFIX="rnm"

for file in "$CURRENT_DIR"/*.$EXTENSION
do
	mv "$file" "$CURRENT_DIR/$PREFIX$(basename $file)"
done

echo "Files have been renamed."
