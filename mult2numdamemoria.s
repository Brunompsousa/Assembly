.data

n1:     .word   100000000000
n2:     .word   30000000000000

.text
    main:
    
        lw r6,n1(r0)
        lw r7,n2(r0)
        
        dmult r6,r7
        
        mflo r4
    
    jal print_int
    
    end:
    
syscall 0
    
        #include print.s