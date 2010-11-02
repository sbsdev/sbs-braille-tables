#-------------------------------------------------------------------------------
#
#  sbs-de-core.mod
#
#  Grade-Übergreifendes: Hervorhebungen, Satzzeichen, Mathematische Zeichen,
#  Computer-Braille etc.
#
#-------------------------------------------------------------------------------

# --- Korrektur der Bindestrich-Probleme -----------------------------------

# begword nach Wortersatzstrich verhindern
correct "\s-" "\s-¦"
# endword vor Wortersatzstrich verhindern
correct "-\s" "¦-\s"
# endword vor Wortersatzstrich und Komma verhindern
correct "-,\s" "¦-,\s"

# --- Emphasis opcodes ---------------------------------------------------------

# Momentaner Workaraound:
# Hilfszeichen, liblouis kein mode-Wechsel




begcomp 6-46

# --- Special Symbol Opcodes ---------------------------------------------------

hyphen - 36

# --- Translation opcodes ------------------------------------------------------

prepunc \x255F 456 KURSIV Einzelwort
prepunc \x2560 456-456 KURSIV Anfang
postpunc \x2563 6-3 KURSIV Ende

prepunc \x2559 6-3 VOLLSCHRIFT Einzelwort
prepunc \x255A 36a-3 VOLLSCHRIFT Anfang
postpunc \x255D 6-3 VOLLSCHRIFT Ende

midnum , 2 Komma
endnum ; 6-23 Strichpunkt
endnum ? 6-26 Fragezeichen
word ? 6-26
endnum ! 6-235 Ausrufezeichen
word ! 6-235
always ! 235
midword ( 6-2356 Runde Klammer auf
midnum ( 6-2356-3456
endnum ( 6-2356
always ( 2356
midword ) 6-2356 Runde Klammer zu
midnum ) 6-2356-3456
endnum ) 6-2356
always ) 2356
prepunc " 236 Anführungszeichen am Anfang
prepunc « 236
prepunc » 236
endnum " 6-356 Anführungszeichen am Ende
postpunc " 356
endnum » 6-356
postpunc » 356
endnum « 6-356
postpunc « 356
midnum . 3 Punkt
always .\s.\s. 3-3-3
midnum ' 3 Apostroph (Gliederung grosser Zahlen)

always ** 6-35-35 Anmerkungssternchen
always *** 6-35-35-35
prepunc \x2039 6-236 Halbes Anführungszeichen am Anfang
prepunc \x203a 6-236
prepunc \x2018 6-236
prepunc \x2019 6-236
postpunc \x2039 6-356 Halbes Anführungszeichen am Ende
postpunc \x203a 6-356
postpunc \x2018 6-356
postpunc \x2019 6-356

always \x2192 0-25-25-135-0 Pfeil nach rechts
always \x2190 0-246-25-25-0 Pfeil nach links
always \x2194 0-246-25-25-135-0 Pfeil nach links und rechts
always & 5-136 Et-Zeichen


midnum ' 3


always % 3456-245-356 Prozent
always \s% 3456-245-356
always \s\x2030 3456-245-356-356 Promille 0/00
always \s\x2031 3456-245-356-356-356 0/000
always \s° 4-356 Grad
always \s\x2032 4-35 Winkelminute
always \s\x2033 4-35-35 Winkelsekunde

begnum § 346 Paragrafzeichen
joinnum § 346

endnum .-- 3-36a-36a
endnum .\x2013 3-36a-36a mit EN DASH
endnum ,-- 2-36a-36a
endnum ,\x2013 2-36a-36a mit EN DASH

always \s-\s 6-36a-0 Gedankenstrich
always \s-- 6-36a
always \s\x2013 6-36a EN DASH
always \s\x2014 6-36a EM DASH
always -- 6-36a Streckenstrich
always \x2013 6-36a mit EN DASH
always \x2014 6-36a mit EM DASH

always / 5-2 Schrägstrich
always \s/\s 5-2
always | 0-456-123-0 Senkrechter Strich

joinnum £ 4-123 Pfund
joinnum $ 4-234 Dollar
always $ 4-234 Dollar
joinnum ¢ 4-14 Cent
joinnum ¥ 4-13456 Yen
joinnum \x20A0 4-15 Euro
joinnum Fr. 124-1235-3 Franken    !!! TUT NICHT !!!
joinnum Fr 124-1235

