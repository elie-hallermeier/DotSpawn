IDEAL
 
MODEL small
 
STACK 256

DATASEG
	instruction1 db"",13,10
				 db"",13,10
				 db "    Hey you! Welcome to  DotSpawn!",13,10
				 db " $",13,10
	instruction2 db"",13,10
				db"",13,10
				db"",13,10
				db "	Choose one game mode:",13,10
				db"",13,10
				db "	First mode - Press c: click on the squares as fast as you can",13,10
				db "	Max score: 10",13,10
				db "",13,10
				db "	Second mode - Press t: touch the squares before they disapear",13,10
				db "	Max score: 20",13,10
				db "",13,10
				db "	If you hear the sound, you got the point !",13,10
				db"$",13,10
	starting db "	Press any key to start$"
	winmess db "				THE END !!!$"
	escmess db "Press escape to exit and and r to play again$"
	levelmess  db"",13,10
				db"",13,10
				db"",13,10
				db"",13,10
				db"	Level: Press 1 - Easy",13,10
				db"",13,10
				db"	       Press 2 - Medium",13,10
				db"",13,10
				db"	       Press 3 - Hard$",13,10
	x dw ? ;place x
	y dw ? ;place y
	color db ?
	orech dw 20
	rohav dw 20
	col db ?
	re dw ?
	rem db ?
	note dw 4000
	chance dw 0
	crossed db 0
	tofive db 0
	remx dw ?
	remy dw ?
	score db 0
	modeboo db 0
	scoreboo db 0
	soundrem dw 20000
	level dw ?
	
	sart db "                          		   		",13,10
		 db " 	   	                            	",13,10
		db " 	   	                           		",13,10 
		db " 	   	                           	    ",13,10  
		db " 	   	                           	    ",13,10 
		 db "			 ____                          ",13,10 
		 db	"			/  ___|                        ",13,10 
	   	 db "			\ `--.  ___ ___  _ __ __    ",13,10 
		 db "			`--. \/ __/ _ \| '__/ _ \       ",13,10 
		 db "			/\__/ / (_| (_) | | |  __/    ",13,10 
		 db "			\____/ \___\___/|_|  \___|   ",13,10 
		 db " 	   	                            	",13,10 ,'$' 
		 
		
   art2 db "                                                              ",13,10 
		db "                                                              ",13,10
		db "                                                              ",13,10 
		db "                                                              ",13,10 
		db "                                                              ",13,10 
		db "                                                              ",13,10 
		db "	 ____   ____   _____    ____   ____   ____   _    _   _    _  ",13,10 
		db "	|  _ \ /  _ \ /__ __\  / ___\ /  __\ /  _ \ / \  / \ | \  / \ ",13,10
		db "	| | \| | / \|   / \    |    \ |  \/| | / \| | |  | | |  \ | | ",13,10
	    db "	| |_/| | \_/|   | |    \___ | |  __/ | |-|| | |/\| | | | \| | ",13,10 
		db "	|____/ \____/   \_/    \____/ \_/    \_/ \| \_/  \_/ \_/  \_| ",13,10 
		db "	                                                              ",13,10
		db "                                                              ",13,10
		db "                                                              ",13,10
		db "                           By Elie Hallermeier                      ",13,10
		db "                                                              ",13,10 
		db "                                                              ",13,10
		db "                                                              ",13,10
		db "                                                              ",13,10
		db "                                                              ",13,10
		db "                                                              ",13,10 
        db "    PRESS THE SPACEBAR$                                     ",13,10
		
		a0 db"				  ___     		 ",13,10
		   db"				 / _ \			 ",13,10
		   db"				| | | |			 ",13,10
		   db"				| | | |	         ",13,10
		   db"				| |_| |      	 ",13,10
		   db"				 \___/   	",13,10
		   db"	   					   ",13,10
		   db"	   					   ",13,10
		   db"	   					   ",13,10
		   db"	   					   ",13,10
		   db"	   	                 $ ",13,10
		   
		   
		a1 db"                ",13,10
		   db"				  __                 ",13,10
		   db"				 /_ |                ",13,10
		   db"				  | |                ",13,10
		   db"				  | |                ",13,10
		   db"				  | |                ",13,10
		   db"				  |_|                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
		a2 db"                ",13,10
		   db"				  ___                 ",13,10
		   db"				 |__ \                ",13,10
		   db"				    ) |                ",13,10
		   db"				   / /                 ",13,10
		   db"				  / /_                ",13,10
		   db"				 |____|                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
		   
		a3 db"                ",13,10
		   db"				  ____                 ",13,10
		   db"				 |___ \                ",13,10
		   db"				   __) |                ",13,10
		   db"				  |__ <                ",13,10
		   db"				  ___) |                ",13,10
		   db"				 |____/                 ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
		a4 db"				  _  _                 ",13,10
		   db"				 | || |                ",13,10
		   db"				 | || |_                ",13,10
		   db"				 |__   _|                ",13,10
		   db"				    | |                 ",13,10
		   db"				    |_|                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
		a5 db"                ",13,10
		   db"				  _____                 ",13,10
		   db"				 | ____|                ",13,10
		   db"				 | |__                 ",13,10
		   db" 				 |___ \                ",13,10
		   db"				  ___) |                ",13,10
		   db"				 |____/                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
	   a6 db"                ",13,10
		   db"				    __                 ",13,10
		   db"				   / /                 ",13,10
		   db"				  / /_                 ",13,10
		   db"				 | '_ \                ",13,10
		   db"				 | (_) |                ",13,10
		   db"				  \___/                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		
		a7 db"                ",13,10
		   db"				 ______                 ",13,10
		   db"				|____  |                ",13,10
		   db"				     / /                ",13,10
		   db"				    / /                  ",13,10
		   db"				   / /                   ",13,10
		   db"				  /_/                   ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
	   a8 db"				   ___                ",13,10
		   db"				  / _ \                 ",13,10
		   db"				 | (_) |                ",13,10
		   db"				  > _ <                ",13,10
		   db"				 | (_) |                ",13,10
		   db"				  \___/                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
		a9 db"                ",13,10
		   db"				   ___                  ",13,10
		   db"				  / _ \                ",13,10
		   db"				 | (_) |                ",13,10
		   db"				  \__, |                ",13,10
		   db"				    / /                 ",13,10
		   db"				   /_/                  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
	   a10 db"                ",13,10
		   db"				  __  ___                 ",13,10
		   db"				 /_ |/ _ \                ",13,10
		   db"				  | | | | |                ",13,10
		   db"				  | | | | |                ",13,10
		   db"				  | | |_| |                ",13,10
		   db"				  |_|\___/                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
	   a11 db"                ",13,10
		   db"				  __ __                 ",13,10
		   db"				 /_ /_ |                ",13,10
		   db"				  | || |                ",13,10
		   db"				  | || |                ",13,10
		   db"				  | || |                ",13,10
		   db"				  |_||_|                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
	   a12 db"                ",13,10
		   db"                 __ ___  ",13,10
		   db"               /_ |__ \  ",13,10
		   db"                 | |  ) | ",13,10
		   db"                 | | / /   ",13,10
		   db"                 | |/ /_ ",13,10
		   db"                 |_|____| ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
	
	   a13 db"                 __ ____  ",13,10
		   db"                /_ |___ \ ",13,10
		   db"                 | | __) | ",13,10
		   db"                 | ||__ < ",13,10
		   db"                 | |___) | ",13,10
		   db"                 |_|____/  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
		   
	   a14 db"                ",13,10
		   db"                 __ _  _ ",13,10
		   db"                /_ | || |  ",13,10
		   db"                 | | || |_ ",13,10
		   db"                 | |__   _| ",13,10
		   db"                 | |  | |   ",13,10
		   db"                 |_|  |_|  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
	   a15 db"		                 __ _____ ",13,10
		   db"		                /_ | ____| ",13,10
		   db"		                 | | |__  ",13,10
		   db"		                 | |___ \ ",13,10
		   db"		                 | |___) | ",13,10
		   db"		                 |_|____/ ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"               $ ",13,10
		   
	   b16 db"                ",13,10
		   db"	                 __   __  ",13,10
		   db"	                /_ | / / ",13,10
		   db"	                 | |/ /_ ",13,10
		   db"	                 | | '_ \ ",13,10
		   db"	                 | | (_) | ",13,10
		   db"	                 |_|\___/ ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
	   a17 db"                ",13,10
		   db"	                 __ ______ ",13,10
		   db"	                /_ |____  | ",13,10
		   db"	                 | |   / / ",13,10
		   db"	                 | |  / /  ",13,10
		   db"	                 | | / /   ",13,10
		   db"	                 |_|/_/  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
	   a18 db"                ",13,10
		   db"	                 __  ___ ",13,10
		   db"	                /_ |/ _ \ ",13,10
		   db"	                 | | (_) | ",13,10
		   db"	                 | |> _ <  ",13,10
		   db"	                 | | (_) | ",13,10
		   db"	                 |_|\___/  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		  
	   a19 db"                ",13,10
		   db"	                 __  ___  ",13,10
		   db"	                /_ |/ _ \ ",13,10
		   db"	                 | | (_) | ",13,10
		   db"	                 | |\__, | ",13,10
		   db"	                 | |  / / ",13,10
		   db"	                 |_| /_/  ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
	   a20 db"                ",13,10
		   db"	                 ___   ___ ",13,10
		   db"	                |__ \ / _ \  ",13,10
		   db"	                   ) | | | | ",13,10
		   db"	                  / /| | | | ",13,10
		   db"	                 / /_| |_| | ",13,10
		   db"	                |____|\___/ ",13,10
		   db"	                ",13,10
		   db"                ",13,10
		   db"                ",13,10
		   db"                $",13,10
		   
