#!/usr/bin/perl
use warnings;
use strict;
$|++;

# Test tables in combination. This makes sure that also tables which
# cannot be tested in isolation are checked.
#
# Copyright (C) 2011 by Swiss Library for the Blind, Visually Impaired and Print Disabled
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.

# make sure local installations of liblouis are also found
$ENV{"PATH"} = "/usr/local/bin:$ENV{'PATH'}";

my $fail = 0;

my @g1_tables = qw(
    sbs.dis
    sbs-de-core6.cti
    sbs-special.cti
    sbs-de-accents.cti
    sbs-whitespace.mod
    sbs-de-letsign.mod
    sbs-de-begendcaps.mod
    sbs-numsign.mod
    sbs-litdigit-lower.mod
    sbs-de-core.mod
    sbs-de-g0-core.mod
    sbs-de-g1-core.mod
    sbs-de-accents.mod
    sbs-de-accents-ch.mod
    sbs-special.mod
);

my @g2_tables =	qw( 
    sbs.dis
    sbs-de-core6.cti
    sbs-special.cti
    sbs-de-accents.cti
    sbs-whitespace.mod
    sbs-de-letsign.mod
    sbs-de-begendcaps.mod
    sbs-numsign.mod
    sbs-litdigit-lower.mod
    sbs-de-core.mod
    sbs-de-g2-place.mod
    sbs-de-g2-core.mod
    sbs-de-accents.mod
    sbs-de-accents-ch.mod
    sbs-special.mod
);

my @g2_name_tables = qw( 
    sbs.dis
    sbs-de-core6.cti
    sbs-special.cti
    sbs-de-accents.cti
    sbs-whitespace.mod
    sbs-de-letsign.mod
    sbs-de-begendcaps.mod
    sbs-numsign.mod
    sbs-litdigit-lower.mod
    sbs-de-core.mod
    sbs-de-g2-name.mod
    sbs-de-accents.mod
    sbs-de-accents-ch.mod
    sbs-special.mod
);

my @tables = (
    join(',', @g1_tables),
    join(',', @g2_tables),
    join(',', @g2_name_tables),
    );

foreach my $table (@tables) {
    print "lou_checktable $table\n";
    if (system ("lou_checktable $table --quiet") != 0) {
        print "=> FAILED\n";
        $fail = 1;
    }
}

exit $fail;
