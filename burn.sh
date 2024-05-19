#!/usr/bin/sh
SIZE=`du -b $1 | cut -f -1`
dd if=$1 | pv -s $SIZE | sudo dd of=$2
# sudo dd if=$1 of=$2 status=progress