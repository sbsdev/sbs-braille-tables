#-------------------------------------------------------------------------------
#
#  sbs-whitespace.mod
#
#-------------------------------------------------------------------------------

# Formfeed mit Leerzeichen ersetzen
correct "\f" "\s"
# Newline mit Leerzeichen ersetzen
correct "\n" "\s"
# Return mit Leerzeichen ersetzen
correct "\r" "\s"
# Tabstop mit Leerzeichen ersetzen
correct "\t" "\s"

# Mehrfach-Leerschläge eliminieren
repeated \s 0
