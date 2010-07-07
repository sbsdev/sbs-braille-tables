#-------------------------------------------------------------------------------
#
#  sbs-whitespace.mod
#
#-------------------------------------------------------------------------------

# Formfeed mit Leerzeichen ersetzen
replace \f \s
# Newline mit Leerzeichen ersetzen
replace \n \s
# Return mit Leerzeichen ersetzen
replace \r \s
# Tabstop mit Leerzeichen ersetzen
replace \t \s

# Mehrfach-Leerschläge eliminieren
repeated \s 0
