.data

num1:       .word   3
num2:       .word   8

.text

    lw r5,num1(r0)
    lw r6,num2(r0)
    dadd r4,r5,r6
    
    jal print_int
syscall 0


#include print.s
