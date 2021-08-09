.data

n1:         .word    2

.text

    main:
    
    lw r4,n1(r0)
    dsll r4,r4,0        ;r4 recebe r4(2) x 2^0
    jal print_int
    
    dsll r4,r4,1        ;r4 recebe r4(2) x 2^1
    jal print_int
    
    dsll r4,r4,2        ;r4 recebe r4(2) x 2^2
    jal print_int

    dsll r4,r4,3        ;r4 recebe r4(2) x 2^3
    jal print_int

    dsll r4,r4,4        ;r4 recebe r4(2) x 2^4
    jal print_int
    
    dsll r4,r4,5        ;r4 recebe r4(2) x 2^5
    jal print_int

    dsll r4,r4,6        ;r4 recebe r4(2) x 2^6
    jal print_int
    
    dsll r4,r4,7        ;r4 recebe r4(2) x 2^7
    jal print_int

    dsll r4,r4,8        ;r4 recebe r4(2) x 2^8
    jal print_int
    
    end:

syscall 0

            #include print.s