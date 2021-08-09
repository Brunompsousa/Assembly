.data

n1:     .word 3
n2:     .word 7

.text

    main:
    
        lw r6,n1(r0)
        lw r7,n2(r0)
        dsub r4,r7,r6
    
    jal print_int
    
    end:
    
    syscall 0
    
#include print.s