#-------------------------------------------------------------------------------
#
#  sbs-de-core.mod
#
#  Grade-Übergreifendes: Hervorhebungen, Satzzeichen, Mathematische Zeichen,
#  Computer-Braille etc.
#
#-------------------------------------------------------------------------------

# --- Korrektur der Bindestrich-Probleme ---------------------------------------

# begword nach Wortersatzstrich verhindern
correct "\s-" "\s-\x250A"
# endword vor Wortersatzstrich verhindern
correct "-\s" "\x250A-\s"
# endword vor Wortersatzstrich und Komma verhindern
correct "-,\s" "\x250A-,\s"

# --- Apostroph, Punkt, Komma, Strich vor Zahl ---------------------------------

correct $d["'"]$d "'"
correct ["'"]$d "\x2500"
correct $d["."]$d "."
correct ["."]$d "\x2501"
correct ["--."]$d "\x2510"
correct ["\x2013."]$d "\x2510"
correct ["\x2014."]$d "\x2510"
correct ["--,"]$d "\x2511"
correct ["\x2013,"]$d "\x2511"
correct ["\x2014,"]$d "\x2511"


# --- Emphasis opcodes ---------------------------------------------------------

# Momentaner Workaraound:
# Hilfszeichen, liblouis kein mode-Wechsel




begcomp 6-46

# --- Special Symbol Opcodes ---------------------------------------------------

hyphen - 36

# --- Translation opcodes ------------------------------------------------------

prepunc \x255F 456
prepunc \x2560 456-456
postpunc \x2563 6-3

prepunc \x2559 6-3
prepunc \x255A 36a-3
postpunc \x255D 6-3

midnum , 2
endnum ; 6-23
endnum ? 6-26
always \s? 0-6-26
endnum ! 6-235
always \s! 0-6-235
always ! 235
midword ( 6-2356
midnum ( 6-2356-3456
endnum ( 6-2356
always ( 2356
midword ) 6-2356
midnum ) 6-2356-3456
endnum ) 6-2356
always ) 2356
#prepunc      "                       (       Anführungszeichen am Anfang
#prepunc      «                       (
#prepunc      »                       (
#prepunc      \x201f                  (
endnum " 6-356
#postpunc     "                       )
#endnum       »                       ')
#postpunc     »                       )
endnum « 6-356
#postpunc     «                       )
endnum \x201f 6-356
#postpunc     \x201f                  )
midnum . 3
always .\s.\s. 3-3-3
midnum ' 3

always ** 6-35-35
always *** 6-35-35-35
#prepunc      \x2039                  '(      Halbes Anführungszeichen am Anfang
#prepunc      \x203a                  '(
#prepunc      \x201b                  '(
#postpunc     \x2039                  ')      Halbes Anführungszeichen am Ende
#postpunc     \x203a                  ')
#postpunc     \x201b                  ')

always \x2192 0-25-25-135-0
always \x2190 0-246-25-25-0
always \x2194 0-246-25-25-135-0
always & 5-136


midnum ' 3


always % 3456-245-356
always \s% 3456-245-356
always \s\x2030 3456-245-356-356
always \s\x2031 3456-245-356-356-356
always \s° 4-356
always \s\x2032 4-35
always \s\x2033 4-35-35

begnum § 346
joinnum § 346

endnum .-- 3-36a-36a
endnum .\x2013 3-36a-36a
endnum ,-- 2-36a-36a
endnum ,\x2013 2-36a-36a

always \s-\s 6-36a-0
always \s-- 6-36a
always \s\x2013 6-36a
always \s\x2014 6-36a
always -- 6-36a
always \x2013 6-36a
always \x2014 6-36a

always / 5-2
always \s/\s 5-2
always | 0-456-123-0

joinnum £ 4-123
joinnum $ 4-234
always $ 4-234
joinnum ¢ 4-14
joinnum ¥ 4-13456
joinnum \x20A0 4-15
joinnum Fr. 124-1235-3
joinnum Fr 124-1235

