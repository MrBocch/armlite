
MOV r1,  #1        ; i
MOV r2,  #1        ; j
MOV r3,  #0        ; sum 
mov r0, #linez     ; -----------
MOV r10, #x        ; ' x '
MOV r11, #equals   ; ' = ' 
MOV r12, #nline    ; \n
B loop
        
loop:
    CMP r1, #13
    BEQ end
    ; sum
    ADD r3, r3, r1 

    STR r1, .WriteSignedNum
    STR r10,.WriteString
    STR r2, .WriteSignedNum
    STR r11,.WriteString
    ; str sum
    STR r3, .WriteSignedNum

    STR r12,.WriteString 
    ADD r2, r2, #1

    CMP r2, #13
    BEQ setinnerloop
    b loop

setinnerloop:
    ADD r1, r1, #1
    MOV r2, #1
    MOV r3, #0
    STR r0, .WriteString
    b loop

end:
    HALT

; i x j = (i*j)
x: .ASCIZ " x "
equals: .ASCIZ " = "
nline: .ASCIZ "\n"
linez: .ASCIZ "--------------\n"
