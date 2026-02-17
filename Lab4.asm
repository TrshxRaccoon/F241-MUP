.model tiny
.186
.data
	num dw 5
	factorial dw 2 dup('$')
.code
.startup
	mov ax,1
	mov cx,num
	call fact
	mov factorial,ax

.exit
	fact:
		cmp cx,0
		jz done
		mul cx
		dec cx
		call fact
		done:
			ret
end
