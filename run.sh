#!/bin/bash

# bash
printf '\n==== BASH ====\nAuthor: github.com/markuman\n'
time ./script-lang/sumdata.sh data.log

# lua
printf '\n==== LUA ====\nAuthor: github.com/markuman\n'
time ./script-lang/sumdata.lua data.log

# luajit
printf '\n==== LUAJIT ====\nAuthor: github.com/markuman\n'
time luajit ./script-lang/sumdata.lua data.log

