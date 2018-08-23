count equ 05h
min equ 50h
max equ 51h
org 0100h
	elements : db 10h,11h,7h,3h,16h
org 0000h
mov dptr,#elements
clr a
movc a,@a+dptr
mov min,a
mov max,a
mov r0,#count
mov r1,#count
dec r0
mini:
inc dptr
clr a
movc a,@a+dptr
mov r1,a
subb a,min
jnc skip
mov min,r1
 skip:djnz r0,mini
 maxi:
 inc dptr
clr a
movc a,@a+dptr
mov r1,a
subb a,max
jc skip1
mov max,r1
 skip1:djnz r1,maxi
 
end
	

	
                                                                                          