#-------------------------------------------------------------------------------
#
#  sbs-de-hyph-new.mod
#
#  Nur Trennmarken f�r neue Rechtschreibung erhalten
#
#-------------------------------------------------------------------------------

# F�r neue Rechtschreibung reservierte in "normale" Trennmarke �ndern
pass2 @cb @e

# F�r alte Rechtschreibung reservierte Trennmarken entfernen
pass2 @ca ?
pass2 @cd ?
pass2 @ce ?