#!/bin/bash


BASE_DIR="$1"

# Check if the directory is present or not
if [ -d $BASE_DIR ]
then
	echo "Directory doesn't exist. Please give a valid directory"
	exit 1
fi

#Create an archive director if not already present

mkdir -p $BASE_DIR/archive

#Find all the files with size greater than 20MB.

for f in `find $BASE_DIR -maxdepth 1 -type f -size +10M`
do
	echo "Archiving $f => $BASE_DIR/archive"
	gzip $f
	mv $f.gz $BASE_DIR/archive
done