# Plus:
midnum \s+\s 0-4-235-3456
midnum \s+ 0-4-235-3456
midnum + 0-4-235-3456
always + 4-235
# Minus:
begnum \s- 0-4-36a-3456
always \s- 0-6-36a
midnum \s\x2212\s 0-4-36a-3456
midnum \s\x2212 0-4-36a-3456
midnum \x2212 0-4-36a-3456
always \x2212 4-36a
# Plus Minus:
midnum \s±\s 0-4-235-36a-3456
midnum \s± 0-4-235-36a-3456
midnum ± 0-4-235-36a-3456
always ± 4-235-36a
# Gleich:
midnum \s=\s 0-4-2356-3456
midnum \s= 0-4-2356-3456
midnum = 0-4-2356-3456
always = 4-2356
# Ungleich:
midnum \s\x2260\s 0-4-35-2356-3456
midnum \s\x2260 0-4-35-2356-3456
midnum \x2260 0-4-35-2356-3456
always \x2260 4-35-2356
# Identisch gleich:
midnum \s\x2261\s 0-4-2356-2356-3456
midnum \s\x2261 0-4-2356-2356-3456
midnum \x2261 0-4-2356-2356-3456
always \x2261 4-2356-2356
# Äquivalent:
midnum \s\x2259\s 0-4-26-3456
midnum \s\x2259 0-4-26-3456
midnum \x2259 0-4-26-3456
always \x2259 4-26
# Ungefähr:
midnum       \s~\s                   0-4-26-26-3456
midnum       \s~                     0-4-26-26-3456
midnum       ~                       0-4-26-26-3456
always       ~                       0-4-26-26
midnum \s\x223C\s 0-4-26-26-3456
midnum \s\x223C 0-4-26-26-3456
midnum \x223C 0-4-26-26-3456
always \x223C 4-26-26
# Ungefähr gleich:
midnum \s\x2245\s 0-4-26-26-3456
midnum \s\x2245 0-4-26-26-3456
midnum \x2245 0-4-26-26-3456
always \x2245 4-26-26
# Mal(-Kreuz):
midnum \s×\s 0-4-236-3456
midnum \s× 0-4-236-3456
midnum × 0-4-236-3456
always × 4-236
# Mal(-Stern):
midnum \s\x2217\s 3-3456
midnum \s\x2217 3-3456
midnum \x2217 3-3456
midnum \s*\s 3-3456
midnum \s* 3-3456
midnum * 3-3456
# Anmerkungssternchen:
always * 6-35
# Mal(-Punkt):
midnum \s\x22c5\s 3-3456
midnum \s\x22c5 3-3456
midnum \x22c5 3-3456
# Mal(-Stern):
midnum \s\x22c6\s 3-3456
midnum \s\x22c6 3-3456
midnum \x22c6 3-3456
# Doppelpunkt (dividiert durch, verhält sich zu):
midnum \s:\s 4-25-3456
midnum \s: 4-25-3456
midnum : 4-25-3456
endnum : 6-25
midnum \s÷\s 0-4-25-3456
midnum \s÷ 0-4-25-3456
midnum ÷ 0-4-25-3456
always ÷ 4-25
midnum \s\x2215\s 0-4-25-3456
midnum \s\x2215 0-4-25-3456
midnum \x2215 0-4-25-3456
always \x2215 4-25
# Kleiner als:
midnum \s<\s 0-4-246-3-3456
midnum \s< 0-4-246-3-3456
midnum < 0-4-246-3-3456
always < 4-246-3
# Kleiner oder gleich:
midnum \s\x2264\s 0-4-246-2356-3456
midnum \s\x2264 0-4-246-2356-3456
midnum \x2264 0-4-246-2356-3456
always \x2264 4-246-2356
midnum \s\x2266\s 0-4-246-2356-3456
midnum \s\x2266 0-4-246-2356-3456
midnum \x2266 0-4-246-2356-3456
always \x2266 4-246-2356
# Grösser als:
midnum \s>\s 0-4-135-2-3456
midnum \s> 0-4-135-2-3456
midnum > 0-4-135-2-3456
always > 4-135-2
# Grösser oder gleich:
midnum \s\x2265\s 0-4-135-2356-3456
midnum \s\x2265 0-4-135-2356-3456
midnum \x2265 0-4-135-2356-3456
always \x2265 4-135-2356
midnum \s\x2267\s 0-4-135-2356-3456
midnum \s\x2267 0-4-135-2356-3456
midnum \x2267 0-4-135-2356-3456
always \x2267 4-135-2356


literal ://          URLs
literal www.
literal @            Mail-address

