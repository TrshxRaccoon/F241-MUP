;Code doesnt work :(
.model tiny
.186
.data
	numarr dw 1,2,3,4,5,6,7,8,9,9
	testnum dw 0
	index dw 0
	exists dw -1

.code
.startup
	mov bx, index
	mov cx, 10
	
	numarrloop:
		mov al, numarr[bx]
		cmp al, testnum
		je found
		
		inc bx
		loop numarrloop
		jmp done
	
	found:
		mov exists, 0
	
	done:
		ret
.exit
end
