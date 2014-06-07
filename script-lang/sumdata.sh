#!/bin/bash
# time ./script-lang/sumdata.sh data.log
# yes, that's all binary "bash" functiones ;)

original=$(cat "$1" | awk '{print$5}'|paste -sd+ | bc)
printf 'Original size %s kb\n' "$(($original/1000))"
compressed=$(cat "$1" | awk '{print$6}'|paste -sd+ | bc)
printf 'Compressed size %s kb\n' "$(($compressed/1000))"
