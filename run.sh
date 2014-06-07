#!/bin/bash

# bash
printf '\n==== BASH ====\n'
time ./script-lang/sumdata.sh data.log

# lua
printf '\n==== LUA ====\n'
time ./script-lang/sumdata.lua data.log

# luajit
printf '\n==== LUAJIT ====\n'
time luajit ./script-lang/sumdata.lua data.log

