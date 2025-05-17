# .data 

# prompt: .string: .asciiz "Hello Welcome Sneha"
# # 0x10000000: 48 65 6C 6C   => H e l l  
# # 0x10000004: 6F 20 57 6F   => o   W o  
# # 0x10000008: 6C 63 6F 6D   => l c o m  
# # 0x1000000C: 65 20 53 6E   => e   S n  
# # 0x10000010: 65 68 61 00   => e h a \0


# .text

# la a1,prompt
# li a0,4
# ecall

# li a0,10
# ecall

# # 0x00000014	73	00	00	00
# # 0x00000010	13	05	A0	00
# # 0x0000000C	73	00	00	00
# # 0x00000008	13	05	40	00
# # 0x00000004	93	85	05	00
# # 0x00000000	97	05	00	10

# Input charaters and print it

.data
prompt: .string " Enter a chacter!\n"
buffer: .string " ,WELCOME\n" 

.text
main:


li a0,4
la a1,prompt
ecall

# li a0,4
# la a1,buffer
# ecall

li a0,0x130
la a1,buffer
ecall

read_char:
li a0,0x131
ecall
li t0,1
beq a0,t0,read_char
beq a0,zero,finish

la t1,buffer
sb a1,0(t1)

# li a0,11
# ecall

finish:
li a0,4
la a1,buffer
ecall


li a0,10
ecall
