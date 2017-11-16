# Introduction

This project contains auxiliary tables that are used at SBS to
generate good German Braille using liblouis.

# Documentation

None so far.

# Installation

Unpack the the distribution tarball, go to the directory it creates and run

``` console
./configure
make
sudo make install
```

This will add the sbs braille tables to the liblouis installed on the system.

# Packaging

Build a Debian package by running

``` console
debuild -us -uc -b
```

This will create a deb file in `../.`

To increase the Debian package version edit `debian/changelog`.

As the braille tables Debian package currently only builds with a very
old version of liblouis we provide a Dockerfile to isolate the build:

``` console
docker build -t sbsdev/braille-tables -f Dockerfile.build_with_liblouis_2_5_2
docker run --name braille-tables sbsdev/braille-tables
docker cp braille-tables:/usr/src/sbs-braille-tables_1.8.6_all.deb .
docker rm braille-tables
```

# License

The tables contained within this package are free software. See the
file COPYING for copying conditions.
