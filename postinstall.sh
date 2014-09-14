#!/bin/sh

./clean.sh
cd static
mkdir -p tmalib
for branch in nico nico2 nico3 nico4 nico5 nico6 nico7; do
  git clone https://code.google.com/p/tmalib/ -b $branch tmalib/$branch
done

exit 0
