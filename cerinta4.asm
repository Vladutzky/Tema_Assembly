.data
	str: .space 200
	chDelim: .asciz " "
        formatScanf: .asciz "%[^\n]s" 
	formatPrintf: .asciz "%d "
        add : .asciz "add"
        sub : .asciz "sub"
        mul: .asciz "mul"
        div: .asciz "div"
        let: .asciz "let"
        rot90d: .asciz "rot90d"
        matrix: .space 1600
        coloane: .space 4
        linii: .space 4
        contor: .space 4
        aparitie_operand: .long 0
        valoare_operand: .space 4
        produs: .space 4   
    	res: .space 4 
        contor_impartire: .long 0
        contor_rotatie: .space 100
        coloane_rotatie: .space 100
        formatPrintn: .asciz "\n"
        zero: .long 0
.text

.global main

main: 
        pushl $str
        pushl $formatScanf
        call scanf
        popl %ebx
        popl %ebx
 citire:
	pushl $chDelim
	pushl $str
	call strtok 
	popl %ebx
	popl %ebx

      
        
       

       pushl $chDelim
	pushl $0
	call strtok 
	popl %ebx
	popl %ebx
	
	movl %eax, res
    
         
       pushl res
       call atoi       #atoi
       popl %ebx 
       movl %eax, linii

        pushl $chDelim
	pushl $0
	call strtok 
	popl %ebx
	popl %ebx

        movl %eax, res

        pushl res
        call atoi       #atoi
        popl %ebx 
        movl %eax, coloane

        movl $matrix, %edi
        movl linii, %eax
        mull coloane
        movl %eax, produs
 
        movl coloane, %eax
        subl $1, %eax
        movl %eax, coloane_rotatie

        
     
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

        pushl res				# este deja un pointer
	pushl $rot90d
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je rotatie

        pushl res				# este deja un pointer
	pushl $let
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       je let_et

       movl zero, %eax
       movl contor, %ecx
       addl %eax, (%edi, %ecx, 4)
       addl $1, %ecx
       movl %ecx, contor

       
       jmp continuare
	
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

       cmp $1, aparitie_operand
       je eticheta_operand

       movl contor, %ecx
       addl %eax, (%edi, %ecx, 4)
       addl $1, %ecx
       movl %ecx, contor

       pushl %eax                                #de adaugat in vector!!!
       jmp continuare

  





 //aici incepea operatii


continuare:
          jmp et_for	

plus:

        pushl linii
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

  
        pushl coloane
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

        movl $0, %ecx
for_plus:
        cmp %ecx, produs
        je continuare

        movl (%edi, %ecx, 4), %eax
        addl valoare_operand, %eax

        pushl %ecx 
        pushl %eax
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
        popl %ecx

        cmp %ecx, produs
        jl continuare
 
        addl $1, %ecx
        jmp for_plus
         
        
minus:
         pushl linii
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

  
        pushl coloane
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

        movl $0, %ecx
for_minus:
        cmp %ecx, produs
        je continuare

        movl (%edi, %ecx, 4), %eax
        subl valoare_operand, %eax

        pushl %ecx 
        pushl %eax
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
        popl %ecx
 
        addl $1, %ecx
        jmp for_minus

inmultire:
        pushl linii
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

  
        pushl coloane
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

        movl $0, %ecx
for_inmultire:
        cmp %ecx, produs
        je continuare

        movl (%edi, %ecx, 4), %eax
        mull valoare_operand

        pushl %ecx 
        pushl %eax
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
        popl %ecx
 
        addl $1, %ecx
        jmp for_inmultire
impartire:
        pushl linii
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

  
        pushl coloane
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

        movl $0, %ecx
        

 

for_impartire:
        movl $0, contor_impartire
        cmp %ecx, produs
        je continuare
        movl valoare_operand, %eax
        pushl %eax

        movl (%edi, %ecx, 4), %eax
        cmp $0, %eax
        jl modul1
        jmp cont

modul1:
   addl $1, contor_impartire
   not %eax
   addl $1, %eax

cont:

        cmp $0, valoare_operand
        jl modul2
        jmp cont2

modul2:
   pushl %eax
   addl $1, contor_impartire
   movl valoare_operand, %eax
   not %eax
   addl $1, %eax
   movl %eax, valoare_operand
   popl %eax

cont2:


     xorl %edx, %edx
     divl valoare_operand
     cmp $1, contor_impartire
     je modulrez
     jmp afisare_impartire

modulrez:

     not %eax
     addl $1, %eax





afisare_impartire:
        pushl %ecx 
        pushl %eax
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
        popl %ecx

        popl %eax
        movl %eax, valoare_operand 
        addl $1, %ecx
        jmp for_impartire

let_et:
        movl $1, aparitie_operand
        jmp continuare
eticheta_operand: 
        movl %eax, valoare_operand
        jmp continuare

rotatie:              
        pushl coloane
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx

        pushl linii
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
 
       movl produs, %eax
       subl coloane, %eax
       movl %eax, %ecx
       movl %ecx, contor_rotatie
for_rotatie:
     movl contor_rotatie, %ecx
     cmp %ecx, produs
     je continuare
afisare_rotatie:
     movl (%edi, %ecx, 4), %eax
     pushl %ecx 
     pushl %eax
     pushl $formatPrintf
     call printf
     popl %ebx
     popl %ebx
     popl %ecx
     cmp %ecx, coloane_rotatie
     jge cont_rotatie
     subl coloane, %ecx
     jmp afisare_rotatie
cont_rotatie:
     addl $1, contor_rotatie
     jmp for_rotatie

                       
    



exit:
  pushl $0
  call fflush
  popl %ebx

  pushl $formatPrintn
  call printf
  popl %ebx


  movl $1, %eax
  xorl %ebx, %ebx
  int $0x80
