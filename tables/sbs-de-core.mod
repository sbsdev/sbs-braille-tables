# -*- coding: utf-8; -*-
#-------------------------------------------------------------------------------
#
#  sbs-de-core.mod
#
#  Grade-Übergreifendes: Hervorhebungen, Satzzeichen, Mathematische Zeichen,
#  Computer-Braille etc.
#
#-------------------------------------------------------------------------------

# --- Korrektur der Bindestrich-Probleme ---------------------------------------

# Bindestrich nach Leerschlag vor Zahl ist Minuszeichen.
noback correct $s["-"]$d "\x2212"
# Bindestrich nach öffnender Klammer vor Zahl ist Minuszeichen.
noback correct ["(-"]$d "(\x2212"
noback correct ["[-"]$d "[\x2212"
noback correct ["›-"]$d "›\x2212"
noback correct ["»-"]$d "»\x2212"
# begword nach Wortersatzstrich verhindern
noback correct $s["-"] "-\x250A"
# begword nach Satzzeichen und Wortersatzstrich verhindern
noback correct $s["(-"]$l "(\x2013\x250A"
noback correct $s["[-"]$l "[\x2013\x250A"
noback correct $s["»-"]$l "»\x2013\x250A"
noback correct $s["›-"]$l "›\x2013\x250A"
# begword nach Wortersatzstrich nach Schrägstrich verhindern
noback correct ["/-"]$l "/\x2013\x250A"
# endword vor Wortersatzstrich vor Schrägstrich verhindern
noback correct $l["-/"] "\x250A-/"
# endword vor Wortersatzstrich verhindern
noback correct "-\s" "\x250A-\s"
noback correct "‹-\s" "\x250A‹-\s"
noback correct "«-\s" "\x250A«-\s"
# endword vor Wortersatzstrich und Satzzeichen verhindern (vor Satzzeichen KEIN Pt.6)
# corrects für Satzzeichen, die einen Pt. 6 benötigen, befinden sich in sbs-de-g2-core.mod
noback correct "-.\s" "\x250A-.\s"
noback correct "-,\s" "\x250A-,\s"
noback correct "-;\s" "\x250A-;\s"
noback correct "-:\s" "\x250A-:\s"
noback correct "-‹\s" "\x250A-‹\s"
# begword/endword vor/nach Auslassungspunkten verhindern
noback correct $l["..."]$l "\x250A...\x250A"
noback correct $l["..."] "\x250A..."
noback correct ["..."]$l "...\x250A"

# --- Satzzeichen im Wort: Keine Wortgrenze ------------------------------------

noback correct $l["("]$l "\x250A(\x250A"
noback correct $l[")"]$l "\x250A)\x250A"
noback correct $l["["]$l "\x250A[\x250A"
noback correct $l["]"]$l "\x250A]\x250A"
noback correct $l["»"]$l "\x250A»\x250A"
noback correct $l["«"]$l "\x250A«\x250A"
noback correct $l["\x2039"]$l "\x250A\x2039\x250A"
noback correct $l["\x203a"]$l "\x250A\x203a\x250A"

# --- Apostroph, Punkt, Komma, Strich vor Zahl ---------------------------------

noback correct $d["'"]$d "."
noback correct ["'"]$d "\x2500"
noback correct $dl["."]$d "."
noback correct ["."]$d "\x2501"
noback correct ["--."]$d "\x2510"
noback correct ["\x2013."]$d "\x2510"
noback correct ["\x2014."]$d "\x2510"
noback correct ["--,"]$d "\x2511"
noback correct ["\x2013,"]$d "\x2511"
noback correct ["\x2014,"]$d "\x2511"

# --- Dagger ("gestorben") -----------------------------------------------------

noback correct ["\x2020"] "gest."

# --- Satzzeichen nach zahlenähnlichen Zeichen ---------------------------------

class puncAfterOrdinal ;:?!()[]\x00AB\x00BB
# Prozent
noback correct ["%"]%puncAfterOrdinal "%\x250B"
noback correct ["%,"] "%\x256C,"
# Promille
noback correct ["\x2030"]%puncAfterOrdinal "\x2030\x250B"
noback correct ["\x2030,"] "\x2030\x256C,"
# Grad
noback correct ["\x00B0"]%puncAfterOrdinal "\x00B0\x250B"
noback correct ["\x00B0,"] "\x00B0\x256C,"
# Superscript 2
noback correct ["\x00B2"]%puncAfterOrdinal "\x00B2\x250B"
noback correct ["\x00B2,"] "\x00B2\x256C,"
# Superscript 3
noback correct ["\x00B3"]%puncAfterOrdinal "\x00B3\x250B"
noback correct ["\x00B3,"] "\x00B3\x256C,"
noback correct "\x00BC"[]%puncAfterOrdinal "\x250B"
noback correct "\x00BD"[]%puncAfterOrdinal "\x250B"
noback correct "\x00BE"[]%puncAfterOrdinal "\x250B"
noback correct "\x2153"[]%puncAfterOrdinal "\x250B"
noback correct "\x2154"[]%puncAfterOrdinal "\x250B"
noback correct "\x2155"[]%puncAfterOrdinal "\x250B"
noback correct "\x2156"[]%puncAfterOrdinal "\x250B"
noback correct "\x2157"[]%puncAfterOrdinal "\x250B"
noback correct "\x2158"[]%puncAfterOrdinal "\x250B"
noback correct "\x2159"[]%puncAfterOrdinal "\x250B"
noback correct "\x215a"[]%puncAfterOrdinal "\x250B"
noback correct "\x215b"[]%puncAfterOrdinal "\x250B"
noback correct "\x215c"[]%puncAfterOrdinal "\x250B"
noback correct "\x215d"[]%puncAfterOrdinal "\x250B"
noback correct "\x215e"[]%puncAfterOrdinal "\x250B"