CODESEG
proc Square
	mov bx,[rohav]
big:
	mov cx,[orech]
	push [x]
squar:	
	mov si,cx
	mov bh,0h
	mov cx,[x]
	mov dx,[y]
	mov al,[color]
	mov ah,0ch
	int 10h
	mov ah,00h 
	inc [x]
	mov cx,si
	loop squar
	inc [y]
	pop [x]
	dec bx 
	cmp bx,0
	jne big
	mov ax,[rohav]
	sub [y],ax
	ret
	endp Square
	
proc Columnr
	mov bx,[rohav]
big2:
	mov cx,1
	push [x]
squar2:	
	mov si,cx
	mov bh,0h
	mov cx,[x]
	mov dx,[y]
	mov al,[color]
	mov ah,0ch
	int 10h
	mov ah,00h 
	inc [x]
	mov cx,si
	loop squar2
	inc [y]
	pop [x]
	dec bx 
	cmp bx,0
	jne big2
	mov ax,[rohav]
	sub [y],ax
	ret
	endp Columnr

proc Columnl
	mov bx,[rohav]
big3:
	mov cx,1
	push [x]
squar3:	
	mov si,cx
	mov bh,0h
	mov cx,[x]
	mov dx,[y]
	mov al,[color]
	mov ah,0ch
	int 10h
	mov ah,00h 
	inc [x]
	mov cx,si
	loop squar3
	inc [y]
	pop [x]
	dec bx 
	cmp bx,0
	jne big3
	mov ax,[rohav]
	sub [y],ax
	ret
	endp Columnl
	
