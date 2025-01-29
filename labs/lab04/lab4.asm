SECTION .data
	rami:      db "Rami Almanasra",10
		ramiLen:   equ $ - rami
SECTION .text
	global _start           

_start:                 
        mov eax, 4      
        mov ebx, 1    
        mov ecx, rami
        mov edx, ramiLen
        int 80h        
	
	mov eax, 1       
        mov ebx, 0      
        int 80h    
