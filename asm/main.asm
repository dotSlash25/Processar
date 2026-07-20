#include "directives.asm"

ldx r0, 0
ldx r1, 4
ldx r2, 4
ldx r3, 1
.mul:
    add r0, r1
    sub r2, r3
    jnz .mul
ldx r1, 3
ldx r2, 3
.mul2:
    add r0, r1
    sub r2, r3
    jnz .mul2
ldx r1, 2
ldx r2, 2
.mul3:
    add r0, r1
    sub r2, r3
    jnz .mul3
hlt
