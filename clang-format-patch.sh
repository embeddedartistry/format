#!/bin/bash

clang-format -style=file -fallback-style=none -i `git ls-files -om "*.[ch]" "*.[hc]pp"`

git diff > clang_format.patch

# Delete if 0 size
if [ ! -s clang_format.patch ]
then
	rm clang_format.patch
fi

exit 0
