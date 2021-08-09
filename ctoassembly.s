.data

textoi: .asciiz "valor do i "
textoj: .asciiz "valor do j "
i:  .word   10
j:  .word   20

.text

    main:
        
        lw r16,i(r0)        ; i vai para o r19
        lw r17,j(r0)        ; j vai para o r20
            
        dsub r18,r17,r16
        
        
        
        bgez r18, inci   ; 
        
        addi r17,r17,1   ; increment o j
        j end
            
    inci:

        addi r16,r16,1  ; incrementa o i

    end:
        
        daddi r4,r0,textoi
        jal print_string

        dadd r4,r0,r16
        jal print_int
        
        daddi r4,r0,textoj
        jal print_string
        
        dadd r4,r0,r17
        jal print_int
        
        
        syscall 0

#include print.s