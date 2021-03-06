#!/bin/bash

# Requires Git Bash

rm -r build

# Debug library
cmake -H. -B./build -G"Visual Studio 15 2017" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE -DBUILD_SHARED_LIBS=TRUE
sleep 1
cmake --build ./build --target ALL_BUILD --config Debug

sleep 3

# Release library 
cmake -H. -B./build -G"Visual Studio 15 2017" -DCMAKE_BUILD_TYPE=Release -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE -DBUILD_SHARED_LIBS=TRUE
sleep 1
cmake --build ./build --target ALL_BUILD --config Release
