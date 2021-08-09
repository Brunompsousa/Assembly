.data

    text: .asciiz "i= "
    i:  .word   0
    N:  .word   10

.text

main:

    lw r10,i(r0)
    lw r11,N(r0)
    
loop:

    dsub r17,r10,r11
    bgez r17,end

    daddi r4,r0,text
    jal print_string
    
    dadd r4,r0,r10
    jal print_int

    daddi r10,r10,1
    b loop
    
end:

    syscall 0


#include print.s