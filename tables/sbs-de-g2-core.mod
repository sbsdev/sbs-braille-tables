############################################
# Deutsche Kurzschrift 2018: Grundtabelle  #
############################################

# endword vor Wortersatzstrich und Satzzeichen verhindern (vor Satzzeichen Pt.6)
noback correct "-!\s" "\x250A-'\x250A!\s"
noback correct "-?\s" "\x250A-'\x250A?\s"
noback correct "-)\s" "\x250A-]\s"
noback correct "-«\s" "\x250A-‹\s"

# fehlender Pt.6 (Apo) bei Wort-Zahl-Ausdrücken
# !! need to double check if this doesn't break other stuff
noback correct $l[]$d "\x256C"

# fehlender Pt.6 (Apo) bei Ausrufe-/Fragezeichen in Klammern
always	(!)	2356-6-235-2356
always	(?)	2356-6-26-2356

# fehlender Pt.6 (Apo) bei alleinstehendem Ausrufe- oder Fragezeichen in Klammern
always	\s(?	0-2356-6-26
always	\s[?	0-6-2356-6-26
always	\s(!	0-2356-6-235
always	\s[!	0-6-2356-6-235

include sbs-de-g2-core-patterns.dic

word	aber	1	#  A  #
nocross always	aber	2-1	#  ,A #
nocross midendword	ach	56	#  <  #
nocross begmidword	al	25	#  :  #
nocross always	al'	25-6	#  :' #
prfword	all	1-12345	#  AQ #
nocross always	all	1	#  A  #
word	als	146	#  3  #
nocross always	also	1-135	#  AO #
endword	an	1-1345	#  AN #
nocross always	an	235	#  +  #
nocross always	an'	235-6	#  +' #
nocross always	ander	2-12456	#  ,7 #
nocross begmidword	ar	356	#  )  #
nocross always	ar'	356-6	#  )' #
nocross always	arbeit	356-12	#  )B #
nocross always	ation	5-1345	#  !N #
nocross always	ativ	5-1236	#  !V #
word	au	6-16	#  '1 #
nocross always	au	16	#  1  #
word	auch	34	#  \  #
word	auf	16	#  1  #
nocross always	auf	2-16	#  ,1 #
nocross begmidword	be	23	#  ;  #
nocross always	be'	23-6	#  ;' #
word	bei	12	#  B  #
nocross always	bei	2-12	#  ,B #
nocross always	beid	12-145	#  BD #
word	beim	12-134	#  BM #
nocross always	besonder	23	#  ;  #
nocross always	besser	234-234	#  SS #
nocross always	bis	12-234	#  BS #
nocross always	bist	12-23456	#  B] #
nocross always	bleib	12-12	#  BB #
nocross always	brauch	2-34	#  ,\ #
nocross always	brief	12-124	#  BF #
nocross always	bring	12-1245	#  BG #
nocross always	bräuch	5-34	#  !\ #
always	c	6-14	#  'C #
always	C	6-14	#  'C #
word	ch	6-1456	#  '4 #
nocross always	ch	1456	#  4  #
nocross always	charakter	1456-13	#  4K #
nocross midendword	ck	46	#  $  #
nocross always	dabei	145-12	#  DB #
word	dadurch	145-145	#  DD #
nocross always	dafür	145-124	#  DF #
nocross always	dagegen	145-1245	#  DG #
nocross always	daher	145-125	#  DH #
nocross always	damit	145-134	#  DM #
nocross always	dank	145-13	#  DK #
nocross always	darauf	145-16	#  D1 #
nocross always	darüber	145-1256	#  D8 #
word	das	145	#  D  #
word	dass	2346	#  ^  #
nocross always	davon	145-1236	#  DV #
nocross always	dazu	145-1356	#  DZ #
word	dem	12356	#  [  #
nocross always	dem	2-12356	#  ,[ #
nocross always	demokrat	145-2345	#  DT #
word	den	15	#  E  #
word	denen	15-14	#  EC #
nocross always	denn	145-1345	#  DN #
word	der	1235	#  R  #
word	des	3	#  .  #
nocross always	dessen	145-2346	#  D^ #
nocross always	deutsch	145-156	#  D5 #
word	die	346	#  0  #
nocross begmidword	dies	346	#  0  #
word	dir	145-1235	#  DR #
word	doch	145-1456	#  D4 #
nocross always	druck	145-46	#  D$ #
nocross always	drück	5-145-46	#  !D$#
word	durch	1456	#  4  #
nocross always	durch	2-1456	#  ,4 #
nocross always	dürf	2-145	#  ,D #
nocross always	ebenso	15-135	#  EO #
nocross midword	eh	2356	#  =  #
word	ei	6-146	#  '3 #
nocross always	ei	146	#  3  #
nocross always	ein	1246	#  6  #
nocross always	einander	2-1246	#  ,6 #
nocross always	el	13456	#  Y  #
nocross always	em	12356	#  [  #
nocross always	en	14	#  C  #
nocross begword	ent	2346	#  ^  #
word	eo	6-15-135	#  'EO#
nocross always	er	12456	#  7  #
nocross always	es	123456	#  %  #
nocross always	etwa	15-1	#  EA #
nocross always	etwas	2345-2456	#  TW #
word	eu	6-126	#  '2 #
nocross always	eu	126	#  2  #
begword	ex	1346	#  X  #
nocross always	'ex	6-15-6-1346	#  'E'X #
nocross always	fall	124-12345	#  FQ #
nocross always	fahr	2-1235	#  ,R  #
word	falls	124-12345-234	#  FQS #
nocross midendword	falls	124	#  F  #
nocross always	fertig	124-45	#  F> #
nocross always	folg	124-1245	#  FG #
nocross always	freund	124-145	#  FD #
nocross always	fäll	5-124-12345	#  !FQ #
nocross always	fähr	5-1235	#  !R #
nocross always	führ	124-125	#  FH #
word	für	124	#  F  #
nocross always	für	2-124	#  ,F #
nocross always	ganz	1245-1356	#  GZ #
nocross always	ge	12346	#  &  #
word	gegen	1245	#  G  #
nocross always	gegen	2-1245	#  ,G #
nocross always	gegenwart	1245-2456	#  GW #
nocross always	gegenwärt	5-1245-2456	#  !GW #
nocross always	gegenüber	1245-1256	#  G8 #
nocross always	gelegen	1245-1245	#  GG #
nocross always	geschäft	1245-124	#  GF #
nocross always	gesellschaft	1245-156	#  G5 #
word	gewesen	12346	#  &  #
nocross always	gewesen	2-12346	#  ,& #
nocross always	geworden	12346-2456	#  &W #
nocross always	gibt	1245-12	#  GB #
nocross always	gleich	1245-1456	#  G4 #
nocross always	glück	1245-46	#  G$ #
nocross always	gross	1245-2346	#  G^ #
nocross always	groß	1245-2346	#  G^ #
nocross always	grund	1245-145	#  GD #
nocross always	gröss	5-1245-2346	#  !G^ #
nocross always	größ	5-1245-2346	#  !G^ #
nocross always	gründ	5-1245-145	#  !GD #
nocross always	gänz	5-1245-1356	#  !GZ #
nocross always	hab	2-125	#  ,H  #
nocross always	haft	125-124	#  HF #
nocross always	hand	125-145	#  HD #
nocross always	hast	125-23456	#  H] #
nocross always	hat	125-2345	#  HT #
nocross always	hatt	125	#  H  #
nocross always	haupt	125-1234	#  HP #
word	he	6-125-15	#  'HE #
word	het	6-125-15-2345	#  'HET #
nocross midendword	heit	125	#  H  #
nocross always	herr	1235-1235	#  RR #
nocross always	hier	125-1235	#  HR #
nocross always	hoff	124-124	#  FF #
nocross always	häft	5-125-124	#  !HF #
nocross always	händ	5-125-145	#  !HD #
nocross always	hätt	345	#  @  #
nocross always	häupt	5-125-1234	#  !HP #
nocross always	ich	3456	#  #  #
word	ich,	24-1456-2	#  I4, #
word	ich;	24-1456-23	#  I4; #
word	ich:	24-1456-25	#  I4: #
word	ich?	24-1456-26	#  I4? #
word	ich!	24-1456-235	#  I4+ #
word	ich)	24-1456-2356	#  I4= #
word	ich"	24-1456-356	#  I4) #
word	ich«	24-1456-356	#  I4) #
word	ich»	24-1456-356	#  I4) #
word	ich┊	24-1456-abcdef	#  I4x #
nocross midendword	ie	346	#  0  #
nocross midendword	ig	45	#  >  #
word	ihm	236	#  (  #
nocross always	ihn	24-125	#  IH #
nocross sufword	ihr	24	#  I  #
word	im	36a	#  -  #
word	immer	1346	#  X  #
nocross always	immer	2-1346	#  ,X #
nocross always	in	35	#  *  #
nocross always	interess	2-35	#  ,* #
nocross always	irgend	24-1245	#  IG #
nocross always	ismus	5-24	#  !I #
word	ist	23456	#  ]  #
nocross always	istisch	5-156	#  !5 #
nocross always	ität	5-345	#  !@ #
nocross always	jahr	245-1235	#  JR #
nocross always	jahrhundert	245-125	#  JH #
nocross always	jahrtausend	245-2345	#  JT #
nocross always	jahrzehnt	245-1356	#  JZ #
nocross always	jed	245-145	#  JD #
word	jedoch	245-1456	#  J4 #
nocross always	jetzig	245-45	#  J> #
word	jetzt	245	#  J  #
nocross always	jetzt	2-245	#  ,J #
nocross always	jähr	5-245-1235	#  !JR #
word	kann	13	#  K  #
nocross always	kannst	13-23456	#  K] #
nocross always	kapital	13-1234	#  KP #
nocross midendword	keit	13	#  K  #
nocross always	komm	13-1346	#  KX #
nocross always	konnt	13-2345	#  KT #
nocross always	kraft	13-124	#  KF #
nocross always	kräft	5-13-124	#  !KF #
nocross always	kurz	13-1356	#  KZ #
nocross always	kömm	5-13-1346	#  !KX #
nocross always	könn	2-13	#  ,K #
nocross always	kürz	5-13-1356	#  !KZ #
nocross always	lang	123-1245	#  LG #
nocross always	lass	2-123	#  ,L #
nocross always	leb	123-12	#  LB #
nocross always	leicht	123-1456	#  L4 #
nocross always	letzt	123-2345	#  LT #
nocross midendword	lich	456	#  _  #
nocross midendword	ll	12345	#  Q  #
nocross always	läng	5-123-1245	#  !LG #
nocross always	läss	5-123	#  !L #
word	lässt	123	#  L  #
nocross midendword	mal	134	#  M  #
word	man	134	#  M  #
nocross always	maschin	134-156	#  M5 #
nocross always	material	134-123	#  ML #
nocross always	materiell	134-12345	#  MQ #
word	mehr	2356	#  =  #
nocross always	mehr	2-2356	#  ,= #
nocross always	mir	134-1235	#  MR #
word	mit	2345	#  T  #
nocross always	mit	2-2345	#  ,T #
nocross always	mittel	134-2345	#  MT #
nocross midendword	mm	1346	#  X  #
word	mr	6-134-1235	#  'MR #
always	mr.	134-1235-3	#  MR. #
word	mrs	6-134-1235-234	#  'MRS #
always	mrs.	134-1235-234-3	#  MRS. #
nocross always	musik	134-13	#  MK #
nocross always	muss	134-2346	#  M^ #
nocross begmidword	möcht	1456	#  4  #
nocross always	mög	2-246	#  ,9 #
nocross always	möglich	134-456	#  M_ #
nocross always	müss	2-134	#  ,M #
nocross always	nachdem	1345-145	#  ND #
nocross always	nahm	1345-134	#  NM #
nocross always	natur	1345-2345	#  NT #
nocross always	natürlich	1345-456	#  N_ #
nocross always	neben	1345-12	#  NB #
nocross always	nehm	1345-125	#  NH #
word	nicht	1345	#  N  #
nocross always	nicht	2-1345	#  ,N #
nocross always	nichts	1345-234	#  NS #
nocross midendword	nis	1346	#  X  #
nocross always	noch	1345-1456	#  N4 #
nocross always	nommen	1345-1346	#  NX #
nocross always	notwendig	1345-2456	#  NW #
nocross always	nur	1345-1235	#  NR #
nocross always	nutz	1345-1356	#  NZ #
nocross always	nächst	1345-23456	#  N] #
nocross always	nähm	5-1345-134	#  !NM #
nocross always	nütz	5-1345-1356	#  !NZ #
word	 oder	135	#  O  #
nocross always	ohne	135-15	#  OE #
nocross begmidword	or	26	#  ?  #
nocross always	or'	26-6	#  ?' #
nocross always	paragraf	1234-1245	#  PG #
nocross always	person	1234-1345	#  PN #
nocross always	persön	5-1234-1345	#  !PN #
nocross always	platz	1234-1356	#  PZ #
nocross always	plätz	5-1234-1356	#  !PZ #
nocross always	plötzlich	1234-456	#  P_ #
nocross always	politik	1234-13	#  PK #
nocross always	politisch	1234-156	#  P5 #
begword	pro	12345	#  Q  #
nocross always	prou	1234-1235-135-136	#  PROU #
nocross always	punkt	1234-2345	#  PT #
nocross always	pünkt	5-1234-2345	#  !PT #
always	q	6-12345	#  'Q #
always	Q	6-12345	#  'Q #
nocross always	recht	1235-2345	#  RT #
nocross always	regier	1235-1245	#  RG #
nocross always	rehabilit	1235-12	#  RB #
nocross always	republik	1235-13	#  RK #
nocross always	richt	2-3456	#  ,#  #
nocross always	rück	1235-46	#  R$ #
nocross always	sag	234-1245	#  SG #
nocross midendword	sam	2346	#  ^  #
nocross always	satz	234-1356	#  SZ #
word	sch	6-156	#  '5 #
nocross always	sch	156	#  5  #
sufword	schaft	156-1-124-2345	#  5AFT #
nocross midendword	schaft	156	#  5  #
nocross always	schlag	156-1245	#  5G #
nocross always	schliess	156-2346	#  5^ #
nocross always	schließ	156-2346	#  5^ #
nocross always	schläg	5-156-1245	#  !5G #
word	schon	156	#  5  #
nocross always	schreib	156-12	#  5B #
nocross always	schrieb	2-156	#  ,5 #
nocross always	schrift	156-2345	#  5T #
nocross always	schwierig	156-45	#  5> #
nocross always	sehr	234-1235	#  SR #
nocross sufword	sein	246	#  9  #
nocross always	selbst	234-23456	#  S] #
nocross always	setz	2-15	#  ,E #
word	sich	14	#  C  #
word	sie	234	#  S  #
nocross always	sind	234-145	#  SD #
nocross always	sitz	2-24	#  ,I #
word	so	1234	#  P  #
nocross always	so	2-1234	#  ,P #
nocross always	solch	234-1456	#  S4 #
nocross always	soll	2-234	#  ,S  #
nocross always	sondern	234-1345	#  SN #
nocross always	sozial	234-123	#  SL #
nocross always	spiel	2-346	#  ,0 #
nocross always	sprech	2-2346	#  ,^ #
word	ss	6-234-234	#  'SS #
nocross midendword	ss	2346	#  ^  #
word	st	234-2345	#  ST #
nocross always	st	23456	#  ]  #
nocross always	staat	23456-2345	#  ]T #
nocross always	stand	2-23456	#  ,] #
nocross always	stell	2-13456	#  ,Y #
nocross always	stets	23456-234	#  ]S #
nocross always	ständ	5-23456	#  !] #
nocross always	säg	5-234-1245	#  !SG #
nocross always	sätz	5-234-1356	#  !SZ #
nocross midendword	te	236	#  (  #
nocross always	technik	2345-13	#  TK #
nocross always	technisch	2345-156	#  T5 #
nocross always	trag	2345-1245	#  TG #
nocross always	treff	2345-124	#  TF #
nocross always	trotz	2345-1356	#  TZ #
nocross always	träg	5-2345-1245	#  !TG #
word	tz	6-2345-1356	#  'TZ #
word	un	136-1345	#  UN #
nocross always	un	256	#  /  #
word	und	136	#  U  #
nocross always	und	2-136	#  ,U #
nocross midendword	ung	136	#  U  #
word	unter	256	#  /  #
nocross always	unter	2-256	#  ,/ #
nocross begword	ver	36a	#  -  #
nocross always	verhältnis	1236-125	#  VH #
nocross always	viel	1236-123	#  VL #
nocross always	vielleicht	1236-2345	#  VT #
nocross always	volk	1236-13	#  VK #
word	voll	12345	#  Q  #
nocross always	voll	2-12345	#  ,Q #
nocross always	vom	1236-134	#  VM #
word	von	1236	#  V  #
nocross always	von	2-1236	#  ,V #
word	vor	26	#  ?  #
nocross always	vor	2-26	#  ,? #
nocross always	völk	5-1236-13	#  !VK #
nocross always	völl	5-12345	#  !Q #
nocross always	wahr	2456-125	#  WH #
nocross sufword	war	356	#  )  #
word	was	2456	#  W  #
nocross always	weg	2456-1245	#  WG #
nocross always	weit	2456-2345	#  WT #
nocross always	weis	2-146	#  ,3 #
nocross always	welch	13456	#  Y  #
nocross always	wenig	2456-45	#  W> #
nocross always	wenn	2456-1345	#  WN #
nocross always	werd	2-2456	#  ,W #
nocross always	wesentlich	2456-456	#  W_ #
nocross always	wiss	2456-2346	#  W^ #
word	wie	126	#  2  #
nocross always	wie	2-126	#  ,2 #
nocross always	wieder	346-145	#  0D #
nocross always	will	2456-12345	#  WQ #
nocross always	wir	2456-1235	#  WR #
nocross always	wird	2456-145	#  WD #
nocross always	wirk	2456-13	#  WK #
nocross always	wirst	2456-23456	#  W] #
nocross always	wirtschaft	2456-156	#  W5 #
nocross always	wohl	2456-123	#  WL #
nocross always	woll	2-135	#  ,O #
nocross always	worden	135-14	#  OC #
word	wurd	2456-136-1235-145	#  WURD #
nocross always	wurd	136	#  U  #
nocross always	währ	5-2456-125	#  !WH #
nocross always	während	345-145	#  @D #
nocross always	wär	5-356	#  !) #
endword	wärts	2456	#  W  #
word	würd	2456-1256-1235-145	#  W8RD #
nocross always	würd	1256	#  8  #
always	x	6-1346	#  'X #
always	X	6-1346	#  'X #
always	y	6-13456	#  'Y #
always	Y	6-13456	#  'Y #
nocross always	zahl	1356-123	#  ZL #
nocross always	zeit	1356-2345	#  ZT #
word	zu	1356	#  Z  #
nocross always	zu	2-1356	#  ,Z #
nocross always	zum	1356-134	#  ZM #
nocross always	zunächst	1356-1345	#  ZN #
nocross always	zur	1356-1235	#  ZR #
nocross always	zurück	1356-46	#  Z$ #
nocross always	zusammen	1356-234	#  ZS #
nocross always	zwischen	1356-2456	#  ZW #
nocross always	zähl	5-1356-123	#  !ZL #
always	ß	6-2346	#  '^ #
nocross always	ähnlich	345-456	#  @_ #
nocross always	änder	5-12456	#  !7 #
nocross always	äu	34	#  \  #
nocross always	öffentlich	246-456	#  9_ #
word	über	1256	#  8  #
nocross always	über	2-1256	#  ,8 #
word	überhaupt	1256-125	#  8H #
nocross always	übrig	1256-45	#  8> #
endword	'st	6-23456	#  '] #

# Apo vor bedeutungstragenden Einzelbuchstaben vor Apo
word       a'         6-1-6
word       b'         6-12-6
word       d'         6-145-6
word       e'         6-15-6
word       f'         6-124-6
word       g'         6-1245-6
word       i'         6-24-6
word       j'         6-245-6
word       k'         6-13-6
word       l'         6-123-6
word       m'         6-134-6
word       n'         6-1345-6
word       o'         6-135-6
word       p'         6-1234-6
word       r'         6-1235-6
word       t'         6-2345-6
word       u'         6-136-6
word       v'         6-1236-6
word       w'         6-2456-6
word       z'         6-1356-6

# Ausnahmen:
word	'e	6-6-15	#  ''E #
word	'l	6-6-123	#  ''L #
word	'm	6-6-134	#  ''M #
word	'n	6-6-1345	#  ''N #
word	's	6-6-234	#  ''S #
word	't	6-6-2345	#  ''T #
word	'tsch	6-6-2345-156	#  ''T5 #
word	'u	6-6-136	#  ''U #
word	ao	6-1-135	#  'AO #
word	aos	6-1-135-234	#  'AOS #
word	che	6-1456-15	#  '4E #
word	chen	6-1456-14	#  '4C #
word	chens	6-1456-14-234	#  '4CS #
word	chet	6-1456-15-2345	#  '4ET #
word	chets	6-1456-15-2345-234	#  '4ETS #
word	dau	6-145-16	#  'D1 #
word	dirs	145-1235-234	#  DRS #
word	dr	6-145-1235	#  'DR #
always	dr.	145-1235-3	#  DR. #
word	dschem	6-145-156-12356	#  'D5[ #
word	dü	6-145-1256	#  'D8 #
word	gsch	6-1245-156	#  'G5 #
word	he'd	125-15-6-145	#  HE'D #
word	he's	125-15-6-234	#  HE'S #
word	ih	6-24-125	#  'IH #
word	ihm's	24-125-134-6-234	#  IHM'S #
word	mal'ach	134-25-6-1-1456	#  M:'A4 #
word	mal'n	134-25-6-1345	#  M:'N #
word	mlle	6-134-12345-15	#  'MQE #
word	nta	6-1345-2345-1	#  'NTA #
word	nu'man	1345-136-6-134-1-1345	#  NU'MAN #
word	pnin	6-1234-1345-35	#  'PN* #
word	psch	6-1234-156	#  'P5 #
word	pschscht	6-1234-156-156-2345	#  'P55T #
word	pscht	6-1234-156-2345	#  'P5T #
word	qa'im	6-12345-1-6-24-134	#  'QA'IM #
word	rrm	6-1235-1235-134	#  'RRM #
word	s'	6-234-6	#  'S' #
word	sch'chinah	156-6-1456-35-1-125	#  5'4*AH #
word	scht	6-156-2345	#  '5T #
word	sgt	6-234-1245-2345	#  'SGT #
word	tsch	6-2345-156	#  'T5 #
word	tschk	6-2345-156-13	#  'T5K #
word	un'ora	256-6-135-1235-1	#  /'ORA #
word	when	2456-125-14-1345	#  'WHC #
word	where	6-2456-125-12456-15	#  'WH7E #
word	whu	6-2456-125-136	#  'WHU #
word	über'aupt	2-1256-6-16-1234-2345	#  ,8'1PT #

# Local Variables:
# mode: tsv
# End:
