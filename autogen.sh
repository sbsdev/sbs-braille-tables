#!/bin/sh
#
set -e

# Refresh GNU autotools toolchain.
echo Cleaning autotools files...
find -type d -name autom4te.cache -print0 | xargs -0 rm -rf \;
find -type f \( -name missing -o -name install-sh -o -name mkinstalldirs \
	-o -name depcomp -o -name ltmain.sh -o -name configure \
	-o -name config.sub -o -name config.guess -o -name config.h.in \
        -o -name mdate-sh -o -name texinfo.tex \
	-o -name Makefile.in -o -name aclocal.m4 \) -print0 | xargs -0 rm -f

echo Running autoreconf...
autoreconf --install --warnings=all

exit 0
