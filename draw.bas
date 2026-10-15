10 poke53280,0:poke53281,0:print"“qplease wait..."
100 print"“e     hi-res draw    by:futuresoft":jj=3:vb=0
105 print"     £££££££££££    £££££££££££££":jj=3:vb=0
110 sr=54278:wf=54276:poke53281,0:poke53280,0:qa=198
130 print"1.use cursor to move mark.":print"2.press [1] to draw."
131 print"3.press [2] to stop drawing."
132 print"4.press [+/-] to change color of screen."
133 print"‘5.press [c] to clear screen."
135 print"6.press [3] to start record & save to":print"disk."
136 print"7.press [4] to stop record.":print"8.press [5] to load screen."
160 print"qpress space"
170 n2=2:n3=320:n7=7:n8=8:bm=8192:n5=53265
240 restore:fori=820to848:readz:pokei,z:nexti
250 fori=896to959:readz:pokei,z:nexti:poke2040,14
260 pokeqa,0:waitqa,1:print"“"
270 sys820:poken5,peek(n5)or32:poke53269,1
280 poke53287,0:poke53248,0:poke53249,0:n=0
290 poke53272,peek(53272)or8:rem bitmap
300 y=90:x=150:gosub540
315 fori=1024to2023:pokei,jj:nexti
316 ifjj<1thenjj=15:goto315
317 ifjj>15thenjj=1:goto315
320 getz$:ifz$=""then320
330 ifz$="q"theny=y+1:gosub540:ify>199theny=0
340 ifz$="‘"theny=y-1:gosub540:ify<0theny=199
350 ifz$="]"thenx=x+1:gosub540:ifx>319thenx=0
351 ifz$="c"thennn=0:rc=0:sys820
360 ifz$=""thenx=x-1:gosub540:ifx<0thenx=319
361 ifz$="+"thenjj=jj+1:goto315
362 ifz$="-"thenjj=jj-1:goto315
363 ifz$="5"thengoto800
365 ifz$="1"thenvb=1:goto320
366 ifz$="2"thenvb=0:goto320
367 ifz$="3"andrc=0thenrc=1:gosub700
368 ifz$="4"andrc=1thenrc=0:i=0:goto730
369 ifvb=1thengosub510:ifrc=1thengosub725
370 goto320
430 gosub510:poke1024,3:goto460
510 ch=int(x/n8):rw=int(y/n8):ln=yandn7
520 by=bm+rw*n3+ch*n8+ln:bi=n7-(n7andx)
530 pokeby,peek(by)or(n2^bi):return
540 sx=x+12:sy=y+40
550 poke53248,sxand255:ifsx>255thenpoke53264,1
560 ifsx<256thenpoke53264,0
570 poke53249,sy:return
580 data169,0,162,32,160,0,140,62,3,141,0,32,200,192,0,208,245,232
590 data142,63,3,224,64,208,237,96,96,96,0,0,0,0,0,0,0,0,0,0,0,8,0,0,8,0,0,8,0
600 data0,8,0,0,28,0,0,8,0,0,65,0,15,227,240,0,65,0,0,8,0,0,28,0,0,8,0,0,8,0
610 data0,8,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
700 print"s                                       "
701 print"’                                      "
702 print"’                                      "
703 print"’saving picturee                        "
710 cr$=chr$(13):open15,8,15:i=0:gosub1000
720 open2,8,2,"@0:"+pr$+",s,w":return
725 x1=x:y1=y:print#2,x1;cr$;y1:y1=0:x1=0
726 return
730 close15:close2
731 goto831
800 print"s                                       "
801 print"’                                      "
802 print"’                                      "
803 print"’loading picturee                     "
810 gosub1000
820 open2,8,2,"0:"+pr$+",s,r":i=0
825 input#2,x1,y1:x=x1:y=y1:gosub510:x1=0:y1=0
828 ifst=0thengoto825
830 close2:nn=i:i=0
831 print"szz     e   x   x  ffff  d "
832 print"’z z   e e  xx  x  f     d "
833 print"’z  z e   e x x x  ffff  d "
834 print"’z z   e e  x  xx  f       "
835 print"’zz     e   x   x  ffff  d "
836 fori=1to100:nexti
900 fori=1024to1263:pokei,jj:nexti:gosub540:goto320
1000 poken5,27:poke53272,21:print"s                                        "
1001 poke53280,1:poke53281,1:input"sfilename";pr$:ifpr$=""thengoto1001
1002 iflen(pr$)>16thenpr$=left$(pr$,16)
1003 fort=1024to1223:poket,jj:nextt
1004 poken5,peek(n5)or32:poke53272,peek(53272)or8
1005 poke646,1:poke53280,0:poke53281,0:return
