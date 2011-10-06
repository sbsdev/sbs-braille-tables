AC_INIT([sbs-braille-tables],
        m4_esyscmd([build-aux/git-version-gen .tarball-version]))
AM_INIT_AUTOMAKE()

AC_CONFIG_FILES([
  Makefile
  tables/Makefile
  tables_src/Makefile
  tables_src/sbs-tables/Makefile
  tables_src/sbs-white/Makefile
  utils/Makefile
  tables/sbs-version.utb
  tests/Makefile
  lib/Makefile
])

AC_PROG_CC
gl_EARLY
gl_INIT

AC_OUTPUT
