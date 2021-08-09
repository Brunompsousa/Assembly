.data



.text

    main:
    
    daddi r6,r0,10
    daddi r7,r0,2
    dmult r6,r7
    mflo r4
    
    jal print_int

    end:

syscall 0

#include print.s