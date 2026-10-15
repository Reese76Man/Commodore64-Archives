0 poke53280,0:poke53281,0:print"“"
1 print"“             disk chompers":print"qš             by:futuresoft":gosub14
2 print"1.copy trk. & sect.":print"2.review blocks":print"3.directory"
3 print"4.prg. review":print"5.dos commands":print"6.error checker"
4 print"7.disk & i.d. change":print"8.copy prg."
5 geta$:ifa$="8"then2000
6 ifa$="1"thengoto18
7 ifa$="2"thengoto100
8 ifa$="3"thengoto500
9 ifa$="4"thengoto590
10 ifa$="5"thengoto649
11 ifa$="6"thengoto800
12 ifa$="7"thengoto1000
13 goto5
14 print"qqqqchoose:":return
15 goto5
18 print"“copy trk.&sect."
19 mb=7936:print"source:  ";:input"track";t:input"sector";s
20 print"destination:  ";:input"track";tt:input"sector";ss
29 open15,8,15:open5,8,5,"#"
30 print#15,"u1";5;0;t;s:print"qreading....";
40 fori=mbtomb+255
50 get#5,a$:ifa$=""thena$=chr$(0)
60 pokei,asc(a$)
70 nexti:close5:close15:print"done!"
80 print"qinsert backup disk":mb=7936
81 geta$:ifa$=""thengoto81
82 open15,8,15:open5,8,5,"#"
85 print#15,"u2";5;0;tt;ss:print"writing.....";
86 fori=mbtomb+255:q=peek(i):r$=chr$(q)
89 print#5,r$:nexti:close5:close15:print"done!"
90 print"want to r-w disk again?"
91 geta$:ifa$=""thengoto91
92 ifa$<>"y"thenrun
93 clr:goto18
100 print"“read&review blocks"
110 mb=7936:input"track";t:input"sector";s
120 open15,8,15:open5,8,5,"#"
130 print#15,"b-r";5;0;t;s:print"qreading....";
140 fori=mbtomb+255
150 get#5,a$:ifa$=""thena$=chr$(0)
160 pokei,asc(a$):nexti
170 close5:close15:print"reviewing"
180 print"“":fori=mbtomb+255:printchr$(peek(i));:nexti
190 print"qwant review again?"
191 geta$:ifa$=""thengoto191
192 ifa$<>"y"thenrun
193 clr:goto100
200 print"choose:":print"1.copy one trk.&sect. only"
201 print"2.copy whole trk."
202 geta$:ifa$="1"thengoto19
203 ifa$=""thengoto202
210 mb=7936:input"track";t
211 ift>0andt<18thenpp=20
212 ift>17andt<25thenpp=18
213 ift>24andt<31thenpp=17
214 ift>30andt<36thenpp=16
220 fors=0topp:open15,8,15:open5,8,5,"#"
230 print#15,"u1";5;0;t;s:print"qreading...."
240 fori=mbtomb+255
250 get#5,a$:ifa$=""thena$=chr$(0)
260 pokei,asc(a$)
270 nexti:close5:close15
280 print"qinsert backup disk":mb=7936
281 geta$:ifa$=""thengoto281
282 open15,8,15:open5,8,5,"#"
285 print#15,"u2";5;0;t;s:print"writing....."
286 fori=mbtomb+255:q=peek(i):r$=chr$(q)
289 print#5,r$:next:close5:close15
290 print"insert source disk"
291 geta$:ifa$=""thengoto291
292 nexts:print"done!":goto90
500 open1,8,0,":*":print"“r";
501 get#1,b$:ifst<>0thengoto504
503 printb$;:goto501
504 close1:print"qpress space"
505 geta$:ifa$=""thengoto505
506 run
590 print"“prg. review"
591 input"filename";w$
600 mb=7936:open1,8,0,w$:print"“";:nb=mb
601 get#1,b$:ifst<>0thenprint"error":goto604
602 ifb$<>chr$(34)then603
603 printb$;:fori=1to40:get#1,b$:printb$;:nexti:print:ifst=0thengoto601
604 close1:print"qpress space"
605 geta$:ifa$=""thengoto605
606 run
649 print"“qqdos commands":print"qqchoose:"
650 print"1.format disk":print"2.rename prg"
651 print"3.validate disk":print"4.scratch":print"5.quit"
655 geta$:ifa$=""then655
656 ifa$="1"thengoto665
657 ifa$="2"thenprint"“rename prg.":goto695
658 ifa$="3"thengoto700
659 ifa$="4"thengoto705
660 ifa$="5"thenrun
664 goto655
665 print"“format diskq":print"if disk has been formated already,then"
666 print"the disk will be formated faster than ";:print"if it hasn't been ";
667 print"formated!!q":input"has disk been formated(y/n)";a$
668 ifa$="n"thengoto675
669 ifa$<>"y"thengoto665
670 input"id.1";q$:print"formatting":open15,8,15,"n0:"+q$+"":close15
671 print"finished!":goto690
675 input"id.1";q$:input"id.2";w$
676 iflen(w$)<>2thengoto675
677 print"formatting":open15,8,15,"n0:"+q$+","+w$+"":close15
678 print"finished!":goto690
690 print"qpress space"
691 geta$:ifa$=""thengoto691
692 run
695 input"new name";q$:input"old name";w$
696 open15,8,15,"r0:"+q$+"="+w$+"":close15
697 goto690
700 print"insert disk"
701 geta$:ifa$=""thengoto701
702 open15,8,15:print#15,"v0":close15:goto690
705 print"“scratch files"
706 input"file to scracth";q$
707 open1,8,15,"s0:"+q$+"":close1:goto690
800 print"“error checker"
801 input"check whole disk(y/n)";q$
802 ifq$="n"thengoto820
803 ifq$<>"y"thengoto801
804 open15,8,15:open5,8,5,"#":fort=1to35
805 ift>0andt<18thenpp=20
806 ift>17andt<25thenpp=18
807 ift>24andt<31thenpp=17
808 ift>30andt<36thenpp=16
810 fors=0topp:print#15,"u1";5;0;t;s
812 input#15,en,em$,et,es:ifen>0thenprint"error on track:";et:nextt
813 nexts:nextt:close15:close5:goto690
820 input"qwhich track:";t:open15,8,15:open5,8,5,"#"
825 ift>0andt<18thenpp=20
826 ift>17andt<25thenpp=18
827 ift>24andt<31thenpp=17
828 ift>30andt<36thenpp=16
830 fors=0topp:print#15,"u1";5;0;t;s
832 input#15,en:ifen>0thenprint"error on trk.:";t;"sect.:";s:goto835
833 nexts:close15:close5:goto690
835 close15:close5:goto690
1000 print"“qqdisk name & i.d. changeq"
1005 input"new disk name";dn$:input "new disk i.d.";id$
1010 if len(dn$)<16 then dn$=dn$+chr$(160):goto 1010
1015 if len(id$)<2 then id$=id$+chr$(160):goto 1015
1020 if len(dn$) > 16 then dn$=left$(dn$,16)
1025 if len(id$) > 2 then id$=left$(id$,2)
1030 open 15,8,15,"i"
1040 open 8,8,8,"#"
1050 print#15, "u1:"8;0;18;0
1060 print#15, "b-p:"8;144
1070 print#8, dn$;
1075 print#15, "b-p:"8;162
1078 print#8, id$;
1080 print#15,"u2:"8;0;18;0
1090 close 8
1095 print#15,"i"
1100 close15
1110 goto690
2000 rem copy prg.
2590 clr:print"“insert source":dimcc$(7000)
2591 input"filename";w$
2600 open1,8,0,w$:print"reading ";w$
2601 get#1,b$:ifst<>0andst<>64thenprint"file not found!":end
2602 zx=zx+1:cc$(zx)=b$:ifcc$(6999)<>""thenprint"prg. too big!":end
2603 get#1,b$:ifst=0thengoto2601
2604 print"qinsert dest.":qr=zx
2605 geta$:ifa$=""thengoto2605
2606 print"copying ";w$:zx=1
2611 print#1,cc$(zx);chr$(13):ifst<>0andst<>64thengosub3000
2612 zx=zx+1:ifzx>qrthengoto2614
2613 print#1,cc$(zx);chr$(13):zx=zx+1:goto2611
2614 close1:print"qcopy complete"
3000 open15,8,15:input#15,en,em$,et,es
3001 printen,em$,et,es:close15:return
4000 open2,8,2,"@0:yo!,s,w"
4001 a$="yo!dude!":b=len(a$)
4002 print#2,a$;chr$(13);b
4003 close2
