gap> START_TEST("Standard FF");

# from manual
gap> Fp := FF(2, 1);
GF(2)
gap> F := FF(2, 100);
FF(2, 100)
gap> Size(F);
1267650600228229401496703205376
gap> p := NextPrimeInt(10^50);
100000000000000000000000000000000000000000000000151
gap> K := FF(p, 60);
FF(100000000000000000000000000000000000000000000000151, 60)
gap> LogInt(Size(K), 10);
3000
gap> F := FF(13, 9*5);
FF(13, 45)
gap> IsStandardPrimeField(GF(47));
true
gap> for p in [2,5,19,1009] do Print([FF(p,1),FF(p,12),FF(p,19)],"\n"); od;
[ GF(2), FF(2, 12), FF(2, 19) ]
[ GF(5), FF(5, 12), FF(5, 19) ]
[ GF(19), FF(19, 12), FF(19, 19) ]
[ GF(1009), FF(1009, 12), FF(1009, 19) ]
gap> F := FF(47, 38);
FF(47, 38)
gap> Order(ElementSteinitzNumber(F, 100));
2208
gap> Size(F);
3465122572092046296464724059395298458186535561070143621795409889
gap> F := FF(2,18);; H := FF(2,6);; emb:=Embedding(H,F);;
gap> ForAll(H, x-> PreImageElm(emb, x^emb) =x);
true
gap> F := FF(3,15);; H := FF(3,5);; emb:=Embedding(H,F);;
gap> ForAll(H, x-> PreImageElm(emb, x^emb) =x);
true
gap> F := FF(17,12);; H := FF(17,1);; emb:=Embedding(H,F);;
gap> ForAll(H, x-> PreImageElm(emb, x^emb) =x);
true
gap> for F in [FF(107,1), FF(7,6), FF(2,13)] do Print(ForAll(F,
> x-> x = ElementSteinitzNumber(F,SteinitzNumber(x))),"\n"); od;
true
true
true

