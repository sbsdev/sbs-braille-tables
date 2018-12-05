#-------------------------------------------------------------------------------
#
#  sbs-de-letsign.mod
#
#  "Lettersign" Deutsch (nur Kurzschrift)
#
#-------------------------------------------------------------------------------

letsign 6

noletsignbefore '
noletsignafter .'

noletsign cCqQxXyY\x250A
noletsign ÀàÁáÂâÃãÅåÆæÇçÈèÉéÊê
noletsign ËëÌìÍíÎîÏïÐðÑñÒòÓóÔô
noletsign ÕõØøÙùÚúÛûÝýÞþŸÿŒœĀā
noletsign ĂăĄąĆćĈĉĊċČčĎďĐđĒēĖė
noletsign ĘęĚěĞğĢģĤĥĦħĨĩĪīĮįİı

#BUG: noletsign ist auf 128 Zeichen beschraenkt ...
#noletsign ĲĳĴĵĶķĹĺĻļĽľĿŀŁłŃńŅņ
#noletsign ŇňŊŋŌōŎŏŐőŔŕŖŗŘřŚśŜŝ
#noletsign ŞşŠšȘșŢţŤťŦŧȚțŨũŪūŬŭ
#noletsign ŮůŰűŲųŴŵŶŷŹźŻżŽžǍǎẀẁ
#noletsign ẂẃẄẅỲỳ
