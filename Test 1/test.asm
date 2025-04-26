TITLE MASM Template            (main.asm)

INCLUDE Irvine32.inc
.data
myMessage BYTE " = EAX", 0dh, 0ah, 0
myMessage2 BYTE " = EBX", 0dh, 0ah, 0

.code
main PROC
	call clrscr

	;input a number to mirror
	call readint
	call writeint
	mov edx, OFFSET myMessage
	call WriteString
	mov ebx, eax
	call crlf

	;input a second number to mirror
	call readint
	call writeint
	mov edx, OFFSET myMessage2
	call WriteString
	mov ecx, eax
	call crlf

	;swap numbers between registers
	mov eax, ecx
	call writeint
	mov edx, OFFSET myMessage
	call WriteString

	mov eax, ebx
	call writeint
	mov edx, OFFSET myMessage2
	call WriteString
	call crlf

	exit
main ENDP

END main