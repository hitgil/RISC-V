.data 

prompt: .string: .asciiz "Hello Welcome Sneha"

.text

la a1,prompt
li a0,4
ecall

li a0,10
ecall
