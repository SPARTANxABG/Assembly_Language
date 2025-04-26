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

	;swap numbers between registers
	mov ecx, eax
	mov eax, ebx
	mov ebx, ecx

	mov edx, OFFSET myMessage
	call WriteString

	exit
main ENDP

END main