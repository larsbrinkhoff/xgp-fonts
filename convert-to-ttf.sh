#!/bin/sh

# The MKTTF environment variable says where to find mkttf.py from
# https://github.com/Tblue/mkttf

for i in bdf/*.bdf; do
    name=`basename $i .bdf`
    $MKTTF -A'--alphamax 0 --unit 100' $i
    mv *.ttf ttf/$name.ttf
    rm *.sfd
done