; Hc/NtUserYieldTask
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserYieldTask:DWORD

.DATA
.CODE

HcUserYieldTask PROC
	mov r10, rcx
	mov eax, sciUserYieldTask
	syscall
	ret
HcUserYieldTask ENDP

ELSE
; 32bit

EXTERNDEF C sciUserYieldTask:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserYieldTask PROC
	mov eax, sciUserYieldTask
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
HcUserYieldTask ENDP

ENDIF

END