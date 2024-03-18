;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11345 (Linux)
;--------------------------------------------------------
	.file "_divsint"
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.global __divsint
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
	.section	 .text.__divsint
	.L_divsint__divsint_0:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 207: _divsint (int x, int y)
; genLabel
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
__divsint:
	.L_divsint__divsint_1:
	sub	sp, #3
	.L_divsint__divsint_2:
	.L_divsint__divsint_3:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 211: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
; genCmp
; genCmpTop
	tnz	(0x06, sp)
	jrmi	00125$
	clr	(0x01, sp)
	jp	00126$
00125$:
	ld	a, #0x01
	ld	(0x01, sp), a
00126$:
; genIfx
	tnz	(0x01, sp)
	jrne	00127$
	jp	00106$
00127$:
; genUminus
	ldw	x, (0x06, sp)
	negw	x
; genAssign
; genGoto
	jp	00107$
; genLabel
00106$:
; genAssign
	ldw	x, (0x06, sp)
; genLabel
00107$:
; genCast
; genAssign
	ldw	(0x02, sp), x
; genCmp
; genCmpTop
	tnz	(0x08, sp)
	jrmi	00128$
	clr	a
	jp	00129$
00128$:
	ld	a, #0x01
00129$:
; genIfx
	tnz	a
	jrne	00130$
	jp	00108$
00130$:
; genUminus
	ldw	y, (0x08, sp)
	negw	y
; genAssign
; genGoto
	jp	00109$
; genLabel
00108$:
; genAssign
	ldw	y, (0x08, sp)
; genLabel
00109$:
; genCast
; genAssign
; genDivMod
	ldw	x, (0x02, sp)
	divw	x, y
; genAssign
	.L_divsint__divsint_4:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 212: if ((x < 0) ^ (y < 0))
; genXor
	xor	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00131$
	jp	00102$
00131$:
	.L_divsint__divsint_5:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 213: return -r;
; genUminus
	negw	x
; genReturn
	jp	00104$
; genLabel
00102$:
	.L_divsint__divsint_6:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 215: return r;
; genReturn
; genLabel
00104$:
	.L_divsint__divsint_7:
;	/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c: 216: }
; genEndFunction
	addw	sp, #3
	.L_divsint__divsint_8:
	.L_divsint__divsint_9:
	.L_divsint__divsintendf:
	ret
	.L_divsint__divsint_10:
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c"
	.byte	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Ldebug_line_stmt:
	.byte	0
	.uleb128	5
	.byte	2
	.word	0,(.L_divsint__divsint_0)
	.byte	3
	.sleb128	206
	.byte	1
	.byte	9
	.word	.L_divsint__divsint_3-.L_divsint__divsint_0
	.byte	3
	.sleb128	4
	.byte	1
	.byte	9
	.word	.L_divsint__divsint_4-.L_divsint__divsint_3
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divsint__divsint_5-.L_divsint__divsint_4
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	.L_divsint__divsint_6-.L_divsint__divsint_5
	.byte	3
	.sleb128	2
	.byte	1
	.byte	9
	.word	.L_divsint__divsint_7-.L_divsint__divsint_6
	.byte	3
	.sleb128	1
	.byte	1
	.byte	9
	.word	1+.L_divsint__divsint_9-.L_divsint__divsint_7
	.byte	0
	.uleb128	1
	.byte	1
.Ldebug_line_end:

	.section .debug_loc, ""
.Ldebug_loc_start:
	.word	0,(.L_divsint__divsint_8)
	.word	0,(.L_divsint__divsint_10)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,(.L_divsint__divsint_2)
	.word	0,(.L_divsint__divsint_8)
	.word	2
	.byte	120
	.sleb128	4
	.word	0,(.L_divsint__divsint_1)
	.word	0,(.L_divsint__divsint_2)
	.word	2
	.byte	120
	.sleb128	1
	.word	0,0
	.word	0,0

	.section .debug_abbrev, ""
.Ldebug_abbrev:
	.uleb128	3
	.uleb128	46
	.byte	1
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
	.uleb128	5
	.uleb128	52
	.byte	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
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
	.ascii "/usr/local/stow/sdcc-gas/share/sdcc/lib/src/_divsint.c"
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
	.ascii "_divsint"
	.byte	0
	.word	0,(__divsint)
	.word	0,(.L_divsint__divsintendf+1)
	.byte	1
	.word	0,(.Ldebug_loc_start)
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	2
	.ascii "x"
	.byte	0
	.word	0,98
	.uleb128	4
	.byte	2
	.byte	145
	.sleb128	4
	.ascii "y"
	.byte	0
	.word	0,98
	.uleb128	5
	.byte	6
	.byte	82
	.byte	147
	.uleb128	1
	.byte	81
	.byte	147
	.uleb128	1
	.ascii "r"
	.byte	0
	.word	0,98
	.uleb128	0
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
	.word	0,105
	.ascii "_divsint"
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
	.word	0,33
	.word	0,(.Ldebug_CIE0_start-4)
	.word	0,(.L_divsint__divsint_1)	;initial loc
	.word	0,.L_divsint__divsint_10-.L_divsint__divsint_1
	.byte	1
	.word	0,(.L_divsint__divsint_1)
	.byte	14
	.uleb128	2
	.byte	1
	.word	0,(.L_divsint__divsint_2)
	.byte	14
	.uleb128	5
	.byte	1
	.word	0,(.L_divsint__divsint_8)
	.byte	14
	.uleb128	2
