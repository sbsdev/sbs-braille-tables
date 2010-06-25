#-------------------------------------------------------------------------------
#
#  sbs-special.mod
#
#  Rausputzen von Hilfsmarkierungen (Kürzungsverbot etc.)
#
#  Version 2010-06-25
#  SBS Schweizerische Bibliothek für Blinde und Sehbehinderte
#
#-------------------------------------------------------------------------------


# "ver" nach Bindestrich auflösen.
pass2 @36-d-36 @36-d-1236-12456

# "ver" nach Wortersatzstrich auflösen.
pass2 @d-6-36-d-36 @6-36-1236-12456

# Wortersatzstrich: Trennmarke weg
pass2 @d-6-36-d @6-36

# Kürzungsverbote entfernen
pass2 @a ?
