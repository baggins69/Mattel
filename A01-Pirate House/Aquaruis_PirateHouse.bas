1 rem Pirates House
2 rem Scott Julian (c) 1983 - 2026. All Rights Reserved
2 rem Mattel Aquarius version + 4KB RAM upgrade
3 rem Original Commodore VIC 20 Release 1983

5 PRINT CHR$(11);SPC(12)"PIRATES HOUSE":PRINT:PRINT
6 PRINT SPC(7)"Written By Scott Julian":PRINT
7 PRINT SPC(9)"Copyright 1983,2026"
9 FOR i = 0 to 3000: NEXT i

10 r=7:j=14:v=16:e=22:l=0:m=0:u=0:k=0:s=0:c=0
15 DIM l$(r),m(r,3),o$(j),o(j),v$(v),m$(e)

20 DATA at the front gate,-1,1,6,-1
21 DATA in the main hall,0,2,-1,-1
22 DATA in the captains quarter's,1,-1,-1,7
25 DATA in a dark cellar,-1,4,-1,1
26 DATA in a hidden passage,3,-1,-1,-1
27 DATA in the treasure vault,-1,-1,4,-1
30 DATA in the lookout tower,-1,-1,-1,0
31 DATA at the secret dock,-1,-1,2,-1

35 DATA gate,0,parrot,0,door,1,painting,2,pirate,2
36 DATA candle,3,lever,4,safe,-1,skelton,6,chest,5
37 DATA key,-1,map,3,rope,7,gold,-1,gem,-1

45 DATA *,nor,sou,eas,wes,inv,get,dro,qui,rea,pul
46 DATA exa,loo,unl,tal,rem,tie

50 DATA Ok, I don't understand, I can't
51 DATA I can't go that way, Nothing
52 DATA Pirates House, Find the *GEM* and escape
53 DATA I see something, pirate Attack! You're dead!
54 DATA Look dangerous, I don't have it
55 DATA You found the treasure, A secret passage east
56 DATA Reveals a safe, Congratulations! collected treasures
57 DATA Squak! Leave treasures here, Map says 'remove painting'
58 DATA He is sleeping, Pirate tied up
59 DATA It's a gate, It's locked, Open safe
60 DATA It's lit

100 FOR i=0 TO r:READ l$(i):FOR t=0 TO 3:READ m(i,t):NEXT t:NEXT i
105 FOR i=0 TO j:READ o$(i),o(i):NEXT i
110 FOR i=0 TO v:READ v$(i):NEXT i
115 FOR i=0 TO e:READ m$(i):NEXT i

150 PRINT CHR$(11);:PRINT "You are ";l$(l);:PRINT
152 PRINT "You see: ";
155 FOR i=0 TO j
160 IF o(i)=l THEN PRINT o$(i);".";
165 NEXT i:PRINT:PRINT

170 PRINT "Exits: ";
171 IF m(l,0)>-1 THEN PRINT "North.";
175 IF m(l,1)>-1 THEN PRINT "South.";
180 IF m(l,2)>-1 THEN PRINT "East.";
185 IF m(l,3)>-1 THEN PRINT "West.";

199 REM PLAYER INPUT
200 IF o(13)=0 AND o(14)=0 THEN PRINT m$(14):END
202 x=-1:y=-1:z=-1:a$="":PRINT:PRINT:INPUT "What now";a$
205 IF a$="" OR a$=v$(0) THEN PRINT "huh?":GOTO 200
210 w$=LEFT$(a$,3):m=1
215 FOR i=1 TO LEN(a$)
220 IF MID$(a$,i,1)=" " THEN x=i+1
225 NEXT i
230 IF x>0 THEN n$=MID$(a$,x,3)
235 FOR i=0 TO v
240 IF w$=v$(i) THEN y=i
245 NEXT i
250 FOR i=0 TO j
255 IF n$=LEFT$(o$(i),3) THEN z=i
260 NEXT i
265 IF LEN(n$)<3 THEN z=0
266 IF Z=-1 THEN Z=0