# Plus:
midnum \s+\s 0-4-235-3456
midnum \s+ 0-4-235-3456
midnum + 0-4-235-3456
always + 4-235
# Minus:
begnum \s- 0-4-36a-3456
always \s- 0-6-36a
midnum \s\x2212\s 0-4-36a-3456
midnum \s\x2212 0-4-36a-3456
midnum \x2212 0-4-36a-3456
always \x2212 4-36a
# Plus Minus:
midnum \s±\s 0-4-235-36a-3456
midnum \s± 0-4-235-36a-3456
midnum ± 0-4-235-36a-3456
always ± 4-235-36a
# Gleich:
midnum \s=\s 0-4-2356-3456
midnum \s= 0-4-2356-3456
midnum = 0-4-2356-3456
always = 4-2356
# Ungleich:
midnum \s\x2260\s 0-4-35-2356-3456
midnum \s\x2260 0-4-35-2356-3456
midnum \x2260 0-4-35-2356-3456
always \x2260 4-35-2356
# Identisch gleich:
midnum \s\x2261\s 0-4-2356-2356-3456
midnum \s\x2261 0-4-2356-2356-3456
midnum \x2261 0-4-2356-2356-3456
always \x2261 4-2356-2356
# Äquivalent:
midnum \s\x2259\s 0-4-26-3456
midnum \s\x2259 0-4-26-3456
midnum \x2259 0-4-26-3456
always \x2259 4-26
# Ungefähr gleich:
midnum \s\x2245\s 0-4-26-26-3456
midnum \s\x2245 0-4-26-26-3456
midnum \x2245 0-4-26-26-3456
always \x2245 4-26-26
# Mal(-Kreuz):
midnum \s×\s 0-4-236-3456
midnum \s× 0-4-236-3456
midnum × 0-4-236-3456
always × 4-236
# Mal(-Stern):
midnum \s\x2217\s 3-3456
midnum \s\x2217 3-3456
midnum \x2217 3-3456
midnum \s*\s 3-3456
midnum \s* 3-3456
midnum * 3-3456
# Anmerkungssternchen:
always * 6-35
# Mal(-Punkt):
midnum \s\x22c5\s 3-3456
midnum \s\x22c5 3-3456
midnum \x22c5 3-3456
# Mal(-Stern):
midnum \s\x22c6\s 3-3456
midnum \s\x22c6 3-3456
midnum \x22c6 3-3456
# Doppelpunkt (dividiert durch, verhält sich zu):
midnum \s:\s 4-25-3456
midnum \s: 4-25-3456
midnum : 4-25-3456
endnum : 6-25
midnum \s÷\s 0-4-25-3456
midnum \s÷ 0-4-25-3456
midnum ÷ 0-4-25-3456
always ÷ 4-25
midnum \s\x2215\s 0-4-25-3456
midnum \s\x2215 0-4-25-3456
midnum \x2215 0-4-25-3456
always \x2215 4-25
# Proportional:
midnum \s~\s 0-4-25-25-3456
midnum \s~ 0-4-25-25-3456
midnum ~ 0-4-25-25-3456
always ~ 4-25-25
midnum \s\x223C\s 0-4-25-25-3456
midnum \s\x223C 0-4-25-25-3456
midnum \x223C 0-4-25-25-3456
always \x223C 4-25-25
# Kleiner als:
midnum \s<\s 0-4-246-3-3456
midnum \s< 0-4-246-3-3456
midnum < 0-4-246-3-3456
always < 4-246-3
# Kleiner oder gleich:
midnum \s\x2264\s 0-4-246-2356-3456
midnum \s\x2264 0-4-246-2356-3456
midnum \x2264 0-4-246-2356-3456
always \x2264 4-246-2356
midnum \s\x2266\s 0-4-246-2356-3456
midnum \s\x2266 0-4-246-2356-3456
midnum \x2266 0-4-246-2356-3456
always \x2266 4-246-2356
# Grösser als:
midnum \s>\s 0-4-135-2-3456
midnum \s> 0-4-135-2-3456
midnum > 0-4-135-2-3456
always > 4-135-2
# Grösser oder gleich:
midnum \s\x2265\s 0-4-135-2356-3456
midnum \s\x2265 0-4-135-2356-3456
midnum \x2265 0-4-135-2356-3456
always \x2265 4-135-2356
midnum \s\x2267\s 0-4-135-2356-3456
midnum \s\x2267 0-4-135-2356-3456
midnum \x2267 0-4-135-2356-3456
always \x2267 4-135-2356



# --------------------------------------------------------------------------------

# --- Special character sequences ------------------------------------------------

literal ://          URLs
literal www.
literal @            Mail-address

