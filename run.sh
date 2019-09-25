#!/bin/bash
input="urls.txt"
while IFS= read -r line
do
	amass enum -src -brute -min-for-recursive 1 -d "$line" > result/"$line".txt
done < "$input"
