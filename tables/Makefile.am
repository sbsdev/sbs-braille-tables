# generate the list of tables as follows:
# $ ls | grep -v Makefile | grep -v README | grep -v maketablelist.sh | grep -v '.in$' | grep -v '.*~$' | sort | sed -e 's/$/ \\/' -e 's/^/\t/' | head --bytes=-2
table_files = \
	sbs-de-accents-ch.mod \
	sbs-de-accents.cti \
	sbs-de-accents.mod \
	sbs-de-accents-reduced.mod \
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
	sbs-whitespace.mod \
	sbs-wordsplit.dis

tablesdir = $(datadir)/liblouis/tables
tables_DATA = $(table_files)
CLEANFILES = $(table_files)

utils_dir = $(top_srcdir)/utils

%.mod: $(top_srcdir)/tables_src/sbs-tables/%.mod_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/tab2lou.pl $< $@
%.cti: $(top_srcdir)/tables_src/sbs-tables/%.cti_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/tab2lou.pl $< $@
%.dis: $(top_srcdir)/tables_src/sbs-tables/%.dis_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/tab2lou.pl $< $@

sbs-de-g2-white.mod sbs-de-g1-white.mod: $(top_srcdir)/tables_src/sbs-white/white.mod_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/white.pl $< sbs-de-g2-white.mod sbs-de-g1-white.mod
