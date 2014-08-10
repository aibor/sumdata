#!/bin/bash

# awk
printf '\n==== AWK ====\nAuthor: github.com/aibor\n'
time script-lang/sumdata.awk data.log

# bash
printf '\n==== BASH ====\nAuthor: github.com/aibor\n'
time script-lang/sumdata.sh data.log

# lua
printf '\n==== LUA ====\nAuthor: github.com/markuman\n'
time ./script-lang/sumdata.lua data.log

# luajit
printf '\n==== LUAJIT ====\nAuthor: github.com/markuman\n'
time luajit ./script-lang/sumdata.lua data.log

# octave
printf '\n==== OCTAVE ====\nAuthor: github.com/markuman\n'
time octave -q script-lang/sumdata.m

# perl
printf '\n==== PERL ====\nAuthor: Sebastian\n'
time perl ./script-lang/sumdata.pl
