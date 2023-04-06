.data
	str: .space 200
	chDelim: .asciz " "
        formatScanf: .asciz "%[^\n]s" 
	formatPrintf: .asciz "%d\n"
        add : .asciz "add"
        sub : .asciz "sub"
        mul: .asciz "mul"
        div: .asciz "div"
        let: .asciz "let"
         variabila :.space 100
        
      
        a: .asciz "a"
        bec_a: .long 0
        valoare_a: .long 0 
       
        b: .asciz "b"
        bec_b: .long 0
        valoare_b: .long 0 
       
        c: .asciz "c"
        bec_c: .long 0
        valoare_c: .long 0 

        d: .asciz "d"
        bec_d: .long 0
        valoare_d: .long 0 
       
        e: .asciz "e"
        bec_e: .long 0
        valoare_e: .long 0 
       
        f: .asciz "f"
        bec_f: .long 0
        valoare_f: .long 0 
 
        g: .asciz "g"
        bec_g: .long 0
        valoare_g: .long 0 
       
        h: .asciz "h"
        bec_h: .long 0
        valoare_h: .long 0 
       
        i: .asciz "i"
        bec_i: .long 0
        valoare_i: .long 0 

        j: .asciz "j"
        bec_j: .long 0
        valoare_j: .long 0 
       
        k: .asciz "k"
        bec_k: .long 0
        valoare_k: .long 0 
       
        l: .asciz "l"
        bec_l: .long 0
        valoare_l: .long 0 

        m: .asciz "m"
        bec_m: .long 0
        valoare_m: .long 0 
       
        n: .asciz "n"
        bec_n: .long 0
        valoare_n: .long 0 
       
        o: .asciz "o"
        bec_o: .long o
        valoare_o: .long o 

        p: .asciz "p"
        bec_p: .long 0
        valoare_p: .long 0 
       
        q: .asciz "q"
        bec_q: .long 0
        valoare_q: .long 0 
       
        s: .asciz "s"
        bec_s: .long 0
        valoare_s: .long 0 

        t: .asciz "t"
        bec_t: .long 0
        valoare_t: .long 0 
       
        r: .asciz "r"
        bec_r: .long 0
        valoare_r: .long 0 
       
        u: .asciz "u"
        bec_u: .long 0
        valoare_u: .long 0 

        v: .asciz "v"
        bec_v: .long 0
        valoare_v: .long 0 
       
        w: .asciz "w"
        bec_w: .long 0
        valoare_w: .long 0 
       
        x: .asciz "x"
        bec_x: .long 0
        valoare_x: .long 0 

        y: .asciz "y"
        bec_y: .long 0
        valoare_y: .long 0 
       
        z: .asciz "z"
        bec_z: .long 0
        valoare_z: .long 0 
       
        
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
         
       pushl res				# becul poate fi 2, si atunci se adauga in stiva x, deoarece i a fost atribuita o valoare, ori 0, caz in care e prima oara si atribui lui bec=1
       pushl $a
       call strcmp
       popl %ebx
       popl %ebx
       

       cmp $0, %eax
       je eticheta_a

        pushl res
        pushl $b
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_b

       pushl res
        pushl $c
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_c

        pushl res
        pushl $d
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_d

        pushl res
        pushl $e
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_e

       pushl res
        pushl $f
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_f

        pushl res
        pushl $g
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_g

        pushl res
        pushl $h
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_h

        pushl res				
	pushl $i
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_i

        pushl res
        pushl $j
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_j

       pushl res
        pushl $k
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_k

        pushl res
        pushl $l
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_l

        pushl res
        pushl $m
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_m

       pushl res
        pushl $n
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_n

        pushl res
        pushl $o
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_o

       pushl res
        pushl $p
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_p


         pushl res				
	pushl $q
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_q

        pushl res
        pushl $r
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_r

       pushl res
        pushl $s
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_s

        pushl res
        pushl $t
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_t

        pushl res
        pushl $u
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_u

       pushl res
        pushl $v
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_v

        pushl res
        pushl $w
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_w

       pushl res
        pushl $x
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_x

       pushl res
        pushl $y
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_y

       pushl res
        pushl $z
	call strcmp
	popl %ebx
	popl %ebx
       cmp $0, %eax
       je eticheta_z




       
	
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
	pushl $let
	call strcmp
	popl %ebx
	popl %ebx

       cmp $0, %eax
       jmp verificare_bec
       je continuare
	
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

eticheta_a: 
         cmp $2, bec_a        
         jl adaugare_bec_a
         pushl valoare_a
         jmp continuare     

eticheta_b: 
         cmp $2, bec_b        
         jl adaugare_bec_b
         pushl valoare_b
         jmp continuare  

eticheta_c: 
         cmp $2, bec_c        
         jl adaugare_bec_c
         pushl valoare_c
         jmp continuare  

eticheta_d: 
         cmp $2, bec_d        
         jl adaugare_bec_d
         pushl valoare_d
         jmp continuare                   

