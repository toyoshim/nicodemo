#!/bin/sh

cd static
mkdir -p tmalib
for rev in 91903e03995a 4ec2172918a6; do
  git clone https://code.google.com/p/tmalib/ tmalib/$rev && (cd tmalib/$rev; git checkout $rev)
done

exit 0
