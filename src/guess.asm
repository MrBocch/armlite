; r0 for printing
; R1 for storing tries
; R2 for storing guess
; r12 contains the number
setup:
    ldr r12, .Random
    and r12, r12, #127
    add r12, r12, #1
    mov r1, #0
    mov r0, #guessNum
    str r0, .WriteString
    B gameLoop
gameLoop:
      add r1, r1, #1
      cmp r1, #5

      BEQ lostGame
      ldr r2, .InputNum
      cmp r2, r12
      BGT pTooHigh
      BLT pTooLow
      BEQ wonGame
wonGame:
      mov r0, #wonStr
      str r0, .WriteString
      HALT
lostGame:
      mov r0, #lostStr
      str r0, .WriteString
      HALT
pTooHigh:
      mov r0, #tooHigh
      str r0, .WriteString
      B gameLoop
pTooLow:
      mov r0, #tooLow
      str r0, .WriteString
      B gameLoop

guessNum: .ASCIZ "Guess a number between 1 and 128\n"
tooLow: .ASCIZ "Too low!\n"
tooHigh: .ASCIZ "Too high!\n"
wonStr: .ASCIZ "You won!\n"
lostStr: .ASCIZ "You lost!\n"
