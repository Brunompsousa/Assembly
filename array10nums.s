.data

list:   .word   0,1,2,3,4,5,6,7,8,9
size:   .word   10


.text

    main:
    

        lw r9,list(r0)  ;ponteiro do array 
        dadd r10,r0,r0  ;contador
        lw r11,size(r0) ;tamanho do array
        
    Loop:
        
        beq r10,r11, end    ;Salta quando o contador for igual ao tamanho do array (ou seja quando for r10=10 < r11 = size = 10)
        
        lw r4, 0(r9)    ;Mete o conteudo de onde o ponteiro esta a apontar no r4
        jal print_int
        
        daddi r9,r9,8   ;Aumenta o endereço do ponteiro 
        daddi r10,r10,1 ;Aumenta o contador
    
        j Loop          ;salta para o Loop para voltar a repetir
    
    end:

    syscall 0 


#include print.s