# Generische Top-Level-Domains
literal .arpa
literal .biz
literal .com
literal .info
literal .name
literal .net
literal .org
literal .pro
literal .aero
literal .asia
literal .cat
literal .coop
literal .edu
literal .gov
literal .int
literal .jobs
literal .mil
literal .mobi
literal .museum
literal .tel
literal .travel
literal .xxx
literal .post
literal .arpa
literal .bitnet
literal .example
literal .invalid
literal .local
literal .localhost
literal .nato
literal .root
literal .test
literal .uucp
# Länderspezifische Top-Level-Domains
literal .ac
literal .ad
literal .ae
literal .af
literal .ag
literal .ai
literal .al
literal .am
literal .an
literal .ao
literal .aq
literal .ar
literal .as
literal .at
literal .au
literal .aw
literal .ax
literal .az
literal .ba
literal .bb
literal .bd
literal .be
literal .bf
literal .bg
literal .bh
literal .bi
literal .bj
literal .bm
literal .bn
literal .bo
literal .br
literal .bs
literal .bt
literal .bv
literal .bw
literal .by
literal .bz
literal .ca
literal .cc
literal .cd
literal .cf
literal .cg
literal .ch
literal .ci
literal .ck
literal .cl
literal .cm
literal .cn
literal .co
literal .cr
literal .cs
literal .cu
literal .cv
literal .cx
literal .cy
literal .cz
literal .dd
literal .de
literal .dj
literal .dk
literal .dm
literal .do
literal .dz
literal .ec
literal .ee
literal .eg
literal .eh
literal .er
literal .es
literal .et
literal .eu
literal .fi
literal .fj
literal .fk
literal .fm
literal .fo
literal .fr
literal .ga
literal .gb
literal .gd
literal .ge
literal .gf
literal .gg
literal .gh
literal .gi
literal .gl
literal .gm
literal .gn
literal .gp
literal .gq
literal .gr
literal .gs
literal .gt
literal .gu
literal .gw
literal .gy
literal .hk
literal .hm
literal .hn
literal .hr
literal .ht
literal .hu
literal .id
literal .ie
literal .il
literal .im
literal .in
literal .io
literal .iq
literal .ir
literal .is
literal .it
literal .je
literal .jm
literal .jo
literal .jp
literal .ke
literal .kg
literal .kh
literal .ki
literal .km
literal .kn
literal .kp
literal .kr
literal .kw
literal .ky
literal .kz
literal .la
literal .lb
literal .lc
literal .li
literal .lk
literal .lr
literal .ls
literal .lt
literal .lu
literal .lv
literal .ly
literal .ma
literal .mc
literal .md
literal .me
literal .mg
literal .mh
literal .mk
literal .ml
literal .mm
literal .mn
literal .mo
literal .mp
literal .mq
literal .mr
literal .ms
literal .mt
literal .mu
literal .mv
literal .mw
literal .mx
literal .my
literal .mz
literal .na
literal .nc
literal .ne
literal .nf
literal .ng
literal .ni
literal .nl
literal .no
literal .np
literal .nr
literal .nu
literal .nz
literal .om
literal .pa
literal .pe
literal .pf
literal .pg
literal .ph
literal .pk
literal .pl
literal .pm
literal .pn
literal .pr
literal .ps
literal .pt
literal .pw
literal .py
literal .qa
literal .re
literal .ro
literal .rs
literal .ru
literal .rw
literal .sa
literal .sb
literal .sc
literal .sd
literal .se
literal .sg
literal .sh
literal .si
literal .sj
literal .sk
literal .sl
literal .sm
literal .sn
literal .so
literal .sr
literal .st
literal .su
literal .sv
literal .sy
literal .sz
literal .tc
literal .td
literal .tf
literal .tg
literal .th
literal .tj
literal .tk
literal .tl
literal .tm
literal .tn
literal .to
literal .tp
literal .tr
literal .tt
literal .tv
literal .tw
literal .tz
literal .ua
literal .ug
literal .uk
literal .um
literal .us
literal .uy
literal .uz
literal .va
literal .vc
literal .ve
literal .vg
literal .vi
literal .vn
literal .vu
literal .wf
literal .ws
literal .ye
literal .yt
literal .yu
literal .za
literal .zm
literal .zw

