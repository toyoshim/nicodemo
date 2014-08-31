#!/bin/sh

./clean.sh
cd static
mkdir -p tmalib
for rev in 91903e03995a 4ec2172918a6 c43364aa64f3 b9198258d2b9 1e344ef9f97c; do
  git clone https://code.google.com/p/tmalib/ tmalib/$rev
  cd tmalib/$rev
  git checkout $rev
  cd ../..
done

exit 0
