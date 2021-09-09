#!/bin/sh

# The SRC environment variable points to a directory with .kst files
# to be converted.  KSTTOBDF says where to find the ksttobdf program
# from https://github.com/atsampson/its-tests/

for i in $SRC/*.kst; do
    name=`basename $i .kst`
    $KSTTOBDF $i > bdf/$name.bdf
done
