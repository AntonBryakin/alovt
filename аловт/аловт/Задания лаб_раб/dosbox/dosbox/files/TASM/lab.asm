data segment
	f16 dw 3FD5h
	f32 dd 3FCCD5h
	
	

	g16 dw 0AF68h
	g32 dd 0FFAF5EC2h
	
	
data ends

code segment
assume cs:code, ds:data, ss:nothing

start:       mov ax, data
             mov ds, ax

quit:        mov ax, 4c00h
             int 21
code ends
end start