proc Scorecheck 
	cmp [score],0
	jne s1
	mov dx,offset a0
	jmp scorecheckend
s1:
	cmp [score],1
	jne s2
	mov dx,offset a1
	call print
	jmp scorecheckend
s2:
	cmp [score],2
	jne s3
	mov dx,offset a2
	call print
	jmp scorecheckend
s3:
	cmp [score],3
	jne s4
	mov dx,offset a3
	call print
	jmp scorecheckend
s4:
	cmp [score],4
	jne s5
	mov dx,offset a4
	call print
	jmp scorecheckend
s5:
	cmp [score],5
	jne s6
	mov dx,offset a5
	call print
	jmp scorecheckend
s6:
	cmp [score],6
	jne s7
	mov dx,offset a6
	call print
	jmp scorecheckend
s7:
	cmp [score],7
	jne s8
	mov dx,offset a7
	call print
	jmp scorecheckend
s8:
	cmp [score],8
	jne s9
	mov dx,offset a8
	call print
	jmp scorecheckend
s9:
	cmp [score],9
	jne s10
	mov dx,offset a9
	call print
	jmp scorecheckend
s10:
	cmp [score],10
	jne s11
	mov dx,offset a10
	call print
	jmp scorecheckend	
s11:
	cmp [score],11
	jne s12
	mov dx,offset a11
	call print
	jmp scorecheckend
s12:
	cmp [score],12
	jne s13
	mov dx,offset a12
	call print
	jmp scorecheckend
s13:
	cmp [score],13
	jne s14
	mov dx,offset a13
	call print
	jmp scorecheckend
s14:
	cmp [score],14
	jne s15
	mov dx,offset a14
	call print
	jmp scorecheckend
s15:
	cmp [score],15
	jne s16
	mov dx,offset a15
	call print
	jmp scorecheckend
s16:
	cmp [score],16
	jne s17
	mov dx,offset b16
	call print
	jmp scorecheckend