# basic arithmetic
gap> sc := SizeScreen();;
gap> SizeScreen([255, 100]);;
gap> for i in [1, 6, 250, 270, 2^15, 2^16, 2^31, 2^62, 2^100] do
>   p := NextPrimeInt(i);
>   Print("# p = ",p,"\n");
>   F := FF(p, 28);
>   x := PrimitiveElement(F);
>   y := (x+One(F))^3;
>   z := 3*One(F);
>   for a in [x*y, y*z, z*y, x+y, y+z,z+y, x/y, y/z, z/y, -z, -y, x-y] do
>     Print(a,"\n");
>   od;
> od;
# p = 2
ZZ(2,28,[0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[0,0,1,1,0,1,0,1,0,0,1,0,1,0,1,0,1,1,0,0,1,1,1,0,0,1,1,0])
ZZ(2,28,[1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[0,1,1,0,1,0,1,0,0,1,0,1,0,1,0,1,1,0,0,1,1,1,0,0,1,1,0,0])
ZZ(2,28,[1])
ZZ(2,28,[1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2,28,[1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 7
ZZ(7,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[3,2,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[3,2,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[5,1,1,0,3,2,1,2,3,5,6,4,2,4,5,3,3,5,1,0,6,2,0,4,5,1,6,2])
ZZ(7,28,[5,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[3,6,0,4,6,3,6,2,1,6,5,6,5,4,2,2,1,3,0,4,6,5,5,1,3,4,6,2])
ZZ(7,28,[4])
ZZ(7,28,[6,4,4,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(7,28,[6,5,4,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 251
ZZ(251,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[28,74,127,76,60,52,162,51,68,178,213,88,154,65,230,152,66,205,111,241,245,188,121,226,218,53,216,230])
ZZ(251,28,[84,1,1,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[222,169,228,37,156,235,153,186,32,107,13,211,195,24,205,55,113,82,221,233,62,149,176,152,159,146,188,94])
ZZ(251,28,[248])
ZZ(251,28,[250,248,248,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(251,28,[250,249,248,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 271
ZZ(271,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[46,254,211,165,70,63,38,169,96,106,40,95,20,157,121,211,38,46,60,186,29,108,142,218,178,25,257,60])
ZZ(271,28,[181,1,1,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[220,114,224,263,189,114,236,116,47,169,14,60,200,19,91,174,138,180,16,87,53,106,112,263,75,229,180,53])
ZZ(271,28,[268])
ZZ(271,28,[270,268,268,270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(271,28,[270,269,268,270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 32771
ZZ(32771,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[7712,21055,17094,30608,13766,13219,14747,649,25589,31286,26796,23263,8014,10457,7539,19970,17716,25643,15672,22194,24614,7759,10040,2624,24216,7753,32553,18721])
ZZ(32771,28,[10924,1,1,10924,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[30394,2678,26282,7679,6886,11470,1947,18405,28316,13988,4247,24042,31371,26140,27139,19143,11387,14245,1040,8300,23277,2542,7872,7106,23259,32117,23392,6840])
ZZ(32771,28,[32768])
ZZ(32771,28,[32770,32768,32768,32770,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(32771,28,[32770,32769,32768,32770,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 65537
ZZ(65537,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[33094,47246,22035,21211,54921,17151,62463,33922,37344,4188,20163,20677,48401,41100,6476,5482,40622,54041,41631,47,9071,30485,15852,48529,23348,41253,17808,61617])
ZZ(65537,28,[21846,1,1,21846,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[10664,568,63633,58881,51453,56315,36229,64137,12564,60489,62031,13098,57763,19428,16446,31226,31049,59356,141,52608,25918,47556,14513,50023,58222,53424,53777,13397])
ZZ(65537,28,[65534])
ZZ(65537,28,[65536,65534,65534,65536,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(65537,28,[65536,65535,65534,65536,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 2147483659
ZZ(2147483659,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[251915281,450688225,258247792,113228522,479523042,305974352,782461333,2125924573,1608803172,2036251408,299497766,1543333230,1994534309,1860627108,2005732175,1768832114,1854964849,308975192,717154056,130105964,856406133,618276971,
644135687,799954121,1066717705,198299812,1847444305,1385984580])
ZZ(2147483659,28,[1431655773,1,1,1431655773,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[1352064675,1495166533,339685566,1546649295,917923056,1786129355,2082806401,715059181,1813786906,1925665160,335032372,327102571,1286914006,922933425,1011529024,357893042,926925576,718562552,390317892,421734740,1854830913,1369919785,
252378704,1052669456,594899436,1247365597,2010470081,369011825])
ZZ(2147483659,28,[2147483656])
ZZ(2147483659,28,[2147483658,2147483656,2147483656,2147483658,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(2147483659,28,[2147483658,2147483657,2147483656,2147483658,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 4611686018427388039
ZZ(4611686018427388039,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[1190291583421325750,3698009700959413459,1171447084120596902,1309486112050159348,2052219883000079480,3567320449088947174,4519695738238740510,3082563258568093889,3504639283370076210,4534116513274152961,1665517063142812478,
118020808371707984,1389323903869705257,3148677485914203704,1579661739288529898,1705804198023194359,3526773028135356625,154707943091144089,2814746245213369597,2632273013896490112,3658868625750210656,1370258927983468294,552658949709469746,
46429293080841643,3759800100280621733,1863710925488304243,1529781703321932585,4506466086998219939])
ZZ(4611686018427388039,28,[3074457345618258693,1,1,3074457345618258693,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[1870657066023464299,3204478288966792558,3928458336150478044,2524807371728432178,1478589310412065444,2138807868325748266,24317738849505589,693895111494944098,4378977502967682805,935027537828232322,354062425115123952,
3778890907292117994,222660420887835034,3827149803894973611,505726575642195038,3784602297304640037,464123829273432267,1538969275139837453,3285133023262082297,1753233840395855890,4110776783950404882,2181265195836075582,139287879242524929,
2056028263987089121,979446758037524690,4589345109965797755,4296026224139883739,34555350209759062])
ZZ(4611686018427388039,28,[4611686018427388036])
ZZ(4611686018427388039,28,[4611686018427388038,4611686018427388036,4611686018427388036,4611686018427388038,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(4611686018427388039,28,[4611686018427388038,4611686018427388037,4611686018427388036,4611686018427388038,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
# p = 1267650600228229401496703205653
ZZ(1267650600228229401496703205653,28,[0,1,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[3,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[1,4,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[4,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[691501856672231367434297274922,206565266742120780234496353861,655772912274036296867476342218,524435406963985605749894253800,1200252564304074121177815848340,639190249059645929906700612169,
585735513748926105332370759902,195572548183127379091782858059,987226177163466683391979996773,447343213160622726585533154049,888765855033981514903623798324,75049019165638198127361968720,464163964925206338811619161778,28896393149943677272839221488,
981071107065370556612669292788,308885335113539164021964912353,196823101417229572125133401120,1226237204715605474099102735213,805044169826731006364786481319,47585776096907993966714977549,18824758198165729396502505142,263374827516277225042264276261,
373466066987992544213687883895,605953758745483765829047425696,601317495967982049319639411925,1075322569784527616327064425854,702379045138134244714357089232,403830660405179375039612071082])
ZZ(1267650600228229401496703205653,28,[422550200076076467165567735218,1,1,422550200076076467165567735218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[619695800226362340703489061583,699668136593879489105725821001,305655620663727415752979555747,167284728685505149210504425132,649920146950708388223398630854,489555941018548914500409074053,
586717644549382137275348574177,1191861497258416062436141247068,74379039253638778259896256494,130996364645485741717464983666,225147057496914594382085906160,124841294547389614938154279681,86689179449831031818517664464,407912120739652866844601467058,
926656005340617492065894737059,980208843222275497436806545797,1143410413690357619303901794333,1147481909251963617597656238304,142757328290723981900144932647,56474274594497188189507515426,790124482548831675126792828783,1120398200963977632641063651685,
550210676008221895990439071435,536301887675716746462215030122,690666508897124045987786866256,839486535186173332646368062043,1211491981215538125118836213246,762301543267117989696819541795])
ZZ(1267650600228229401496703205653,28,[1267650600228229401496703205650])
ZZ(1267650600228229401496703205653,28,[1267650600228229401496703205652,1267650600228229401496703205650,1267650600228229401496703205650,1267650600228229401496703205652,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
ZZ(1267650600228229401496703205653,28,[1267650600228229401496703205652,1267650600228229401496703205651,1267650600228229401496703205650,1267650600228229401496703205652,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
gap> SizeScreen(sc);;

# mixed arithmetic
gap> F := FF(5,30);
FF(5, 30)
gap> x := StandardPrimitiveRoot(F)^4627462;
ZZ(5,30,[1,2,2,2,0,2,2,1,3,1,4,4,3,2,2,2,4,4,2,1,3,4,3,3,2,1,3,2,0,1])
gap> l := [];;
gap> for k in DivisorsInt(30) do Add(l, x^((5^30-1)/(5^k-1))); od;
gap> for a in l do for b in l do
> erg := [a*b, a+b, a-b, -a+b, a/b, b/a]; od;od;
gap> l[3] * l[5];
ZZ(5,30,[1,4,1,0,3,1,3,0,4,0,0,0,1,0,0,0,3,0,4,0,3,0,4,0,0,4,0,0,2,0])
gap> l1 := List(l, MoveToSmallestStandardField);;
gap> for a in l1 do for b in l do
> erg := [a*b, a+b, a-b, -a+b, a/b, b/a]; od;od;
gap> l1[3] * l[2];
ZZ(5,30,[0,4,0,1,1,1,4,0,2,0,1,3,3,0,3,4,0,3,3,3,3,2,3,3,2,4,4,2,1,0])
gap> for a in l1 do for b in l1 do
> erg := [a*b, a+b, a-b, -a+b, a/b, b/a]; od;od;
gap> for a in l1 do Print(a * l1[4], "\n"); od;
ZZ(5,5,[1,3,1,1,4])
ZZ(5,10,[1,2,4,0,2,3,1,2,1,4])
ZZ(5,15,[4,4,2,4,3,4,2,3,0,0,4,0,1,0,2])
ZZ(5,5,[2,1,3,2,1])
ZZ(5,30,[3,0,2,1,4,2,0,1,3,4,4,0,4,0,4,3,0,1,4,2,1,3,1,3,1,0,2,0,0,2])
ZZ(5,10,[1,0,4,0,0,0,2,3,1,1])
ZZ(5,15,[0,4,0,3,4,1,3,1,0,2,4,1,0,3,3])
ZZ(5,30,[0,3,3,0,2,2,2,3,3,3,4,3,2,2,1,3,2,1,4,2,1,0,1,0,0,2,1,1,0,2])
gap> Z(5)^2 + l[3];
ZZ(5,30,[4,0,0,0,4,0,1,0,3,0,4,0,2,0,2,0,0,0,2,0,2,0,2,0,3,0,1,0,4,0])
gap> Z(5)^2 * l[3];
ZZ(5,30,[0,0,0,0,1,0,4,0,2,0,1,0,3,0,3,0,0,0,3,0,3,0,3,0,2,0,4,0,1,0])
gap> l[6] * Z(5)^2;
ZZ(5,30,[2,2,2,3,2,1,1,3,1,1,4,3,3,4,0,4,3,1,0,0,1,0,3,3,4,3,2,4,1,4])
gap> l[6] + Z(5)^2;
ZZ(5,30,[2,3,3,2,3,4,4,2,4,4,1,2,2,1,0,1,2,4,0,0,4,0,2,2,1,2,3,1,4,1])
gap> STOP_TEST("Standard FF", 0);

