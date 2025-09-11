     mov r12, #.Pixel767
     mov r11, #.Pixel0
     mov r0, #p0

loop:
     ldr r1, [r0]
     str r1, [r11]
     adds r0, r0, #0x4
     adds r11, r11, #0x4
     cmp r11, r12
     beq nextFrame
     b loop

nextFrame:
     mov r11, #.Pixel0
     b loop

;; copy paste the frames here.
;; the emulator cant handle that many frames idk what to do.
;; make my own emulator?
