#!/bin/bash

make libascot MPI=$MPI -j
cp build/libascot.so $PREFIX/lib/

make ascot5_main MPI=$MPI -j
make bbnbi5 MPI=$MPI -j
cp build/ascot5_main $PREFIX/bin/
cp build/bbnbi5 $PREFIX/bin/

$PYTHON -m pip install . --prefix=$PREFIX -vv