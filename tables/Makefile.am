copied_tables = \
	sbs-de-accents-ch.mod \
	sbs-de-accents.cti \
	sbs-de-accents.mod \
	sbs-de-accents-reduced.mod \
	sbs-de-begendcaps.mod \
	sbs-de-capsign.mod \
	sbs-de-core6.cti \
	sbs-de-hyph-new.mod \
	sbs-de-hyph-none.mod \
	sbs-de-hyph-old.mod \
	sbs-de-hyph-word.mod \
	sbs-de-letsign.mod \
	sbs.dis \
	sbs-numsign.mod \
	sbs-special.cti \
	sbs-special.mod \
	sbs-whitespace.mod \
	sbs-wordsplit.dis

generated_tables = \
	sbs-de-core.mod \
	sbs-de-g0-core.mod \
	sbs-de-g1-core.mod \
	sbs-de-g2-core.mod \
	sbs-de-g2-name.mod \
	sbs-de-g2-place.mod \
	sbs-litdigit-lower.mod \
	sbs-litdigit-upper.mod

whitelist_tables = \
	sbs-de-g1-white.mod \
	sbs-de-g2-white.mod

table_files = $(copied_tables) $(generated_tables) $(whitelist_tables) 

tablesdir = $(datadir)/liblouis/tables
tables_DATA = $(table_files)
CLEANFILES = $(table_files)

utils_dir = $(top_srcdir)/utils

$(copied_tables): %: $(top_srcdir)/src/tables/%
	cp $< $@

$(generated_tables): %.mod: $(top_srcdir)/src/tables/%.mod_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/tab2lou.pl $< $@

sbs-de-g2-white.mod sbs-de-g1-white.mod: $(top_srcdir)/src/whitelist/white.mod_src
	PERL5LIB=$(utils_dir)  $(utils_dir)/white.pl $< sbs-de-g2-white.mod sbs-de-g1-white.mod
