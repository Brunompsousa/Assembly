                .data
                
idade_int:		.word	25 ; criacao de variavel int com o valor 25

                .text
                
print_idade:      
                lw          r4,idade_int(r0) ; meter o valor da variavel idade_int para o resgisto 4
                jal         print_int ; imprime o que esta no registo r4
                
end:
                syscall 0 ; terminar o programa
                
                #include print.s ; incluir o print

                