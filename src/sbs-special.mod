#-------------------------------------------------------------------------------
#
#  sbs-special.mod
#
#  Rausputzen von Hilfsmarkierungen (K�rzungsverbot etc.)
#
#-------------------------------------------------------------------------------

# K�rzungsverbot entfernen
pass2 @a ?
# Apostroph vor Zahl ('98)
pass2 @3456-69 @3456-6
# Punkt vor Zahl (.45)
pass2 @3456-39 @3456-3
# Dummy-Zahl entfernen
pass2 @3456-b ?

# Aufhebungspunkt vor Komma nach tiefgestellten Zahlen
pass2 @ab @6

# Fehlende Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift bei
# Buchstaben a-j erg�nzen
pass2 @ac-1 @6-1
pass2 @ac-12 @6-12
pass2 @ac-14 @6-14
pass2 @ac-145 @6-145
pass2 @ac-15 @6-15
pass2 @ac-124 @6-124
pass2 @ac-1245 @6-1245
pass2 @ac-125 @6-125
pass2 @ac-24 @6-24
pass2 @ac-245 @6-245
# Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift erhalten
pass2 @ac-6-1 @6-1
pass2 @ac-6-12 @6-12
pass2 @ac-6-14 @6-14
pass2 @ac-6-145 @6-145
pass2 @ac-6-15 @6-15
pass2 @ac-6-124 @6-124
pass2 @ac-6-1245 @6-1245
pass2 @ac-6-125 @6-125
pass2 @ac-6-24 @6-24
pass2 @ac-6-245 @6-245
# Restliche Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift entfernen
pass2 @ac-6 ?
# Markierung f�r Zahl-Buchstaben-Verbindung in Vollschrift entfernen
pass2 @ac ?

# Trennmarke "m" nach Bindestrich
pass2 @36 @36-d

# Korrektur: K�rzung "des" zwischen Bindestrichen aufl�sen
pass3 @36-d-3-36-d @36-d-145-123456-36-d
# Korrektur: K�rzung "im" zwischen Bindestrichen aufl�sen
pass3 @36-d-36a-36-d @36-d-24-134-36-d
# Korrektur: Als Bindestrich geschriebens Minuszeichen vor Zahl
pass3 @0-6-36a-6-3456 @0-4-36-3456
# Korrektur: K�rzung "ver" nach Bindestrich aufl�sen
pass3 @36-d-36a @36-d-1236-12456
# Bei allen weiteren P36 virtuellen Punkt a entfernen
pass3 @36a @36

# Trennmarke "m" vor Leerzeichen entfernen
pass3 @d-0 @0
# Trennmarke "m" vor Komma und Leerzeichen entfernen
pass3 @d-2-0 @2-0