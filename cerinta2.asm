.data
	str: .space 200
	chDelim: .asciz " "
        formatScanf: .asciz "%[^\n]s" 
	formatPrintf: .asciz "%d\n"
        add : .asciz "add"
        sub : .asciz "sub"
        mul: .asciz "mul"
        div: .asciz "div"
       
	res: .space 4 
.text

.global main

main: 
        pushl $str
        pushl $formatScanf
        call scanf
        popl %ebx
        popl %ebx
 
	pushl $chDelim
	pushl $str
	call strtok 
	popl %ebx
	popl %ebx
	
	movl %eax, res
    
         
       pushl res
       call atoi       #atoi
       popl %ebx 

        
       cmp $0, %eax
       je operatie

       pushl %eax
       jmp continuare

        









operatie:

	
	pushl res				# este deja un pointer
	pushl $add
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je plus

        pushl res				# este deja un pointer
	pushl $sub
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je minus

        pushl res				# este deja un pointer
	pushl $mul
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je inmultire

        pushl res				# este deja un pointer
	pushl $div
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je impartire
	
et_for:
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
	
	cmp $0, %eax
	je exit

	movl %eax, res
        pushl res
        call atoi       
        popl %ebx  

       cmp $0, %eax
       je operatie

       pushl %eax
       jmp continuare

  






operatii:	
	pushl res				# este deja un pointer
	pushl $add
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je plus

        pushl res				# este deja un pointer
	pushl $sub
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je minus

        pushl res				# este deja un pointer
	pushl $mul
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je inmultire

        pushl res				# este deja un pointer
	pushl $div
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je impartire
 continuare:

	
	jmp et_for	

plus:

  	
        popl %eax
        popl %ebx
        addl %ebx, %eax
        pushl %eax
        jmp continuare

minus:
        popl %ebx
        popl %eax
        subl %ebx, %eax
        pushl %eax
        jmp continuare

inmultire:
        popl %eax
        popl %ebx
        mull %ebx
        pushl %eax
        jmp continuare
impartire:
        popl %ebx
        popl %eax
        xorl %edx, %edx
        divl %ebx, %eax
        pushl %eax
        jmp continuare


exit:
        popl %eax
        pushl %eax
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
