.data
   sir16b: .space 101
   sir2b: .space 401
   formatScanf: .asciz "%s"
   formatPrintf: .asciz "%d "
   formatPrintfc: .asciz "%c "
   formatPrintfminus: .asciz "-"
   formatPrintflet: .asciz "let "
   formatPrintfadd: .asciz "add "
   formatPrintfsub: .asciz "sub "
   formatPrintfmul: .asciz "mul "
   formatPrintfdiv: .asciz "div "
   formatPrintendl: .asciz "\n"
   rezultat: .space 4
   putere: .long 2
   doi : .long 2
   trei: .long 3
   zece: .long 10
   unsprezece: .long 11
   contor : .long 3
   suta: .long 100

   indexSb2: .long 0
.text
.global main
main:
   pushl $sir16b
   pushl $formatScanf
   call scanf
   popl %ebx
   popl %ebx

  movl $sir16b, %edi
  movl $sir2b, %esi

for:  
     movb (%edi, %ecx, 1), %al
     cmp $0, %al
     je  buba2
     

     cmp $48, %al
     je  eticheta0

     cmp $49, %al
     je  eticheta1

     cmp $50, %al
     je  eticheta2


     cmp $51, %al
     je  eticheta3


     cmp $52, %al
     je  eticheta4


     cmp $53, %al
     je  eticheta5

     cmp $54, %al
     je  eticheta6

     cmp $55, %al
     je  eticheta7

     cmp $56, %al
     je  eticheta8

     cmp $57, %al
     je  eticheta9

     cmp $65, %al
     je  eticheta10

     cmp $66, %al
     je  eticheta11

     cmp $67, %al
     je  eticheta12

     cmp $68, %al
     je  eticheta13

     cmp $69, %al
     je  eticheta14

     cmp $70, %al
     je  eticheta15



               
continuare:
     incl %ecx
     jmp for

 eticheta0:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta1:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta2:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta3:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare
eticheta4:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta5:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta6:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta7:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
        
        popl %ecx
	jmp continuare

eticheta8:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta9:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta10:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta11:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta12:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta13:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare
	
eticheta14:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

eticheta15:
        pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, indexSb2
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp continuare

   xorl %ecx, %ecx

buba2:
/////////////////////////////////////////////////////////////////////////////////////////////

         movl $0, %ecx
   
 
for2:    movl $0, %eax
         movl $0, %ebx 
         
         movl $0, %edx
for2smecher:
         xorl %eax, %eax 
         cmp  indexSb2, %ecx
         jge et_exit
         pushl %ebx
         pushl %ecx
         addl $1, %ecx
         movb (%esi, %ecx, 1), %al
                            #aici  NU MAI e o problema
         subl $48, %eax
buba:
         mull zece
         incl %ecx
         movl %eax, %ebx
         movb (%esi, %ecx, 1), %al ##############aici da bine teoreti#
         subl $48, %eax
         add %ebx, %eax
         popl %ecx                               
         popl %ebx
         cmp $0, %eax
         je intreg_semn
         cmp $1, %eax
         je variabila_semn
         cmp $10, %eax
         je operatie
continuarefor2:
         
         addl $9, %ecx
         jmp for2


intreg_semn:
   
    xorl %eax, %eax
    addl $3, %ecx 
    movb (%esi, %ecx, 1), %al
    cmp $48, %eax
    je intreg
    
    

afisare_minus_intreg:
       
        
        pushl %ecx
        
        pushl $formatPrintfminus
	call printf
	 
        popl %ebx
        popl %ecx
        xorl %ebx, %ebx
        
                            
         

intreg: 
       
       movl $0, rezultat
       movl $2, putere           #intra toate nepuse pe stiva
        
                              #de vazut daca mai am nevoie de movl $sir2b, %edi    
                
       
       xorl %eax, %eax
       xorl %edx, %edx
paritate_intreg:
        addl $8, %ecx                    #de pus 8
        movb (%esi, %ecx, 1), %al
        subl $48, %eax
        subl $1, %ecx
        cmp $0, %eax
        je for_intreg

adaugareparitate_intreg:
          incl rezultat  #a adaugat desi era nr par
          




        
       
for_intreg:     
         cmp contor, %ecx
         je afisare_intreg             
         movb (%esi, %ecx, 1), %al
         subl $48, %eax
         cmp $1, %eax
         je adaugare_intreg
