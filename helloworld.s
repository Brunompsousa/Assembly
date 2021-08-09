.data
        olamundo:         .asciiz    "Hello world!"

.text


    helloworld:

                daddi     r4,r0,olamundo ; r4 recebe olamundo
                jal        print_string  ; jump and link para a print_string que e uma label

                syscall    0

                #include print.s
