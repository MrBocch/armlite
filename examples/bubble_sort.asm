; input 10 numbers
; bubble sorts them
; how do you properly chose memory location for array?
; (ideally, it would be automatically very after the end of the code)
; make a print array function how?
; parameterize everything

mov r0, #0          ; i
mov r1, #0          ; j
mov r2, #40         ; size = (sizeof(i32) * 10)
mov r3, #240        ; &arr

input_array:
	ldr r4, .InputNum
	str r4, [r3 + r0]
	add r0, r0, #4              ; add by word size
	cmp r0, r2                  ; size of array
	blt input_array
	mov r0, #before_sort
	str r0, .WriteString
	mov r0, #0
	b bubble_sort

bubble_sort:
	cmp r0, r2               
	beq break                   ; break if i == size 
	cmp r1, r2
	beq reset_j                 ; if j == size { i++; j = i }

	ldr r11, [r3 + r0]          ; a[i]
	ldr r12, [r3 + r1]          ; a[j]
	cmp r11, r12 	
	bgt swap 
after_swap: 
	add r1, r1, #4
	b bubble_sort 

reset_j:
	add r0, r0, #4             ; i++
	mov r1, r0                 ; j = i
	b bubble_sort

swap:
	str r11, [r3 + r1]
	str r12, [r3 + r0]
	b after_swap
 
break:
	halt

before_sort: .asciz "Before sorting\n"
after_sort: .asciz  "\nAfter sorting\n" 

end_of_code:

