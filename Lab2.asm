.model tiny
.186
.data
arr db 5h,4h,3h,6h,7h,2h,8h,1h,9h,0h
result db 1 dup(?)
.code
	.startup
		lea si,arr
		mov cx,10
		mov bl,[si]
		
		loop1:
			cmp bl,[si]
			jnc notLarger
			mov bl,[si]
			notLarger:
				inc si
				dec cx
				jnz loop1
		lea si,result
		mov [si],bl
	int 21
end

mov ax,10h
mov bx,20h