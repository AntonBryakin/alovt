data segment

a dd 32h
b dd 0FFBDh
f dd 32ABh
g dd 0BC80h

k dd 9h

data ends

code segment
assume cs:code, ds:data, ss:nothing
		
start:
	mov ax, data
	mov ds, ax
	
	mov ax, [a]
	mov bx, [k]
	add ax, bx
	mov [a], ax
	
	mov ax, [b]
	add ax, bx
	mov [b], ax                        
	
	mov ax, [f]
	add ax, bx
	mov [f], ax

	mov ax, [g]
	add ax, bx
	mov [g], ax

quit:
	mov ax, 4c00h
	int 21

code ends
end start
