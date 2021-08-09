.data

n1:     .word   9
n2:     .word   2
result:    .asciiz " Quociente: "
resto:    .asciiz " Resto: "

.text

main:

    lw r6,n1(r0)
    lw r7,n2(r0)
    ddiv r6,r7

    daddi r4,r0,result
    jal print_string
    mflo r4
    jal print_int
    
    daddi r4,r0,resto
    jal print_string
    mfhi r4
    jal print_int

end:

    syscall 0

#include print.s