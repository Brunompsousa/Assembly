                .data
                
idade1:		.word	25 ; criacao de variavel int com o valor 25
idade2:		.word	0  ; criacao de variavel a 0

                .text
                
print_idade:      
                lw          r4,idade1(r0) ; carrega o valor da variavel idade1 para o r4
                sw          r4,idade2(r0) ; passa o valor que esta no r4 para a variavel idade2
                lw          r4,idade2(r0) ; carrega o valor da variavel idade2 para o registo r4  
                jal         print_int     ; imprime o que esta no registo r4
                
end:
                syscall 0 ; terminar o programa
                
                #include print.s ; incluir o print
