#!/bin/sh

./clean.sh
cd static
mkdir -p tmalib
for tag in nico nico2 nico3 nico4 nico5 nico6; do
  git clone https://code.google.com/p/tmalib/ -b $tag tmalib/$tag
done

exit 0
