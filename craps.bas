1 poke53281,0:poke53280,0:b=200
2 ifr=0thenf=int(rnd(0)*6)+1:g=int(rnd(0)*6)+1
10 print"“"spc(15)"šcraps"
12 a$(1)="reQ Q£":a$(2)="re Q £":a$(3)="reQQQ£":a$(4)="re   £"
13 b$(1)="   by:futuresoft.the best quality.ežŸš"
14 gosub100:print"     press q to quit during game"
15 print"       press space to start"
16 geta$:ifa$=""thengoto16
18 goto30
19 ifa$="n"thenb$(1)="then go take a hike!!rcrap’ head!!!":print:goto14
20 goto16
30 fort=1to500:next:print"“you have:";b:b$(1)="how much do you bet?žš":gosub100
32 print"‘]]]]]]]]]]]]]]]]]]]]";:if b<1thengoto200
33 inputq
34 ifq<1orq>bthengoto30
35 ifr=0thengosub300
36 iff=1thenprinta$(4):printa$(2):printa$(4)
37 iff=2thenprinta$(4):printa$(1):printa$(4)
38 iff=3thenprinta$(4):printa$(3):printa$(4)
39 iff=4thenprinta$(1):printa$(4):printa$(1)
40 iff=5thenprinta$(1):printa$(2):printa$(1)
41 iff=6thenprinta$(1):printa$(1):printa$(1)
42 print
43 ifg=1thenprinta$(4):printa$(2):printa$(4)
44 ifg=2thenprinta$(4):printa$(1):printa$(4)
45 ifg=3thenprinta$(4):printa$(3):printa$(4)
46 ifg=4thenprinta$(1):printa$(4):printa$(1)
47 ifg=5thenprinta$(1):printa$(2):printa$(1)
48 ifg=6thenprinta$(1):printa$(1):printa$(1)
49 ifr>0thengoto80
50 r=1
51 iff=1andg=1thenb$(1)="snake eyes.you lose!":gosub100:b=b-q:r=0:goto30
52 iff=1andg=6thenb$(1)="a 7 on your first roll!":gosub100:r=0:b=b+q:goto30
53 iff=6andg=1thenb$(1)="a 7 on your first roll!":gosub100:b=b+q:r=0:goto30
54 iff=5andg=2thenb$(1)="a 7 on your first roll!":gosub100:b=b+q:r=0:goto30
55 iff=2andg=5thenb$(1)="a 7 on your first roll!":gosub100:b=b+q:r=0:goto30
56 iff=3andg=4thenb$(1)="a 7 on your first roll!":gosub100:b=b+q:r=0:goto30
57 iff=4andg=3thenb$(1)="a 7 on your first roll!":gosub100:b=b+q:r=0:goto30
58 iff=6andg=6thenb$(1)="box cars!you lose!":gosub100:b=b-q:r=0:goto30
59 iff=5andg=6thenb$(1)="an 11 on your first roll!":gosub100:b=b+q:r=0:goto30
60 iff=6andg=5thenb$(1)="an 11 on your first roll!":gosub100:b=b+q:r=0:goto30
61 o=f+g:print"go for:";o:fort=1to1000:nextt:print"press space to stop spinq"
62 r=1:f=int(rnd(0)*6)+1:g=int(rnd(0)*6)+1
63 print"‘dice:";f" ";g
64 getd$:ifd$=""thengoto62
65 ifd$="q"thengoto600
66 print"“":goto35
80 iff=6andg=1thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
81 iff=1andg=6thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
82 iff=5andg=2thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
83 iff=2andg=5thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
84 iff=3andg=4thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
85 iff=4andg=3thenb$(1)="a 7 is bad!":gosub100:r=0:b=b-q:goto30
87 iff+g=othenb$(1)="you have a match":gosub100:r=0:b=b+q:goto30
88 b$(1)="let's go!":gosub100:fort=1to500:nextt:print
89 f=int(rnd(0)*6)+1:g=int(rnd(0)*6)+1
90 print"‘dice:";f" ";g
91 getd$:ifd$=""thengoto62
92 ifd$="q"thengoto600
93 print"“":goto35
100 fort=0tolen(b$(1))+1:fory=1to100:nexty:printleft$(b$(1),t)"‘":nextt:print
101 return
200 b$(1)="you retired.you moved to the suburbs -":gosub100
201 b$(1)="and play card with friends trying to -":gosub100
202 b$(1)="get the money you lost rhere!!!!":gosub100
203 b$(1)="ha!ha!ha!ha!":gosub100:gosub100:goto1000
300 print"press space to stop rollq"
301 f=int(rnd(0)*6)+1:g=int(rnd(0)*6)+1
302 print"‘dice:";f" ";g
303 getd$:ifd$=""thengoto301
304 ifd$="q"thengoto600
305 print"“":goto36
600 ifb<200thengoto200
601 ifb=>200andb<500thengoto700
602 ifb=>500andb<1000thengoto800
603 ifb=>1000andb<1500thengoto900
604 ifb=>1500andb<2000thengoto950
605 ifb=>2000thengoto980
606 ifb=200thenb$(1)="your lucky you quit because you know -":gosub100
607 b$(1)="i would have beaten you!!!":gosub100:goto1000
700 b$(1)="you got a job as a clerk in californ -":gosub100
701 b$(1)="-ia in sears.you make $15.20 an hour.":gosub100
702 b$(1)="i make $0.00 an hour!i am still gaml -":gosub100
703 b$(1)="-ing.i win every once in a while.":gosub100
704 goto1000
800 b$(1)="you are the house at a casino in las -":gosub100
801 b$(1)="-vegas.you lost $200 which leaves you-":gosub100
803 b$(1)="with 800 or more!i live in hawaii on -":gosub100
804 b$(1)="somebodies cabnet with a tv.":gosub100
805 goto1000
900 b$(1)="you bought a farm in montana but bec -":gosub100
901 b$(1)="-ause of a drought,you lost $1500!":gosub100
902 b$(1)="i am sitting in louisiana typing this-":gosub100
903 b$(1)="garbage onto your screen.turn me off!":gosub100:goto1000
950 b$(1)="you got robbed and stock went down an-":gosub100
951 b$(1)="d there was a cut in your payment.do -":gosub100
952 b$(1)="you want to try again?ha!ha!you los-":gosub100
953 b$(1)="t more than me!ha!ha!ha!ha!and you qu-":gosub100
954 b$(1)="it!ha!ha!ha!ha!i bet you feel like a -":gosub100
955 b$(1)="heel!!!!!ha!ha!ha!ha!!!":gosub100:goto1000
980 b$(1)="you won a lottery of $100,000 and got ":gosub100
981 b$(1)="a raise.you are living in style!me,i'm":gosub100
982 b$(1)="in the city.i have a part time job as a":gosub100
983 b$(1)="waiter.i make $10.00 an hour.i am liv-":gosub100
984 b$(1)="ing ok!i have one question to ask you.":gosub100
985 b$(1)="why did you quit?what?because you did-":gosub100
986 b$(1)="'nt want to lose all that money?what a":gosub100
987 b$(1)="poor answer!":gosub100:goto1000
1000 print"restart?";
1001 geta$:ifa$=""thengoto1001
1002 ifa$="y"ora$="n"thengoto1005
1004 goto1001
1005 printa$
1006 ifa$="n"thenend
1007 fort=1to199:next:run
