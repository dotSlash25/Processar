# const r0 = 0b00
# const r1 = 0b01
# const r2 = 0b10
# const r3 = 0b11

# ruledef {
    add {rga: u2}, {rgb: u2} => 0x0 @ rga  @ rgb  @ 0x00
    sub {rga: u2}, {rgb: u2} => 0x1 @ rga  @ rgb  @ 0x00
    ldx {reg: u2}, {val: i8} => 0x2 @ reg  @ 0b00 @ val
    mov {rga: u2}, {rgb: u2} => 0x3 @ rga  @ rgb  @ 0x00
    jmp {adr: u8}            => 0x4 @ 0x0  @ adr
    jnz {adr: u8}            => 0x5 @ 0x0  @ adr
    hlt                      => 0x6 @ 0x000
    str {reg: u2}, {adr: u4} => 0x7 @ 0b00 @ reg  @ 0x0 @ adr
    ldm {reg: u2}, {adr: u4} => 0x8 @ reg  @ 0b00 @ 0x0 @ adr
}

#bankdef benk
{
    bits = 16
    addr = 0x0000
    size = 0x4000
    outp = 0x0
}
