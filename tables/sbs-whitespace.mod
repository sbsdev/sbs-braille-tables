#-------------------------------------------------------------------------------
#
#  sbs-whitespace.mod
#
#-------------------------------------------------------------------------------

# Formfeed mit Leerzeichen ersetzen
replace \f 34-
# Newline mit Leerzeichen ersetzen
replace \n 34-
# Return mit Leerzeichen ersetzen
replace \r 34-
# Tabstop mit Leerzeichen ersetzen
replace \t 34-

# Mehrfach-Leerschläge eliminieren
repeated \s 0
