;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "puts"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global _putchar
	.global _puts
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.section .text
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.section .text
	.section	 .text._puts
	.Lputs_puts_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 31: int puts (const char *s)
; genLabel
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_puts:
	.Lputs_puts_1:
	.Lputs_puts_2:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 33: while (*s)
; genAssign
	ldw	y, (0x03, sp)
; genLabel
00103$:
; genPointerGet
	ld	a, (y)
; genIfx
	tnz	a
	jrne	00123$
	jp	00105$
00123$:
	.Lputs_puts_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 34: if (putchar(*s++) == EOF)
; genPlus
	incw	y
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genIPush
	pushw	y
	.Lputs_puts_4:
	pushw	x
	.Lputs_puts_5:
; genCall
	call	_putchar
	addw	sp, #2
	.Lputs_puts_6:
	popw	y
	.Lputs_puts_7:
; genCmpEQorNE
	incw	x
	jrne	00125$
	jp	00126$
00125$:
	jp	00103$
00126$:
	.Lputs_puts_8:
; skipping generated iCode
	.Lputs_puts_9:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 35: return EOF;
; genReturn
	clrw	x
	decw	x
	jp	00106$
; genLabel
00105$:
	.Lputs_puts_10:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 36: return putchar('\n');
; genIPush
	push	#0x0a
	.Lputs_puts_11:
	push	#0x00
	.Lputs_puts_12:
; genCall
	call	_putchar
	addw	sp, #2
	.Lputs_puts_13:
; genReturn
; genLabel
00106$:
	.Lputs_puts_14:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c: 37: }
; genEndFunction
	.Lputs_puts_15:
	.Lputs_putsendf:
	ret
	.Lputs_puts_16:
	.section .text
	.section .text.rodata
	.section .data
	.section CABS (ABS)

	.section .debug_line, ""
	.word	0,.Ldebug_line_end-.Ldebug_line_start
.Ldebug_line_start:
	.word	2
	.word	0,.Ldebug_line_stmt-6-.Ldebug_line_start
	.byte	1
	.byte	1
	.byte	-5
	.byte	15
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.ascii "/usr/local/stow/sdcc-gas/bin/../share/sdcc/include/stm8"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/include/stm8"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/bin/../share/sdcc/include"
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/include"
	.byte	0
	.byte	0
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.Lputs_puts_0)
	.byte	3
	.sleb128	30
	.byte	1
	.byte	9
	.word	.Lputs_puts_2-.Lputs_puts_0
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.Lputs_puts_3-.Lputs_puts_2
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lputs_puts_9-.Lputs_puts_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lputs_puts_10-.Lputs_puts_9
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.Lputs_puts_14-.Lputs_puts_10
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.Lputs_puts_15-.Lputs_puts_14
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.Lputs_puts_13)
	.word	0,(.Lputs_puts_16)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lputs_puts_12)
	.word	0,(.Lputs_puts_13)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lputs_puts_11)
	.word	0,(.Lputs_puts_12)
	.word	2
	.byte	120
	.sleb128	2
	.word	0,(.Lputs_puts_8)
	.word	0,(.Lputs_puts_11)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lputs_puts_7)
	.word	0,(.Lputs_puts_8)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.Lputs_puts_6)
	.word	0,(.Lputs_puts_7)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lputs_puts_5)
	.word	0,(.Lputs_puts_6)
	.word	2
	.byte	120
	.sleb128	5
	.word	0,(.Lputs_puts_4)
	.word	0,(.Lputs_puts_5)
	.word	2
	.byte	120
	.sleb128	3
	.word	0,(.Lputs_puts_1)
	.word	0,(.Lputs_puts_4)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	5
	.uleb128	15
	.byte	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	5
	.byte	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.byte	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	38
	.byte	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	36
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.section .debug_info, ""
	.word	0,.Ldebug_info_end-.Ldebug_info_start
.Ldebug_info_start:
	.word	2
	.word	0,(.Ldebug_abbrev)
	.byte	4
	.uleb128	1
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/puts.c"
	.byte	0
	.word	0,(.Ldebug_line_start+-4)
	.byte	1
	.ascii "SDCC version 3.9.3 #11345"
	.byte	0
	.uleb128	2
	.ascii "int"
	.byte	0
	.byte	2
	.byte	5
	.uleb128	3
	.word	0,150
	.ascii "puts"
	.byte	0
	.word	0,(_puts)
	.word	0,(.Lputs_putsendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,94
	.uleb128	4
	.word	0,150
	.uleb128	5
	.byte	2
	.word	0,128
	.uleb128	6
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "s"
	.byte	0
	.word	0,133
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.byte	0
	.byte	1
	.byte	8
	.uleb128	0
	.uleb128	0
	.uleb128	0
.Ldebug_info_end:

	.section .debug_pubnames, ""
	.word	0,.Ldebug_pubnames_end-.Ldebug_pubnames_start
.Ldebug_pubnames_start:
	.word	2
	.word	0,(.Ldebug_info_start-4)
	.word	0,4+.Ldebug_info_end-.Ldebug_info_start
	.word	0,101
	.ascii "puts"
	.byte	0
	.word	0,0
.Ldebug_pubnames_end:

	.section .debug_frame, ""
	.word	0
	.word	4+.Ldebug_CIE0_end-.Ldebug_CIE0_start
.Ldebug_CIE0_start:
	.word	0xffff
	.word	0xffff
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-1
	.byte	9
	.byte	12
	.uleb128	8
	.uleb128	2
	.byte	137
	.uleb128	1
.Ldebug_CIE0_end:
	.word	0,75
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.Lputs_puts_1)	;initial loc
	.word	0,.Lputs_puts_16-.Lputs_puts_1
	.byte	1
	.word	0,(.Lputs_puts_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lputs_puts_4)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lputs_puts_5)
	.byte	14
	.uleb128	6
	.byte	1
	.word	0,(.Lputs_puts_6)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lputs_puts_7)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lputs_puts_8)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.Lputs_puts_11)
	.byte	14
	.uleb128	3
	.byte	1
	.word	0,(.Lputs_puts_12)
	.byte	14
	.uleb128	4
	.byte	1
	.word	0,(.Lputs_puts_13)
	.byte	14
	.uleb128	2
