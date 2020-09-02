FROM debian:latest

LABEL maintainer="SBS Swiss Library for the Blind, Visually Impaired and Print Disabled"

# Build (and test) the sbs tables with a specific version of liblouis

RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    curl \
    devscripts \
    libtool \
    libyaml-dev \
    make \
    pkg-config \
    texinfo \
   && rm -rf /var/lib/apt/lists/*

ARG LIBLOUIS_VERSION=3.10.0
ENV SRCDIR=/usr/src/

# compile and install liblouis
WORKDIR ${SRCDIR}
RUN curl -L https://github.com/liblouis/liblouis/releases/download/v${LIBLOUIS_VERSION}/liblouis-${LIBLOUIS_VERSION}.tar.gz | tar zx
WORKDIR ${SRCDIR}/liblouis-${LIBLOUIS_VERSION}/
RUN ./configure --enable-ucs4 && \
    make && \
    make install && \
    ldconfig

# build braille tables
ADD . ${SRCDIR}/sbs-braille-tables
WORKDIR ${SRCDIR}/sbs-braille-tables
RUN ./autogen.sh && \
    ./configure && \
    make check || cat tests/test-suite.log && \
    debuild -us -uc -b -d


