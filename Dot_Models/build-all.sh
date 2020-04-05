#!/bin/bash
set -x

rm -rf out
mkdir out

for f in $(ls *.dot); do
	dot -Tjpeg $f -o out/$f.jpeg
done

git add out/
git commit -asm update
