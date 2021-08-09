.data

n1:     .word   5
n2:     .word   6
texto1: .asciiz "String imprimida no main \n"
texto2: .asciiz "Resultado da multiplicacao: "
texto3: .asciiz "Teste salto!"

.text

main:

    daddi r4,r0,texto1
    jal print_string
    j jump1

end:

    syscall 0
    
    #include print.s

JUMP2:

    daddi r4,r0,texto3
    jal print_string
    j end

jump1:

    daddi r4,r0,texto2
    jal print_string
    lw r10, n1(r0)
    lw r11, n2(r0)
    dmult r10,r11
    mflo r4
    jal print_int
    j JUMP2
    


