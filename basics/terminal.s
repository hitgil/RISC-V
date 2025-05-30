.data
prompt_one: .string  " Enter your name \n"
buffer: .string "                    "
prompt_two: .string " You have entered "


.text
main:
    # initialization
    la t0,buffer

    # print prompt
    li a0,4
    la a1,prompt_one
    ecall

    # call subroutine
    jal read_string

    li a0,4
    la a1,prompt_two
    ecall

    li a0,4
    la a1,buffer
    ecall

    li a0,10
    ecall

read_string:
    li a0,0x130
    ecall

    read_char:
    li a0,0x131
    ecall

    li t1,1
    beq a0,t1,read_char
    beq a0,zero,finish

    sb a1,0(t0)
    addi t0,t0,1
    # jal read_char #because you don’t need to save a return address each time
    j read_char

finish:
    sb zero,0(t0)
    jr ra
     