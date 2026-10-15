5 poke53280,0:poke53281,0:printchr$(14)
10 print"“q       TRACK AND SECTOR VIEWER":gosub300
100 rem         read t&s
102 input"sqqqqTRACK:";tr:input"‘          SECTOR";sc
108 gosub300:open15,8,15:open5,8,5,"#":print#15,"b-p";5;0
109 print#15,"u1";5;0;tr;sc:poke214,6:print
111 fort=1to256:get#5,q$:ifq$=""thenq$=chr$(0)
114 q=asc(q$)
120 poke1303+t,q:nextt:print"qqqqqqq":close15:close5:goto500
300 poke214,4:print:print"Track:";tr;"   Sector:";sc;"    "
301 ifw=1thenreturn
302 print"```````````````````````````````````````"
303 fort=1to6:print"                                      ":nextt
304 print"                «``````````````````````"
305 print"````````````````½ ":w=1
306 return
500 print"CHOOSE:        ":print"r+’ SECTOR      "
501 print"r-’ SECTOR":print"rN’EW BLOCK"
502 print"rT’ext":print"rJ’ump sector":print"r@’ value change"
503 print"rW’rite sector"
530 goto800
700 input"svalue";vl:pokepo,vl:goto805
800 po=1304
805 g=peek(po):geta$:ifa$=""thenpokepo,160:pokepo,32:print"svalue:    ";g
806 ifa$=""thenpokepo,g:goto805
807 ifa$="‘"thenpo=po-40:ifpo<1304thenpo=po+40
809 ifa$="q"thenpo=po+40:ifpo>1559thenpo=po-40
812 ifa$="]"thenpo=po+1:ifpo>1559thenpo=1304
814 ifa$=""thenpo=po-1:ifpo<1304thenpo=1559
832 ifa$="+"thensc=sc+1:goto108
833 ifa$="-"thensc=sc-1:goto108
834 ifa$="w"thengoto1000
836 ifa$="n"thengoto100
837 ifa$="@"thengoto700
838 ifa$="t"thengoto900
839 ifa$="j"thentr=peek(1304):sc=peek(1305):goto108
840 goto805
900 print"sqqtext on:use '_' to exit"
905 g=peek(po):geta$:ifa$=""thenpokepo,160:pokepo,g:print"svalue:    ";g
906 ifa$=""thengoto905
912 ifa$="]"thenpo=po+1:ifpo>1558thenpo=1304
915 ifasc(a$)>63andasc(a$)<91thenpokepo,asc(a$):a$="]":goto912
916 ifasc(a$)>192andasc(a$)<219thenpokepo,asc(a$):a$="]":goto912
917 ifasc(a$)>0andasc(a$)<27thenpokepo,asc(a$):a$="]":goto912
918 ifasc(a$)=32thenpokepo,asc(a$):a$="]":goto912
919 ifa$="_"thenprint"sqq                             ":goto805
920 goto905
1000 rem         write t&s
1001 input"sqqqqChange T&S(y/n)";q$:ifq$<>"y"thengoto1003
1002 input"sqqqqTRACK:";tr:input"‘          SECTOR";sc
1003 print"‘                                     "
1004 gosub300:open15,8,15:open5,8,5,"#2":print#15,"b-p";5;0
1009 fort=1to256:q=peek(1303+t):q$=chr$(q):print#5,q$;:nextt
1011 print#15,"u2";5;0;tr;sc:poke214,6:print
1020 print"qqqqqqq":close15:close5:goto500
