; Hc/NtGdiDdDDISetFSEBlock
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetFSEBlock:DWORD

.DATA
.CODE

HcGdiDdDDISetFSEBlock PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetFSEBlock
	syscall
	ret
HcGdiDdDDISetFSEBlock ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetFSEBlock:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetFSEBlock PROC
	mov eax, sciGdiDdDDISetFSEBlock
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDdDDISetFSEBlock ENDP

ENDIF

END