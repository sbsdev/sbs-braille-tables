#!/bin/sh
#
# ATTENTION: if you move the location of this script, paths SRC and DST 
# must be adapted. They are defined relative to the location of this script.
#
# We assume that the script tab2lou is located in the same directory as this
# script.
#
DIR=`dirname $0`
SRC=$DIR/../../sbs-tables/
DST=$DIR/../../../tables/
for i in `cat <<\END
    sbs.dis
    sbs-de-accents.cti
    sbs-de-accents.mod
    sbs-de-accents-ch.mod
    sbs-de-accents-reduced.mod
    sbs-de-begendcaps.mod
    sbs-de-capsign.mod
    sbs-de-core.mod
    sbs-de-core6.cti
    sbs-de-g0-core.mod
    sbs-de-g1-core.mod
    sbs-de-g2-core.mod
    sbs-de-g2-name.mod
    sbs-de-g2-place.mod
    sbs-de-hyph-new.mod
    sbs-de-hyph-none.mod
    sbs-de-hyph-old.mod
    sbs-de-hyph-word.mod
    sbs-de-letsign.mod
    sbs-litdigit-lower.mod
    sbs-litdigit-upper.mod
    sbs-numsign.mod
    sbs-special.cti
    sbs-special.mod
    sbs-whitespace.mod
END
`; do
    echo -n "processing ${i}_src "
    $DIR/tab2lou.pl $SRC/${i}_src $DST/$i
done
