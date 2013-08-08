#!/bin/bash

set -e

# This script sets up a git commit to push new documentation.

destdir=$(pwd)
cd ../../ninja

ninja manual doxygen

mv doc/manual.html $destdir
rm -rf $destdir/doxygen
mv doc/doxygen/html $destdir/doxygen
cd $destdir
git add -A .
echo "done; run 'git commit' to commit new docs."
