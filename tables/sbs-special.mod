#-------------------------------------------------------------------------------
#
#  sbs-special.mod
#
#  Rausputzen von Hilfsmarkierungen (Kürzungsverbot etc.)
#
#-------------------------------------------------------------------------------

# Kürzungsverbot entfernen
pass2 @a ?
# Dummy-Zahl entfernen
pass2 @3456-b ?

# Trennmarke "m" nach Bindestrich
pass2 @36 @36-d

# Korrektur: Als Bindestrich geschriebens Minuszeichen vor Zahl
pass3 @0-6-36a-6-3456 @0-4-36-3456
# Korrektur: Kürzung "ver" nach Bindestrich auflösen
pass3 @36-d-36a @36-d-1236-12456
# Bei allen weiteren P36 virtuellen Punkt a entfernen
pass3 @36a @36

# Trennmarke "m" vor Leerzeichen entfernen
pass3 @d-0 @0
# Trennmarke "m" vor Komma und Leerzeichen entfernen
pass3 @d-2-0 @2-0
