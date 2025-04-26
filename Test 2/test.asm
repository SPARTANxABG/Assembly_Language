TITLE MASM Template            (main.asm)

INCLUDE Irvine32.inc
.data
myMessage BYTE "Please enter your name: ", 0dh, 0ah, 0
myMessage2 BYTE "Please enter two numbers: ", 0dh, 0ah, 0
myMessage3 BYTE "The largest is ", 0
myMessage4 BYTE " ", 0dh, 0ah, 0
myMessage5 BYTE "The largest of the two largest is: ", 0
myMessage6 BYTE "Enter one more number: ", 0dh, 0ah, 0
myMessage7 BYTE " the order of the numbers are "
name1 byte "              ",0
name2 byte "              ",0ah,0dh,0

.code

getName proc

	mov edx, offset mymessage
	call writestring
	mov edx, ebx
	mov ebx, eax
	call readstring			

ret
getName endp

gettwo proc

	mov edx, OFFSET myMessage2
	call writestring
	call readint
	mov ecx, eax
	call readint

	cmp eax, ecx
	jg bigger1
	mov edx, OFFSET myMessage3
	mov eax, ecx
	call writestring
	call writeint
	mov ebx, ecx
	jmp ending1

	bigger1:
	mov edx, OFFSET myMessage3
	call writestring
	call writeint
	mov ebx, eax

	ending1:
	mov edx, OFFSET myMessage4

ret
gettwo endp

gettwo1 proc

	mov edx, OFFSET myMessage2
	call writestring
	call readint
	mov ecx, eax
	call readint

	cmp eax, ecx
	jg bigger1
	mov edx, OFFSET myMessage3
	mov eax, ecx
	call writestring
	call writeint
	mov ecx, eax
	jmp ending1

	bigger1:
	mov edx, OFFSET myMessage3
	call writestring
	call writeint
	mov ecx, eax

	ending1:
	mov edx, OFFSET myMessage4

ret
gettwo1 endp

gettwo2 proc

	cmp ecx, ebx
	jg bigger1
	mov edx, OFFSET myMessage5
	mov eax, ebx
	call writestring
	call writeint
	jmp ending1

	bigger1:
	mov edx, OFFSET myMessage5
	call writestring
	call writeint
	
	ending1:
	mov edx, OFFSET myMessage4

ret
gettwo2 endp

getone proc

	mov edx, OFFSET myMessage6
	call writestring
	call readint
	
ret
getone endp

main PROC

	call clrscr
	mov ecx, sizeof name1
	mov ebx, offset name1
	call getname

	call gettwo
	mov edx, OFFSET myMessage4
	call writestring

	call gettwo1
	mov edx, OFFSET myMessage4
	call writestring

	call gettwo2
	mov edx, OFFSET myMessage4
	call writestring

	call getone
	cmp eax, ebx
	jg bigger2
	cmp eax, ecx
	jg bigger3

	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET myMessage7
	call writestring
	call writeint
	mov eax, ecx
	call writeint
	mov eax, ebx
	call writeint
	jmp ending2

	bigger2:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET myMessage7
	call writestring
	mov edx, eax
	mov eax, ebx
	call writeint
	mov eax, ecx
	call writeint
	mov eax, edx
	call writeint
	jmp ending2

	bigger3:
	mov edx, OFFSET name1
	call writestring
	mov edx, OFFSET myMessage7
	call writestring
	mov edx, eax
	mov eax, ecx
	call writeint
	mov eax, edx
	call writeint
	mov eax, ebx
	call writeint
	jmp ending2

	ending2:
	mov edx, OFFSET myMessage4

	exit
main ENDP

END main