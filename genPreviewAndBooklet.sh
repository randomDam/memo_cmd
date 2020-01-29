#!/bin/bash

echo "start generate preview"
pdftoppm -png -rx 100 -ry 100 memoCMD_v4.pdf preview/memoIma
echo "end"

echo "start generate booklet"
bookletimposer -a -b -p 2x1 -f A4 -o memoCMD_imp.pdf memoCMD_v4.pdf
echo "end"
