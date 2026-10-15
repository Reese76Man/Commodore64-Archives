1 poke53281,1:poke53280,1:poke808,234
2 print"“£q         welcome to filemaster"
3 print"           by:f£uŸtœu‘r—esžof•t£"
4 print"      programmed by:corey badeaux"
20 print"               choose:"
21 print"             qrw’rite file"
22 print"             rr’ead file"
23 print"             re’rase file"
24 print"             rd’irectory":print"             rf’ormat disk"
25 input"        qe,r,w,f,d,or q to quit";a$
26 ifa$="w"thena$="":goto100
27 ifa$="r"thena$="":goto200
28 ifa$="e"thena$="":goto300
29 ifa$="q"thenpoke53280,14:poke53281,6:poke646,14:print"“":end
30 ifa$="d"thengoto1000
31 ifa$="f"thengoto2000
50 run
100 print"write file"
101 print
105 input"filename";mm$:input"type code/hit return if you dont";co$
106 iflen(co$)>5thenrun:rem *** type info. ***
107 open2,8,2,"@0:"+mm$+",s,w":goto108
108 input"type file info.";a$,b$,c$,d$,e$,f$
111 input"more file info.";g$,h$,i$,j$,k$,l$,m$,n$,o$,p$,q$,r$,s$
112 print#2,a$;chr$(13);b$
113 print#2,c$;chr$(13);d$
114 print#2,e$;chr$(13);f$
115 print#2,g$;chr$(13);h$
116 print#2,i$;chr$(13);j$
117 print#2,k$;chr$(13);l$
118 print#2,m$;chr$(13);n$:print#2,o$;chr$(13);p$:print#2,q$;chr$(13);r$
119 print#2,s$;chr$(13);co$
120 close2 :print"file complete"
121 input"want to do another file";q$
122 ifq$="y"thenclr:close15:close2:goto100
123 ifq$="n"thenrun
124 run121
200 print"“read file"
201 input"file name";pp$:input"type code if any:";de$:iflen(de$)>5thenrun
202 open2,8,2,"0:"+pp$+",s,r"
203 input#2,a$,b$,c$,d$,e$,f$,g$,h$,i$,j$,k$,l$,m$,n$,o$,p$,q$,r$,s$,co$
205 ifa$=""ande$=""andj$=""ands$=""thenprint"file dosn't exist":goto400
206 print"file info.q"
209 print">"a$
210 print">"b$
211 print">"c$
212 print">"d$
213 print">"e$
214 print">"f$
215 print">"g$
216 print">"h$
217 print">"i$
218 print">"j$:print">"k$:print">"l$:print">"m$:print">"n$
219 print">"o$:print">"p$:print">"q$:print">"r$:print">"s$
220 close2:input"want to do another file";q$
226 ifq$="n"thenclr:close15:close2:run
227 ifq$="y"thenclr:close15:close2:goto200
228 goto220
300 input"filename to be erased";a$
310 ifa$=""thengoto300
320 open1,8,15,"s0:"+a$
330 close1:run
400 open15,8,15,"i":close15:goto220
700 ifa$=""andb$=""andd$=""andg$=""thenprint"file does't exist":goto400
705 a$="this code does not compute!"
706 fort=0to35:fory=1to100:nexty:printleft$(a$,t)"‘":nextt:print:run
1000 open1,8,0,"$0":print"“r";
1001 get#1,b$:ifst<>0then1006
1002 ifb$<>chr$(34)then1001
1003 printb$;:fori=1to25:get#1,b$:printb$;:nexti:print:ifst=0then1001
1004 ifst<>0then1006
1005 close1:
1006 close1:ifst<>64thengosub1010
1007 goto25
1010 open15,8,15:input#15,z,x$,c$,v$
1020 print"’error#"z" "x$
1030 close15:return
2000 print"“format"
2001 print"has disk been formatted?"
2002 geta$:ifa$=""thengoto2002
2003 if a$="y"thengoto2010
2004 ifa$<>"n"thengoto2002
2005 open15,8,15,"n0:filemaster,fs":close15:print"qpress space bar"
2006 geta$:ifa$=""then2006
2007 run
2010 open15,8,15,"n0:filemaster":close15:print"qpress space bar":goto2006
