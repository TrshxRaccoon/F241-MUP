.model tiny
.186
.data
	max db 21 ;20 chars + enter (max possible: 255)
	act db ? ;actual count of keys entered by the user. (max possible in this case is 20 chars as 21st char will be Enter key)
	inp db 22 dup('$') ;20 chars + enter + '$'
	disnl db 0dh,0ah,'$' ;defines a byte string containing carriage return (0dh), line feed which moves the cursor to the next line (0ah) and '$'
.code
.startup
	lea dx,max
	mov ah,0ah
	int 21h
	
	lea dx,disnl
	mov ah,09h
	int 21h
	
	lea dx,inp
	mov ah,09h
	int 21h
	
	mov ah,4ch
	int 21h
end
