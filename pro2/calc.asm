option equ 10h
ad equ 00h
su equ 01h
mu equ 10h
di equ 11h	
org 0000h
	mov r0,#ad
	mov r1,#su
	mov r2,#mu
	mov r3,#di
	mov r5,#10h
	mov a,#5h
	
	cjne r0,#option,l2
	add a,r5
	sjmp $
	l2:
	cjne r1,#option,l3
	subb a,r5
	sjmp $
		l3:cjne r2,#option,l5
	mov b,r1
	mul ab
	sjmp $
		l5:
		end