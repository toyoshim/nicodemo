#!/bin/sh

./clean.sh
cd static
mkdir -p tmalib
for branch in nico nico2 nico3 nico4 nico5 nico6 nico7 nico8; do
  git clone https://github.com/toyoshim/tmalib.git -b $branch tmalib/$branch
done

exit 0
