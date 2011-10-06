#!/bin/sh
#
# ATTENTION: if you move the location of this script, paths SRC and DST 
# must be adapted. They are defined relative to the location of this script.
#
#
#
DIR=`dirname $0`
CLASSES=$DIR
SRC=$DIR/../../sbs-white/
DST=$DIR/../../../tables/
./white.pl $SRC/white.mod_src $DST/sbs-de-g2-white.mod $DST/sbs-de-g1-white.mod
