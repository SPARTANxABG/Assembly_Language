TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

myMessage1 BYTE "Please enter a number: ", 0dh, 0ah, 0
biggestnumber1 BYTE "The biggest number is: "
smallestNumber1 BYTE "The smallest number is: "
averageAnswer1 BYTE "The average is: "
myMessage6 BYTE " ", 0dh, 0ah, 0


arr1 dword 10 dup(0)

bigNumber1 dword 0
smallNumber1 dword 0
average1 dword 0

.Code

getbiggest1 PROC

	mov esi, OFFSET arr1
	mov ecx, 10
	for1:
		mov eax, [esi]
		add esi, 4
		cmp [esi], eax
		jnl biggest1
		mov bigNumber1, eax
		jmp ending1

		biggest1:
		inc ecx
		jmp for1

		ending1:
		mov eax, bignumber1
		mov edx, OFFSET biggestnumber1
		call writestring
		call writeint
		mov edx, OFFSET myMessage6
		call writestring

ret
getbiggest1 endp

getSmallest1 PROC

	mov esi, OFFSET arr1
	mov ecx, 10
	for2:
		mov eax, [esi]
		add esi, 4
		cmp [esi], eax
		jng smallest1
		mov smallNumber1, eax
		jmp ending2

		smallest1:
		inc ecx
		jmp for2

		ending2:
		mov eax, smallnumber1
		mov edx, OFFSET smallestnumber1
		call writestring
		call writeint
		mov edx, OFFSET myMessage6
		call writestring

ret
getsmallest1 endp

getaverage1 PROC

	mov esi, OFFSET arr1
	mov ecx, 10
	for3:
		mov eax, 0
		mov ecx, 0
		cmp [esi], eax
		jnl average
		add eax, [esi]
		add esi, 4
		add average1, eax
		inc ecx
		jmp for3

		average:
		mov average1, eax
		mov ebx, 10
		xor edx, edx
		idiv ebx

		mov edx, OFFSET averageanswer1
		call writestring
		call writeint
		mov edx, OFFSET myMessage6
		call writestring
		
ret
getaverage1 endp

main PROC

	mov esi, OFFSET arr1
	mov ecx, 10
	label1:
		mov edx, OFFSET myMessage1
		call writestring
		call readint
		mov [esi], eax
		add esi, 4
	
	loop label1
	
	call getbiggest1
	jmp next

	next:
	call getsmallest1
	jmp next2

	next2:
	call getaverage1

	exit
main ENDP

END main