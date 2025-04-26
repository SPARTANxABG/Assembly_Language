TITLE MASM Template            (main.asm)

INCLUDE Irvine32.inc
.data
myMessage BYTE "Would you like to find the Area or Perimeter (1 for Area, 2 for Perimeter?: ", 0dh, 0ah, 0
myMessage2 BYTE "And for which shape (3 = Rectangle, 4 = Triangle, 5 = Circle)?: ", 0dh, 0ah, 0
myMessage3 BYTE "And for which shape (6 = Rectangle, 7 = Triangle, 8 = Circle)?: ", 0dh, 0ah, 0

myMessageAoR BYTE "Enter lenght: ", 0dh, 0ah, 0
myMessageAoR2 BYTE "Enter width: ", 0dh, 0ah, 0
myMessageAoRA BYTE "The area of the rectangle is: "

myMessageAoT BYTE "Enter lenght: ", 0dh, 0ah, 0
myMessageAoT2 BYTE "Enter width: ", 0dh, 0ah, 0
myMessageAoTA BYTE "The area of the triangle is: "

myMessageAoC BYTE "Enter radius: ", 0dh, 0ah, 0
myMessageAoCA BYTE "The area of the circle is: "

myMessagePoR BYTE "Enter lenght: ", 0dh, 0ah, 0
myMessagePoR2 BYTE "Enter width: ", 0dh, 0ah, 0
myMessagePoRA BYTE "The perimeter of the rectangle is: "

myMessagePoT BYTE "Enter side: ", 0dh, 0ah, 0
myMessagePoT2 BYTE "Enter base: ", 0dh, 0ah, 0
myMessagePoT3 BYTE "Enter another side: ", 0dh, 0ah, 0
myMessagePoTA BYTE "The perimeter of the triangle is: "

myMessagePoC BYTE "Enter radius: ", 0dh, 0ah, 0
myMessagePoCA BYTE "The perimeter of the circle is: "


.code
main PROC

	call clrscr
	mov edx, OFFSET myMessage
	call writestring
	call readint

	cmp eax, 1
	je area1
	cmp eax, 2
	je perimeter2

	area1:
	mov edx, OFFSET myMessage2
	call writestring
	call readint

	cmp eax, 3
	je areaRectangle3
	jmp ending1


	areaRectangle3:
	mov edx, OFFSET myMessageAoR
	call writestring
	call readint
	mov ebx, eax
	mov edx, OFFSET myMessageAoR2
	call writestring
	call readint
	mul ebx
	mov edx, OFFSET myMessageAoRA
	call writestring
	call writeint
	jmp ending1

	cmp eax, 4
	je areaTriangle4
	jmp ending1


	areaTriangle4:
	mov edx, OFFSET myMessageAoT
	call writestring
	call readint
	mov ebx, eax
	mov edx, OFFSET myMessageAoT2
	call writestring
	call readint
	mul ebx
	mov ebx, 2
	div ebx
	mov edx, OFFSET myMessageAoTA
	call writestring
	call writeint
	jmp ending1

	cmp eax, 5
	je areaCircle5
	jmp ending1

	areaCircle5:
	mov edx, OFFSET myMessageAoC
	call writestring
	call readint
	mov ebx, eax
	mul ebx
	mov ebx, 3
	mul ebx
	mov edx, OFFSET myMessageAoCA
	call writestring
	call writeint

	perimeter2:
	mov edx, OFFSET myMessage3
	call writestring
	call readint

	cmp eax, 6
	je perimeterRectangle6
	jmp ending1

	perimeterRectangle6:
	mov edx, OFFSET myMessagePoR
	call writestring
	call readint
	mov ebx, eax
	mov edx, OFFSET myMessagePoR2
	call writestring
	call readint
	add eax, ebx
	mov ebx, 2
	mul ebx
	mov edx, OFFSET myMessagePoRA
	call writestring
	call writeint

	cmp eax, 7
	je perimeterTriangle7
	jmp ending1

	perimeterTriangle7:
	mov edx, OFFSET myMessagePoT
	call writestring
	call readint
	mov ebx, eax
	mov edx, OFFSET myMessagePoT2
	call writestring
	call readint
	add eax, ebx
	mov ebx, eax
	mov edx, OFFSET myMessagePoT3
	call writestring
	call readint
	add eax, ebx
	mov edx, OFFSET myMessagePoTA
	call writestring
	call writeint

	cmp eax, 8
	je perimeterCircle8
	jmp ending1

	perimeterCircle8:
	mov edx, OFFSET myMessagePoC
	call writestring
	call readint
	mov ebx, 3
	mul ebx
	mov ebx, 2
	mul ebx
	mov edx, OFFSET myMessagePoCA
	call writestring
	call writeint

	ending1:
	exit

main ENDP

END main