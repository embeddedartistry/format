#!/bin/bash


find . -type d \( -path ./lib/external -o -path ./lib/libc -o -path ./lib/libmemory \) -prune \
	-o -iname *.h -o -iname *.c -o -iname *.cpp -o -iname *.hpp \
	| xargs clang-format -style=file -i -fallback-style=none

exit 0
