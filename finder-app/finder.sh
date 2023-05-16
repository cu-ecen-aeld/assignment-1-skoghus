#!/bin/sh

num_args=$#
filesdir=$1
searchstr=$2

#echo $filesdir
#echo $searchstr

if [ ! $num_args -eq 2 ]; then
  echo "two args required" 
  exit 1
elif [ ! -d $filesdir ] ; then
  echo "$filesdir is not a directory" 
  exit 1
fi


X=$(ls $filesdir | wc -l)
Y=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"

