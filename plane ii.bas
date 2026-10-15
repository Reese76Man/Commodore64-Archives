0 aa$="???"
1 print"“":poke53281,0:poke53280,0
2 w=0:r=0:q=0:po=0:t=0:u=0:a=0
5 a$(1)= "š §M_ ":e=20:g=0
7 c$="e          futuresoft presents...."
10 a$(2)="š [  >"
12 a$(3)="š §N£ ":c$(1)=a$(1):c$(2)=a$(2):c$(3)=a$(3)
20 a=a+1:b$=right$(c$,a)
21 poke214,1:print:printspc(len(b$));a$(1)
22 poke214,2:print:printb$;a$(2)
23 poke214,3:print:printspc(len(b$));a$(3)
24 ifg=1then goto30
25 ifa>len(b$)theng=1:a$(1)="     ":a$(2)=a$(1):a$(3)=a$(2):goto21
26 goto20
30 poke214,6:print:printspc(15)"plane ii":printspc(09)"qhighscore:";hs;
31 print" by:";aa$
32 printspc(14)"press space":fu=200:a=0:hh=10
33 geta$:ifa$=""thengosub3000:goto33
34 print"“":ifnn=0thennn=1:gosub5500
40 q=peek(56320)
41 ifq=126theny=y-1
42 ifq=125theny=y+1
43 ify>16theny=16:goto100
44 ify<4thenprint"sqthe edge of space"
45 ify<1theny=1
46 poke214,y-1:print:printspc(4)"     "
47 poke214,y:print:printspc(4)  "§M__ "
48 poke214,y+1:print:printspc(4)"¶_C_>"
49 poke214,y+2:print:printspc(4)" £££ "
50 poke214,y+3:print:printspc(4)"     "
51 print"sfuel";fu;" points";po;"     "
52 fu=fu-1:iffu<1thengoto500
53 print"sq                            ":
54 ifq=111thengoto2000
55 goto1000
100 print"sqlanding                   " :gosub5000
101 print"sqfueling up":fort=1to1000:nextt:fu=99:print"‘done      "
102 fort=1to1000:nextt:print"‘takeoff    ":gosub5500:print"‘press button    "
103 q=peek(56320):ifq<>111thengoto103
104 y=15:print"“":goto40
500 fort=yto18:poke214,t:print:print"‘‘"spc(3)"         "
501 poke214,t:print:print"‘"spc(3)"Mª´N"
502 poke214,t:print:printspc(3)  "_¥§_"
503 poke214,t+1:print:printspc(3)"M¥§N"
504 poke214,t+2:print:printspc(3)" MN "
505 nextt
506 poke214,t:print:print"‘"spc(3)"¦¦¦¦"
507 poke214,t:print:printspc(3)  "M¦¦N"
508 poke214,t+1:print:printspc(3)" MN "
509 poke214,t+2:print:printspc(3)"Mª´N"
510 print"qboooooooom!":nn=0
511 fort=1to2000:nextt
512 ifpo>hsthenhs=po:input"initials:";aa$:xz=len(aa$):ifxz>3thenhs=0:goto512
513 goto1
1000 ifw=0thenw=1:r=int(rnd(0)*5)+1:r=r+4
1001 e=e-1:poke214,r:print:printspc(e)"<> "
1002 ife<1thene=30:w=0:print"“"
1003 u=int(rnd(0)*3)+1
1004 ifu=1thenr=r+1
1005 ifu=2thenr=r-1
1006 ifr>17thenr=16
1007 ifr<2thenr=5
1008 ifr=y+1ande=4thengoto500
1009 poke214,r+1:print:printspc(e)"    "
1010 poke214,r-1:print:printspc(e)"    "
1011 ifr=y+1ande=6thengoto500
1012 ifr=y+1ande=7thengoto500
1013 ifr=y+1ande=8thengoto500
1014 ifr=y+1ande=9thengoto500
1015 goto40
2000 fort=9to31
2001 poke214,y+1:print:printspc(t)" C"
2002 ify+1=randt=ethenprint"“booooom":po=po+1:t=0:w=0:e=30:goto40
2003 nextt:print"“"
2004 goto40
3000 a=a+1
3001 poke214,hh:print:printspc(a);c$(1)
3002 poke214,hh+1:print:printspc(a);c$(2)
3003 poke214,hh+2:print:printspc(a);c$(3)
3004 ifa>30thengosub3010
3005 return
3010 poke214,hh:print:printspc(a);a$(1)
3011 poke214,hh+1:print:printspc(a);a$(2)
3013 poke214,hh+2:print:printspc(a);a$(3)
3014 ifhh>17thenhh=10
3015 a=0:hh=hh+1:return
5000 o=3:fory=16to19:fort=1to100:nextt:o=o+1
5001 poke214,y+2:print:printspc(o)" W]W   "
5003 poke214,y-1:print:printspc(o-3)"       "
5004 poke214,y:print:printspc(o)  " §M__ "
5005 poke214,y+1:print:printspc(o)" ¶_C_>"
5006 poke214,y+2:print:printspc(o)"  £££ ":nexty
5007 poke214,21:print:printspc(o)"  W]W  "
5008 return
5500 o=6:fory=19to16step-1:fort=1to100:nextt:o=o+1
5503 poke214,y-1:print:printspc(o-3)"       "
5504 poke214,y:print:printspc(o)  " §M__ "
5505 poke214,y+1:print:printspc(o)" ¶_C_>"
5506 poke214,y+2:print:printspc(o)"  £££ "
5507 poke214,y+2:print:printspc(o)"                   ":nexty
5509 fort=1to100:nextt:o=o-1:ifo<3thenreturn
5510 poke214,y-1:print:printspc(o-3)"       "
5511 poke214,y:print:printspc(o)  " §M__ "
5512 poke214,y+1:print:printspc(o)" ¶_C_> "
5513 poke214,y+2:print:printspc(o)"  £££ "
5514 poke214,y+2:print:printspc(o)"                   ":goto5509
