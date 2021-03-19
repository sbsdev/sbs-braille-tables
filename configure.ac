AC_INIT([sbs-braille-tables],[1.14.0])
AM_INIT_AUTOMAKE()

AC_CONFIG_FILES([
  Makefile
  tables/Makefile
  utils/Makefile
  tables/sbs-version.utb
  tests/Makefile
  tests/tables/Makefile
  whitelist/Makefile
])

# make sure liblouis is installed
AC_PATH_PROG(PKG_CONFIG, pkg-config)

PKG_CHECK_MODULES(LIBLOUIS, [liblouis >= 3.13.0])
PKG_CHECK_VAR(LIBLOUIS_PREFIX, liblouis, prefix)
PKG_CHECK_VAR(LIBLOUIS_TABLESDIR, liblouis, tablesdir)

AC_OUTPUT
