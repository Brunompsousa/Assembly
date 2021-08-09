.data

list:   .word   0,1,2,3,4,9,5,7,8,6
size:   .word   10


.text

    main:
    
        lw r18,list(r0)                 ;Ponteiro do array  r18
        dadd r10,r0,r0                  ;Contador           r10
        dadd r22,r0,r0                  ;Maior numero       r22

        lw r11,size(r0)                 ;Tamanho do array   r11

        jal maior                       ;funcao para ver qual o maior numero do array

        dadd r4, r0,r22                 ;Mete o conteudo de onde o ponteiro esta a apontar no r4
        jal print_int                   ;Imprime o numero maior do array

        j end                           ;Salta para terminar o programa
    
    
    
    
    maior:                          ;funcao para ver qual o maior valor do array
    
        beq r10,r11, fimciclo           ;Salta quando o contador for igual ao tamanho do array (ou seja quando for r10=10 < r11 = size = 10)

        lw r12, 0(r9)                   ;carrega o valor que esta a ser apontado para o r12
        
        slt r7,r22,r12                  ;comparacao
        
        beqz r7, maiorcont              ;se r7=0 entao ele nao guarda, caso r7!=0 entao ele vai guardar o valor no r22
        
        dadd r22,r12,r0  ;passa o maior numero para o r20, pois este sera impresso no main
            
    
    maiorcont:
        
        daddi r9,r9,8   ;Aumenta o endereço do ponteiro 
        daddi r10,r10,1 ;Aumenta o contador
     
    
        j maior          ;salta para o inicio e volta a repetir
    
    
    fimciclo:
    
        jr r31




    end:

        syscall 0 


#include print.s