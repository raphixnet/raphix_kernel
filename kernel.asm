bits 32

section .text
global start
start:
	mov word [0xb8000], 0x0252
	mov word [0xb8002], 0x0261
	mov word [0xb8004], 0x0270
	mov word [0xb8006], 0x0268
	mov word [0xb8008], 0x0269
	mov word [0xb800a], 0x0278
	mov word [0xb800c], 0x0220
	mov word [0xb800e], 0x024b
	mov word [0xb8010], 0x0265
	mov word [0xb8012], 0x0272
	mov word [0xb8014], 0x026e
	mov word [0xb8016], 0x0265
	mov word [0xb8018], 0x026c
	hlt