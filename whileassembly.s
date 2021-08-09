.data

    text: .asciiz "i= "
    i:  .word   0
    N:  .word   100

.text


main:

    lw r7,i(r0) 
    lw r11,N(r0)     
   
loop:

    slt r15,r7,r11  ;i menor que N? 1sim LOOP, 0nao END
    beqz r15,end    ;igual a 0 - end
   
    daddi r4,r0,text
    jal print_string
    
    dadd r4,r0,r7
    jal print_int
    
    daddi r7,r7,11
    
    b loop

end:

    syscall 0
    
    
    
#include print.s