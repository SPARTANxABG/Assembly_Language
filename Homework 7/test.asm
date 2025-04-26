TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

average1 dword 0
average2 dword 0
average3 dword 0

myMessage BYTE "Student number ",0
myMessage1 BYTE "Please enter your name: ", 0dh, 0ah, 0
myMessage2 BYTE ", please enter 5 grades: ", 0dh, 0ah, 0
mymessage3 byte "grade number ",0
mymessage4 byte ":  ",0
myMessage5 byte ", the average is: ", 0
myMessage6 BYTE " ", 0dh, 0ah, 0

myMessageA BYTE " You got an A!", 0dh, 0ah, 0
myMessageB BYTE " You got an B!", 0dh, 0ah, 0
myMessageC BYTE " You got an C!", 0dh, 0ah, 0
myMessageF BYTE " You got an F :(", 0dh, 0ah, 0

name1 byte "              ",0
name2 byte "              ",0
name3 byte "              ",0

.code

getName proc

	mov edx, offset myMessage1
	call writestring
	mov edx, ebx
	mov ebx, eax
	call readstring			

ret
getName endp

getAverage1 proc

	L2:

	mov eax, edx
	mov edx, OFFSET mymessage3
	call writestring
	mov edx, eax
	mov eax, 6
	sub eax, ecx
	call writeint
	mov eax, edx
	mov edx, OFFSET mymessage4
	call writestring
	mov edx, eax
	call readint
	add edx, eax
	mov eax, edx
	loop L2

ret
getAverage1 endp

main PROC

	call clrscr
	mov ecx, sizeof name1
	mov ebx, offset name1
	call getName

	mov ecx, sizeof name2
	mov ebx, offset name2
	call getName

	mov ecx, sizeof name3
	mov ebx, offset name3
	call getName

	mov ecx, 3
	L1:
	mov ebx, ecx
	mov edx, OFFSET myMessage
	call writestring
	mov eax, 4
	sub eax, ecx
	call writeint
	mov edx, OFFSET mymessage2
	call writestring
	
	mov ecx, 5
	mov edx, 0

	call getaverage1

	cmp ebx, 1
	je nameOne
	jne check2ndname

	nameOne:
	mov average1, eax
	jmp done

	check2ndname:
	cmp ebx, 2

	je nameTwo
	jne nameThree

	nameTwo:
	mov average2, eax
	jmp done

	nameThree:
	mov average3, eax
	jmp done

	done:
	mov eax, edx
	mov average1, edx
	call crlf
	call crlf

	mov ecx, ebx
	loop L1
	
	;----------------------------------------------------------------

	cmp average3, 89
	jg gradeA
	jmp compareB

	gradeA:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average3
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageA
	call writestring
	call crlf
	jmp nextGrade1

	compareB:
	cmp average3, 79
	jg gradeB
	jmp compareC

	gradeB:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average3
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageB
	call writestring
	call crlf
	jmp nextGrade1

	compareC:
	cmp average3, 69
	jg gradeC
	jmp compareF

	gradeC:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average3
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageC
	call writestring
	call crlf
	jmp nextGrade1

	compareF:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average3
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageF
	call writestring
	call crlf
	jmp nextGrade1

	;------------------------------------------------------------------

	nextGrade1:
	cmp average2, 89
	jg gradeA1
	jmp compareB1

	gradeA1:
	mov edx, OFFSET name2
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average2
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageA
	call writestring
	call crlf
	jmp nextGrade2

	compareB1:
	cmp average2, 79
	jg gradeB1
	jmp compareC1

	gradeB1:
	mov edx, OFFSET name2
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average2
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageB
	call writestring
	call crlf
	jmp nextGrade2

	compareC1:
	cmp average2, 69
	jg gradeC1
	jmp compareF1

	gradeC1:
	mov edx, OFFSET name2
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average2
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageC
	call writestring
	call crlf
	jmp nextGrade2

	compareF1:
	mov edx, OFFSET name2
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average2
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageF
	call writestring
	call crlf
	jmp nextGrade2

	;-----------------------------------------------------------------------

	nextGrade2:
	cmp average1, 89
	jg gradeA2
	jmp compareB2

	gradeA2:
	mov edx, OFFSET name3
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average1
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageA
	call writestring
	call crlf
	jmp ending1

	compareB2:
	cmp average1, 79
	jg gradeB2
	jmp compareC2

	gradeB2:
	mov edx, OFFSET name3
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average1
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageB
	call writestring
	call crlf
	jmp ending1

	compareC2:
	cmp average1, 69
	jg gradeC2
	jmp compareF2

	gradeC2:
	mov edx, OFFSET name3
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average1
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageC
	call writestring
	call crlf
	jmp ending1

	compareF2:
	mov edx, OFFSET name3
	call writestring
	mov edx, OFFSET mymessage5
	call writestring
	mov eax, average1
	mov ebx, 5
	xor edx, edx
	div ebx
	call writeint
	mov edx, OFFSET mymessage6
	call writestring
	mov edx, OFFSET myMessageF
	call writestring
	call crlf
	jmp ending1

	ending1:
	exit
main ENDP

END main