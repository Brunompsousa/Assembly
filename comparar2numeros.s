.data

iguais: .asciiz "Os numeros sao iguais! \n"
dif:    .asciiz "Os numeros sao diferentes! \n"
num1:   .word   5
num2:   .word   3


.text

    main:
    
        lw r20,num1(r0)
        lw r21,num2(r0)
        
        beq r20,r21, iguais
        
        daddi r4,r0,dif
        jal print_string
        b end

    iguais:
    
        daddi r4,r0,iguais
        jal print_string

    end:    

        syscall 0


#include print.s