eticheta_e: 
         cmp $2, bec_e        
         jl adaugare_bec_e
         pushl valoare_e
         jmp continuare     

eticheta_f: 
         cmp $2, bec_f        
         jl adaugare_bec_f
         pushl valoare_f
         jmp continuare  

eticheta_g: 
         cmp $2, bec_g       
         jl adaugare_bec_g
         pushl valoare_g
         jmp continuare  

eticheta_h: 
         cmp $2, bec_h        
         jl adaugare_bec_h
         pushl valoare_h
         jmp continuare 

eticheta_i: 
         cmp $2, bec_i        
         jl adaugare_bec_i
         pushl valoare_i
         jmp continuare     

eticheta_j: 
         cmp $2, bec_j        
         jl adaugare_bec_j
         pushl valoare_j
         jmp continuare  

eticheta_k: 
         cmp $2, bec_k        
         jl adaugare_bec_k
         pushl valoare_k
         jmp continuare  

eticheta_l: 
         cmp $2, bec_l        
         jl adaugare_bec_l
         pushl valoare_l
         jmp continuare 

eticheta_m: 
         cmp $2, bec_m        
         jl adaugare_bec_m
         pushl valoare_m
         jmp continuare     

eticheta_n: 
         cmp $2, bec_n        
         jl adaugare_bec_n
         pushl valoare_n
         jmp continuare  

eticheta_o: 
         cmp $2, bec_o        
         jl adaugare_bec_o
         pushl valoare_o
         jmp continuare  

eticheta_p: 
         cmp $2, bec_p        
         jl adaugare_bec_p
         pushl valoare_p
         jmp continuare 

eticheta_q: 
         cmp $2, bec_q        
         jl adaugare_bec_q
         pushl valoare_q
         jmp continuare     

eticheta_r: 
         cmp $2, bec_r        
         jl adaugare_bec_r
         pushl valoare_r
         jmp continuare  

eticheta_s: 
         cmp $2, bec_s        
         jl adaugare_bec_s
         pushl valoare_s
         jmp continuare  

eticheta_t: 
         cmp $2, bec_t        
         jl adaugare_bec_t
         pushl valoare_t
         jmp continuare 

eticheta_u: 
         cmp $2, bec_u        
         jl adaugare_bec_u
         pushl valoare_u
         jmp continuare     

eticheta_v: 
         cmp $2, bec_v        
         jl adaugare_bec_v
         pushl valoare_v
         jmp continuare  

eticheta_w: 
         cmp $2, bec_w        
         jl adaugare_bec_w
         pushl valoare_w
         jmp continuare  

eticheta_x: 
         cmp $2, bec_x        
         jl adaugare_bec_x
         pushl valoare_x
         jmp continuare 

eticheta_y: 
         cmp $2, bec_y        
         jl adaugare_bec_y
         pushl valoare_y
         jmp continuare     

eticheta_z: 
         cmp $2, bec_z        
         jl adaugare_bec_z
         pushl valoare_z
         jmp continuare 

adaugare_bec_a:
        movl $1, bec_a 
        jmp continuare 
adaugare_bec_b:
        movl $1, bec_b
        jmp continuare  
adaugare_bec_c:
        movl $1, bec_c
        jmp continuare 
adaugare_bec_d:
        movl $1, bec_d
        jmp continuare  
adaugare_bec_e:
        movl $1, bec_e
        jmp continuare  
adaugare_bec_f:
        movl $1, bec_f
        jmp continuare  
adaugare_bec_g:
        movl $1, bec_g
        jmp continuare  
adaugare_bec_h:
        movl $1, bec_h
        jmp continuare  
adaugare_bec_i:
        movl $1, bec_i
        jmp continuare  
adaugare_bec_j:
        movl $1, bec_j
        jmp continuare  
adaugare_bec_k:
        movl $1, bec_k
        jmp continuare  
adaugare_bec_l:
        movl $1, bec_l
        jmp continuare  
adaugare_bec_m:
        movl $1, bec_m
        jmp continuare 
adaugare_bec_n:
        movl $1, bec_n
        jmp continuare  
adaugare_bec_o:
        movl $1, bec_o
        jmp continuare  
adaugare_bec_p:
        movl $1, bec_p
        jmp continuare  
adaugare_bec_q:
        movl $1, bec_q
        jmp continuare  
adaugare_bec_r:
        movl $1, bec_r
        jmp continuare  
adaugare_bec_s:
        movl $1, bec_s
        jmp continuare  
adaugare_bec_t:
        movl $1, bec_t
        jmp continuare  
adaugare_bec_u:
        movl $1, bec_u
        jmp continuare  
adaugare_bec_v:
        movl $1, bec_v
        jmp continuare  
adaugare_bec_w:
        movl $1, bec_w
        jmp continuare  
adaugare_bec_x:
        movl $1, bec_x
        jmp continuare  
adaugare_bec_y:
        movl $1, bec_y
        jmp continuare  
adaugare_bec_z:
        movl $1, bec_z
        jmp continuare  

