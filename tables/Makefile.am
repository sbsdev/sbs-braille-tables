# generate the list of tables as follows:
# $ ls | grep -v Makefile | grep -v README | grep -v maketablelist.sh | grep -v '.in$' | grep -v '.*~$' | sort | sed -e 's/$/ \\/' -e 's/^/\t/' | head --bytes=-2
table_files = \
	sbs-de-accents-ch.cti \
	sbs-de-accents.cti \
	sbs-de-accents-reduced.cti \
	sbs-de-begendcaps.mod \
	sbs-de-capsign.mod \
	sbs-de-core6.cti \
	sbs-de-core.mod \
	sbs-de-g0-core.mod \
	sbs-de-g1-core.mod \
	sbs-de-g1-white.mod \
	sbs-de-g2-core.mod \
	sbs-de-g2-name.mod \
	sbs-de-g2-place.mod \
	sbs-de-g2-white.mod \
	sbs-de-hyph-new.mod \
	sbs-de-hyph-none.mod \
	sbs-de-hyph-old.mod \
	sbs-de-hyph-word.mod \
	sbs-de-letsign.mod \
	sbs.dis \
	sbs-litdigit-lower.mod \
	sbs-litdigit-upper.mod \
	sbs-numsign.mod \
	sbs-special.cti \
	sbs-special.mod \
	sbs-version.utb \
	sbs-whitespace.mod 

tablesdir = $(datadir)/liblouis/tables
tables_DATA = $(table_files)
EXTRA_DIST = $(table_files)
