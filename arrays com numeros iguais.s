.data

list:   .word   80 ; 8*10   alucar sempre o espaço para o conteudo.
size:   .word   10


.text

    main:
    

        lw r9,list(r0)  ;ponteiro do array
        dadd r17,r0,r0  ;contador
        
        lw r19,list(r0) ;ponteiro 2 do array 
        dadd r10,r0,r0  ;contador 2
        
        lw r11,size(r0) ;tamanho do array
        
 Loopgravar:
        
        beq r17,r11, loopimprime    ;Salta quando o contador for igual ao tamanho do array (ou seja quando for r10=10 < r11 = size = 10)
        
        sw r17, 0(r9)    ;Envia o que esta no r17 para o 0+r* (sentido inverso mete o que esta no r17 para o endereco que comeca no 0 ate ao r17)
        
        daddi r9,r9,8   ;Aumenta o endereço do ponteiro 
        daddi r17,r17,1 ;Aumenta o contador
    
        j Loopgravar    ;salta para o Loop para voltar a repetir
           
        
        
    Loopimprime:
        
        beq r10,r11, end    ;Salta quando o contador for igual ao tamanho do array (ou seja quando for r10=10 < r11 = size = 10)
        
        lw r4, 0(r19)    ;Mete o conteudo de onde o ponteiro esta a apontar no r4  (carrega endereco para o r4)
        jal print_int
        
        daddi r19,r19,8   ;Aumenta o endereço do ponteiro 
        daddi r10,r10,1 ;Aumenta o contador
    
        j Loopimprime  ;salta para o Loop para voltar a repetir
    
    end:

    syscall 0 


#include print.s
