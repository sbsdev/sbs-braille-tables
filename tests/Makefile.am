SUBDIRS = tables

dist_check_SCRIPTS =				\
	check_all_tables.pl			\
	check_combined_tables.pl

dist_yaml_TESTS =				\
	computerbraille.yaml			\
	g0.yaml					\
	g2.yaml					\
	g2-code.yaml				\
	v-form.yaml

TEST_EXTENSIONS = .yaml .pl
PL_LOG_COMPILER = $(PERL)
YAML_LOG_COMPILER = lou_checkyaml

TESTS =	$(dist_check_SCRIPTS) $(dist_yaml_TESTS)
EXTRA_DIST = $(dist_yaml_TESTS)

TESTS_ENVIRONMENT =											\
	LOUIS_TABLEPATH=$(abs_top_srcdir)/tables,$(abs_top_srcdir)/tests/tables,$(LIBLOUIS_TABLESDIR)	\
	PATH=$(LIBLOUIS_PREFIX)/bin:$$PATH
