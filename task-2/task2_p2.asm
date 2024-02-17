section .data
	l dd 0
	r dd 0

section .text
	global par

;; int par(int str_length, char* str)
;
; check for balanced brackets in an expression
par:
	push ebp ;;salvam inceputul stivei
	push esp
	xor ebp,ebp
	pop ebp

	push dword[ebp+8]
	pop ecx;;salvam len

	push dword[ebp+12]
	pop eax;;salvam *str

	dec ecx
	
	label:
		cmp byte[eax+ecx],0x28 ;;verificam daca avem '('
		jne right
		je left

		left:
			inc dword[l] ;;am gasit '(' si o numaram
			dec ecx
			cmp ecx,-1
			je label1
			jmp label
		
		right:
			inc dword[r] ;; am gasit ')' si o numaram
			dec ecx
			cmp ecx,-1
			je label1
			jmp label

label1:	
	push dword[l]
	pop edx
	cmp edx,dword[r] ;;comparam numarul de paranteze stanga cu cele din dreapta
	jne end0
	je end1
		end1:
			xor eax,eax ;;intoarcem 1
			inc eax
			jmp end
	
	end0:
		xor eax,eax ;;intoarcem 0
		jmp end

end:
	push ebp ;;refacem stiva
	pop esp
	pop ebp
	ret