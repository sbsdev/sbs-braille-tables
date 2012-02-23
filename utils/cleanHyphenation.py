#!/usr/bin/python
# coding=utf-8

import fileinput
import re
import sys

VALID_BRAILLE_RE = re.compile("^[A-Z0-9&%[^\],;:/?+=(*).\\\\@#\"!>$_<\'|àáâãåæçèéêëìíîïðñòóôõøùúûýþÿœv]+$")
INVALID_CHARS = 'twnapz'

def validate(words):
    for word in words:
        if not VALID_BRAILLE_RE.match(word):
            sys.stderr.write(word)
            return False
    return True

def print_line(line):
    print "%s %s\t%s\t%s" % line
    
for line in fileinput.input():
    if line.startswith('#'):
        print line
    else:
        type, untranslated, grade2, grade1 = line.split()
        grade2, grade1 = map(lambda x: x.translate(None, INVALID_CHARS), (grade2, grade1))
        if 's~' in untranslated:
            # if the untranslated word contains a 's~' then add two
            # entries: one for German and one for Swiss German
            # spelling
            u, g2, g1 = untranslated.replace('s~','ß'), grade1.replace('§','^'), grade2.replace('§','ß')
            if validate((g2, g1)):
                print_line((type, u, g2, g1))
            u, g2, g1 = untranslated.replace('s~','ss'), grade1.replace('§','SS'), grade2.replace('§','^')
            if validate((g2, g1)):
                print_line((type, u, g2, g1))
        elif 'ß' in untranslated:
            # if the untranslated word contains a ß then add a second
            # entry for the swiss german spelling
            if validate((grade2, grade1)):
                print_line((type, untranslated, grade2, grade1))
            u, g2, g1 = untranslated.replace('ß','ss'), grade1.replace('^','SS'), grade2.replace('ß','^')
            if validate((g2, g1)):
                print_line((type, u, g2, g1))
        else:
            print_line((type, untranslated, grade2, grade1))
