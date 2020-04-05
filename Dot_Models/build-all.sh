#!/bin/bash

for f in $(ls *.dot); do
	dot -Tjpeg $f -o out/$f.jpeg
done
