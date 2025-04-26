TITLE MASM Template            (main.asm)

INCLUDE Irvine32.inc
.data
myMessage BYTE "Aseembly language program example", 0dh, 0ah, 0

.code
main PROC
	call clrscr

	;input a number to mirror
	call readint
	call writeint
	mov ebx, eax
	call crlf

	;input a second number to mirror
	call readint
	call writeint
	call crlf

	;add the two numbers
	add ebx, eax
	mov eax, ebx
	call writeint
	call crlf

	;move addition to ecx
	mov ecx, eax

	;input a third number to mirror
	call readint
	call writeint
	mov ebx, eax
	call crlf

	;input a fourth number to mirror
	call readint
	call writeint
	call crlf

	;subtract the two numbers
	sub ebx, eax
	mov eax, ebx
	call writeint
	call crlf

	;subtract addition and subtraction
	sub eax, ecx
	call writeint
	call crlf

	;display message on screen
	mov edx, OFFSET myMessage
	call WriteString

	exit
main ENDP

END main