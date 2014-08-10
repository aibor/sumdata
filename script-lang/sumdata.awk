#!/usr/bin/awk -f

{
  SUM_O += $5
  SUM_C += $6
}

END {
  printf "Original size %d kb\n", SUM_O/1000
  printf "Compressed size %d kb\n", SUM_C/1000
}
