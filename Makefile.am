SUBDIRS = tables tests lib utils whitelist

ACLOCAL_AMFLAGS = -I m4
EXTRA_DIST = m4/gnulib-cache.m4


# support for git-version-gen
EXTRA_DIST += $(top_srcdir)/.version
BUILT_SOURCES = $(top_srcdir)/.version
$(top_srcdir)/.version:
	echo $(VERSION) > $@-t && mv $@-t $@
dist-hook:
	echo $(VERSION) > $(distdir)/.tarball-version
