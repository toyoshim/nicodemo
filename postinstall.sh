#!/bin/sh

for branch in nico nico2 nico3 nico4 nico5 nico6 nico7 nico8; do
  git submodule add https://github.com/toyoshim/tmalib.git tmalib/$branch
  cd tmalib/$branch
  git checkout $branch
  cd ../..
done

exit 0
