#!/usr/bin/python
"""Clean hyphenation points from tables

This utility script can be used to clean the hyphenation points from
tables that still contain them.

Usage: 

cleanHyphenation_mod_src.py table > cleanTable
"""

import fileinput
import re
import sys

VALID_BRAILLE_RE = re.compile("^[A-Z0-9&%[^\],;:/?+=(*).\\\\@#\"!>$_<\']+$")
INVALID_CHARS = 'twnapzk'

for line in fileinput.input():
    if line.startswith('#') or line.isspace():
        print line
    else:
        command, untranslated, braille = line.split()
        braille = braille.translate(None, INVALID_CHARS)
        if not VALID_BRAILLE_RE.match(braille):
            print >> sys.stderr, "%s: %s, %s" % (command, untranslated, braille)
        else:
            print "%s\t%s\t%s" % (command, untranslated, braille)
