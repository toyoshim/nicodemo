#!/bin/sh

cd static
mkdir -p tmalib
git clone https://code.google.com/p/tmalib/ tmalib/91903e03995a && cd tmalib/91903e03995a && git checkout 91903e03995a
