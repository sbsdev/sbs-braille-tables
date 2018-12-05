#-------------------------------------------------------------------------------
#
#  sbs-special.mod
#
#  Rausputzen von Hilfsmarkierungen (Kürzungsverbot etc.)
#
#-------------------------------------------------------------------------------

# Kürzungsverbot entfernen
noback pass2 @abcdef ?
# Grosschreibungsmarken entfernen
noback pass2 @46a ?      # capsletter
noback pass2 @45a ?      # begcaps, begcapsword
noback pass2 @45b ?      # endcaps, endcapsword
# Apostroph vor Zahl ('98)
noback pass2 @3456-69 @3456-6
# Punkt vor Zahl (.45)
noback pass2 @3456-39 @3456-3
# Dummy-Zahl entfernen
noback pass2 @3456-b ?

# Aufhebungspunkt vor Komma nach tiefgestellten Zahlen
noback pass2 @ab @6

# Fehlende Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift bei
# Buchstaben a-j ergänzen
noback pass2 @ac-1 @6-1
noback pass2 @ac-12 @6-12
noback pass2 @ac-14 @6-14
noback pass2 @ac-145 @6-145
noback pass2 @ac-15 @6-15
noback pass2 @ac-124 @6-124
noback pass2 @ac-1245 @6-1245
noback pass2 @ac-125 @6-125
noback pass2 @ac-24 @6-24
noback pass2 @ac-245 @6-245
# Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift erhalten
noback pass2 @ac-6-1 @6-1
noback pass2 @ac-6-12 @6-12
noback pass2 @ac-6-14 @6-14
noback pass2 @ac-6-145 @6-145
noback pass2 @ac-6-15 @6-15
noback pass2 @ac-6-124 @6-124
noback pass2 @ac-6-1245 @6-1245
noback pass2 @ac-6-125 @6-125
noback pass2 @ac-6-24 @6-24
noback pass2 @ac-6-245 @6-245
# Restliche Lettersigns bei Zahl-Buchstaben-Verbindung in Kurzschrift entfernen
noback pass2 @ac-6 ?
# Markierung für Zahl-Buchstaben-Verbindung in Vollschrift entfernen
noback pass2 @ac ?

# Korrektur: Kürzung "des" zwischen Bindestrichen auflösen
#noback pass3 @36-d-3-36-d @36-d-145-123456-36-d
noback pass3 @36-3-36 @36-145-123456-36
# Korrektur: Kürzung "im" vor Bindestrich oder zwischen Bindestrichen auflösen
#noback pass3 @36-d-36a-36-d @36-d-24-134-36-d
noback pass3 @36-36a-36 @36-24-134-36
noback pass3 @36a-36 @24-134-36
# Korrektur: Als Bindestrich geschriebens Minuszeichen vor Zahl
noback pass3 @0-6-36a-6-3456 @0-4-36-3456
# Korrektur: Kürzung "ver" nach Bindestrich auflösen
#noback pass3 @36-d-36a @36-d-1236-12456
noback pass3 @36[@36a] @1236-12456
# Bei allen weiteren P36 virtuellen Punkt a entfernen
#noback pass3 @36a @36
