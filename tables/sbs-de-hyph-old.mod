#-------------------------------------------------------------------------------
#
#  sbs-de-hyph-old.mod
#
#  Nur Trennmarken für alte Rechtschreibung erhalten
#
#-------------------------------------------------------------------------------

# Für alte Rechtschreibung reservierte in "normale" Trennmarke ändern
noback pass2 @cf @e

# Für neue Rechtschreibung reservierte Trennmarke entfernen
noback pass2 @cb ?
