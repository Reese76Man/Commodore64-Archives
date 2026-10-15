4 poke53280,0:poke53281,0:print"“"
5 hp=12288:my=hp
10 poke53269,255:poke53277,0:poke53271,0
12 fort=53287to53294:poket,1:nextt
15 poke2047,192:poke2046,193:poke2045,194:poke2044,195:poke2043,196
17 poke2042,197:poke2041,198:poke2040,199
20 fort=0to15:poke53248+t,51:nextt:poke53248,45:poke53269,255
22 poke53250,75:poke53252,105:poke53254,135:poke53256,165:poke53258,195
24 poke53260,225:poke53262,255
25 goto200
50 a=1:ht=hp:g=1:z=0:n=0
51 input"“qqqqwhich sprite to r/w";f:print"“":g=1
53 iff=1thengoto100
54 iff>1thenht=(63*(f-1))+hp+(f-1)
100 fory=httoht+62:q=peek(y)
110 ifq/2<>int(q/2)thena(8)=1
112 ifq>127thena(1)=1
114 p=int(q/2):ifp/2<>int(p/2)orq=2thena(7)=1
116 p=int(q/4):ifp/2<>int(p/2)orq=4thena(6)=1
118 p=int(q/8):ifp/2<>int(p/2)orq=8thena(5)=1
120 p=int(q/16):ifp/2<>int(p/2)orq=16thena(4)=1
122 p=int(q/32):ifp/2<>int(p/2)orq=32thena(3)=1
124 p=int(q/64):ifp/2<>int(p/2)orq=64thena(2)=1
130 z=z+1:ifz>3thenz=1:g=g+1:n=0
133 fort=1to8:c=32:ifa(t)=1thena(t)=0:c=160
135 n=n+1:poke1104+(40*g)+n,c:nextt
137 nexty:j=1:l=1
140 print"sqqqq"spc(26)"key:"
141 printspc(26)"c-clear scrn"
142 printspc(26)"_-draw sprte"
143 printspc(26)"m-to menu"
145 printspc(26)"rtrn-on/off"
146 printspc(26)"      dots"
150 z=peek(1104+(40*j)+l):geta$:ifa$=""thenpoke1104+(40*j)+l,255
152 ifa$=""thenpoke1104+(40*j)+l,z:goto150
155 ifa$="‘"thenj=j-1:ifj<1thenj=1
156 ifa$="q"thenj=j+1:ifj>21thenj=21
157 ifa$=""thenl=l-1:ifl<1thenl=1
158 ifa$="]"thenl=l+1:ifl>24thenl=24
160 ifa$=chr$(13)andz=160thenpoke1104+(40*j)+l,32
161 ifa$=chr$(13)andz=32thenpoke1104+(40*j)+l,160
163 ifa$="c"thenprint"“":goto140
164 ifa$="_"thengoto180
165 ifa$="m"thengoto200
170 goto150
180 g=0:e=0:q=0:m=1:fort=httoht+62
182 e=e+1:ife>3thenm=m+1:g=0:e=1
184 fory=1to8:g=g+1:z=peek(1104+(40*m)+g)
185 ify=1andz=160thenq=q+128
186 ify=2andz=160thenq=q+64
187 ify=3andz=160thenq=q+32
188 ify=4andz=160thenq=q+16
189 ify=5andz=160thenq=q+8
190 ify=6andz=160thenq=q+4
191 ify=7andz=160thenq=q+2
192 ify=8andz=160thenq=q+1
193 nexty
194 poket,q:q=0:nextt
195 goto150
200 print"“qqq   8   7   6   5   4   3   2   1"
201 print"  memory location";my;" to";my+512
202 print"sqqqqqqchoose:":print"1.r/w sprte":print"2.rvs sprite"
203 print"3.erase sprite":print"4.copy sprites":print"5.save sprites"
204 print"6.load sprites":print"7.sprite find"
205 print"8.memory transfer to 12288(screen)"
206 print"9.memory transfer from 12288(screen)"
207 print"a.flip sprite"
208 print"b.shorten sprite":print"c.sprite adjust"
220 geta$:ifa$=""thengoto220
225 ifa$="1"thengoto50
227 ifa$="2"thengoto300
228 ifa$="3"thengoto320
229 ifa$="4"thengoto420
230 ifa$="5"thengoto500
231 ifa$="6"thengoto600
232 ifa$="7"thengoto10000
233 ifa$="8"thengoto700
234 ifa$="9"thengoto800
235 ifa$="a"thengoto1000
236 ifa$="b"thengoto2000
237 ifa$="c"thengoto20000
250 goto200
300 a=1:ht=hp:g=1
302 input"“qqqqwhich sprite to rvs";f
303 iff=1thengoto310
304 iff>1thenht=(63*(f-1))+hp+(f-1)
310 fort=httoht+62:poket,255-peek(t):nextt:goto200
320 a=1:ht=hp:g=1
322 input"“qqqqwhich sprite to erase";f
323 iff=1thengoto330
324 iff>1thenht=(63*(f-1))+hp+(f-1)
330 fort=httoht+62:poket,0:nextt:goto200
420 a=1:ht=hp:g=1:hw=hp
422 input"“qqqqwhich sprite to copy";f:input"to sprite";w
423 iff=1thengoto425
424 iff>1thenht=(63*(f-1))+hp+(f-1)
425 ifw=1thengoto430
426 ifw>1thenhw=(63*(w-1))+hp+(w-1)
430 fort=0to62:pokehw+t,peek(ht+t):nextt:goto200
500 input"“qqqsave filename";f$:sa=12288:ea=12801:print"^12288 is on screen^"
501 print"save memory     12288":input"‘]]]]]]]]]]]]]]";sa
502 print"  to memory     12800":input"‘]]]]]]]]]]]]]]";ea:ea=ea+1
505 poke53269,0:fort=53248to53263:poket,0:nextt
510 sys57812 f$,8:poke173,sa/256:poke172,sa-peek(173)*256:poke780,172
516 poke782,ea/256:poke781,ea-peek(782)*256:sys 65496
570 fori=0to1000:nexti:print"done!":goto20
600 input"qqqqfilename";f$
605 poke53269,0:fort=53248to53263:poket,0:nextt
607 qw=1:load f$ ,8,1
610 end
700 print"“qqqqqmemory tranfer":print"n-next set    b-last set"
701 input"memory to transfer";my$:ifmy$="n"thenmy=my+512:goto704
702 ifmy$="b"thenmy=my-512:goto704
703 my=val(my$)
704 fort=0to520:poke12288+t,peek(my+t):nextt
710 print"done!":goto20
800 print"“qqqqqmemory tranfer from 12288(screen)"
801 input"memory to transfer 11288 to";my
802 ifmy<8000ormy>53248thenprint"‘‘":goto801
803 fort=0to520:pokemy+t,peek(12288+t):nextt
810 print"done!":goto20
1000 rem flipper
1320 a=1:ht=hp:g=1
1322 input"“qqqqwhich sprite to flip";f
1323 iff=1thengoto1330
1324 iff>1thenht=(63*(f-1))+hp+(f-1)
1330 fort=0to62:poke8192+t,peek(ht+t):nextt
1335 fort=62to0step-3:pokeht+t-2,peek(8192+(62-t)):nextt
1336 fort=61to0step-3:pokeht+t,peek(8192+(62-t)):nextt
1337 fort=60to0step-3:pokeht+t+2,peek(8192+(62-t)):nextt
1340 jk=0:goto200
2000 rem flipper
2320 a=1:ht=hp:g=1:jk=0
2322 input"“qqqqwhich sprite to shrtn";f
2323 iff=1thengoto2330
2324 iff>1thenht=(63*(f-1))+hp+(f-1)
2330 fort=0to62step+6:jk=jk+3:a=peek(ht+t+0):b=peek(ht+t+1):c=peek(ht+t+2)
2332 pokeht+jk,a:pokeht+jk+1,b:pokeht+jk+2,c:nextt
2339 fort=33to62:pokeht+t,0:nextt
2340 goto200
10000 print"“qqqqqqqqqquse +/-/q-quit"
10001 geta$:ifa$=""thengoto10001
10002 ifa$="+"thenzm=zm+1:ifzm>255thenzm=0
10003 ifa$="-"thenzm=zm-1:ifzm<0thenzm=255
10004 ifa$="q"thengoto15
10005 print"sqqqqq";(64*zm),zm:poke2040,zm:goto10001
20000 print"“qqqqqqqsprite fix"
20001 print"1.choose multicolor"
20002 print"2.choose size"
20003 print"3.quit"
20020 geta$:ifa$=""thengoto20020
20021 ifa$="1"thengoto20100
20022 ifa$="2"thengoto20200
20023 ifa$="3"thengoto200
20040 goto20020
20100 print"c1:";peek(53248+37)-240;" c2:";peek(53248+38)-240;
20101 print" c3:";peek(53248+39)-240:input"background color 1";c1
20102 input"background color 2";c2
20103 input"sprite color";c3
20104 input"multicolor on/off";a$:ifa$="off"ora$="o"thengoto20106
20105 poke53248+28,255:goto20110
20106 poke53248+28,0
20110 poke53248+37,c1:poke53248+38,c2
20111 fort=1to8:poke53248+38+t,c3:nextt
20120 goto20000
20200 input"extend horizantal";a$:ifa$="y"ora$="yes"thenpoke53277,255:goto20203
20201 poke53277,0
20203 input"extend vertical";a$:ifa$="y"ora$="yes"thenpoke53271,255:goto20205
20204 poke53271,0
20205 goto20000
