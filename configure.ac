AC_INIT([sbs-braille-tables],
        m4_esyscmd([build-aux/git-version-gen .tarball-version]))
AM_INIT_AUTOMAKE()

AC_CONFIG_FILES([
  Makefile
  tables/Makefile
  utils/Makefile
  tables/sbs-version.utb
  tests/Makefile
  tests/tables/Makefile
  lib/Makefile
  whitelist/Makefile
])

AC_PROG_CC
gl_EARLY
gl_INIT

# make sure liblouis is installed
AC_PATH_PROG(PKG_CONFIG, pkg-config)

PKG_CHECK_MODULES(LIBLOUIS, [liblouis >= 3.9.0])
PKG_CHECK_VAR(LIBLOUIS_PREFIX, liblouis, prefix)
PKG_CHECK_VAR(LIBLOUIS_TABLESDIR, liblouis, tablesdir)

AC_OUTPUT
