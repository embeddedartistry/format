#!/bin/bash

clang-format -style=file -fallback-style=none `git ls-files -om "*.[ch]" "*.[hc]pp"` > format_patch.diff

exit 0
