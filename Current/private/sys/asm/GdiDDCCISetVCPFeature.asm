; Hc/NtGdiDDCCISetVCPFeature
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDDCCISetVCPFeature:DWORD

.DATA
.CODE

HcGdiDDCCISetVCPFeature PROC
	mov r10, rcx
	mov eax, sciGdiDDCCISetVCPFeature
	syscall
	ret
HcGdiDDCCISetVCPFeature ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDDCCISetVCPFeature:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDDCCISetVCPFeature PROC
	mov eax, sciGdiDDCCISetVCPFeature
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
HcGdiDDCCISetVCPFeature ENDP

ENDIF

END