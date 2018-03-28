#-------------------------------------------------------------------------------
#
#  sbs-de-hyph-new.mod
#
#  Nur Trennmarken für neue Rechtschreibung erhalten
#
#-------------------------------------------------------------------------------

# Für neue Rechtschreibung reservierte in "normale" Trennmarke ändern
noback pass2 @cb @e

# Für alte Rechtschreibung reservierte Trennmarken entfernen
noback pass2 @cf ?
noback pass2 @cd ?
noback pass2 @ce ?
