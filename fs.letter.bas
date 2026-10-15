1 vb=10239
2 ifaz=1thenaz=0:print"qdone!":goto1010
5 ifpeek(827)<>10thenpoke827,0
6 ifpeek(827)=10thengoto16
10 fori=0to46:reada:poke828+i,a:ck=ck+a:next:sys828:poke827,10
15 ifck<>6871thenprint"error in first 5 data lines":end
16 poke53280,0:poke53281,0:print"“"
70 poke157,128:poke53272,(peek(53272)and240)or10:goto550
75 rem
76 fort=0to255:poke1024+t,t:nextt
77 print"qqqqqqdone!"
78 goto1010
80 data120,165,1,41,251,133,1,169,0,133
90 data251,133,253,169,40,133,252,169,208,133
100 data254,162,8,160,0,177,253,145,251,136
110 data208,249,230,252,230,254,202,208,240,165
120 data1,9,4,133,1,88,96:rem hi-res.
550 goto1000
551 gh=1183:print"“place letter for change+press return":y=1:x=1:gosub12000
553 lt=(8*lt)
554 fort=1to8:fk=peek(lt+(vb+t)):gosub7000:fory=1to8:poke((gh+y)+(40*t)),x(y)
555 nexty:nextt:y=1
556 poke214,2:print:print"12345678_x":print"CCCCCCCC®yMN"
557 fort=1to8:print"]]]]]]]]B";t;"/rg#          ";peek(lt+(vb+t)):nextt
559 poke214,12:print:print"CCCCCCCC½":print"12345678"
560 poke214,14:print:print"menu:":print"[crsr keys]-move cursor"
561 print"[return]-draw/erase dot":print"[^]-rvs on/off":print"[_]-exit"
562 print"[\]-erase letter":goto6000
563 ifx=0andy=0thenclr:goto550
569 pg=160:pp=peek(lt+(vb+y))
570 ifx=1thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-128:f=160
571 ifx=1andf=32thenpp=pp+128
572 ifx=2thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-64:f=160
573 ifx=2andf=32thenpp=pp+64
574 ifx=3thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-32:f=160
575 ifx=3andf=32thenpp=pp+32
576 ifx=4thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-16:f=160
577 ifx=4andf=32thenpp=pp+16
578 ifx=5thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-8:f=160
579 ifx=5andf=32thenpp=pp+8
580 ifx=6thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-4:f=160
581 ifx=6andf=32thenpp=pp+4
582 ifx=7thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-2:f=160
583 ifx=7andf=32thenpp=pp+2
584 ifx=8thenf=peek((gh+x)+(40*y)):iff=160thenpp=pp-1:f=160
585 ifx=8andf=32thenpp=pp+1
586 pg=160:iff=160thenpg=32
587 poke((gh+x)+(40*y)),pg
590 poke(lt+(vb+y)),pp
600 goto556
700 gh=1183:input"“qplace letter for reg. #";u$
702 ifu$<"a"oru$>"_"thengoto700
703 lt=asc(u$)-64:lt=(8*lt)
707 fort=1to8:printt".rg#";peek(lt+(vb+t)):nextt
709 goto1010
1000 print"“           letter maker 2000"
1001 print"             by:futuresoft"
1005 print"qqchoose:":print"1.make letter change":print"2.see all letters"
1006 print"3.save letter chg":print"4.load letter chg"
1007 print"5.erase all letters":print"6.reset original letters"
1008 print"7.rvs all letters":print"8.copy letter"
1009 print"9.quit"
1010 geta$:ifa$=""thengoto1010
1012 ifa$="1"thengoto551
1014 ifa$="2"thenprint"“":goto75
1016 ifa$="3"thengoto2300
1017 ifa$="4"thengoto3000
1018 ifa$="5"thengoto9000
1019 ifa$="9"thenend
1020 ifa$="6"thensys828:print"qdone!":goto1010
1021 ifa$="7"thengoto10000
1022 ifa$="8"thengoto10500
1030 goto1000
2300 input"“qqsave filename";na$:ifna$=""thengoto550
2340 open15,8,15:open8,8,8,"0:"+na$+",p,w":print#8,chr$(255)chr$(39);
2350 fori=10239to12288:input#15,e1$,e2$
2360 ife1$="00"thenprint#8,chr$(peek(i));:next
2370 printe1$,e2$:fori=0to1000:nexti:close8:close15:print"done!":goto1010
3000 input"“qqload filename";na$:ifna$=""thengoto550
3010 az=1:loadna$,8,1
3020 goto1010
4000 gh=1183
4007 fort=1to8:a=peek(lt+(vb+t)):cd=(255-a):poke(lt+(vb+t)),cd:nextt
4009 return
6000 f=peek((gh+x)+(40*y)):jj=32
6001 iff=32thenjj=160
6002 ifx<1thenx=1
6003 ify<1theny=1
6005 poke((gh+x)+(40*y)),jj:poke((gh+x)+(40*y)),f
6010 getx$:ifx$="‘"theny=y-1:ify<1theny=1
6012 ifx$="q"theny=y+1:ify>8theny=8
6014 ifx$=""thenx=x-1:ifx<1thenx=1
6016 ifx$="]"thenx=x+1:ifx>8thenx=8
6017 ifx$="_"thengoto550
6018 ifx$="^"thengosub4000:goto554
6019 ifx$="\"thengoto9010
6020 ifx$=chr$(13)thengoto563
6025 goto6000
7000 iffk=0thenforo=1to8:x(o)=32:nexto:return
7001 foro=1to8:x(o)=32:nexto
7003 iffk/2<>int(fk/2)orfk=1thenx(8)=1:rem(1)
7004 if(fk*2)>255thenx(1)=1:rem(128)
7021 p=int(fk/16):ifp/2<>int(p/2)orfk=16thenx(4)=1
7023 p=0
7024 p=int(fk/8):ifp/2<>int(p/2)orfk=8thenx(5)=1
7025 p=0
7031 p=int(fk/32):ifp/2<>int(p/2)orfk=32thenx(3)=1
7033 p=0
7034 p=int(fk/64):ifp/2<>int(p/2)orfk=64thenx(2)=1
7035 p=0
7041 p=int(fk/2):ifp/2<>int(p/2)orfk=2thenx(7)=1
7043 p=0
7044 p=int(fk/4):ifp/2<>int(p/2)orfk=4thenx(6)=1
7045 p=0
7046 foro=1to8:ifx(o)=1thenx(o)=160
7047 nexto
7050 return
9000 fort=vbto12288:poket,0:nextt:print"qdone!"
9001 goto1010
9010 fort=1to8:poke(lt+(vb+t)),0:nextt:goto554
10000 print"“":fort=0to255:poke1024+t,t:nextt
10005 fort=vbto12288:wl=peek(t):wl=(255-wl):poket,wl:nextt
10010 print:print"done!":goto1010
10500 rem
10551 gh=1183:print"“place letter to copy+return":y=1:x=1:gosub12000
10553 lt=(8*lt):l1=lt
10555 print"splace letter to be copied to+return":gosub12000
10557 lt=(8*lt):l2=lt
10560 fort=1to8:fk=peek(l1+(vb+t)):poke(l2+(vb+t)),fk:nextt
10561 print"qdone!":goto1010
12000 getu$:ifu$=""thengoto12000
12002 ifasc(u$)=18thenqw=1
12003 ifasc(u$)=146thenqw=0
12007 ifqw=0thenprint"sq";u$
12008 ifqw=1thenprint"sqr";u$
12009 lt=peek(1064)
12019 ifu$=chr$(13)thenreturn
12020 goto12000
