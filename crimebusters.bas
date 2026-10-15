5 poke53281,0:poke53280,0:poke53294,0:poke53293,0:te=150
6 poke54272+24,0
10 print"“            crimebusters"
11 print"q            by:futuresoft"
12 print"qalan arcana is a deadly killer who hates";
13 print"people like you!you are a cop.you must  ";
14 print"catch alan,before he reaches the state  ";
15 print"line!        good luck!":print "q            highscore:";hs
16 print"qq             press space"
17 geta$:ifa$=""thengoto17
18 print"“qq             please wait"
19 vv=54272:forsw=vvtovv+24:pokesw,0:nextsw:pokevv+24,15:pokevv+2,255:pokevv+5,9
20 pokevv+13,10:pokevv+1,2:pokevv+8,20:pokevv+6,255
25 poke53269,192
30 poke2047,192
35 poke2046,192
43 poke53293,2
45 poke53294,6:poke53271,192:poke53277,192
50 forn=0to62
60 reado
70 poke12288+n,o:next
80 x=100:z=100:poke53261,20:poke53260,100:print"“"
100 j=peek(56320)
101 ifs>6thenifj=123orj=122orj=106thenx=x-7
102 ifs>6thenifj=119orj=118orj=102thenx=x+7
103 ifx<75thens=s-2:x=74
104 ifx>235thens=s-2:x=235
105 poke53262,x:goto1000
500 data 0,0,0
501 data 0,255,0
502 data 1,219,128
503 data1,219,128
504 data0,219,0
505 data  0,219,0
506 data 0,189,0
507 data 0,189,0
508 data 0,189,0
509 data 0,189,0
510 data 1,231,128
511 data1,255,128
512 data0,255,0
513 data0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
514 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1000 print"s mph:";s"   shots:";w" time:";te" ":print"score:";sc
1001 ifa=0thena=1:fort=1to25:print"        B                     B":next:q=100
1002 ifj=126orj=122orj=118orj=110thens=s+d
1003 ifj=125thens=s-2
1004 ifs<0thens=0:poke53263,180:poke53261,20
1005 ifs<35thend=4:poke53263,180:sk=s+20
1006 ifs>35ands<55thend=3:poke53263,170:poke53261,38:sk=s+20
1007 ifs>55ands<109thend=2:poke53263,165:poke53261,45:sk=s-40
1008 ifs>109ands<155thend=1:poke53263,160:poke53261,55:sk=s-60
1009 ifs>155thens=155:poke53261,65
1010 ifs<35ands>20thend=4:poke53261,25
1011 ifp=0thenifj=111orj=110orj=106orj=102thenp=1:goto2000
1012 r=int(rnd(0)*5)+1
1013 ifl=0ands>0thenifr=4thenl=1:goto6000
1014 ifl=1thengoto6020
1015 ifp=1thengoto2020
1016 ifr=2thenq=q+5
1017 ifr=3thenq=q-5
1020 ifq<75thenq=74
1021 ifq>235thenq=235
1022 poke53260,q
1023 te=te-1:ifte=0orte<1thengoto8000
1024 pokevv,sk:pokevv+4,65
1030 goto100
2000 u=15
2001 ifx>=78andx<92thensp=3:goto2020
2002 ifx>=86andx<100thensp=4:goto2020
2003 ifx>=94andx<108thensp=5:goto2020
2004 ifx>=102andx<116thensp=6:goto2020
2005 ifx>=110andx<124thensp=7:goto2020
2006 ifx>=118andx<134thensp=8:goto2020
2007 ifx>=126andx<140thensp=9:goto2020
2008 ifx>=134andx<148thensp=10:goto2020
2009 ifx>=142andx<156thensp=11:goto2020
2010 ifx>=150andx<164thensp=12:goto2020
2011 ifx>=158andx<172thensp=13:goto2020
2012 ifx>=166andx<180thensp=14:goto2020
2013 ifx>=174andx<188thensp=15:goto2020
2014 ifx>=180andx<196thensp=16:goto2020
2015 ifx>=190andx<204thensp=17:goto2020
2016 ifx>=198andx<212thensp=18:goto2020
2017 ifx>=206andx<228thensp=19:goto2020
2018 ifx>=222andx=<235thensp=20:goto2020
2020 u=u-1:poke214,u:print:printspc(sp+7)"šª"
2021 poke214,u+1:print:printspc(sp+7)" "
2022 ifu<2thenu=15:p=0:poke214,1:print:printspc(sp+7)" ":goto3000
2023 ifle=0thengoto100
2024 ifle=>1thengoto1016
2025 goto1020
3000 rem shots
3001 ifsp=3andq>=78andq<92thenm=1
3002 ifsp=4andq>=86andq<100thenm=1
3003 ifsp=5andq>=94andq<108thenm=1
3004 ifsp=6andq>=102andq<116thenm=1
3005 ifsp=7andq>=110andq<124thenm=1
3006 ifsp=8andq>=118andq<134thenm=1
3007 ifsp=9andq>=126andq<140thenm=1
3008 ifsp=10andq>=134andq<148thenm=1
3009 ifsp=11andq>=142andq<156thenm=1
3010 ifsp=12andq>=150andq<164thenm=1
3011 ifsp=13andq>=158andq<172thenm=1
3012 ifsp=14andq>=166andq<180thenm=1
3013 ifsp=15andq>=174andq<188thenm=1
3014 ifsp=16andq>=180andq<196thenm=1
3015 ifsp=17andq>=190andq<204thenm=1
3016 ifsp=18andq>=198andq<212thenm=1
3017 ifsp=19andq>=206andq<228thenm=1
3018 ifsp=20andq>=222andq<=235thenm=1
3019 ifm=1thenw=w+1:sc=sc+10:poke53281,2:poke53281,9:poke53281,0:pokevv+11,129
3020 ifw=4thenpoke53277,128
3021 pokevv+11,128:ifw=7thenpoke53271,128:goto4000
3025 u=15:m=0:p=0:goto100
4000 print"syou've done it!return to base.":w=0:s=0:e=0:l=0:poke53271,128
4001 fort=165to20step-5:poke53263,t:fory=1to50:nexty:nextt:poke53271,192
4002 poke53277,192:ifle=0thenyy=7:print"“level:2‘":le=1:oo=2:a=0:goto4005
4003 yy=int(rnd(0)*240)+1
4004 poke53293,0:le=2:a=0:oo=oo+1:print"“level:";oo;"qq"
4005 print"time left:";te"   score:";sc" ":poke53293,0:poke53261,20
4006 te=te-1:sc=sc+1:fort=1to25:nextt
4007 ifte<0thengoto4015
4008 print"‘‘":goto4005
4015 te=320:fort=1to1000:nextt:poke53293,yy:goto80
6000 k=1
6001 ifq>=78andq<92thensi=3:goto6020
6002 ifq>=86andq<100thensi=4:goto6020
6003 ifq>=94andq<108thensi=5:goto6020
6004 ifq>=102andq<116thensi=6:goto6020
6005 ifq>=110andq<124thensi=7:goto6020
6006 ifq>=118andq<134thensi=8:goto6020
6007 ifq>=126andq<140thensi=9:goto6020
6008 ifq>=134andq<148thensi=10:goto6020
6009 ifq>=142andq<156thensi=11:goto6020
6010 ifq>=150andq<164thensi=12:goto6020
6011 ifq>=158andq<172thensi=13:goto6020
6012 ifq>=166andq<180thensi=14:goto6020
6013 ifq>=174andq<188thensi=15:goto6020
6014 ifq>=180andq<196thensi=16:goto6020
6015 ifq>=190andq<204thensi=17:goto6020
6016 ifq>=198andq<212thensi=18:goto6020
6017 ifq>=206andq<228thensi=19:goto6020
6018 ifq>=222andq=<235thensi=20:goto6020
6020 k=k+1:poke214,k:print:printspc(si+7)"£ªš"
6021 poke214,k-1:print:printspc(si+7)" "
6022 ifk>15thenk=1:l=0:poke214,16:print:printspc(si+7)" ":goto7000
6023 goto1015
7000 rem shots
7001 ifsi=3andx>=78andx<92thenn=1
7002 ifsi=4andx>=86andx<100thenn=1
7003 ifsi=5andx>=94andx<108thenn=1
7004 ifsi=6andx>=102andx<116thenn=1
7005 ifsi=7andx>=110andx<124thenn=1
7006 ifsi=8andx>=118andx<134thenn=1
7007 ifsi=9andx>=126andx<140thenn=1
7008 ifsi=10andx>=134andx<148thenn=1
7009 ifsi=11andx>=142andx<156thenn=1
7010 ifsi=12andx>=150andx<164thenn=1
7011 ifsi=13andx>=158andx<172thenn=1
7012 ifsi=14andx>=166andx<180thenn=1
7013 ifsi=15andx>=174andx<188thenn=1
7014 ifsi=16andx>=180andx<196thenn=1
7015 ifsi=17andx>=190andx<204thenn=1
7016 ifsi=18andx>=198andx<212thenn=1
7017 ifsi=19andx>=206andx<228thenn=1
7018 ifsi=20andx>=222andx<=235thenn=1
7019 ifn=1thene=e+1:poke53281,2:poke53281,9:poke53281,0:pokevv+11,129
7020 ife=1thenpoke53271,64:ifll=0thenll=1:s=s-100:ifs<0thens=0
7021 pokevv+11,128:ife=2thenpoke53277,64:goto8000
7025 k=1:n=0:l=0:goto100
8000 fort=70to0step-7:poke53261,t:fory=1to100:nexty:nextt:print"game over"
8001 fort=1to1000:nextt:ifsc>hsthenhs=sc
8002 a=0:u=0:w=0:sc=0:e=0:p=0:l=0:s=0:le=0:restore:goto5
