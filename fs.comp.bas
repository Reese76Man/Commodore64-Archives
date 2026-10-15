10 poke53280,0:poke53281,0:print "“qqdiceman's file compactor v1.0":m=12288
12 input"qqfile to be compacted";n$
40 open2,8,2,"0:"+n$+",?,r"
41 print "qloading into memory:q"
42 get#2,a$,b$,c$:f=st:ifa$=""thena$=chr$(0)
43 print "‘bytes:";j:j=j+3:if b$ = "" then b$ = chr$(0)
44 if c$ = "" then c$ = chr$(0)
45 m=m+3:q = asc(a$):poke m,q:w=asc(b$):e=asc(c$):poke m+1,w:pokem+2,e
46 if f = 0 then goto 42
52 close2:print"qqcompacting...":x=m:m=12288
60 p=a:m=m+1:a=peek(m):j=j+1
61 z$ = chr$(p):if j = 1 then goto 60
65 if a=p and o=0 then f$= "[:"+chr$(p)+":":r=2:o=1:cm=cm+1:goto 60
67 if a=p and o = 1 then r=r+1:goto 60
69 if a<>p and o = 1 then z$=f$+chr$(r)+"]":o=0
71 print z$;:if m<x then goto 60
75 print "qqcompacted:";cm;" out of ";j"; bytes"
