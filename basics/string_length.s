# C style algorithm to calculate string length 

# int count = 0;
# char *str = "Sneha is awesowm :)"
# int main(){
# white(*str){
#     count++;
#     str++;
# }
# print(count);
# return 0;
# }

# to store variables we need data segment
.data 
count: .word 0
str: .string " Srushti is a doctor "

.text 
main: 
# initialization
la t0 , count
lw t1 , 0(t0) #to is address, dereference it and store it in t1 
la t2 , str




while:
lb t3,0(t2) #load the current byte (*str) to t3 derfrencincing the pointer
beqz t3,finish #check if t3 (*str == 0) 
addi t1,t1,1 #count++ im im incresing the value
addi t2,t2,1 # str ++//im incresing the pointer
j while

finish:
li a0,1
mv a1, t1
ecall

sw t1,0(t0)
li s0,10
ecall




