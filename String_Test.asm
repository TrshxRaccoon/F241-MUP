.model tiny
.186
.data
	message db 'String Test..$' ;$ symbol is used to indicate end of string

.code
.startup
	lea dx, message
	mov ah, 09h
	int 21h
	
	mov ah, 4Ch
	int 21
.exit
end
