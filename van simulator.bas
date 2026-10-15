0 sh=1:sp=2:s=54272:pokes+5,95:pokes+6,255:pokes+24,9:pokes+2,255:pokes+4,65:r=3
1 pokes+13,255:pokes+8,10
10 print"“":poke53281,0:poke53280,0:p1=1:pokes+1,2
12 poke214,13:print:print"š§££N££££££££££££££££££££££££££M££¥"
13 print"§ N UCCCCCCCI UCCCCCCCCCIUIUI  M ¥"
14 print"§N  B 40 60 B Bford 1975BJKJK   M¥"
15 print"N   B       B BeconolineB        M"
16 print"¥   B20 W 80B JCCCCCCCCCK °CCCC® ª"
17 print"M   B       B UCCCCCCCCCI «{{{{³ N"
18 print" M  B 0  100B Be  1M2  fB ­CCCC½N "
19 print"  M JCCCCCCCK JCCCCCCCCCK      N  "
20 print"  ª UCnCdD2C1I UIUCCCI         ¥  "
21 print"  N B        B JKJCCCK         M  ":ifg=1theng=0:return
23 geta$:ifa$="…"ora$="†"ora$="‡"ora$="ˆ"theng=1:gosub12
24 ifa$="…"thensh=1:pokes+24,15:p1=1
25 ifa$="†"thensh=3:pokes+24,15:pokes+0,80
26 ifa$="‡"thensh=5:pokes+24,15:pokes+1,80:ifsp>80thensp=80:p=0
27 ifa$="ˆ"thensh=7:pokes+24,15:pokes+1,15:ifsp>40thensp=40:p=0
28 poke214,22:print:printspc(sh+5)"B"
29 j=peek(56320):pokes+1,2:pokes,sp*2
30 ifj=126andsp>1andsp<41andsh=7thensp=sp+5
31 ifj=126andsp>40andsp<80andsh=5thensp=sp+3
32 ifj=126andsh=3andsp<99andsp>0thensp=sp+2
33 :ifsp>95thensp=95
34 ifsp<5thensp=5
35 ifsp>1andsp<15theng=1:gosub12:poke214,18:print:printspc(7)"‘N"
36 ifsp>15andsp<25theng=1:gosub12:poke214,17:print:printspc(7)"‘C"
37 ifsp>25andsp<49theng=1:gosub12:poke214,16 :print:printspc(7)"‘M"
38 ifsp>60andsp<65theng=1:gosub12:poke214,16 :print:printspc(9)"‘N"
39 ifsp>65andsp<85theng=1:gosub12:poke214,17:print:printspc(9)"‘C"
40 ifsp>85andsp<99theng=1:gosub12:poke214,18 :print:printspc(9)"£M"
41 ifsp>49andsp<59theng=1:gosub12:poke214,16 :print:printspc(8)"‘B"
42 ifj=125thensp=sp-4
43 ifsh=1thensp=sp-1
44 ifj=126andsp>1andsp<41andsh=5thensp=sp+1
45 ifj=123andsp>10thenr=r+1
46 ifj=119andsp>10thenr=r-1
47 a$(1)="e        N          M ‘"
48 a$(2)="e       N            M "
49 a$(3)="e      N              M "
50 a$(4)="e     N                M  "
51 a$(5)="e    N                  M "
52 a$(6)="e   N                    M "
53 a$(7)="e  N                      M š"
54 poke214,6:print:printspc(r);a$(1)
55 poke214,7:print:printspc(r);a$(2)
56 poke214,8:print:printspc(r);a$(3)
57 poke214,9:print:printspc(r);a$(4)
58 poke214,10:print:printspc(r);a$(5)
59 poke214,11:print:printspc(r);a$(6)
60 poke214,12:print:printspc(r);a$(7)
61 a$(8)="]]]]]]]]]]]]]B]]]]]]]]]]]]]]]"
62 ifw=0thenw=1:q=5
63 ifsp>7andsp<20thenq=q+1
64 ifsp>19andsp<60thenq=q+2
65 ifsp>59andsp<100thenq=q+3
66 poke214,q:print:printspc(r);a$(8)
67 ifq>9thenw=0
82 ifr<1thengoto500
83 ifr>9thengoto500
84 ifp1=1andj=126theni=i+10:pokes+0,i
85 ifp1=1theni=i-5
86 ifi<11theni=12
87 ifi>215theni=215
89 ifsp<10thenpoke214,5:print:print"‘_________¯¯¯¹¹¹¢¢¢¹¹¹¯¯¯_____________š"
90 print"sr                                      ";
91 print"                                      ";
92 print"                                      ";
93 print"                                      ";
94 print"                                      ";
95 print"                                      ";
96 print"            ";
97 b$(1)="eUCCI"
98 b$(2)="£Wr  ’£W"
99 b$(3)="˜r¦’  r¦’"
100 ifsp<8andzz=0andz=0thengoto23
101 v=int(rnd(0)*2)+1
102 ifv=1orx>5orzz=1orz=1thengoto200
103 ifv=2andx=<5thengoto23
107 ifz=0thenz=1:x=5:m=6
108 ifsp<50thenx=x+1
109 ifsp>49andsp<99thenx=x+2
110 poke214,x:print:printspc(r+m);b$(1)
111 poke214,x+1:print:printspc(r+m);b$(2)
112 poke214,x+2:print:printspc(r+m);b$(3)
113 ifx>8thenz=0:v=0:zz=0:vv=0:gosub1000
114 goto23
200 vv=int(rnd(0)*2)+1
201 ifzz=1thengoto207
202 ifz=1thengoto107
203 ifvv=1andz=0thengoto107
204 ifvv=2andzz=0thengoto207
205 goto200
207 ifzz=0thenzz=1:x=5:m=16
208 ifsp<50thenx=x+1
209 ifsp>49andsp<99thenx=x+2
210 poke214,x:print:printspc(r+m);b$(1)
211 poke214,x+1:print:printspc(r+m);b$(2)
212 poke214,x+2:print:printspc(r+m);b$(3)
213 ifx>8thenzz=0:vv=0:z=0:v=0:gosub1010
214 goto23
500 print"booooooom!":pokes+11,129:fort=1to2000:nextt:pokes+11,128:run
1000 ifr=>3thengoto500
1001 x=0:return
1010 ifr<3thengoto500
1011 x=0:return
