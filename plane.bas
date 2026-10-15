0 s=54272:v=1:w=8:e=24:fu=100:restore:print"“‘":goto10000
1 z=3:a=24:c=1:poke53281,0:poke53280,6:pokes+20,0:pokes+13,0:pokes+6,0:t=0:gosub9000
2 pokes+6,255:ifvv=0thenvv=1:w=int(rnd(0)*6)+4:print"“":e=w+4
3 goto10
4 ifz<19thenprint"sfuel:";fu;"   points:";u
5 poke214,z:print:printspc(a)" ¿C<Q>Cr¿’ "
6 poke214,z:print:printspc(a)" r¿’C<W>C¿ "
7 goto8000
8 gosub100:goto4000
10 x=peek(56320):gosub56000:fu=fu-1:ifx=127thengoto4
11 ifx=123orx=107thena=a-1:b=x
12 ifx=119orx=103thena=a+1:b=x
13 ifa<2thena=2:c=c+1
14 ifa>24thena=24:c=c-1
15 ifx=125orx=109thenz=z+1:b=x
16 ifx=126orx=110thenz=z-1:b=x
17 ifz<1thenz=1
18 ifz>20thenz=20
19 ifx=>102andx<112thenpokes+13,0:goto30
20 ifc<1 thenc=24
21 ifc>24thenc=1
22 ifz<19thenprint"sfuel:";fu;"   points:";u:fu=fu-1
23 ifz>16thengosub1000
24 ifu>ytheny=u
25 iffu=<0thengoto55001
26 goto4
30 ifb=123orb=107thenr=1:fort=a-1to1step-1:poke214,z:print:printspc(t)" C ":gosub6000:next
31 ifb=119orb=103thenr=1:fort=a+7to31:poke214,z:print:printspc(t)" C ":gosub6000:next
32 ifb=125orb=109thenr=2:fort=z+1to18:poke214,t:print:printspc(a+3)" B ":gosub6000:next
33 ifb=126orb=110thenr=2:fort=z-1to0step-1:poke214,t:print:printspc(a+3)" B ":gosub6000:next
36 x=126:poke53281,2:print"“":poke53281,0:pokes+1,0:pokes+4,65
37 poke214,z:print:printspc(a)" ¿C<Q>Cr¿’ "
38 poke214,z:print:printspc(a)" r¿’C<W>C¿ "
39 poke214,w:print:printspc(e)" { "
40 ifc<1 thenc=24
41 ifc>24thenc=1
42 goto2
100 poke214,17:print:printspc(c)"•  UI  "
101 poke214,18:print:printspc(c)" rUKJCI’ "
102 poke214,19:print:printspc(c-1)" rUK   JI’ "
103 poke214,20:print:print"‘¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸"
104 return
1000 ifa=c+2ora=c+3ora=cora=c+1ora=c-1ora=c-2ora=c-3ora=c-4ora=c-5thengoto2000
1001 ifa=c+2ora=c+3thenfort=1to1000:next:run
1002 ifz=19thenprint"slanding!!    ":goto7000
1003 ifz=20thengoto2000
1004 return
2000 poke214,z:print:printspc(a-2)"you crashed!!":fort=1to100:poke53281,7:poke53281,2:next:v=v-1
2001 pokes+8,10:pokes+11,129
2002 poke53281,0:ifv=0thenprint"send of game.highscore:";y:fort=1to3800:next
2003 u=0:goto0
2004 fort=1to1500:next:w=8:e=24:print"“":vv=0
2005 goto1
4000 q=int(rnd(0)*4)+1
4001 ifq=1thenw=w+1
4002 ifq=2thenw=w-1
4003 ifq=3thene=e-1
4004 ifq=4thene=e+1
4005 poke214,w:print:printspc(e)" { ":goto4012
4006 ifw<2thenw=2
4007 ifw>20thenw=20
4008 ife<3thene=4
4009 ife>24thene=24
4010 ifz=wthengoto5000
4011 goto2
4012 poke214,w-1:print:printspc(e)"   "
4013 poke214,w+1:print:printspc(e)"   "
4014 goto4006
5000 ife=aore=a+1ore=a+2ore=a+3ore=a+4thengoto2000
5001 goto4011
6000 pokes+24,15:pokes+1,t:pokes+4,65:pokes+4,64:pokes+12,0:pokes+13,255
6001 ift=eandr=1andz=wthenprint"boom!!":u=u+1:vv=0:pokes+11,129:pokes+11,128
6002 ift=wandr=2anda+3=ethenprint"boom!!":u=u+1:vv=0:pokes+11,129:pokes+11,128
6003 pokes+8,10:return
7000 g=peek(56320):ifg<>111then7000
7001 fu=90:goto1003
8000 poke214,z-1:print:printspc(a)"           "
8001 poke214,z+1:print:printspc(a)"           "
8002 goto8                                    "
9000 pokes+24,15:pokes+1,t:pokes+4,65:pokes+4,64:pokes+12,0:pokes+13,255:return
10000 poke53281,0:poke53280,0:n1=1:n3=1:n5=1
10001 print"       °I  B     NM   BM  µ  °CC
10002 print"       «K  B    NCCM  B M µ  «CC
10003 print"       }   B¢¢ N    M B  Mµ  ­CC
10004 print"q"spc(13)"by:corey badeaux":printspc(10)"music by:byron badeaux"
10005 print"qqqq            <<press button>>‘‘"
10006 printspc(15)"VCCQVQCCV":print"‘‘"spc(15)"hiscore:";y
10008 z=peek(56320):ifz<>111thengoto10010
10009 pokes+24,0:print"“":pokes+24,15:goto1
10010 ifa=0thena=1:forsw=stos+24:pokesw,0:nextsw:pokes+24,15:pokes+2,255:pokes+5,9
10011 ifn1<>0thenpokes+1,n1:pokes,n2:pokes+4,65:pokes+4,64
10012 pokes+13,255:pokes+20,255:pokes+6,255:
10013 ifn3<>0thenpokes+9,96:pokes+8,n3:pokes+7,n4:pokes+11,33:pokes+11,32
10014 ifn5<>0thenpokes+16,96:pokes+15,n5:pokes+14,n6:pokes+18,33:pokes+18,32
10015 readn1,n2,n3,n4,n5,n6:ifn1=255orn3=255thenfort=1to2000:next:goto12000
10017 goto10008
11000 data 14,101,16,101,20,169
11001 data 16,101,16,101,20,169
11002 data 16,101,16,101,20,169
11003 data 16,101,16,101,20,169
11004 data 14,156,14,156,18,104
11005 data 14,156,14,156,18,104
11006 data 14,156,14,156,18,104
11008 data 16,101,14,156,18,104
11009 data 21,227,13,201,16,101
11010 data 21,227,13,201,16,101
11011 data 21,227,13,201,16,101
11012 data 21,227,13,201,16,101
11013 data 16,101,16,101,20,169
11014 data 16,101,16,101,20,169
11015 data 16,101,16,101,20,169
11016 data 16,101,16,101,20,169
11017 data 14,156,14,156,18,104
11018 data 14,156,14,156,18,104
11019 data 14,156,14,156,18,104
11020 data 16,101,14,156,18,104
11021 data 21,227,13,201,16,101
11022 data 21,227,13,201,16,101
11023 data 21,227,13,201,16,101
11024 data 21,227,13,201,16,101
11025 data 21,227,13,201,16,101
11026 data 21,227,13,201,16,101
11027 data 21,227,13,201,16,101
11028 data 21,227,13,201,16,101
11029 data 18,104,13,201,16,101
11030 data 18,104,13,201,16,101
11031 data 18,104,13,201,16,101
11032 data 16,101,20,169,24,146
11033 data 16,101,20,169,24,146
11034 data 16,101,20,169,24,146
11035 data 16,101,20,169,24,146
11036 data 16,101,20,169,24,146
11037 data 18,104,20,169,24,146
11038 data 20,169,20,169,24,146
11039 data 20,227,20,169,24,146
11040 data 20,227,20,169,24,146
11041 data 20,227,20,169,24,146
11042 data 20,227,20,169,24,146
11043 data 21,227,21,227,27,148
11044 data 27,148,21,227,27,148
11045 data 27,148,21,227,27,148
11046 data 27,148,21,227,27,148
11047 data 27,148,21,227,27,148
11048 data 21,227,21,227,27,148
11049 data 21,227,21,227,27,148
11050 data 21,227,21,227,27,148
11051 data 21,227,21,227,27,148
11052 data 16,101,20,169,24,146
11053 data 16,101,20,169,24,146
11054 data 16,101,20,169,24,146
11056 data 16,101,20,169,24,146
11057 data 16,101,12,73,20,169
11058 data 16,101,12,73,20,169
11059 data 16,101,12,73,20,169
11060 data 16,101,12,73,20,169
11061 data 16,101,20,169,24,146
11062 data 16,101,20,169,24,146
11063 data 16,101,20,169,24,146
11064 data 16,101,20,169,24,146
11065 data 12,73,24,146,30,245
11066 data 12,73,24,146,30,245
11067 data 12,73,24,146,30,245
11068 data 12,73,24,146,30,245
11069 data 15,122,24,146,30,245
11070 data 15,122,24,146,30,245
11071 data 15,122,24,146,30,245
11072 data 15,122,24,146,30,245
11073 data 18,104,24,146,30,245
11074 data 18,104,24,146,30,245
11075 data 18,104,24,146,30,245
11076 data 21,227,24,146,30,245
11077 data 21,227,24,146,30,245
11078 data 21,227,24,146,30,245
11079 data 21,227,24,146,30,245
11080 data 21,227,24,146,30,245
11081 data 16,101,20,169,12,73
11082 data 16,101,20,169,12,73
11083 data 16,101,20,169,12,73
11084 data 16,101,20,169,12,73
11085 data 16,101,20,169,12,73
11086 data 16,101,20,169,12,73
11087 data 16,101,20,169,12,73
11088 data 16,101,20,169,12,73
11089 data 16,101,20,169,12,73
11090 data 16,101,20,169,12,73
11091 data 16,101,20,169,12,73
11092 data 16,101,20,169,12,73
11093 data 16,101,20,169,12,73
11094 data 16,101,20,169,12,73
11095 data 16,101,20,169,12,73
11096 data 16,101,20,169,12,73
11097 data 16,101,20,169,12,73
11098 data 16,101,20,169,12,73
11099 data 16,101,20,169,12,73
11100 data 16,101,20,169,12,73
11101 data 16,101,20,169,12,73
11102 data 16,101,20,169,12,73
11103 data 16,101,20,169,12,73
11104 data 16,101,20,169,12,73
11105 data 16,101,20,169,12,73
11106 data 16,101,20,169,12,73
11107 data 16,101,20,169,12,73
11108 data 16,101,20,169,12,73
11109 data 16,101,20,169,12,73
11110 data 16,101,20,169,12,73
11111 data 16,101,20,169,12,73
11112 data 16,101,20,169,12,73
11113 data 16,101,20,169,12,73
11114 data 16,101,20,169,12,73
11116 data 16,101,20,169,12,73
11117 data 16,101,20,169,12,73
11118 data 16,101,20,169,12,73
11119 data 16,101,20,169,12,73
11120 data 16,101,20,169,12,73
11121 data 16,101,20,169,12,73
11122 data 16,101,20,169,12,73
11123 data 16,101,20,169,12,73
11124 data 16,101,20,169,12,73
11125 data 16,101,20,169,12,73
11126 data 16,101,20,169,12,73
11127 data 16,101,20,169,12,73
11128 data 16,101,20,169,12,73
11129 data 16,101,20,169,12,73
11130 data 16,101,20,169,12,73
11999 ifj>560thenrestore:goto0
12000 a=peek(56320):ifa<>111thenj=j+1:goto11999
12001 pokes+24,0:print"“":pokes+24,15:goto 1
55000 data 255,255,255,255,255,255,255,255,255,255,255
55001 fort=zto19:forg=1to100:nextg
55002 poke214,t-1:print:printspc(a)"           "
55003 poke214,t:print:printspc(a)" r¿’C<W>C¿ ":pokes+1,5:pokes+4,65:pokes+4,64
55004 nextt
55005 fort=0to3
55006 fort=0to3:forg=1to100:nextg
55007 poke214,19:print:printspc(a-t)"r¿’C "spc(t+3)" C¿":nextt
55008 print"send of game.highscore:";y:fort=1to5000:next:u=0:goto0
56000 iffu=<0thengoto55001
56001 return
56002 printpeek(56320):goto56002
