#!/bin/bash

git ls-files -zm '*.h|*.c|*.cpp|*.hpp' | xargs clang-format -style=file -i -fallback-style=none

exit 0
