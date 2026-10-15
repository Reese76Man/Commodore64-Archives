0 poke53281,0:poke53280,0
10 print"š“"spc(15)"hangman":l=0
11 printspc(12)"by:futuresoft":l=0:goto50
14 ifl=5thenprint"good for you!                         ":goto70
15 poke214,15:print:print"-----:wrong letters:";k
16 input"qpick a letter";l$:gosub26
17 ifl$=a$(1)thenpoke214,14:print:printa$(1):l=l+1:a$(1)="":goto14
18 ifl$=a$(2)thenpoke214,14:print:printspc(1)a$(2):l=l+1:a$(2)="":goto14
19 ifl$=a$(3)thenpoke214,14:print:printspc(2)a$(3):l=l+1:a$(3)="":goto14
20 ifl$=a$(4)thenpoke214,14:print:printspc(3)a$(4):l=l+1:a$(4)="":goto14
21 ifl$=a$(5)thenpoke214,14:print:printspc(4)a$(5):l=l+1:a$(5)="":goto14
22 ifl<>5thenprint"nope!":k=k+1:fort=1to220:nextt:print"‘            "
23 onkgosub600,601,602,603,604,605,606,607,608,609
24 ifk>10then print"sqyou took too many tries! ":goto500
25 goto28
26 ifl$="_"then goto500
27 return
28 goto15
50 d=int(rnd(0)*30)+1:fort=1tod*5:reada$:nextt
51 fort=1to5:reada$(t):nextt:gosub400
60 goto15
70 print"you only typed in";k;"letters not there!"
75 print"swant to start over?                 "
76 geta$:ifa$=""then76
78 ifa$<>"n"thenrestore:clr:goto0
79 end
100 datal,u,n,a,r,b,l,a,c,k,m,a,r,c,h,b,e,a,n,s,j,e,a,n,s,g,i,f,t,s,m,o,n,e,y
101 dataw,h,i,t,e,b,o,o,k,s,c,o,l,o,r,s,o,u,n,d,m,u,s,i,c,a,p,r,i,l
102 datab,e,a,r,d,p,a,p,e,r,q,u,i,l,t,v,o,w,e,l,h,o,u,s,e,c,l,o,c,k
103 datap,l,a,n,e,m,i,n,e,r,p,o,w,e,r,s,h,i,r,t,k,n,i,f,e,p,i,a,n,o
104 datai,n,d,e,x,b,a,s,i,c,v,i,d,e,o,m,o,d,e,l,l,i,g,h,t,m,o,v,i,e
400 poke214,3:print:print"       °CCC®   "
401 poke214,4:print:print"       B   B   "
402 poke214,5:print:print"           B   "
403 poke214,6:print:print"           B   "
404 poke214,7:print:print"           B   "
405 poke214,8:print:print"           B   "
406 poke214,9:print:print"           B   "
407 poke214,10:print:print"           B   "
408 poke214,11:print:print"           B   "
409 poke214,12:print:print"           ±   ":return
500 ifa$(1)<>""thenpoke214,14:print:printa$(1)
501 ifa$(2)<>""thenpoke214,14:print:printspc(1)a$(2)
502 ifa$(3)<>""thenpoke214,14:print:printspc(2)a$(3)
503 ifa$(4)<>""thenpoke214,14:print:printspc(3)a$(4)
504 ifa$(5)<>""thenpoke214,14:print:printspc(4)a$(5):goto75
505 goto75
600 poke214,3:print:print"       °CCC®   ":return
601 poke214,4:print:print"       B   B   ":return
602 poke214,5:print:print"       UI  B   ":return
603 poke214,6:print:print"       JK  B   ":return
604 poke214,7:print:print"      NBBM B   ":return
605 poke214,8:print:print"      ´BBª B   ":return
606 poke214,9:print:print"       CC  B   ":return
607 poke214,10:print:print"       NM  B   ":return
608 poke214,11:print:print"      N  M B   ":return
609 poke214,12:print:print"     £    £±   ":return