verificare_bec:
         cmp $1, bec_a
         je atribuire_valoare_a
         cmp $1, bec_b
         je atribuire_valoare_b
         cmp $1, bec_c
         je atribuire_valoare_c
         cmp $1, bec_d
         je atribuire_valoare_d
         cmp $1, bec_e
         je atribuire_valoare_e
         cmp $1, bec_f
         je atribuire_valoare_f
         cmp $1, bec_g
         je atribuire_valoare_g
         cmp $1, bec_h
         je atribuire_valoare_h
         cmp $1, bec_i
         je atribuire_valoare_i
         cmp $1, bec_j
         je atribuire_valoare_j
         cmp $1, bec_k
         je atribuire_valoare_k
         cmp $1, bec_l
         je atribuire_valoare_l
         cmp $1, bec_m
         je atribuire_valoare_m
         cmp $1, bec_n
         je atribuire_valoare_n
         cmp $1, bec_o
         je atribuire_valoare_o
         cmp $1, bec_p
         je atribuire_valoare_p
         cmp $1, bec_q
         je atribuire_valoare_q
         cmp $1, bec_r
         je atribuire_valoare_r
         cmp $1, bec_s
         je atribuire_valoare_s
         cmp $1, bec_t
         je atribuire_valoare_t
         cmp $1, bec_u
         je atribuire_valoare_u
         cmp $1, bec_v
         je atribuire_valoare_v
         cmp $1, bec_w
         je atribuire_valoare_w
         cmp $1, bec_x
         je atribuire_valoare_x
         cmp $1, bec_y
         je atribuire_valoare_y
         cmp $1, bec_z
         je atribuire_valoare_z
         
          
atribuire_valoare_a:
        popl %eax
        movl %eax, valoare_a
        movl $2, bec_a
        jmp continuare
atribuire_valoare_b:
        popl %eax
        movl %eax, valoare_b
        movl $2, bec_b
        jmp continuare
atribuire_valoare_c:
        popl %eax
        movl %eax, valoare_c
        movl $2, bec_c
        jmp continuare
atribuire_valoare_d:
        popl %eax
        movl %eax, valoare_d
        movl $2, bec_d
        jmp continuare
atribuire_valoare_e:
        popl %eax
        movl %eax, valoare_e
        movl $2, bec_e
        jmp continuare
atribuire_valoare_f:
        popl %eax
        movl %eax, valoare_f
        movl $2, bec_f
        jmp continuare
atribuire_valoare_g:
        popl %eax
        movl %eax, valoare_g
        movl $2, bec_g
        jmp continuare
atribuire_valoare_h:
        popl %eax
        movl %eax, valoare_h
        movl $2, bec_h
        jmp continuare
atribuire_valoare_i:
        popl %eax
        movl %eax, valoare_i
        movl $2, bec_i
        jmp continuare
atribuire_valoare_j:
        popl %eax
        movl %eax, valoare_j
        movl $2, bec_j
        jmp continuare
atribuire_valoare_k:
        popl %eax
        movl %eax, valoare_k
        movl $2, bec_k
        jmp continuare
atribuire_valoare_l:
        popl %eax
        movl %eax, valoare_l
        movl $2, bec_l
        jmp continuare        
atribuire_valoare_m:
        popl %eax
        movl %eax, valoare_m
        movl $2, bec_m
        jmp continuare
atribuire_valoare_n:
        popl %eax
        movl %eax, valoare_n
        movl $2, bec_n
        jmp continuare
atribuire_valoare_o:
        popl %eax
        movl %eax, valoare_o
        movl $2, bec_o
        jmp continuare
atribuire_valoare_p:
        popl %eax
        movl %eax, valoare_p
        movl $2, bec_p
        jmp continuare
atribuire_valoare_q:
        popl %eax
        movl %eax, valoare_q
        movl $2, bec_q
        jmp continuare
atribuire_valoare_r:
        popl %eax
        movl %eax, valoare_r
        movl $2, bec_r
        jmp continuare
atribuire_valoare_s:
        popl %eax
        movl %eax, valoare_s
        movl $2, bec_s
        jmp continuare
atribuire_valoare_t:
        popl %eax
        movl %eax, valoare_t
        movl $2, bec_t
        jmp continuare
atribuire_valoare_u:
        popl %eax
        movl %eax, valoare_u
        movl $2, bec_u
        jmp continuare
atribuire_valoare_v:
        popl %eax
        movl %eax, valoare_v
        movl $2, bec_v
        jmp continuare
atribuire_valoare_w:
        popl %eax
        movl %eax, valoare_w
        movl $2, bec_w
        jmp continuare
atribuire_valoare_x:
        popl %eax
        movl %eax, valoare_x
        movl $2, bec_x
        jmp continuare
atribuire_valoare_y:
        popl %eax
        movl %eax, valoare_y
        movl $2, bec_y
        jmp continuare
atribuire_valoare_z:
        popl %eax
        movl %eax, valoare_z
        movl $2, bec_z
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
