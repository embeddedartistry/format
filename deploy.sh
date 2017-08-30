#!/bin/bash

root=$PWD
echo "$root"

# Assume we are a submodule: move up at least one directory
# If it has a git directory, deploy clang-format there.
# We limit ourselves to three directories up

for i in `seq 1 3`;
do
	cd ../
	if [ -d ".git" ]; then
		echo "Parent git repository found: deploying clang-format."
		cp $root/style/clang_format $PWD/.clang-format
		exit 0
	fi
done

# Didn't find one? Error out

echo "Couldn't find a parent directory within three levels that has a .git folder. Please deploy clang-format manually."

exit 1
