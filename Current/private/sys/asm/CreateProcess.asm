; Hc/NtCreateProcess
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciCreateProcess:DWORD

.DATA
.CODE

HcCreateProcess PROC
	mov r10, rcx
	mov eax, sciCreateProcess
	syscall
	ret
HcCreateProcess ENDP

ELSE
; 32bit

EXTERNDEF C sciCreateProcess:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcCreateProcess PROC
	mov eax, sciCreateProcess
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
HcCreateProcess ENDP

ENDIF

END