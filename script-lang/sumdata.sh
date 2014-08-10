#!/bin/bash

declare -i sum_{original,compressed}=0

while read -r dummy dummy dummy dummy original compressed dummy
do
  sum_original+=$original
  sum_compressed+=$compressed
done < "$1"

echo "Original size $(( sum_original/1000 )) kb"
echo "Compressed size $(( sum_compressed/1000 )) kb"
