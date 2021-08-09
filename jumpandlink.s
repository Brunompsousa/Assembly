.data

n1: .word 5
displayMessage:  .asciiz "Procedimento.\n"



.text

main:
    
    jal Procedimento
    lw r4, n1(r0)
    jal print_int
    j end


Procedimento:
    
    dadd r12,r0,r31
    daddi r4, r0, displayMessage
    jal print_string
    dadd r31,r0,r12
    jr r31

end:

syscall 0


#include print.s