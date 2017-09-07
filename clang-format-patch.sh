#!/bin/bash

clang-format -style=file -fallback-style=none -i `git ls-files -om "*.[ch]" "*.[hc]pp"`

git diff > clang_format.patch

exit 0
