#!/bin/sh

writefile=$1
writestr=$2

if [ ! $# -eq 2 ]; then
  echo "Two arguments required"
  exit 1
fi

mkdir -p "$(dirname ${writefile})" && touch $writefile
#echo $writestr > $writefile

if [ ! -e $writefile ]; then
  echo "File could not be created"
  exit 1
else
  echo $writestr > $writefile
fi

# end of file
