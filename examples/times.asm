;; times table

    mov r0, #1
    mov r1, #1
    mov r12, #0
loop:
    str r0, .WriteSignedNum

    mov r2, #times

    str r2, .WriteString
    str r1, .WriteSignedNum

    mov r2, #equals
    str r2, .WriteString

    add r3, r1, r0
    str r1, .WriteSignedNum
    add r1, r1, r0
    mov r2, #newLine
    str r2, .WriteString
    b loop



times:   .ASCIZ " x "
equals:  .ASCIZ " = "
newLine: .ASCIZ "\n"
