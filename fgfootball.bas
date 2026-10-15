5 print"“q]":poke53280,0:poke53281,14:poke820,0:poke821,0:rg=58:poke822,0
6 print"           morten anderson's"
7 print"q          field goal football"
8 print"s              futuresoft"
9 print"              ££££££££££qqqqqq"
10 fori=0to46:reada:poke828+i,a:ck=ck+a:next
20 ifck<>6871thenprint"error in first 5 data lines":end
30 sys828
64 fori=11272to11511:reada:pokei,a:next:rem"rvs+(a-z)"
70 poke157,128:poke53272,(peek(53272)and240)or10:goto500
80 data120,165,1,41,251,133,1,169,0,133
90 data251,133,253,169,40,133,252,169,208,133
100 data254,162,8,160,0,177,253,145,251,136
110 data208,249,230,252,230,254,202,208,240,165
120 data1,9,4,133,1,88,96:rem hi-res.
200 rem hi-res. characters
282 data0,60,126,219,126,60,0,0:rem"rvs+a:a"
284 data8,28,54,62,62,54,28,8:rem"rvs+b:b"
290 data0,120,92,126,126,58,30,0:rem"rvs+c:c"
300 data0,30,58,126,126,92,120,0:rem"rvs+d:d"
310 data24,24,80,56,20,16,40,68:rem"rvs+e:e"
330 data24,24,20,56,80,16,16,24:rem"rvs+f:f"
340 data24,24,84,56,18,30,16,24:rem"rvs+g:g"
350 data0,0,128,127,104,120,96,96:rem"rvs+h:h"
355 data0,1,35,95,255,127,0,0:rem"rvs+i:	"
357 data255,129,129,129,129,129,129,255:rem"rvs+j"
360 data255,129,129,129,129,129,129,255:rem"rvs+k"
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
500 poke53269,128:poke2047,192
502 forn=0to62:readq:poke12288+n,q
504 nextn:poke53277,255:poke53294,15
509 rem sprite data
510 data0,0,0
511 data0,0,0
512 data0,0,0
513 data255,255,252
514 data0,0,0
515 data1,212,0
516 data10,149,128
517 data234,149,92
518 data138,149,144
519 data234,157,92
520 data142,1,80
521 data128,0,28
522 data0,238,0
523 data14,168,224
524 data8,174,64
525 data14,168,64
526 data2,232,64
527 data14,0,64
528 data0,0,0
529 data255,255,252
530 data0,0,0
531 rem end sprite data
539 goto544
540 poke53262,150:poke53263,150:print"abcdefghijklmnopqrstuvwxyz"
541 print"rabcdefghijklmnopqrstuvwxyz"
544 poke53262,0:poke53263,0:a$="rb":t=0:y=0:goto600
549 poke214,y::print:printspc(t)" "
550 t=t+ll:ifa$="ra"thena$="rd":goto554
551 ifa$="rd"thena$="rb":goto554
552 ifa$="rb"thena$="rc":goto554
553 ifa$="rc"thena$="ra"
554 m=0:ift>l1thenmm=1
555 ift>l1+6thenmm=2
556 ift>38thenm=0:goto570
557 ifmm=0theny=y-rr:ify<18andvb=0thenvb=1:poke214,19:print:printspc(6)"rg"
558 ifmm=2theny=y+rr
560 ift>(rg-30)andy<19thengd=1:gosub700
561 ify<0thengoto550
562 ify>19andt>9thengoto570
564 poke214,yy:print:printspc(tt)" "
565 poke214,y:print:printspc(t)a$:yy=y:tt=t:goto550
570 poke214,yy:print:printspc(tt)" "
571 poke214,y::print:printspc(t-1)"ra":goto650
600 poke214,20:print:print"‘££££££££££P££££P££££P££££P££££P££££P£££":goto900
601 ifpeek(822)=0theninput"sqqqqqq           range of f.goal";rg:poke822,rg
602 rg=peek(822):ifrg<20orrg>70thengoto601
603 rg=(rg/2):rg=rg+30:poke214,17:print:printspc(rg-30)"´ª"
604 poke214,18:print:printspc(rg-30)"Lº"
605 poke214,19:print:printspc(rg-29)"µ"
606 poke214,19:print:printspc(2)"rf"spc(3)"r•b":q$="re":y=20:rr=1:ll=.5:l1=10
607 gosub800:fort=2to5:ifq$="re"thenq$="rf":goto609
609 ifq$="rf"thenq$="re"
610 fori=1to90:nexti
611 poke214,19:print:printspc(t)"’ "q$:nextt
612 q$="rg•":poke214,19:print:printspc(t)q$
613 l1=int(rnd(0)*10)+10:ll=rnd(0)*1:rr=rnd(0)*1:ifrr<.1orll<.2thengoto613
614 ifrr>.7orll>.7thengoto613
615 t=6:goto550
650 print"s                                   ":md=peek(820):ch=peek(821)
651 qq=int(t*2):qq=qq-3:ifqq<rgandgd=1thenqq=int(peek(822))
652 print"s";qq;" yard kick":ch=ch+1:poke821,ch
653 fort=1to8:print"                                      ":nextt:print"s"
655 if gd=1thenprint"qit's good!                            ":md=md+1:poke820,md
656 print"qkicks made:";md;"  kick tried:";ch;"                 ":ifch>9thenad=1
657 ifad=1thenad=0:poke820,0:poke821,0:print"game over":fort=1to999:nextt:run
660 fort=1to1700:nextt:print"“":clr:goto544
700 poke214,17:print:printspc(rg-30)"´ª"
703 poke214,18:print:printspc(rg-30)"Lº"
704 poke214,19:print:printspc(rg-29)"µ"
705 return
800 print"spress 'k' to kick"
801 getn$:ifn$<>"k"thengoto801
802 return
900 poke214,21:print:print"         20   30   40   50   60   70   ":goto601