s17:
	cmp [score],17
	jne s18
	mov dx,offset a17
	call print
	jmp scorecheckend
s18:
	cmp [score],18
	jne s19
	mov dx,offset a18
	call print
	jmp scorecheckend
s19:
	cmp [score],19
	jne s20
	mov dx,offset a19
	call print
	jmp scorecheckend
s20:
	mov dx,offset a20
	call print
scorecheckend:
	ret	
	endp Scorecheck
proc Randomx
	mov	ah, 2Ch
	int	21h
	
	mov bx,dx
	
	mov ax,8232
	mul bx  ;bx*ax  answer dx:ax
	xor dx,dx
	mov si,280
	div si	;dx+ax/dl  result ax,rest dx
	ret
	endp Randomx
proc Randomy
	mov	ah, 2Ch
	int	21h
	
	mov bx,dx
	
	mov ax,9873
	mul bx  ;bx*ax  answer dx:ax
	xor dx,dx
	mov si,150
	div si ;dl/ax  result ax,rest dx
	ret
	endp Randomy
proc Randomcolor
	mov	ah, 2Ch
	int	21h
	
	mov bx,dx
	
	mov ax,3678
	mul bx  ;bx*ax  answer dx:ax
	xor dx,dx
	mov si,15
	div si ;dl/ax  result ax,rest dx
	ret
	endp Randomcolor
proc Clearscreen
	mov ax,0003h  
	int 10h  
	ret
	endp Clearscreen
proc Print
	mov ah,9h
	int 21h
	ret 
	endp print
	
proc delay
	mov cx,[level]
Delrep:
	push cx
	mov cx,0EA60h
Deldec:
	dec cx
	jnz Deldec
	pop cx
	dec cx
	jnz Delrep
	ret
	endp delay
	
	
proc wins
	mov [note],10000
	mov cx, 20
one:
	mov si,cx
	call sound
	sub [note],400
	mov cx,si
loop one

	mov [note],8000
	mov cx,17	
two:
	mov si,cx
	call sound
	sub [note],400
	mov cx,si
loop two

	mov [note],6000
	mov cx,14
three:
	mov si,cx
	call sound
	sub [note],400
	mov cx,si
loop three

	mov [note],1200
	mov cx,10
l:
	mov si,cx
	call sound
	sub [note],0
	mov cx,si
loop l
	ret
	endp wins
	
proc delay2
	mov cx,11h
Delrep2:
	push cx
	mov cx,0EA60h
Deldec2:
	dec cx
	jnz Deldec2
	pop cx
	dec cx
	jnz Delrep2
	ret
	endp delay2
	

	
proc sound
noise:
	in 	al, 61h
	or 	al, 00000011b
	out 	61h, al
	mov 	al, 0b6h
	out 	43h, al
	mov 	ax, [note]
	out 	42h, al
	mov 	al, ah
	out 	42h, al
	call delay2
	Stop_noise:
	in 	al, 61h
	and	al, 11111100b
	out 61h, al
	ret
	endp sound
		
proc Return
	mov dl,10
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h 
	ret
	endp Return	
	
	
	
start:
	mov ax, @data
	mov ds, ax
	
	call clearscreen
	mov dx,offset art2
	call print
spacebar:
	mov ah,1
	int 21h
	cmp al,32
	jne spacebar
replay:
	mov [score],0
	call clearscreen
	
	mov dx,offset instruction2
	call print
	call return

modecheck:
	mov ah,1
	int 21h
	cmp al,63h
	jne secondcheck
	mov [modeboo],1 ;click mode
	jmp levelcheck
	
secondcheck:
	cmp al,74h
	je secondmod
	jmp modecheck
secondmod:
	mov [modeboo],0 ;noclick
levelcheck:
	call clearscreen

	mov dx,offset levelmess
	call print
truecheck:	
	mov ah,1
	int 21h
	cmp al,49
	jne secondllevelposs
	mov [level],8 ;delay time
	jmp levelcheckend
secondllevelposs:
	cmp al,50
	jne thirdlevelposs
	mov [level],5
	jmp levelcheckend
thirdlevelposs:
	cmp al,51
	jne truecheck
	mov [level],2
levelcheckend:
	call Clearscreen	
	mov ax,13h
	int 10h   ;graphic mode
	mov cx,10
	cmp [modeboo],0
	jne main
	mov cx,20

main:
	mov [re],cx
	mov [chance],0
	mov [crossed],0
	mov [note],4000
	
	call Randomx 
	mov [x],dx
	call Randomy
	mov [y],dx