# --- Brüche vor Komma

noback correct "\x00BC"[]"," "\x256C"
noback correct "\x00BD"[]"," "\x256C"
noback correct "\x00BE"[]"," "\x256C"
noback correct "\x2153"[]"," "\x256C"
noback correct "\x2154"[]"," "\x256C"
noback correct "\x2155"[]"," "\x256C"
noback correct "\x2156"[]"," "\x256C"
noback correct "\x2157"[]"," "\x256C"
noback correct "\x2158"[]"," "\x256C"
noback correct "\x2159"[]"," "\x256C"
noback correct "\x215a"[]"," "\x256C"
noback correct "\x215b"[]"," "\x256C"
noback correct "\x215c"[]"," "\x256C"
noback correct "\x215d"[]"," "\x256C"
noback correct "\x215e"[]"," "\x256C"

# --- Markieren von Zahl-Buchstabenverbindung für Kurzschrift ------------------

noback correct $d["bis"]!$l "b\x250Ais"
noback correct $d[]$l "\x2504"

# --- Emphasis opcodes ---------------------------------------------------------

# Momentaner Workaraound: Hilfszeichen, liblouis kein mode-Wechsel

# --- Special Symbol Opcodes ---------------------------------------------------

hyphen  -          36

# --- Translation opcodes ------------------------------------------------------

# Kursivankündigung:
prepunc  \x255F    456       KURSIV Einzelwort
prepunc  \x2560    456-456   KURSIV Anfang
postpunc \x2563    6-3       KURSIV Ende

# Ankündigung für Computer Braille:
prepunc  \x257C    6-46      Computer Braille Einzelwort

# Vollschriftankündigung:
# TODO: Find out what these rules do different than their
# counterparts in sbs-special.cti.
prepunc  \x2559    6-3       VOLLSCHRIFT Einzelwort
prepunc  \x255A    36a-3     VOLLSCHRIFT Anfang
postpunc \x255D    6-3       VOLLSCHRIFT Ende


# Interpunktions- und Sonderzeichen
midnum  ,          2
endnum  ;          6-23