continuarefor_intreg:
         pushl %ecx          # de aici
         pushl %ebx          #
         mov putere, %ebx    #
         movl %ebx, %ecx     #
         shl $1, %ecx        #
         mov %ecx, putere    #
         popl %ebx           #pana aici e bine
         popl %ecx           #inclusiv
         subl $1, %ecx
         jmp for_intreg
         
adaugare_intreg:
       pushl %eax
       movl  putere, %eax
       addl %eax, rezultat
       popl %eax
                                       #a
       jmp continuarefor_intreg
       
afisare_intreg:
	
	pushl %ecx
	pushl rezultat
	pushl $formatPrintf
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2

variabila_semn: 
       xorl %eax, %eax
    addl $3, %ecx 
    movb (%esi, %ecx, 1), %al
    cmp $48, %eax
    je variabila
    
    

afisare_minus_variabila:
       
        
        pushl %ecx
        
        pushl $formatPrintfminus
	call printf
	 
        popl %ebx
        popl %ecx
        xorl %ebx, %ebx
                            
         

variabila: 
       
       movl $0, rezultat
       movl $2, putere           #intra toate nepuse pe stiva
        
                              #de vazut daca mai am nevoie de movl $sir2b, %edi    
                
       
       xorl %eax, %eax
       xorl %edx, %edx
paritate_variabila:
        addl $8, %ecx                    #de pus 8
        movb (%esi, %ecx, 1), %al
        subl $48, %eax
        subl $1, %ecx
        cmp $0, %eax
        je for_variabila

adaugareparitate_variabila:
          incl rezultat  
          




        
       
for_variabila:     
         cmp contor, %ecx
         je afisare_variabila             
         movb (%esi, %ecx, 1), %al
         subl $48, %eax
         cmp $1, %eax
         je adaugare_variabila
continuarefor_variabila:
         pushl %ecx          # de aici
         pushl %ebx          #
         mov putere, %ebx    #
         movl %ebx, %ecx     #
         shl $1, %ecx        #
         mov %ecx, putere    #
         popl %ebx           #pana aici e bine
         popl %ecx           #inclusiv
         subl $1, %ecx
         jmp for_variabila
         
adaugare_variabila:
       pushl %eax
       movl  putere, %eax
       addl %eax, rezultat
       popl %eax
                                       #aici baga 80 in eax dzeu stie de ce
       jmp continuarefor_variabila
       
afisare_variabila:
	
	pushl %ecx
	pushl rezultat
	pushl $formatPrintfc
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2

 
operatie: 
        movl $0, rezultat
        pushl %edx
        xorl %edx, %edx
        addl $9, %ecx
        movb (%esi, %ecx, 1), %al
        subl $48, %eax
        mull suta
        movl %eax, %ebx
        incl %ecx
        movb (%esi, %ecx, 1), %al
        subl $48, %eax
        mull zece
        addl %eax, %ebx
        incl %ecx
        movb (%esi, %ecx, 1), %al 
        subl $48, %eax                                 #de adaugat contorul la afisarea fiecaruia
        addl %eax, %ebx
        subl $8, %ecx
        movl %ebx, rezultat
        popl %edx
        cmp $0, rezultat
        je afisare_let
        cmp $1, rezultat
        je afisare_add
        cmp $10, rezultat
        je afisare_sub
        cmp $11, rezultat
        je afisare_mul
        cmp $100, rezultat
        je afisare_div


afisare_let: 
        pushl %ecx
	pushl rezultat
	pushl $formatPrintflet
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2        
          
afisare_add: 
        pushl %ecx
	pushl rezultat
	pushl $formatPrintfadd
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2        
          
afisare_sub: 
        pushl %ecx
	pushl rezultat
	pushl $formatPrintfsub
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2        
          
afisare_mul: 
        pushl %ecx
	pushl rezultat
	pushl $formatPrintfmul
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2        
          
afisare_div: 
        pushl %ecx
	pushl rezultat
	pushl $formatPrintfdiv
	call printf 
	popl %ebx 
	popl %ebx
        popl %ecx
        addl $12, contor
        jmp continuarefor2        
          
           




     

         

       

et_exit:

 
 pushl $0
 call fflush
 popl %ebx

 pushl $formatPrintendl
 call printf
 popl %ebx
  

   movl $1, %eax
   xorl %ebx, %ebx
   int $0x80 
