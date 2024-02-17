section .data
	s1 dd 0
	s2 dd 0
	cont1 dd 1
	cont2 dd 1
	clear dd 1

section .text
	global cmmmc

;; int cmmmc(int a, int b)
;
;; calculate least common multiple fow 2 numbers, a and b
cmmmc:
	
	push ebp ;;salvam inceputul stivei
	push esp
	xor ebp,ebp
	pop ebp

	push dword[ebp+8]
	pop ebx;;punem a

	push dword[ebp+12]
	pop ecx;;punem b

	push dword[ebp+8]
	pop dword[s1] ;;initializam prima suma cu a
	
	label:
		push dword[ebp+12]
		pop dword[s2] ;;pe cea de-a doua cu b
		
		push dword[clear]
		pop dword[cont2] ;;curatam contorul al doilea
		
		label1:
			push dword[s1]
			pop edx
			cmp edx,dword[s2] ;;comparam multiplii
			je end
			add dword[s2],ecx ;;avans la urmatorul multiplu al lui b
			inc dword[cont2]
			cmp dword[cont2],ebx
			jle label1
		
		add dword[s1],ebx  ;avans la urmatorul multiplu al lui a
		inc dword[cont1]
		cmp dword[cont1],ecx
		jle label
	
	end:
		push dword[s1]
		pop eax ;;punem cmmmc in eax

	push ebp ;;refacem stiva
	pop esp
	pop ebp
	ret
