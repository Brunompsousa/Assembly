.data

num1:       .word   5
num2:       .word   3

.text

    main:
    
    lw r2,num1(r0)
    lw r3,num2(r0)
    dadd r4,r2,r3
    
    jal print_int
    
    end:
    
syscall 0


#include print.s