blackp:
	call Randomcolor
	cmp dl,0
	je blackp
	mov [color],dl
	mov [rem],dl
	mov [orech],20
	mov [rohav],20

	call square
	mov ax,1h
	int 33h

	mov ax,0h
	int 33h

	
jmp bridge2
aid2:
jmp main
bridge2:
	
jmp bridgereplay3
replayaid3:	
jmp replay
bridgereplay3:

	
move:
	cmp [modeboo],0
	je secondstartaid
	cmp [crossed],1
	je leftaid
	cmp [x],299 
	jne right
	mov [crossed],1 ; make crossed 1 if the square arrived to the end 
	add [x],19

right:
	mov [color],0
	call columnr
	call columnr

	
	mov ax,1h
	int 33h
	mov ax,3h
	int 33h 	;cx/2=x   dx=y
	mov al,[rem]
	mov [color],al
	add [x],20
	call columnr
	sub [x],19
	
jmp bridgeleft
leftaid:
jmp left
bridgeleft:

	inc [tofive]
	cmp [tofive],5
	jne clickaid
	
jmp bridgesecondstart
secondstartaid:	
jmp secondstart
bridgesecondstart:	
; blackbug helper	
	mov bx,[x]
	mov [remx],bx
	mov bx,[y]
	mov [remy],bx
	
	sub [x],100
	mov [orech],90
	mov [color],0
	call square
	
	mov [orech],20
	mov al,[rem]
	mov [color],al


	
jmp bridgeaid2
replayaid2:
jmp replayaid3
bridgeaid2:

	mov bx,[remx]
	mov [x],bx
	mov bx,[remy]
	mov [y],bx
	
	mov [tofive],0
	jmp click
	
jmp bridgeclick
clickaid:
jmp click
bridgeclick:	
	
left:
	mov [color],0
	call columnl
	call columnl


	mov ax,1h
	int 33h
	mov ax,3h
	int 33h ;cx/2=x   dx=y
	mov al,[rem]
	mov [color],al
	sub [x],20
	call columnl
	add [x],19
	
	inc [tofive]
	cmp [tofive],5
	jne clickaid
	
	mov bx,[x]
	mov [remx],bx
	mov bx,[y]
	mov [remy],bx

	add [x],5
	mov [color],0
	mov [orech],50
	call square
	
	mov al,[rem]
	mov [color],al
	mov [orech],20
	mov bx,[remx]
	mov [x],bx
	mov bx,[remy]
	mov [y],bx
	
	mov [tofive],0
	
jmp bridgemove
moveaid:
jmp move
bridgemove:

jmp bridgepassed
passedaid:
jmp passed
bridgepassed:

click:
secondstart:
	cmp [modeboo],1
	jne secondmodechance
	inc [chance]
	cmp [chance],320
	je passedaid
	jmp bridge7
secondmodechance:
	inc [chance]
	cmp [chance],100
	je passedaid
jmp bridge7
aid:
jmp aid2
bridge7:

	call delay
	
	mov ax,1h
	int 33h
	
	mov ax,3h
	int 33h ;cx/2=x   dx=y
	
	cmp [modeboo],0
	je secondmode2
    cmp bx,01h
	jne moveaid    ;left click on mouse?

jmp bridgeaid1
replayaid1:
jmp replayaid2
bridgeaid1:

	
secondmode2:
	shr cx, 1   ;get real value of x
	
	dec cx
	dec dx
	dec cx
	dec dx

	mov ah,0Dh
	mov bh,0
    int 10h  ;get pixel color	
	
	cmp al,[rem]	;is it the color we want?
	jne moveaid
nee:
	inc [score]
	call sound
	call sound
	call sound
	sub [note],115

	
passed:	

	mov [color],0
	mov [x],0
	mov [y],0
	mov [rohav],200
	mov [orech],320
	call square		;print a black square in the whole screen
	call square
	call square
	mov cx,[re]
	loop aid
	
	mov ax,3h
	int 10h ;text mode

	
	call clearscreen
	
	mov dx,offset winmess
	call print

	mov dx,offset sart
	call print
	
	call Scorecheck
	
	mov dx,offset escmess
	call print
	
	call wins ;winning sound
lastcheck:
	mov ah,1
	int 21h
	cmp al,27
	je exit
	cmp al,114
	je replayright
	jmp lastcheck
replayright:	
	jmp replayaid1
	
exit: 
 
	mov ah,04Ch
	int 021h
	
	END start

