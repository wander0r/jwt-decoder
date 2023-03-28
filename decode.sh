#!/bin/bash

# Replace "input.txt" with the path to your input file
while read line; do
  result=$(echo "$line" | jq -R 'split(".") | .[1] | @base64d | fromjson')
  echo "$result"
done < input.txt
