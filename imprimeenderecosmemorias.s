.data

list:   .word   80 ; 8*10   alucar sempre o espaço para o conteudo.
size:   .word   10


.text

    main:
    
        
        lw r19,list(r0) ;ponteiro do array 
        dadd r10,r0,r0  ;contador
        
        lw r11,size(r0) ;tamanho do array           
        
        
    Loopimprime:
        
        beq r10,r11, end    ;Salta quando o contador for igual ao tamanho do array (ou seja quando for r10=10 < r11 = size = 10)
        
        dadd r4,r19,r0    ;Mete o conteudo de onde o ponteiro esta a apontar no r4  (carrega endereco para o r4)
        jal print_int
        
        daddi r19,r19,8   ;Aumenta o endereço do ponteiro 
        daddi r10,r10,1   ;Aumenta o contador
    
        j Loopimprime  ;salta para o Loop para voltar a repetir
    
    end:

    syscall 0 


#include print.s
