# Bad Apple but in armlite

Its written that armlite has up to 1mb of memory.

> ARMlite has a total of 1MB of memory i.e. 1048567 (8-bit) bytes in the range 0x00000 to 0xfffff.
> Programming reference manual_v1_3.pdf#page=4

If my script generates 40 frames (low-rez mode) that turns out to be 500kB,
I could either do a more efficient encoding to save more space but
even if its more efficient it wont be able to play

I could either write my own virtual ARMlite simulator, then write a assembler for it. Sounds like fun, idk how I'll port over the screen and all the other features that ARMlite has. BUT I will port bad apple into something.
