#!/bin/bash
# time ./script-lang/sumdata.awk data.log

original=$(cat "$1" |  awk '{ SUM += $5} END { print SUM/1000 }')
printf 'Original size %s kb\n' "$original"
compressed=$(cat "$1" | awk '{ SUM += $6} END { print SUM/1000 }')
printf 'Compressed size %s kb\n' "$compressed"
