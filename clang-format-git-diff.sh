#!/bin/bash

git diff --name-only | xargs clang-format -style=file -i -fallback-style=none

exit 0
