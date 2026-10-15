10 print"“":poke53280,0:poke53281,0
11 print"q£          file encoder/decoder":x=0:na$=""
12 print"q               by: ed›i—c˜e—m›aen£"
13 print"q                 ver 1.0"
14 print"ef–u£tœuršeŸs™o‘fžt £- just plain kick-ass stuff!q"
15 print"choose:":print"q1.encode/decode a file(single drive)"
16 print"2.encode/decode a file(dual drive)":print"3.directory"
17 print"4.copy file(dual drive)":print"5.copy file(single drive) 147 blks max"
19 print"6.quit"
20 geta$
21 ifa$="1"thengoto30
22 ifa$="6"thenprint"“qqlater...diceman out!":end
23 ifa$="2"thengoto60
24 ifa$="3"thengoto85
25 ifa$="4"thengoto100
26 ifa$="5"thengoto130
29 goto20
30 input"filename";na$:ifna$=""thenrun
32 input"finished file";f$:input"finished file type(p,s,r)";ty$
33 print"qq"
40 open2,8,2,"0:"+na$+",?,r":open3,8,3,"0:"+f$+","+ty$+",w"
42 get#2,a$:f=st:ifa$=""thena$=chr$(0)
43 x=x+1:q=asc(a$):w=255-q:print"‘bytes:";x
45 q$=chr$(w):print#3,q$;
50 if f=0thengoto42
52 close2:close3:print"qqdone!":goto11
60 input"filename 8:";na$:ifna$=""thenrun
62 input"finished file 9:";f$:input"finishe6 file type(p,s,r)";ty$
63 print"qq"
70 open2,8,2,"0:"+na$+",?,r":open3,9,3,"0:"+f$+","+ty$+",w"
72 get#2,a$:f=st:ifa$=""thena$=chr$(0)
73 x=x+1:q=asc(a$):w=255-q:print"‘bytes:";x
75 q$=chr$(w):print#3,q$;
80 if f=0thengoto42
82 close2:close3:print"qqdone!":goto11
85 d$="":input"which drive? 8";d$:ifd$=""thenrun
86 d=val(d$):ifd<8ord>10thenrun
90 open1,d,0,"$":print"“r";
91 get#1,b$:ifst<>0thengoto94
92 ifb$<>chr$(34)thengoto91
93 printb$;:fori=1to23:get#1,b$:printb$;:nexti:print:ifst=0thengoto91
94 close1:print"qpress a key"
95 geta$:ifa$=""thengoto95
96 run
100 input"filename 8:";na$:ifna$=""thenrun
101 input"file type (p,s,r)";ty$:iflen(ty$)<>1thenrun
102 print"source:8 to dest.:9 file:";na$:input"insert disks and hit return";a$
103 print"qq"
110 open2,8,2,"0:"+na$+",?,r":open3,9,3,"0:"+na$+","+ty$+",w"
112 get#2,a$,b$,c$,d$,e$,f$,g$,h$,i$,j$
113 f=st:ifa$=""thena$=chr$(0)
114 ifb$=""thenb$=chr$(0)
115 ifc$=""thenc$=chr$(0)
116 ifd$=""thend$=chr$(0)
117 ife$=""thene$=chr$(0)
118 iff$=""thenf$=chr$(0)
119 ifg$=""theng$=chr$(0)
120 ifh$=""thenh$=chr$(0)
121 ifi$=""theni$=chr$(0)
122 ifj$=""thenj$=chr$(0)
125 print#3,a$;b$;c$;d$;e$;f$;g$;h$;i$;j$;:print"‘bytes:";x:x=x+10
128 if f=0thengoto112
129 close2:close3:print"qqdone!":goto11
130 input"filename 8:";na$:ifna$=""thenrun
131 input"file type (p,s,r)";ty$:iflen(ty$)<>1thenrun
132 input"insert disk and hit return";a$
133 print"qq"
140 open2,8,2,"0:"+na$+",?,r":x=0
142 get#2,a$,b$,c$,d$,e$:f=st:ifa$=""thena$=chr$(0)
143 ifb$=""thenb$=chr$(0)
144 ifc$=""thenc$=chr$(0)
145 ifd$=""thend$=chr$(0)
146 ife$=""thene$=chr$(0)
147 q=asc(a$):poke12288+x,q:q=asc(b$):poke12288+x+1,q
148 q=asc(c$):poke12288+x+2,q:q=asc(d$):poke12288+x+3,q
149 q=asc(e$):poke12288+x+4,q:x=x+5:print"‘bytes:";x
150 if f=0andx<36864thengoto142
152 close2:input"qqinsert dest. & hit return";a$:ff=x:x=0:print"qq"
160 open2,8,2,"0:"+na$+","+ty$+",w"
162 q=peek(12288+x):w=peek(12288+x+1):e=peek(12288+x+2)
163 r=peek(12288+x+3):t=peek(12288+x+4):x=x+5:print"‘bytes:";x
164 a$=chr$(q):b$=chr$(w):c$=chr$(e):d$=chr$(r):e$=chr$(t)
165 print#2,a$;b$;c$;d$;e$;
170 ifx<ff+1thengoto162
172 close2:print"done!!":goto11
