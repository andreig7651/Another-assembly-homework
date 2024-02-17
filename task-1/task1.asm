section .data
	len dd 0

section .text
	global sort

; struct node {
;     	int val;
;    	struct node* next;
; };

;; struct node* sort(int n, struct node* node);
; 	The function will link the nodes in the array
;	in ascending order and will return the address
;	of the new found head of the list
; @params:
;	n -> the number of nodes in the array
;	node -> a pointer to the beginning in the array
; @returns:
;	the address of the head of the sorted list
sort:
	enter 0, 0

	mov ecx,[ebp+8] ;; salvam n
	mov edi,[ebp+12] ;;salvam node
	
	dec ecx
	mov dword[len],ecx ;;pastram lungimea fixa in len
	mov ebx,0 ;;contor pentru prima bucla

label1:
	mov ecx,0 ;;contor pentru a doua bucla
	label2:
		mov eax,dword[edi+8*ebx]	;;parcurgem vectorul in prima bucla
		mov edx,dword[edi+8*ecx]	;;concomitent in a doua
		sub edx,eax
		cmp edx,1	;;verificam daca numerele sunt consecutive
		jne increment
		je equal
			equal:
				mov edx,edi ;;calculam adresa lui next
				add edx,ecx
				add edx,ecx
				add edx,ecx
				add edx,ecx
				add edx,ecx
				add edx,ecx
				add edx,ecx
				add edx,ecx
				mov dword[edi+8*ebx+4],edx ;;mutam avloarea corespunzatoare
			increment:
				inc ecx	;;facem avans in bucla 2
		
		cmp ecx,dword [len]
		jle label2
	inc ebx	;;avans in bucla 1
	cmp ebx,dword[len]
	jle label1

	mov ecx,dword[len] ;;refacem lungimea in ecx

	min:
		cmp dword[edi+8*ecx],1 ;;cautam adresa de inceput,adica 1
		je end
	loop min

	end:
		mov eax,edi ;;construim adresa de inceput in eax
		add eax,ecx
		add eax,ecx
		add eax,ecx
		add eax,ecx
		add eax,ecx
		add eax,ecx
		add eax,ecx
		add eax,ecx

	
	leave
	ret