TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

ArrayNumbers BYTE "Please enter a number: ", 0dh, 0ah, 0

Array1 DWORD 5 dup(0)
Space1 BYTE " ", 0
Star BYTE "*", 0

.Code

GetArrays1 PROC

	mov esi, OFFSET Array1
	mov ecx, 5
	label1:
		mov edx, OFFSET ArrayNumbers
		call writestring
		call readint
		mov [esi], eax
		add esi, 4

	loop label1		

	mov esi, OFFSET Array1
	mov ecx, 5
	label2:
		mov eax, [esi]
		call writeint
		add esi, 4
		mov edx, OFFSET Space1
		call writestring

	loop label2

ret
GetArrays1 endp

AddStar PROC

	mov edx, OFFSET Star
	call writestring

AddStar endp

Stars PROC

;--------------------------------------------------------------
	
	call crlf
	call crlf
	mov esi, OFFSET Array1
	mov ecx, 1

	mov eax, [esi]
	xor edx, edx
	mov ebx, 10
	idiv ebx
	mov ecx, eax

	cmp ecx, 0
	je Done1

	loop1:
		mov edx, OFFSET Star
		call writestring
	loop loop1

	Done1:
		mov edx, OFFSET Space1
		call writestring

;--------------------------------------------------------------

	call crlf
	call crlf
	mov esi, OFFSET Array1
	add esi, 4
	mov ecx, 1
	
	mov eax, [esi]
	xor edx, edx
	mov ebx, 10
	idiv ebx
	mov ecx, eax

	cmp ecx, 0
	je Done2

	loop2:
		mov edx, OFFSET Star
		call writestring
	loop loop2

	Done2:
		mov edx, OFFSET Space1
		call writestring

;--------------------------------------------------------------

	call crlf
	call crlf
	mov esi, OFFSET Array1
	add esi, 4
	add esi, 4
	mov ecx, 1

	mov eax, [esi]
	xor edx, edx
	mov ebx, 10
	idiv ebx
	mov ecx, eax

	cmp ecx, 0
	je Done3

	loop3:
		mov edx, OFFSET Star
		call writestring
	loop loop3

	Done3:
		mov edx, OFFSET Space1
		call writestring

;--------------------------------------------------------------

	call crlf
	call crlf
	mov esi, OFFSET Array1
	add esi, 4
	add esi, 4
	add esi, 4
	mov ecx, 1

	mov eax, [esi]
	xor edx, edx
	mov ebx, 10
	idiv ebx
	mov ecx, eax

	cmp ecx, 0
	je Done4

	loop4:
		mov edx, OFFSET Star
		call writestring
	loop loop4

	Done4:
		mov edx, OFFSET Space1
		call writestring

;--------------------------------------------------------------

	call crlf
	call crlf
	mov esi, OFFSET Array1
	add esi, 4
	add esi, 4
	add esi, 4
	add esi, 4
	mov ecx, 1

	mov eax, [esi]
	xor edx, edx
	mov ebx, 10
	idiv ebx
	mov ecx, eax

	cmp ecx, 0
	je Done5

	loop5:
		mov edx, OFFSET Star
		call writestring
	loop loop5

	Done5:
		mov edx, OFFSET Space1
		call writestring

;--------------------------------------------------------------

ret
Stars endp

main PROC

	call GetArrays1

	call Stars

	exit
main ENDP

END main