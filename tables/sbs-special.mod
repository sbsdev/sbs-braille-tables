#-------------------------------------------------------------------------------
#
#  sbs-special.mod
#
#  Rausputzen von Hilfsmarkierungen (K�rzungsverbot etc.)
#
#  Version 2010-06-25
#  SBS Schweizerische Bibliothek f�r Blinde und Sehbehinderte
#
#-------------------------------------------------------------------------------


# "ver" nach Bindestrich aufl�sen.
pass2 @36-d-36 @36-d-1236-12456

# "ver" nach Wortersatzstrich aufl�sen.
pass2 @d-6-36-d-36 @6-36-1236-12456

# Wortersatzstrich: Trennmarke weg
pass2 @d-6-36-d @6-36

# K�rzungsverbote entfernen
pass2 @a ?