300 IF y>0 AND y<9 THEN ON y GOSUB 350,350,350,350,400,450,500,550
302 IF y>8 THEN ON y-8 GOSUB 600,650,700,800,850,900,950,970
310 IF m=-1 THEN m=0:GOTO 150
315 PRINT m$(m):m=0:GOTO 200

349 REM MOVEMENT
350 IF m(l,y-1)>-1 THEN l=m(l,y-1):m=-1:RETURN
355 IF m(l,y-1)=-1 THEN m=3:RETURN

399 REM INVENTORY
400 PRINT:PRINT "You are carrying:":m=4
405 FOR i=0 TO j
410 IF o(i)=-2 THEN PRINT o$(i):m=0
415 NEXT i
420 RETURN

449 REM GET
450 IF z=4 AND o(z)=2 AND u<2 THEN m=7:PRINT m$(m):END
452 IF z<10 THEN m=2:RETURN
460 IF z>9 AND o(z)=l THEN o(z)=-2:m=0:RETURN
465 IF z>9 THEN m=2:RETURN

499 REM DROP
500 IF z>9 AND z<15 AND o(z)=-2 THEN o(z)=l:m=0:RETURN
510 m=0:RETURN

549 REM QUIT
550 INPUT "Are you sure (y/n)";a$
555 IF a$<>"n" THEN END
560 RETURN

599 REM READ MAP
600 IF z=11 AND o(z)=-2 THEN m=16:RETURN
610 m=2:RETURN

649 REM PULL LEVER
650 IF z=6 AND o(z)=4 AND s=0 THEN m=7:m(4,3)=5:RETURN
655 IF z=6 AND o(z)=4 AND s=1 THEN m=4:RETURN
660 m=2:RETURN

699 REM EXAMINE
700 IF z=2 AND o(z)=l THEN m=12:m(1,2)=3:RETURN
705 IF z=8 AND o(z)=6 THEN m=7:o(10)=6:RETURN
710 IF z=0 AND o(z)=0 THEN m=19:RETURN
740 IF z=1 AND o(z)=0 THEN m=15:RETURN
745 IF z=5 AND o(z)=3 THEN m=22:RETURN
750 IF z=9 AND o(z)=5 AND C=0 THEN o(13)=5:m=7:C=1:RETURN
755 IF z=9 AND o(z)=5 AND C=1 THEN m=4:RETURN
760 IF z=4 AND o(z)=2 AND u=1 THEN m=18:RETURN : REM ** PIRATE TIED
765 IF z=4 AND o(z)=2 AND u=0 THEN m=17:RETURN : REM ** PIRATE SLEEP 
770 IF z=7 AND o(z)=2 AND k=0 THEN m=20:RETURN : REM ** SAFE 
775 IF z=7 AND o(z)=2 AND k=1 THEN m=21:RETURN : REM ** SAFE OPENED 
780 m=4:RETURN

799 REM LOOK
800 m=-1:RETURN

849 REM UNLOCK
850 IF z=7 AND o(z)=2 AND o(10)=-2 AND k=0 THEN M=7:o(14)=l:k=1:RETURN
855 IF z=7 AND o(z)=2 AND o(10)=-2 AND k=1 THEN m=2:RETURN
860 m=2:RETURN

899 REM TALK TO PARROT
900 IF z=1 AND o(z)=l THEN m=15:RETURN
910 m=2:RETURN

949 REM REMOVE PAINTING
950 IF z=3 AND o(z)=2 AND u=1 THEN m=13:o(7)=2:RETURN
960 IF z=3 AND o(z)=2 AND u<1 THEN PRINT m$(8):END

969 REM TIE PIRATE
970 IF z=4 AND o(z)=2 AND o(12)=-2 THEN o(12)=l:m=18:u=1:RETURN
980 m=2:RETURN