1 print"“qqq            homerun derby":fr$(1)="rk":fr$(2)="rj"
2 print"q            by:futuresoftqq":poke53280,6:poke53281,6
3 print"press 'p' to pitch and then 's' to hit.q"
4 print" the object is to hit as many homeruns":print"in 10 tries.but there is";
5 print" wind that is detected by the flag on the wall. timing of the swing ";
6 print"also affects the chances of a homerun. programming by:corey badeaux"
7 sd=54272:fort=sdtosd+24:poket,0:nextt:pokesd+24,15:pokesd+2,255:pokesd+5,9
8 pokesd+6,255
10 fori=0to46:reada:poke828+i,a:ck=ck+a:next
20 ifck<>6871thenprint"error in first 5 data lines":end
30 sys828
64 fori=11272to11511:reada:pokei,a:next:rem"rvs+(a-z)"
70 poke157,128:poke53272,(peek(53272)and240)or10:print"qqq"
71 print"           -=*hit a key*=-"
72 print"‘";:poke646,(peek(646)+1)and15
78 geta$:ifa$=""then71
79 print"“šplay ball!"
80 data120,165,1,41,251,133,1,169,0,133
90 data251,133,253,169,40,133,252,169,208,133
100 data254,162,8,160,0,177,253,145,251,136
110 data208,249,230,252,230,254,202,208,240,165
120 data1,9,4,133,1,88,96:rem hi-res.
200 rem hi-res. characters
282 data24,88,80,112,48,48,40,68:rem"rvs+a:a"
284 data24,24,144,112,48,48,40,68:rem"rvs+b:b"
290 data24,24,16,240,48,48,40,68:rem"rvs+c:c"
300 data24,24,16,48,48,48,40,68:rem"rvs+d:d"
310 data24,24,16,48,56,48,40,68:rem"rvs+e:e"
330 data24,24,16,48,60,48,40,68:rem"rvs+f:f"
340 data24,24,18,60,48,48,40,68:rem"rvs+g:g"
350 data24,24,8,24,24,24,36,36:rem"rvs+h:h"
355 data24,152,72,56,24,24,36,36:rem"rvs+i:	"
357 data0,30,30,30,2,2,2,2:rem"rvs+j"
360 data0,120,120,120,64,64,64,64:rem"rvs+k"
365 data255,129,129,129,129,129,129,255:rem"rvs+l"
370 data255,129,129,129,129,129,129,255:rem"rvs+m"
375 data255,129,129,129,129,129,129,255:rem"rvs+n"
377 data24,36,60,60,126,255,102,0:rem"rvs+o"
380 data0,0,1,254,22,30,6,6:rem"rvs+p"
383 data0,0,128,127,104,120,96,96:rem"rvs+q"
385 data0,1,35,95,255,127,0,0:rem"rvs+r"
387 data0,1,35,95,255,127,0,0:rem"rvs+s"
390 data255,129,129,129,129,129,129,255:rem"rvs+t"
395 data255,129,129,129,129,129,129,255:rem"rvs+u"
397 data24,36,60,60,126,255,102,0:rem"rvs+v"
400 data0,0,1,254,22,30,6,6:rem"rvs+w"
413 data255,129,129,129,129,129,129,255:rem"rvs+x"
415 data255,16,16,16,16,16,16,255:rem"rvs+y"
416 data255,255,255,255,255,255,255,255:rem"rvs+z"
420 data255,16,255,16,255,16,255,16:rem"rvs+["
422 data255,16,255,16,255,16,255,16:rem"rvs+\"
424 data255,16,255,16,255,16,255,16:rem"rvs+]"
425 data255,16,16,16,255,16,16,16:rem"rvs+^"
500 a$(1)="ra":a$(2)="rb":a$(3)="rc"
501 a$(4)="rd":a$(5)="re":a$(6)="rf":a$(7)="rg":gosub2000
502 poke214,16:print:print"‘££££££££££££££££££££££££££££££££££££££š":gosub700
505 d=1:t=1:goto511
510 fort=1to7:zz=zz-1:poke53262,zz
511 poke214,15:print:printspc(3);a$(t):ifd=1thend=0:goto519
512 ift=4thenpo=zz:ifpo>38andpo<43thengoto900
513 nextt
515 goto520
518 ifzz<22thengoto990
519 poke214,15:print:printspc(3);a$(1);spc(9);"rh":ifpi=1thengoto800
520 getq$:ifq$=""thengoto518
521 ifch=10thenrun
522 ifpi=1andq$="s"thens=1:goto510
523 ifq$="p"andpi=0thengoto600
524 ifzz<2thengoto990
599 goto519
600 poke214,15:print:printspc(13);"ri"
602 poke53263,170:forzz=115to65step-1:poke53262,zz:nextzz:pi=1
603 gosub4000
650 fort=1to1:goto512
700 poke53269,128:poke2047,192:forn=0to62:readq:poke12288+n,q:nextn
701 data0,0,0
702 data0,0,0
703 data0,0,0
704 data0,0,0
705 data0,0,0
706 data0,0,0
707 data0,0,0
708 data0,0,0
709 data0,0,0
710 data0,0,0
711 data0,24,0
712 data0,24,0
713 data0,0,0
714 data0,0,0
715 data0,0,0
716 data0,0,0
717 data0,0,0
718 data0,0,0
719 data0,0,0
720 data0,0,0
721 data0,0,0
730 return
800 ifs=0thenzz=zz-2:poke53262,zz:goto520
801 ifs=1thenpi=0:zz=0:s=0:poke53262,zz
802 goto519
900 pokesd+24,15:ifpo=39orpo=42thena=int(rnd(0)*2)+1:s=int(rnd(0)*2)+1
901 ifpo=40orpo=41thena=int(rnd(0)*3)+1:s=int(rnd(0)*3)+1
902 sz=int(rnd(0)*9)+1:sz=sz*.1:s=s+sz:az=int(rnd(0)*9)+1:az=az*.1:a=a+az
903 s=s-1:x=peek(53262):po=peek(53263):pokesd+4,65:ch=ch+1:ifww=1thens=s+2
905 fort=1to30:po=po-a:x=x+s:poke53262,x:poke53263,po:fory=1to15:nexty
906 pokesd+1,255-po:nextt
907 fort=1to5:x=x+s:po=po-az:poke53262,x:poke53263,po:fory=1to15:nexty:nextt
908 fort=1to10:x=x+s:poke53262,x:poke53263,po:fory=1to15:nexty
909 ifx>248thengoto919
910 nextt
911 fort=1to5:po=po+az:x=x+s:poke53262,x:poke53263,po:fory=1to15:nexty
912 ifx>248thengoto919
914 nextt
915 fort=1to30:po=po+a:x=x+s:poke53262,x:poke53263,po:fory=1to15:nexty
916 pokesd+1,255-po
917 ifx>38andx<45andpo>167thenll=0:x=0:gosub4100
918 ifx<249thennextt:pokesd+24,0:poke214,15:print:printspc(23);"ri":po=int(po)
919 ifx>248andpo<159thenprint"s"spc(14)"homerun!        ":hr=1:gosub3000:goto921
920 pokesd+24,0:print"s"spc(9)"q"int(x*2)-89"foot pop up!    ":goto4200
921 ifhr=1thenprint"s"spc(9)"q"int((x*2)+65-po)"foot homerun!":hr=0:hn=hn+1
922 print"s                                   "
925 poke214,4:print:print"              chances:";ch
926 poke214,5:print:print"              homeruns:";hn
990 x=0:po=0:pi=0:d=0:s=0:zz=0:z=0:goto519:ll=50
999 z=150:x=150
1000 geta$:ifa$="q"thenz=z+1
1001 ifa$="‘"thenz=z-1
1002 ifa$=""thenx=x-1
1003 ifa$="]"thenx=x+1
1004 ifa$=""thengoto1000
1005 print"s                ":print"sud-";z;"  lr-";x
1006 poke53262,x:poke53263,z
1007 goto1000
2000 poke214,13:print:printspc(30);"rj"
2001 poke214,14:print:printspc(30);"r§"
2002 poke214,15:print:printspc(30);"r§"
2003 poke214,15:print:printspc(23);"rh"
2008 return
3000 pokesd+24,0:fort=1to300:nextt:pokesd+1,16:pokesd,101:pokesd+24,15
3001 fort=1to200:nextt
3002 pokesd+1,24:pokesd,146:fort=1to200:nextt
3003 pokesd+1,20:pokesd,169:fort=1to200:nextt
3004 pokesd+1,32:pokesd,204
3100 fort=1to300:nextt:pokesd+24,0:return
4000 ww=int(rnd(0)*2)+1
4001 poke214,13:print:printspc(30);fr$(ww)
4002 return
4100 poke214,15:print:printspc(3);"¯":pokesd+24,0:poke53263,174:po=int(po)
4101 df=int(rnd(0)*3)+1
4102 ifdf=1thenprint"s                 ouch!"
4103 ifdf=2thenprint"s             that hurts!"
4104 ifdf=3thenprint"s              damn ball!"
4110 fort=1to1100:nextt:goto921
4200 ifx<130orx>205thengoto4205
4201 fort=199to120step-1:poke53262,t:nextt
4205 poke214,15:print:printspc(23);"rh"
4206 goto921
