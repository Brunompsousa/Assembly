.data

textoi: .asciiz "Os numeros sao iguais \n "
texto1: .asciiz "o primeiro numero e maior \n "
texto2: .asciiz "o segundo numero e maior \n  "
i:  .word   1
j:  .word   1

.text

    main:
        
        lw r16,i(r0)        ; i vai para o r19
        lw r17,j(r0)        ; j vai para o r20
            
        slt r18,r16,r17  ; se r16 < r17, r18 = 1
        
        beq r16,r17,iguais
        
        bnez r18, num1maior   ; imprim o j
        
            daddi r4,r0,texto2
            jal print_string
        
            j end
            
    num1maior:
        
        daddi r4,r0,texto1
        jal print_string
        
        j end
        
    iguais:
    
        daddi r4,r0,textoi
        jal print_string
        
    end:
        
        syscall 0

#include print.s