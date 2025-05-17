# .text
# .globl main

# main: 
# li t0,5
# li t1, 10
# add t2, t0, t1

# li a7,10
# ecall

# .text
# .globl main

# main:
# li t0,0x12345678
# li t1,10
# add t2,t0,t1

# li a7,10
# ecall

.text
.globl main
main:
addi t1,t1,10
auipc t0,4
li a7,10
ecall