endnum  ?          6-26
midword ?          6-26
always  \s?        0-6-26
always  (?         2356-6-26

endnum  !          6-235
midword !          6-235
always  \s!        0-6-235
always  !          235

midword :          6-25

midword (          6-2356
midnum  (          6-2356-3456
endnum  (          6-2356
always  (          2356

midword )          6-2356
midnum  )          6-2356-3456
endnum  )          6-2356
always  )          2356

midword [          6-6-2356
midnum  [          6-6-2356-3456
endnum  [          6-6-2356
midword ]          6-6-2356
midnum  ]          6-6-2356-3456
endnum  ]          6-6-2356

always  {          5-12356
always  }          5-12356

#prepunc  "         236
#prepunc  «        236
#prepunc  »        236
#prepunc  \x201f    236

#endnum    "       6-356
#postpunc  "       356
#endnum    »      6-356
#postpunc  »      356
endnum     «      6-356
#postpunc  «      356
endnum     \x201f  6-356
#postpunc  \x201f  356

# Anfuehrungszeichen im Wortinnern
midword »       6-236
midword «       6-356
midword \x2039   6-6-356
midword \x203a   6-6-236

midnum  .          3
always  .\s.\s.    3-3-3

always  #          4-3456

always  **         6-35-35
always  ***        6-35-35-35

#prepunc    \x2039    6-236
#prepunc    \x203a    6-236
#prepunc    \x201b    6-236
#postpunc   \x2039    6-356
#postpunc   \x203a    6-356
#postpunc   \x201b    6-356

always  \x2192     25-25-135
always  \x2190     246-25-25
always  \x2194     246-25-25-135

always  &          5-136

always  %          3456-245-356
always  \s%        3456-245-356
always  \s\x2030   3456-245-356-356
always  \s\x2031   3456-245-356-356-356

always  \s°       4-356
always  \s\x2032   4-35
always  \s\x2033   4-35-35

joinnum §         346
joinnum §§       346-346
word    §         4-346
word    §§       4-346-346

endnum  .--        3-36a-36a
endnum  .\x2013    3-36a-36a
endnum  ,--        2-36a-36a
endnum  ,\x2013    2-36a-36a

always  \s-\s      6-36a-0
always  \s--       6-36a
always  --         6-36a
always  \s\x2013   6-36a
always  \x2013     6-36a
always  \s\x2014   6-36a
always  \x2014     6-36a

always  /          5-2
always  \s/\s      0-5-2-0

always  |          0-5-36-0
#always  \x2022     0-5-36-0   (dagger)

joinnum £         4-123
joinnum $          4-234
always  $          4-234
joinnum ¢         4-14
joinnum ¥         4-13456
joinnum \x20A0     4-15

begnum  +\s        4-235
midnum  \s+\s      0-4-235-3456
midnum  \s+        0-4-235-3456
midnum  +          0-4-235-3456
always  +          4-235

begnum  \s-        0-4-36a-3456
always  \s-        0-6-36a
always  (-         2356-6-36a
always  »-         236-6-36a
always  ›-         6-236-6-36a
always  [-         6-2356-6-36a
begnum  \x2212\s   4-36a
midnum  \s\x2212\s 0-4-36a-3456
midnum  \s\x2212   0-4-36a-3456
midnum  \x2212     0-4-36a-3456
always  \x2212     4-36a

midnum  \s±\s     0-4-235-36a-3456
midnum  \s±       0-4-235-36a-3456
midnum  ±         0-4-235-36a-3456
always  ±         4-235-36a

begnum  =\s        4-2356
midnum  \s=\s      0-4-2356-3456
midnum  \s=        0-4-2356-3456
midnum  =          0-4-2356-3456
always  =          4-2356

midnum  \s\x2260\s 0-4-35-2356-3456
midnum  \s\x2260   0-4-35-2356-3456
midnum  \x2260     0-4-35-2356-3456
always  \x2260     4-35-2356

midnum  \s\x2261\s 0-4-2356-2356-3456
midnum  \s\x2261   0-4-2356-2356-3456
midnum  \x2261     0-4-2356-2356-3456
always  \x2261     4-2356-2356

midnum  \s\x2259\s 0-4-26-3456
midnum  \s\x2259   0-4-26-3456
midnum  \x2259     0-4-26-3456
always  \x2259     4-26

midnum  \s~\s      0-4-26-26-3456
midnum  \s~        0-4-26-26-3456
midnum  ~          0-4-26-26-3456
always  ~          0-4-26-26
midnum  \s\x223C\s 0-4-26-26-3456
midnum  \s\x223C   0-4-26-26-3456
midnum  \x223C     0-4-26-26-3456
always  \x223C     4-26-26
midnum  \s\x2245\s 0-4-26-26-3456
midnum  \s\x2245   0-4-26-26-3456
midnum  \x2245     0-4-26-26-3456
always  \x2245     4-26-26

begnum  \x00D7\s   4-236
midnum  \s\x00D7\s 0-4-236-3456
midnum  \s\x00D7   0-4-236-3456
midnum  \x00D7     0-4-236-3456
always  \x00D7     4-236
midnum  \s\x2217\s 3-3456
midnum  \s\x2217   3-3456
midnum  \x2217     3-3456
midnum  \s*\s      3-3456
midnum  \s*        3-3456
midnum  *          3-3456
always  *          6-35    (Anmerkungsstern)
midnum  \s\x22c5\s 3-3456
midnum  \s\x22c5   3-3456
midnum  \x22c5     3-3456
midnum  \s\x22c6\s 3-3456
midnum  \s\x22c6   3-3456
midnum  \x22c6     3-3456

midnum  \s:\s      4-25-3456
midnum  \s:        4-25-3456
midnum  :          4-25-3456
endnum  :          6-25
begnum  ÷\s        4-25
midnum  \s÷\s     0-4-25-3456
midnum  \s÷       0-4-25-3456
midnum  ÷         0-4-25-3456
always  ÷         4-25
midnum  \s\x2215\s 0-4-25-3456
midnum  \s\x2215   0-4-25-3456
midnum  \x2215     0-4-25-3456
always  \x2215     4-25

midnum  \s<\s      0-4-246-3-3456
midnum  \s<        0-4-246-3-3456
midnum  <          0-4-246-3-3456
always  <          4-246-3

midnum  \s\x2264\s 0-4-246-2356-3456
midnum  \s\x2264   0-4-246-2356-3456
midnum  \x2264     0-4-246-2356-3456
always  \x2264     4-246-2356
midnum  \s\x2266\s 0-4-246-2356-3456
midnum  \s\x2266   0-4-246-2356-3456
midnum  \x2266     0-4-246-2356-3456
always  \x2266     4-246-2356

midnum  \s>\s      0-4-135-2-3456
midnum  \s>        0-4-135-2-3456
midnum  >          0-4-135-2-3456
always  >          4-135-2

midnum  \s\x2265\s 0-4-135-2356-3456
midnum  \s\x2265   0-4-135-2356-3456
midnum  \x2265     0-4-135-2356-3456
always  \x2265     4-135-2356
midnum  \s\x2267\s 0-4-135-2356-3456
midnum  \s\x2267   0-4-135-2356-3456
midnum  \x2267     0-4-135-2356-3456
always  \x2267     4-135-2356
