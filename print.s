				.data
string_int:		.asciiz	"%d\n"
str_addr:		.space	8 
params_int:		.space 	8

params_string: 	.space 	8


				.text
print_string:
				sw 		r4, params_string(r0)
				daddi 	r14, r0, params_string
				syscall 5
				jr 		r31
				
print_int:		sw 		r4, params_int(r0)
				daddi	r8, r0, string_int
				sw		r8, str_addr(r0)
				daddi 	r14, r0, str_addr
				syscall 5
				jr 		r31
				
