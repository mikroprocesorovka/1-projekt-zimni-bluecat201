                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _ITC_GetCPUCC
                                     13 	.globl _ITC_DeInit
                                     14 	.globl _ITC_GetSoftIntStatus
                                     15 	.globl _ITC_GetSoftwarePriority
                                     16 	.globl _ITC_SetSoftwarePriority
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                           000000    54 	Sstm8s_itc$ITC_GetCPUCC$0 ==.
                                     55 ;	../SPL/src/stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
                                     56 ; genLabel
                                     57 ;	-----------------------------------------
                                     58 ;	 function ITC_GetCPUCC
                                     59 ;	-----------------------------------------
                                     60 ;	Register assignment is optimal.
                                     61 ;	Stack space usage: 0 bytes.
      0096E6                         62 _ITC_GetCPUCC:
                           000000    63 	Sstm8s_itc$ITC_GetCPUCC$1 ==.
                           000000    64 	Sstm8s_itc$ITC_GetCPUCC$2 ==.
                                     65 ;	../SPL/src/stm8s_itc.c: 59: __asm__("push cc");
                                     66 ;	genInline
      0096E6 8A               [ 1]   67 	push	cc
                           000001    68 	Sstm8s_itc$ITC_GetCPUCC$3 ==.
                                     69 ;	../SPL/src/stm8s_itc.c: 60: __asm__("pop a");
                                     70 ;	genInline
      0096E7 84               [ 1]   71 	pop	a
                                     72 ; genLabel
      0096E8                         73 00101$:
                           000002    74 	Sstm8s_itc$ITC_GetCPUCC$4 ==.
                                     75 ;	../SPL/src/stm8s_itc.c: 65: }
                                     76 ; genEndFunction
                           000002    77 	Sstm8s_itc$ITC_GetCPUCC$5 ==.
                           000002    78 	XG$ITC_GetCPUCC$0$0 ==.
      0096E8 81               [ 4]   79 	ret
                           000003    80 	Sstm8s_itc$ITC_GetCPUCC$6 ==.
                           000003    81 	Sstm8s_itc$ITC_DeInit$7 ==.
                                     82 ;	../SPL/src/stm8s_itc.c: 83: void ITC_DeInit(void)
                                     83 ; genLabel
                                     84 ;	-----------------------------------------
                                     85 ;	 function ITC_DeInit
                                     86 ;	-----------------------------------------
                                     87 ;	Register assignment is optimal.
                                     88 ;	Stack space usage: 0 bytes.
      0096E9                         89 _ITC_DeInit:
                           000003    90 	Sstm8s_itc$ITC_DeInit$8 ==.
                           000003    91 	Sstm8s_itc$ITC_DeInit$9 ==.
                                     92 ;	../SPL/src/stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
                                     93 ; genPointerSet
      0096E9 35 FF 7F 70      [ 1]   94 	mov	0x7f70+0, #0xff
                           000007    95 	Sstm8s_itc$ITC_DeInit$10 ==.
                                     96 ;	../SPL/src/stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
                                     97 ; genPointerSet
      0096ED 35 FF 7F 71      [ 1]   98 	mov	0x7f71+0, #0xff
                           00000B    99 	Sstm8s_itc$ITC_DeInit$11 ==.
                                    100 ;	../SPL/src/stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
                                    101 ; genPointerSet
      0096F1 35 FF 7F 72      [ 1]  102 	mov	0x7f72+0, #0xff
                           00000F   103 	Sstm8s_itc$ITC_DeInit$12 ==.
                                    104 ;	../SPL/src/stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
                                    105 ; genPointerSet
      0096F5 35 FF 7F 73      [ 1]  106 	mov	0x7f73+0, #0xff
                           000013   107 	Sstm8s_itc$ITC_DeInit$13 ==.
                                    108 ;	../SPL/src/stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
                                    109 ; genPointerSet
      0096F9 35 FF 7F 74      [ 1]  110 	mov	0x7f74+0, #0xff
                           000017   111 	Sstm8s_itc$ITC_DeInit$14 ==.
                                    112 ;	../SPL/src/stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
                                    113 ; genPointerSet
      0096FD 35 FF 7F 75      [ 1]  114 	mov	0x7f75+0, #0xff
                           00001B   115 	Sstm8s_itc$ITC_DeInit$15 ==.
                                    116 ;	../SPL/src/stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
                                    117 ; genPointerSet
      009701 35 FF 7F 76      [ 1]  118 	mov	0x7f76+0, #0xff
                           00001F   119 	Sstm8s_itc$ITC_DeInit$16 ==.
                                    120 ;	../SPL/src/stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
                                    121 ; genPointerSet
      009705 35 FF 7F 77      [ 1]  122 	mov	0x7f77+0, #0xff
                                    123 ; genLabel
      009709                        124 00101$:
                           000023   125 	Sstm8s_itc$ITC_DeInit$17 ==.
                                    126 ;	../SPL/src/stm8s_itc.c: 93: }
                                    127 ; genEndFunction
                           000023   128 	Sstm8s_itc$ITC_DeInit$18 ==.
                           000023   129 	XG$ITC_DeInit$0$0 ==.
      009709 81               [ 4]  130 	ret
                           000024   131 	Sstm8s_itc$ITC_DeInit$19 ==.
                           000024   132 	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
                                    133 ;	../SPL/src/stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function ITC_GetSoftIntStatus
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment is optimal.
                                    139 ;	Stack space usage: 0 bytes.
      00970A                        140 _ITC_GetSoftIntStatus:
                           000024   141 	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
                           000024   142 	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
                                    143 ;	../SPL/src/stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
                                    144 ; genCall
      00970A CD 96 E6         [ 4]  145 	call	_ITC_GetCPUCC
                                    146 ; genAnd
      00970D A4 28            [ 1]  147 	and	a, #0x28
                                    148 ; genReturn
                                    149 ; genLabel
      00970F                        150 00101$:
                           000029   151 	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
                                    152 ;	../SPL/src/stm8s_itc.c: 103: }
                                    153 ; genEndFunction
                           000029   154 	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
                           000029   155 	XG$ITC_GetSoftIntStatus$0$0 ==.
      00970F 81               [ 4]  156 	ret
                           00002A   157 	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
                           00002A   158 	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
                                    159 ;	../SPL/src/stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    160 ; genLabel
                                    161 ;	-----------------------------------------
                                    162 ;	 function ITC_GetSoftwarePriority
                                    163 ;	-----------------------------------------
                                    164 ;	Register assignment might be sub-optimal.
                                    165 ;	Stack space usage: 2 bytes.
      009710                        166 _ITC_GetSoftwarePriority:
                           00002A   167 	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
      009710 89               [ 2]  168 	pushw	x
                           00002B   169 	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
                           00002B   170 	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
                                    171 ;	../SPL/src/stm8s_itc.c: 112: uint8_t Value = 0;
                                    172 ; genAssign
      009711 5F               [ 1]  173 	clrw	x
                           00002C   174 	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
                                    175 ;	../SPL/src/stm8s_itc.c: 116: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
                                    176 ; genCmp
                                    177 ; genCmpTop
      009712 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      009714 A1 18            [ 1]  179 	cp	a, #0x18
      009716 22 05            [ 1]  180 	jrugt	00142$
      009718 4F               [ 1]  181 	clr	a
      009719 95               [ 1]  182 	ld	xh, a
      00971A CC 97 20         [ 2]  183 	jp	00143$
      00971D                        184 00142$:
      00971D A6 01            [ 1]  185 	ld	a, #0x01
      00971F 95               [ 1]  186 	ld	xh, a
      009720                        187 00143$:
                                    188 ; genIfx
      009720 9E               [ 1]  189 	ld	a, xh
      009721 4D               [ 1]  190 	tnz	a
      009722 26 03            [ 1]  191 	jrne	00144$
      009724 CC 97 3A         [ 2]  192 	jp	00131$
      009727                        193 00144$:
                                    194 ; skipping iCode since result will be rematerialized
                                    195 ; skipping iCode since result will be rematerialized
                                    196 ; genIPush
      009727 89               [ 2]  197 	pushw	x
                           000042   198 	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
      009728 4B 74            [ 1]  199 	push	#0x74
                           000044   200 	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
      00972A 4B 00            [ 1]  201 	push	#0x00
                           000046   202 	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
      00972C 4B 00            [ 1]  203 	push	#0x00
                           000048   204 	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
      00972E 4B 00            [ 1]  205 	push	#0x00
                           00004A   206 	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
                                    207 ; genIPush
      009730 4B EB            [ 1]  208 	push	#<(___str_0+0)
                           00004C   209 	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
      009732 4B 80            [ 1]  210 	push	#((___str_0+0) >> 8)
                           00004E   211 	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
                                    212 ; genCall
      009734 CD 82 65         [ 4]  213 	call	_assert_failed
      009737 5B 06            [ 2]  214 	addw	sp, #6
                           000053   215 	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
      009739 85               [ 2]  216 	popw	x
                           000054   217 	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
                                    218 ; genLabel
      00973A                        219 00131$:
                           000054   220 	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
                                    221 ;	../SPL/src/stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
                                    222 ; genCast
                                    223 ; genAssign
      00973A 7B 05            [ 1]  224 	ld	a, (0x05, sp)
      00973C 90 5F            [ 1]  225 	clrw	y
                                    226 ; genAnd
      00973E A4 03            [ 1]  227 	and	a, #0x03
      009740 88               [ 1]  228 	push	a
                           00005B   229 	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
      009741 0F 02            [ 1]  230 	clr	(0x02, sp)
      009743 84               [ 1]  231 	pop	a
                           00005E   232 	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
                                    233 ; genCast
                                    234 ; genAssign
                                    235 ; genLeftShiftLiteral
      009744 48               [ 1]  236 	sll	a
      009745 6B 01            [ 1]  237 	ld	(0x01, sp), a
                                    238 ; genLeftShift
      009747 A6 03            [ 1]  239 	ld	a, #0x03
      009749 6B 02            [ 1]  240 	ld	(0x02, sp), a
      00974B 7B 01            [ 1]  241 	ld	a, (0x01, sp)
      00974D 27 05            [ 1]  242 	jreq	00146$
      00974F                        243 00145$:
      00974F 08 02            [ 1]  244 	sll	(0x02, sp)
      009751 4A               [ 1]  245 	dec	a
      009752 26 FB            [ 1]  246 	jrne	00145$
      009754                        247 00146$:
                           00006E   248 	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
                                    249 ;	../SPL/src/stm8s_itc.c: 121: switch (IrqNum)
                                    250 ; genAssign
      009754 9E               [ 1]  251 	ld	a, xh
                                    252 ; genIfx
      009755 4D               [ 1]  253 	tnz	a
      009756 27 03            [ 1]  254 	jreq	00147$
      009758 CC 97 D2         [ 2]  255 	jp	00127$
      00975B                        256 00147$:
                                    257 ; genJumpTab
      00975B 5F               [ 1]  258 	clrw	x
      00975C 7B 05            [ 1]  259 	ld	a, (0x05, sp)
      00975E 97               [ 1]  260 	ld	xl, a
      00975F 58               [ 2]  261 	sllw	x
      009760 DE 97 64         [ 2]  262 	ldw	x, (#00148$, x)
      009763 FC               [ 2]  263 	jp	(x)
      009764                        264 00148$:
      009764 97 96                  265 	.dw	#00104$
      009766 97 96                  266 	.dw	#00104$
      009768 97 96                  267 	.dw	#00104$
      00976A 97 96                  268 	.dw	#00104$
      00976C 97 9F                  269 	.dw	#00108$
      00976E 97 9F                  270 	.dw	#00108$
      009770 97 9F                  271 	.dw	#00108$
      009772 97 9F                  272 	.dw	#00108$
      009774 97 A8                  273 	.dw	#00112$
      009776 97 A8                  274 	.dw	#00112$
      009778 97 A8                  275 	.dw	#00112$
      00977A 97 A8                  276 	.dw	#00112$
      00977C 97 B1                  277 	.dw	#00116$
      00977E 97 B1                  278 	.dw	#00116$
      009780 97 B1                  279 	.dw	#00116$
      009782 97 B1                  280 	.dw	#00116$
      009784 97 BA                  281 	.dw	#00120$
      009786 97 BA                  282 	.dw	#00120$
      009788 97 BA                  283 	.dw	#00120$
      00978A 97 BA                  284 	.dw	#00120$
      00978C 97 C3                  285 	.dw	#00124$
      00978E 97 C3                  286 	.dw	#00124$
      009790 97 C3                  287 	.dw	#00124$
      009792 97 C3                  288 	.dw	#00124$
      009794 97 CC                  289 	.dw	#00125$
                           0000B0   290 	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
                           0000B0   291 	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
                                    292 ;	../SPL/src/stm8s_itc.c: 126: case ITC_IRQ_PORTA:
                                    293 ; genLabel
      009796                        294 00104$:
                           0000B0   295 	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
                                    296 ;	../SPL/src/stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
                                    297 ; genPointerGet
      009796 C6 7F 70         [ 1]  298 	ld	a, 0x7f70
                                    299 ; genAnd
      009799 14 02            [ 1]  300 	and	a, (0x02, sp)
      00979B 97               [ 1]  301 	ld	xl, a
                           0000B6   302 	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
                                    303 ;	../SPL/src/stm8s_itc.c: 128: break;
                                    304 ; genGoto
      00979C CC 97 D2         [ 2]  305 	jp	00127$
                           0000B9   306 	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
                                    307 ;	../SPL/src/stm8s_itc.c: 133: case ITC_IRQ_PORTE:
                                    308 ; genLabel
      00979F                        309 00108$:
                           0000B9   310 	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
                                    311 ;	../SPL/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
                                    312 ; genPointerGet
      00979F C6 7F 71         [ 1]  313 	ld	a, 0x7f71
                                    314 ; genAnd
      0097A2 14 02            [ 1]  315 	and	a, (0x02, sp)
      0097A4 97               [ 1]  316 	ld	xl, a
                           0000BF   317 	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
                                    318 ;	../SPL/src/stm8s_itc.c: 135: break;
                                    319 ; genGoto
      0097A5 CC 97 D2         [ 2]  320 	jp	00127$
                           0000C2   321 	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
                                    322 ;	../SPL/src/stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
                                    323 ; genLabel
      0097A8                        324 00112$:
                           0000C2   325 	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
                                    326 ;	../SPL/src/stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
                                    327 ; genPointerGet
      0097A8 C6 7F 72         [ 1]  328 	ld	a, 0x7f72
                                    329 ; genAnd
      0097AB 14 02            [ 1]  330 	and	a, (0x02, sp)
      0097AD 97               [ 1]  331 	ld	xl, a
                           0000C8   332 	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
                                    333 ;	../SPL/src/stm8s_itc.c: 147: break;
                                    334 ; genGoto
      0097AE CC 97 D2         [ 2]  335 	jp	00127$
                           0000CB   336 	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
                                    337 ;	../SPL/src/stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
                                    338 ; genLabel
      0097B1                        339 00116$:
                           0000CB   340 	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
                                    341 ;	../SPL/src/stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
                                    342 ; genPointerGet
      0097B1 C6 7F 73         [ 1]  343 	ld	a, 0x7f73
                                    344 ; genAnd
      0097B4 14 02            [ 1]  345 	and	a, (0x02, sp)
      0097B6 97               [ 1]  346 	ld	xl, a
                           0000D1   347 	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
                                    348 ;	../SPL/src/stm8s_itc.c: 159: break;
                                    349 ; genGoto
      0097B7 CC 97 D2         [ 2]  350 	jp	00127$
                           0000D4   351 	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
                                    352 ;	../SPL/src/stm8s_itc.c: 171: case ITC_IRQ_I2C:
                                    353 ; genLabel
      0097BA                        354 00120$:
                           0000D4   355 	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
                                    356 ;	../SPL/src/stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
                                    357 ; genPointerGet
      0097BA C6 7F 74         [ 1]  358 	ld	a, 0x7f74
                                    359 ; genAnd
      0097BD 14 02            [ 1]  360 	and	a, (0x02, sp)
      0097BF 97               [ 1]  361 	ld	xl, a
                           0000DA   362 	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
                                    363 ;	../SPL/src/stm8s_itc.c: 173: break;
                                    364 ; genGoto
      0097C0 CC 97 D2         [ 2]  365 	jp	00127$
                           0000DD   366 	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
                                    367 ;	../SPL/src/stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
                                    368 ; genLabel
      0097C3                        369 00124$:
                           0000DD   370 	Sstm8s_itc$ITC_GetSoftwarePriority$61 ==.
                                    371 ;	../SPL/src/stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
                                    372 ; genPointerGet
      0097C3 C6 7F 75         [ 1]  373 	ld	a, 0x7f75
                                    374 ; genAnd
      0097C6 14 02            [ 1]  375 	and	a, (0x02, sp)
      0097C8 97               [ 1]  376 	ld	xl, a
                           0000E3   377 	Sstm8s_itc$ITC_GetSoftwarePriority$62 ==.
                                    378 ;	../SPL/src/stm8s_itc.c: 195: break;
                                    379 ; genGoto
      0097C9 CC 97 D2         [ 2]  380 	jp	00127$
                           0000E6   381 	Sstm8s_itc$ITC_GetSoftwarePriority$63 ==.
                                    382 ;	../SPL/src/stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
                                    383 ; genLabel
      0097CC                        384 00125$:
                           0000E6   385 	Sstm8s_itc$ITC_GetSoftwarePriority$64 ==.
                                    386 ;	../SPL/src/stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
                                    387 ; genPointerGet
      0097CC C6 7F 76         [ 1]  388 	ld	a, 0x7f76
                                    389 ; genAnd
      0097CF 14 02            [ 1]  390 	and	a, (0x02, sp)
      0097D1 97               [ 1]  391 	ld	xl, a
                           0000EC   392 	Sstm8s_itc$ITC_GetSoftwarePriority$65 ==.
                           0000EC   393 	Sstm8s_itc$ITC_GetSoftwarePriority$66 ==.
                                    394 ;	../SPL/src/stm8s_itc.c: 203: }
                                    395 ; genLabel
      0097D2                        396 00127$:
                           0000EC   397 	Sstm8s_itc$ITC_GetSoftwarePriority$67 ==.
                                    398 ;	../SPL/src/stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
                                    399 ; genRightShift
      0097D2 7B 01            [ 1]  400 	ld	a, (0x01, sp)
      0097D4 27 06            [ 1]  401 	jreq	00150$
      0097D6                        402 00149$:
      0097D6 41               [ 1]  403 	exg	a, xl
      0097D7 44               [ 1]  404 	srl	a
      0097D8 41               [ 1]  405 	exg	a, xl
      0097D9 4A               [ 1]  406 	dec	a
      0097DA 26 FA            [ 1]  407 	jrne	00149$
      0097DC                        408 00150$:
                                    409 ; genAssign
      0097DC 9F               [ 1]  410 	ld	a, xl
                           0000F7   411 	Sstm8s_itc$ITC_GetSoftwarePriority$68 ==.
                                    412 ;	../SPL/src/stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
                                    413 ; genReturn
                                    414 ; genLabel
      0097DD                        415 00128$:
                           0000F7   416 	Sstm8s_itc$ITC_GetSoftwarePriority$69 ==.
                                    417 ;	../SPL/src/stm8s_itc.c: 208: }
                                    418 ; genEndFunction
      0097DD 85               [ 2]  419 	popw	x
                           0000F8   420 	Sstm8s_itc$ITC_GetSoftwarePriority$70 ==.
                           0000F8   421 	Sstm8s_itc$ITC_GetSoftwarePriority$71 ==.
                           0000F8   422 	XG$ITC_GetSoftwarePriority$0$0 ==.
      0097DE 81               [ 4]  423 	ret
                           0000F9   424 	Sstm8s_itc$ITC_GetSoftwarePriority$72 ==.
                           0000F9   425 	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
                                    426 ;	../SPL/src/stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    427 ; genLabel
                                    428 ;	-----------------------------------------
                                    429 ;	 function ITC_SetSoftwarePriority
                                    430 ;	-----------------------------------------
                                    431 ;	Register assignment might be sub-optimal.
                                    432 ;	Stack space usage: 3 bytes.
      0097DF                        433 _ITC_SetSoftwarePriority:
                           0000F9   434 	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
      0097DF 52 03            [ 2]  435 	sub	sp, #3
                           0000FB   436 	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
                           0000FB   437 	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
                                    438 ;	../SPL/src/stm8s_itc.c: 229: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
                                    439 ; genCmp
                                    440 ; genCmpTop
      0097E1 7B 06            [ 1]  441 	ld	a, (0x06, sp)
      0097E3 A1 18            [ 1]  442 	cp	a, #0x18
      0097E5 22 05            [ 1]  443 	jrugt	00180$
      0097E7 0F 01            [ 1]  444 	clr	(0x01, sp)
      0097E9 CC 97 F0         [ 2]  445 	jp	00181$
      0097EC                        446 00180$:
      0097EC A6 01            [ 1]  447 	ld	a, #0x01
      0097EE 6B 01            [ 1]  448 	ld	(0x01, sp), a
      0097F0                        449 00181$:
                                    450 ; genIfx
      0097F0 0D 01            [ 1]  451 	tnz	(0x01, sp)
      0097F2 26 03            [ 1]  452 	jrne	00182$
      0097F4 CC 98 06         [ 2]  453 	jp	00131$
      0097F7                        454 00182$:
                                    455 ; skipping iCode since result will be rematerialized
                                    456 ; skipping iCode since result will be rematerialized
                                    457 ; genIPush
      0097F7 4B E5            [ 1]  458 	push	#0xe5
                           000113   459 	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
      0097F9 5F               [ 1]  460 	clrw	x
      0097FA 89               [ 2]  461 	pushw	x
                           000115   462 	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
      0097FB 4B 00            [ 1]  463 	push	#0x00
                           000117   464 	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
                                    465 ; genIPush
      0097FD 4B EB            [ 1]  466 	push	#<(___str_0+0)
                           000119   467 	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
      0097FF 4B 80            [ 1]  468 	push	#((___str_0+0) >> 8)
                           00011B   469 	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
                                    470 ; genCall
      009801 CD 82 65         [ 4]  471 	call	_assert_failed
      009804 5B 06            [ 2]  472 	addw	sp, #6
                           000120   473 	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
                                    474 ; genLabel
      009806                        475 00131$:
                           000120   476 	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
                                    477 ;	../SPL/src/stm8s_itc.c: 230: assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
                                    478 ; genCmpEQorNE
      009806 7B 07            [ 1]  479 	ld	a, (0x07, sp)
      009808 A1 02            [ 1]  480 	cp	a, #0x02
      00980A 26 03            [ 1]  481 	jrne	00184$
      00980C CC 98 36         [ 2]  482 	jp	00133$
      00980F                        483 00184$:
                           000129   484 	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
                                    485 ; skipping generated iCode
                                    486 ; genCmpEQorNE
      00980F 7B 07            [ 1]  487 	ld	a, (0x07, sp)
      009811 4A               [ 1]  488 	dec	a
      009812 26 03            [ 1]  489 	jrne	00187$
      009814 CC 98 36         [ 2]  490 	jp	00133$
      009817                        491 00187$:
                           000131   492 	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
                                    493 ; skipping generated iCode
                                    494 ; genIfx
      009817 0D 07            [ 1]  495 	tnz	(0x07, sp)
      009819 26 03            [ 1]  496 	jrne	00189$
      00981B CC 98 36         [ 2]  497 	jp	00133$
      00981E                        498 00189$:
                                    499 ; genCmpEQorNE
      00981E 7B 07            [ 1]  500 	ld	a, (0x07, sp)
      009820 A1 03            [ 1]  501 	cp	a, #0x03
      009822 26 03            [ 1]  502 	jrne	00191$
      009824 CC 98 36         [ 2]  503 	jp	00133$
      009827                        504 00191$:
                           000141   505 	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
                                    506 ; skipping generated iCode
                                    507 ; skipping iCode since result will be rematerialized
                                    508 ; skipping iCode since result will be rematerialized
                                    509 ; genIPush
      009827 4B E6            [ 1]  510 	push	#0xe6
                           000143   511 	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
      009829 5F               [ 1]  512 	clrw	x
      00982A 89               [ 2]  513 	pushw	x
                           000145   514 	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
      00982B 4B 00            [ 1]  515 	push	#0x00
                           000147   516 	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
                                    517 ; genIPush
      00982D 4B EB            [ 1]  518 	push	#<(___str_0+0)
                           000149   519 	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
      00982F 4B 80            [ 1]  520 	push	#((___str_0+0) >> 8)
                           00014B   521 	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
                                    522 ; genCall
      009831 CD 82 65         [ 4]  523 	call	_assert_failed
      009834 5B 06            [ 2]  524 	addw	sp, #6
                           000150   525 	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
                                    526 ; genLabel
      009836                        527 00133$:
                           000150   528 	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
                                    529 ;	../SPL/src/stm8s_itc.c: 233: assert_param(IS_ITC_INTERRUPTS_DISABLED);
                                    530 ; genCall
      009836 CD 97 0A         [ 4]  531 	call	_ITC_GetSoftIntStatus
                                    532 ; genCmpEQorNE
      009839 A1 28            [ 1]  533 	cp	a, #0x28
      00983B 26 03            [ 1]  534 	jrne	00194$
      00983D CC 98 4F         [ 2]  535 	jp	00144$
      009840                        536 00194$:
                           00015A   537 	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
                                    538 ; skipping generated iCode
                                    539 ; skipping iCode since result will be rematerialized
                                    540 ; skipping iCode since result will be rematerialized
                                    541 ; genIPush
      009840 4B E9            [ 1]  542 	push	#0xe9
                           00015C   543 	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
      009842 5F               [ 1]  544 	clrw	x
      009843 89               [ 2]  545 	pushw	x
                           00015E   546 	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
      009844 4B 00            [ 1]  547 	push	#0x00
                           000160   548 	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
                                    549 ; genIPush
      009846 4B EB            [ 1]  550 	push	#<(___str_0+0)
                           000162   551 	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
      009848 4B 80            [ 1]  552 	push	#((___str_0+0) >> 8)
                           000164   553 	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
                                    554 ; genCall
      00984A CD 82 65         [ 4]  555 	call	_assert_failed
      00984D 5B 06            [ 2]  556 	addw	sp, #6
                           000169   557 	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
                                    558 ; genLabel
      00984F                        559 00144$:
                           000169   560 	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
                                    561 ;	../SPL/src/stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
                                    562 ; genCast
                                    563 ; genAssign
      00984F 7B 06            [ 1]  564 	ld	a, (0x06, sp)
      009851 5F               [ 1]  565 	clrw	x
                                    566 ; genAnd
      009852 A4 03            [ 1]  567 	and	a, #0x03
      009854 97               [ 1]  568 	ld	xl, a
      009855 4F               [ 1]  569 	clr	a
                                    570 ; genCast
                                    571 ; genAssign
                                    572 ; genLeftShiftLiteral
      009856 58               [ 2]  573 	sllw	x
                                    574 ; genLeftShift
      009857 A6 03            [ 1]  575 	ld	a, #0x03
      009859 88               [ 1]  576 	push	a
                           000174   577 	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
      00985A 9F               [ 1]  578 	ld	a, xl
      00985B 4D               [ 1]  579 	tnz	a
      00985C 27 05            [ 1]  580 	jreq	00197$
      00985E                        581 00196$:
      00985E 08 01            [ 1]  582 	sll	(1, sp)
      009860 4A               [ 1]  583 	dec	a
      009861 26 FB            [ 1]  584 	jrne	00196$
      009863                        585 00197$:
      009863 84               [ 1]  586 	pop	a
                           00017E   587 	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
                                    588 ; genCpl
      009864 43               [ 1]  589 	cpl	a
                                    590 ; genAssign
      009865 6B 02            [ 1]  591 	ld	(0x02, sp), a
                           000181   592 	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
                                    593 ;	../SPL/src/stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
                                    594 ; genLeftShift
      009867 7B 07            [ 1]  595 	ld	a, (0x07, sp)
      009869 88               [ 1]  596 	push	a
                           000184   597 	Sstm8s_itc$ITC_SetSoftwarePriority$105 ==.
      00986A 9F               [ 1]  598 	ld	a, xl
      00986B 4D               [ 1]  599 	tnz	a
      00986C 27 05            [ 1]  600 	jreq	00199$
      00986E                        601 00198$:
      00986E 08 01            [ 1]  602 	sll	(1, sp)
      009870 4A               [ 1]  603 	dec	a
      009871 26 FB            [ 1]  604 	jrne	00198$
      009873                        605 00199$:
      009873 84               [ 1]  606 	pop	a
                           00018E   607 	Sstm8s_itc$ITC_SetSoftwarePriority$106 ==.
                                    608 ; genAssign
      009874 6B 03            [ 1]  609 	ld	(0x03, sp), a
                           000190   610 	Sstm8s_itc$ITC_SetSoftwarePriority$107 ==.
                                    611 ;	../SPL/src/stm8s_itc.c: 242: switch (IrqNum)
                                    612 ; genAssign
      009876 7B 01            [ 1]  613 	ld	a, (0x01, sp)
                                    614 ; genIfx
      009878 4D               [ 1]  615 	tnz	a
      009879 27 03            [ 1]  616 	jreq	00200$
      00987B CC 99 3B         [ 2]  617 	jp	00128$
      00987E                        618 00200$:
                                    619 ; genJumpTab
      00987E 5F               [ 1]  620 	clrw	x
      00987F 7B 06            [ 1]  621 	ld	a, (0x06, sp)
      009881 97               [ 1]  622 	ld	xl, a
      009882 58               [ 2]  623 	sllw	x
      009883 DE 98 87         [ 2]  624 	ldw	x, (#00201$, x)
      009886 FC               [ 2]  625 	jp	(x)
      009887                        626 00201$:
      009887 98 B9                  627 	.dw	#00104$
      009889 98 B9                  628 	.dw	#00104$
      00988B 98 B9                  629 	.dw	#00104$
      00988D 98 B9                  630 	.dw	#00104$
      00988F 98 CC                  631 	.dw	#00108$
      009891 98 CC                  632 	.dw	#00108$
      009893 98 CC                  633 	.dw	#00108$
      009895 98 CC                  634 	.dw	#00108$
      009897 98 DF                  635 	.dw	#00112$
      009899 98 DF                  636 	.dw	#00112$
      00989B 98 DF                  637 	.dw	#00112$
      00989D 98 DF                  638 	.dw	#00112$
      00989F 98 F2                  639 	.dw	#00116$
      0098A1 98 F2                  640 	.dw	#00116$
      0098A3 98 F2                  641 	.dw	#00116$
      0098A5 98 F2                  642 	.dw	#00116$
      0098A7 99 05                  643 	.dw	#00120$
      0098A9 99 05                  644 	.dw	#00120$
      0098AB 99 05                  645 	.dw	#00120$
      0098AD 99 05                  646 	.dw	#00120$
      0098AF 99 18                  647 	.dw	#00124$
      0098B1 99 18                  648 	.dw	#00124$
      0098B3 99 18                  649 	.dw	#00124$
      0098B5 99 18                  650 	.dw	#00124$
      0098B7 99 2B                  651 	.dw	#00125$
                           0001D3   652 	Sstm8s_itc$ITC_SetSoftwarePriority$108 ==.
                           0001D3   653 	Sstm8s_itc$ITC_SetSoftwarePriority$109 ==.
                                    654 ;	../SPL/src/stm8s_itc.c: 247: case ITC_IRQ_PORTA:
                                    655 ; genLabel
      0098B9                        656 00104$:
                           0001D3   657 	Sstm8s_itc$ITC_SetSoftwarePriority$110 ==.
                                    658 ;	../SPL/src/stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
                                    659 ; genPointerGet
      0098B9 C6 7F 70         [ 1]  660 	ld	a, 0x7f70
                                    661 ; genAnd
      0098BC 14 02            [ 1]  662 	and	a, (0x02, sp)
                                    663 ; genPointerSet
      0098BE C7 7F 70         [ 1]  664 	ld	0x7f70, a
                           0001DB   665 	Sstm8s_itc$ITC_SetSoftwarePriority$111 ==.
                                    666 ;	../SPL/src/stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
                                    667 ; genPointerGet
      0098C1 C6 7F 70         [ 1]  668 	ld	a, 0x7f70
                                    669 ; genOr
      0098C4 1A 03            [ 1]  670 	or	a, (0x03, sp)
                                    671 ; genPointerSet
      0098C6 C7 7F 70         [ 1]  672 	ld	0x7f70, a
                           0001E3   673 	Sstm8s_itc$ITC_SetSoftwarePriority$112 ==.
                                    674 ;	../SPL/src/stm8s_itc.c: 250: break;
                                    675 ; genGoto
      0098C9 CC 99 3B         [ 2]  676 	jp	00128$
                           0001E6   677 	Sstm8s_itc$ITC_SetSoftwarePriority$113 ==.
                                    678 ;	../SPL/src/stm8s_itc.c: 255: case ITC_IRQ_PORTE:
                                    679 ; genLabel
      0098CC                        680 00108$:
                           0001E6   681 	Sstm8s_itc$ITC_SetSoftwarePriority$114 ==.
                                    682 ;	../SPL/src/stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
                                    683 ; genPointerGet
      0098CC C6 7F 71         [ 1]  684 	ld	a, 0x7f71
                                    685 ; genAnd
      0098CF 14 02            [ 1]  686 	and	a, (0x02, sp)
                                    687 ; genPointerSet
      0098D1 C7 7F 71         [ 1]  688 	ld	0x7f71, a
                           0001EE   689 	Sstm8s_itc$ITC_SetSoftwarePriority$115 ==.
                                    690 ;	../SPL/src/stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
                                    691 ; genPointerGet
      0098D4 C6 7F 71         [ 1]  692 	ld	a, 0x7f71
                                    693 ; genOr
      0098D7 1A 03            [ 1]  694 	or	a, (0x03, sp)
                                    695 ; genPointerSet
      0098D9 C7 7F 71         [ 1]  696 	ld	0x7f71, a
                           0001F6   697 	Sstm8s_itc$ITC_SetSoftwarePriority$116 ==.
                                    698 ;	../SPL/src/stm8s_itc.c: 258: break;
                                    699 ; genGoto
      0098DC CC 99 3B         [ 2]  700 	jp	00128$
                           0001F9   701 	Sstm8s_itc$ITC_SetSoftwarePriority$117 ==.
                                    702 ;	../SPL/src/stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
                                    703 ; genLabel
      0098DF                        704 00112$:
                           0001F9   705 	Sstm8s_itc$ITC_SetSoftwarePriority$118 ==.
                                    706 ;	../SPL/src/stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
                                    707 ; genPointerGet
      0098DF C6 7F 72         [ 1]  708 	ld	a, 0x7f72
                                    709 ; genAnd
      0098E2 14 02            [ 1]  710 	and	a, (0x02, sp)
                                    711 ; genPointerSet
      0098E4 C7 7F 72         [ 1]  712 	ld	0x7f72, a
                           000201   713 	Sstm8s_itc$ITC_SetSoftwarePriority$119 ==.
                                    714 ;	../SPL/src/stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
                                    715 ; genPointerGet
      0098E7 C6 7F 72         [ 1]  716 	ld	a, 0x7f72
                                    717 ; genOr
      0098EA 1A 03            [ 1]  718 	or	a, (0x03, sp)
                                    719 ; genPointerSet
      0098EC C7 7F 72         [ 1]  720 	ld	0x7f72, a
                           000209   721 	Sstm8s_itc$ITC_SetSoftwarePriority$120 ==.
                                    722 ;	../SPL/src/stm8s_itc.c: 271: break;
                                    723 ; genGoto
      0098EF CC 99 3B         [ 2]  724 	jp	00128$
                           00020C   725 	Sstm8s_itc$ITC_SetSoftwarePriority$121 ==.
                                    726 ;	../SPL/src/stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
                                    727 ; genLabel
      0098F2                        728 00116$:
                           00020C   729 	Sstm8s_itc$ITC_SetSoftwarePriority$122 ==.
                                    730 ;	../SPL/src/stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
                                    731 ; genPointerGet
      0098F2 C6 7F 73         [ 1]  732 	ld	a, 0x7f73
                                    733 ; genAnd
      0098F5 14 02            [ 1]  734 	and	a, (0x02, sp)
                                    735 ; genPointerSet
      0098F7 C7 7F 73         [ 1]  736 	ld	0x7f73, a
                           000214   737 	Sstm8s_itc$ITC_SetSoftwarePriority$123 ==.
                                    738 ;	../SPL/src/stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
                                    739 ; genPointerGet
      0098FA C6 7F 73         [ 1]  740 	ld	a, 0x7f73
                                    741 ; genOr
      0098FD 1A 03            [ 1]  742 	or	a, (0x03, sp)
                                    743 ; genPointerSet
      0098FF C7 7F 73         [ 1]  744 	ld	0x7f73, a
                           00021C   745 	Sstm8s_itc$ITC_SetSoftwarePriority$124 ==.
                                    746 ;	../SPL/src/stm8s_itc.c: 284: break;
                                    747 ; genGoto
      009902 CC 99 3B         [ 2]  748 	jp	00128$
                           00021F   749 	Sstm8s_itc$ITC_SetSoftwarePriority$125 ==.
                                    750 ;	../SPL/src/stm8s_itc.c: 296: case ITC_IRQ_I2C:
                                    751 ; genLabel
      009905                        752 00120$:
                           00021F   753 	Sstm8s_itc$ITC_SetSoftwarePriority$126 ==.
                                    754 ;	../SPL/src/stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
                                    755 ; genPointerGet
      009905 C6 7F 74         [ 1]  756 	ld	a, 0x7f74
                                    757 ; genAnd
      009908 14 02            [ 1]  758 	and	a, (0x02, sp)
                                    759 ; genPointerSet
      00990A C7 7F 74         [ 1]  760 	ld	0x7f74, a
                           000227   761 	Sstm8s_itc$ITC_SetSoftwarePriority$127 ==.
                                    762 ;	../SPL/src/stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
                                    763 ; genPointerGet
      00990D C6 7F 74         [ 1]  764 	ld	a, 0x7f74
                                    765 ; genOr
      009910 1A 03            [ 1]  766 	or	a, (0x03, sp)
                                    767 ; genPointerSet
      009912 C7 7F 74         [ 1]  768 	ld	0x7f74, a
                           00022F   769 	Sstm8s_itc$ITC_SetSoftwarePriority$128 ==.
                                    770 ;	../SPL/src/stm8s_itc.c: 299: break;
                                    771 ; genGoto
      009915 CC 99 3B         [ 2]  772 	jp	00128$
                           000232   773 	Sstm8s_itc$ITC_SetSoftwarePriority$129 ==.
                                    774 ;	../SPL/src/stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
                                    775 ; genLabel
      009918                        776 00124$:
                           000232   777 	Sstm8s_itc$ITC_SetSoftwarePriority$130 ==.
                                    778 ;	../SPL/src/stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
                                    779 ; genPointerGet
      009918 C6 7F 75         [ 1]  780 	ld	a, 0x7f75
                                    781 ; genAnd
      00991B 14 02            [ 1]  782 	and	a, (0x02, sp)
                                    783 ; genPointerSet
      00991D C7 7F 75         [ 1]  784 	ld	0x7f75, a
                           00023A   785 	Sstm8s_itc$ITC_SetSoftwarePriority$131 ==.
                                    786 ;	../SPL/src/stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
                                    787 ; genPointerGet
      009920 C6 7F 75         [ 1]  788 	ld	a, 0x7f75
                                    789 ; genOr
      009923 1A 03            [ 1]  790 	or	a, (0x03, sp)
                                    791 ; genPointerSet
      009925 C7 7F 75         [ 1]  792 	ld	0x7f75, a
                           000242   793 	Sstm8s_itc$ITC_SetSoftwarePriority$132 ==.
                                    794 ;	../SPL/src/stm8s_itc.c: 325: break;
                                    795 ; genGoto
      009928 CC 99 3B         [ 2]  796 	jp	00128$
                           000245   797 	Sstm8s_itc$ITC_SetSoftwarePriority$133 ==.
                                    798 ;	../SPL/src/stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
                                    799 ; genLabel
      00992B                        800 00125$:
                           000245   801 	Sstm8s_itc$ITC_SetSoftwarePriority$134 ==.
                                    802 ;	../SPL/src/stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
                                    803 ; genPointerGet
      00992B C6 7F 76         [ 1]  804 	ld	a, 0x7f76
                                    805 ; genAnd
      00992E 14 02            [ 1]  806 	and	a, (0x02, sp)
                                    807 ; genPointerSet
      009930 C7 7F 76         [ 1]  808 	ld	0x7f76, a
                           00024D   809 	Sstm8s_itc$ITC_SetSoftwarePriority$135 ==.
                                    810 ;	../SPL/src/stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
                                    811 ; genPointerGet
      009933 C6 7F 76         [ 1]  812 	ld	a, 0x7f76
                                    813 ; genOr
      009936 1A 03            [ 1]  814 	or	a, (0x03, sp)
                                    815 ; genPointerSet
      009938 C7 7F 76         [ 1]  816 	ld	0x7f76, a
                           000255   817 	Sstm8s_itc$ITC_SetSoftwarePriority$136 ==.
                           000255   818 	Sstm8s_itc$ITC_SetSoftwarePriority$137 ==.
                                    819 ;	../SPL/src/stm8s_itc.c: 334: }
                                    820 ; genLabel
      00993B                        821 00128$:
                           000255   822 	Sstm8s_itc$ITC_SetSoftwarePriority$138 ==.
                                    823 ;	../SPL/src/stm8s_itc.c: 335: }
                                    824 ; genEndFunction
      00993B 5B 03            [ 2]  825 	addw	sp, #3
                           000257   826 	Sstm8s_itc$ITC_SetSoftwarePriority$139 ==.
                           000257   827 	Sstm8s_itc$ITC_SetSoftwarePriority$140 ==.
                           000257   828 	XG$ITC_SetSoftwarePriority$0$0 ==.
      00993D 81               [ 4]  829 	ret
                           000258   830 	Sstm8s_itc$ITC_SetSoftwarePriority$141 ==.
                                    831 	.area CODE
                                    832 	.area CONST
                           000000   833 Fstm8s_itc$__str_0$0_0$0 == .
                                    834 	.area CONST
      0080EB                        835 ___str_0:
      0080EB 2E 2E 2F 53 50 4C 2F   836 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      008101 00                     837 	.db 0x00
                                    838 	.area CODE
                                    839 	.area INITIALIZER
                                    840 	.area CABS (ABS)
                                    841 
                                    842 	.area .debug_line (NOLOAD)
      001A37 00 00 02 9F            843 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001A3B                        844 Ldebug_line_start:
      001A3B 00 02                  845 	.dw	2
      001A3D 00 00 00 77            846 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001A41 01                     847 	.db	1
      001A42 01                     848 	.db	1
      001A43 FB                     849 	.db	-5
      001A44 0F                     850 	.db	15
      001A45 0A                     851 	.db	10
      001A46 00                     852 	.db	0
      001A47 01                     853 	.db	1
      001A48 01                     854 	.db	1
      001A49 01                     855 	.db	1
      001A4A 01                     856 	.db	1
      001A4B 00                     857 	.db	0
      001A4C 00                     858 	.db	0
      001A4D 00                     859 	.db	0
      001A4E 01                     860 	.db	1
      001A4F 43 3A 5C 50 72 6F 67   861 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001A77 00                     862 	.db	0
      001A78 43 3A 5C 50 72 6F 67   863 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001A9B 00                     864 	.db	0
      001A9C 00                     865 	.db	0
      001A9D 2E 2E 2F 53 50 4C 2F   866 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      001AB3 00                     867 	.db	0
      001AB4 00                     868 	.uleb128	0
      001AB5 00                     869 	.uleb128	0
      001AB6 00                     870 	.uleb128	0
      001AB7 00                     871 	.db	0
      001AB8                        872 Ldebug_line_stmt:
      001AB8 00                     873 	.db	0
      001AB9 05                     874 	.uleb128	5
      001ABA 02                     875 	.db	2
      001ABB 00 00 96 E6            876 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
      001ABF 03                     877 	.db	3
      001AC0 31                     878 	.sleb128	49
      001AC1 01                     879 	.db	1
      001AC2 09                     880 	.db	9
      001AC3 00 00                  881 	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
      001AC5 03                     882 	.db	3
      001AC6 09                     883 	.sleb128	9
      001AC7 01                     884 	.db	1
      001AC8 09                     885 	.db	9
      001AC9 00 01                  886 	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
      001ACB 03                     887 	.db	3
      001ACC 01                     888 	.sleb128	1
      001ACD 01                     889 	.db	1
      001ACE 09                     890 	.db	9
      001ACF 00 01                  891 	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
      001AD1 03                     892 	.db	3
      001AD2 05                     893 	.sleb128	5
      001AD3 01                     894 	.db	1
      001AD4 09                     895 	.db	9
      001AD5 00 01                  896 	.dw	1+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
      001AD7 00                     897 	.db	0
      001AD8 01                     898 	.uleb128	1
      001AD9 01                     899 	.db	1
      001ADA 00                     900 	.db	0
      001ADB 05                     901 	.uleb128	5
      001ADC 02                     902 	.db	2
      001ADD 00 00 96 E9            903 	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
      001AE1 03                     904 	.db	3
      001AE2 D2 00                  905 	.sleb128	82
      001AE4 01                     906 	.db	1
      001AE5 09                     907 	.db	9
      001AE6 00 00                  908 	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
      001AE8 03                     909 	.db	3
      001AE9 02                     910 	.sleb128	2
      001AEA 01                     911 	.db	1
      001AEB 09                     912 	.db	9
      001AEC 00 04                  913 	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
      001AEE 03                     914 	.db	3
      001AEF 01                     915 	.sleb128	1
      001AF0 01                     916 	.db	1
      001AF1 09                     917 	.db	9
      001AF2 00 04                  918 	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
      001AF4 03                     919 	.db	3
      001AF5 01                     920 	.sleb128	1
      001AF6 01                     921 	.db	1
      001AF7 09                     922 	.db	9
      001AF8 00 04                  923 	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
      001AFA 03                     924 	.db	3
      001AFB 01                     925 	.sleb128	1
      001AFC 01                     926 	.db	1
      001AFD 09                     927 	.db	9
      001AFE 00 04                  928 	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
      001B00 03                     929 	.db	3
      001B01 01                     930 	.sleb128	1
      001B02 01                     931 	.db	1
      001B03 09                     932 	.db	9
      001B04 00 04                  933 	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
      001B06 03                     934 	.db	3
      001B07 01                     935 	.sleb128	1
      001B08 01                     936 	.db	1
      001B09 09                     937 	.db	9
      001B0A 00 04                  938 	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
      001B0C 03                     939 	.db	3
      001B0D 01                     940 	.sleb128	1
      001B0E 01                     941 	.db	1
      001B0F 09                     942 	.db	9
      001B10 00 04                  943 	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
      001B12 03                     944 	.db	3
      001B13 01                     945 	.sleb128	1
      001B14 01                     946 	.db	1
      001B15 09                     947 	.db	9
      001B16 00 04                  948 	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
      001B18 03                     949 	.db	3
      001B19 01                     950 	.sleb128	1
      001B1A 01                     951 	.db	1
      001B1B 09                     952 	.db	9
      001B1C 00 01                  953 	.dw	1+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
      001B1E 00                     954 	.db	0
      001B1F 01                     955 	.uleb128	1
      001B20 01                     956 	.db	1
      001B21 00                     957 	.db	0
      001B22 05                     958 	.uleb128	5
      001B23 02                     959 	.db	2
      001B24 00 00 97 0A            960 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
      001B28 03                     961 	.db	3
      001B29 E3 00                  962 	.sleb128	99
      001B2B 01                     963 	.db	1
      001B2C 09                     964 	.db	9
      001B2D 00 00                  965 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
      001B2F 03                     966 	.db	3
      001B30 02                     967 	.sleb128	2
      001B31 01                     968 	.db	1
      001B32 09                     969 	.db	9
      001B33 00 05                  970 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
      001B35 03                     971 	.db	3
      001B36 01                     972 	.sleb128	1
      001B37 01                     973 	.db	1
      001B38 09                     974 	.db	9
      001B39 00 01                  975 	.dw	1+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
      001B3B 00                     976 	.db	0
      001B3C 01                     977 	.uleb128	1
      001B3D 01                     978 	.db	1
      001B3E 00                     979 	.db	0
      001B3F 05                     980 	.uleb128	5
      001B40 02                     981 	.db	2
      001B41 00 00 97 10            982 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
      001B45 03                     983 	.db	3
      001B46 ED 00                  984 	.sleb128	109
      001B48 01                     985 	.db	1
      001B49 09                     986 	.db	9
      001B4A 00 01                  987 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$26
      001B4C 03                     988 	.db	3
      001B4D 02                     989 	.sleb128	2
      001B4E 01                     990 	.db	1
      001B4F 09                     991 	.db	9
      001B50 00 01                  992 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
      001B52 03                     993 	.db	3
      001B53 04                     994 	.sleb128	4
      001B54 01                     995 	.db	1
      001B55 09                     996 	.db	9
      001B56 00 28                  997 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$30
      001B58 03                     998 	.db	3
      001B59 03                     999 	.sleb128	3
      001B5A 01                    1000 	.db	1
      001B5B 09                    1001 	.db	9
      001B5C 00 1A                 1002 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$40
      001B5E 03                    1003 	.db	3
      001B5F 02                    1004 	.sleb128	2
      001B60 01                    1005 	.db	1
      001B61 09                    1006 	.db	9
      001B62 00 42                 1007 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$43
      001B64 03                    1008 	.db	3
      001B65 05                    1009 	.sleb128	5
      001B66 01                    1010 	.db	1
      001B67 09                    1011 	.db	9
      001B68 00 00                 1012 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
      001B6A 03                    1013 	.db	3
      001B6B 01                    1014 	.sleb128	1
      001B6C 01                    1015 	.db	1
      001B6D 09                    1016 	.db	9
      001B6E 00 06                 1017 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
      001B70 03                    1018 	.db	3
      001B71 01                    1019 	.sleb128	1
      001B72 01                    1020 	.db	1
      001B73 09                    1021 	.db	9
      001B74 00 03                 1022 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
      001B76 03                    1023 	.db	3
      001B77 05                    1024 	.sleb128	5
      001B78 01                    1025 	.db	1
      001B79 09                    1026 	.db	9
      001B7A 00 00                 1027 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
      001B7C 03                    1028 	.db	3
      001B7D 01                    1029 	.sleb128	1
      001B7E 01                    1030 	.db	1
      001B7F 09                    1031 	.db	9
      001B80 00 06                 1032 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
      001B82 03                    1033 	.db	3
      001B83 01                    1034 	.sleb128	1
      001B84 01                    1035 	.db	1
      001B85 09                    1036 	.db	9
      001B86 00 03                 1037 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
      001B88 03                    1038 	.db	3
      001B89 0A                    1039 	.sleb128	10
      001B8A 01                    1040 	.db	1
      001B8B 09                    1041 	.db	9
      001B8C 00 00                 1042 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
      001B8E 03                    1043 	.db	3
      001B8F 01                    1044 	.sleb128	1
      001B90 01                    1045 	.db	1
      001B91 09                    1046 	.db	9
      001B92 00 06                 1047 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$53-Sstm8s_itc$ITC_GetSoftwarePriority$52
      001B94 03                    1048 	.db	3
      001B95 01                    1049 	.sleb128	1
      001B96 01                    1050 	.db	1
      001B97 09                    1051 	.db	9
      001B98 00 03                 1052 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$53
      001B9A 03                    1053 	.db	3
      001B9B 0A                    1054 	.sleb128	10
      001B9C 01                    1055 	.db	1
      001B9D 09                    1056 	.db	9
      001B9E 00 00                 1057 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
      001BA0 03                    1058 	.db	3
      001BA1 01                    1059 	.sleb128	1
      001BA2 01                    1060 	.db	1
      001BA3 09                    1061 	.db	9
      001BA4 00 06                 1062 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
      001BA6 03                    1063 	.db	3
      001BA7 01                    1064 	.sleb128	1
      001BA8 01                    1065 	.db	1
      001BA9 09                    1066 	.db	9
      001BAA 00 03                 1067 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
      001BAC 03                    1068 	.db	3
      001BAD 0C                    1069 	.sleb128	12
      001BAE 01                    1070 	.db	1
      001BAF 09                    1071 	.db	9
      001BB0 00 00                 1072 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$58-Sstm8s_itc$ITC_GetSoftwarePriority$57
      001BB2 03                    1073 	.db	3
      001BB3 01                    1074 	.sleb128	1
      001BB4 01                    1075 	.db	1
      001BB5 09                    1076 	.db	9
      001BB6 00 06                 1077 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$58
      001BB8 03                    1078 	.db	3
      001BB9 01                    1079 	.sleb128	1
      001BBA 01                    1080 	.db	1
      001BBB 09                    1081 	.db	9
      001BBC 00 03                 1082 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$59
      001BBE 03                    1083 	.db	3
      001BBF 13                    1084 	.sleb128	19
      001BC0 01                    1085 	.db	1
      001BC1 09                    1086 	.db	9
      001BC2 00 00                 1087 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$61-Sstm8s_itc$ITC_GetSoftwarePriority$60
      001BC4 03                    1088 	.db	3
      001BC5 02                    1089 	.sleb128	2
      001BC6 01                    1090 	.db	1
      001BC7 09                    1091 	.db	9
      001BC8 00 06                 1092 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$62-Sstm8s_itc$ITC_GetSoftwarePriority$61
      001BCA 03                    1093 	.db	3
      001BCB 01                    1094 	.sleb128	1
      001BCC 01                    1095 	.db	1
      001BCD 09                    1096 	.db	9
      001BCE 00 03                 1097 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$63-Sstm8s_itc$ITC_GetSoftwarePriority$62
      001BD0 03                    1098 	.db	3
      001BD1 02                    1099 	.sleb128	2
      001BD2 01                    1100 	.db	1
      001BD3 09                    1101 	.db	9
      001BD4 00 00                 1102 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$64-Sstm8s_itc$ITC_GetSoftwarePriority$63
      001BD6 03                    1103 	.db	3
      001BD7 01                    1104 	.sleb128	1
      001BD8 01                    1105 	.db	1
      001BD9 09                    1106 	.db	9
      001BDA 00 06                 1107 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$66-Sstm8s_itc$ITC_GetSoftwarePriority$64
      001BDC 03                    1108 	.db	3
      001BDD 05                    1109 	.sleb128	5
      001BDE 01                    1110 	.db	1
      001BDF 09                    1111 	.db	9
      001BE0 00 00                 1112 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$67-Sstm8s_itc$ITC_GetSoftwarePriority$66
      001BE2 03                    1113 	.db	3
      001BE3 02                    1114 	.sleb128	2
      001BE4 01                    1115 	.db	1
      001BE5 09                    1116 	.db	9
      001BE6 00 0B                 1117 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$68-Sstm8s_itc$ITC_GetSoftwarePriority$67
      001BE8 03                    1118 	.db	3
      001BE9 02                    1119 	.sleb128	2
      001BEA 01                    1120 	.db	1
      001BEB 09                    1121 	.db	9
      001BEC 00 00                 1122 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$69-Sstm8s_itc$ITC_GetSoftwarePriority$68
      001BEE 03                    1123 	.db	3
      001BEF 01                    1124 	.sleb128	1
      001BF0 01                    1125 	.db	1
      001BF1 09                    1126 	.db	9
      001BF2 00 02                 1127 	.dw	1+Sstm8s_itc$ITC_GetSoftwarePriority$71-Sstm8s_itc$ITC_GetSoftwarePriority$69
      001BF4 00                    1128 	.db	0
      001BF5 01                    1129 	.uleb128	1
      001BF6 01                    1130 	.db	1
      001BF7 00                    1131 	.db	0
      001BF8 05                    1132 	.uleb128	5
      001BF9 02                    1133 	.db	2
      001BFA 00 00 97 DF           1134 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$73)
      001BFE 03                    1135 	.db	3
      001BFF DE 01                 1136 	.sleb128	222
      001C01 01                    1137 	.db	1
      001C02 09                    1138 	.db	9
      001C03 00 02                 1139 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$73
      001C05 03                    1140 	.db	3
      001C06 06                    1141 	.sleb128	6
      001C07 01                    1142 	.db	1
      001C08 09                    1143 	.db	9
      001C09 00 25                 1144 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$76
      001C0B 03                    1145 	.db	3
      001C0C 01                    1146 	.sleb128	1
      001C0D 01                    1147 	.db	1
      001C0E 09                    1148 	.db	9
      001C0F 00 30                 1149 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$83
      001C11 03                    1150 	.db	3
      001C12 03                    1151 	.sleb128	3
      001C13 01                    1152 	.db	1
      001C14 09                    1153 	.db	9
      001C15 00 19                 1154 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$93
      001C17 03                    1155 	.db	3
      001C18 04                    1156 	.sleb128	4
      001C19 01                    1157 	.db	1
      001C1A 09                    1158 	.db	9
      001C1B 00 18                 1159 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$101
      001C1D 03                    1160 	.db	3
      001C1E 03                    1161 	.sleb128	3
      001C1F 01                    1162 	.db	1
      001C20 09                    1163 	.db	9
      001C21 00 0F                 1164 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$107-Sstm8s_itc$ITC_SetSoftwarePriority$104
      001C23 03                    1165 	.db	3
      001C24 02                    1166 	.sleb128	2
      001C25 01                    1167 	.db	1
      001C26 09                    1168 	.db	9
      001C27 00 43                 1169 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$109-Sstm8s_itc$ITC_SetSoftwarePriority$107
      001C29 03                    1170 	.db	3
      001C2A 05                    1171 	.sleb128	5
      001C2B 01                    1172 	.db	1
      001C2C 09                    1173 	.db	9
      001C2D 00 00                 1174 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$110-Sstm8s_itc$ITC_SetSoftwarePriority$109
      001C2F 03                    1175 	.db	3
      001C30 01                    1176 	.sleb128	1
      001C31 01                    1177 	.db	1
      001C32 09                    1178 	.db	9
      001C33 00 08                 1179 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$111-Sstm8s_itc$ITC_SetSoftwarePriority$110
      001C35 03                    1180 	.db	3
      001C36 01                    1181 	.sleb128	1
      001C37 01                    1182 	.db	1
      001C38 09                    1183 	.db	9
      001C39 00 08                 1184 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$112-Sstm8s_itc$ITC_SetSoftwarePriority$111
      001C3B 03                    1185 	.db	3
      001C3C 01                    1186 	.sleb128	1
      001C3D 01                    1187 	.db	1
      001C3E 09                    1188 	.db	9
      001C3F 00 03                 1189 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$113-Sstm8s_itc$ITC_SetSoftwarePriority$112
      001C41 03                    1190 	.db	3
      001C42 05                    1191 	.sleb128	5
      001C43 01                    1192 	.db	1
      001C44 09                    1193 	.db	9
      001C45 00 00                 1194 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$114-Sstm8s_itc$ITC_SetSoftwarePriority$113
      001C47 03                    1195 	.db	3
      001C48 01                    1196 	.sleb128	1
      001C49 01                    1197 	.db	1
      001C4A 09                    1198 	.db	9
      001C4B 00 08                 1199 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$115-Sstm8s_itc$ITC_SetSoftwarePriority$114
      001C4D 03                    1200 	.db	3
      001C4E 01                    1201 	.sleb128	1
      001C4F 01                    1202 	.db	1
      001C50 09                    1203 	.db	9
      001C51 00 08                 1204 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$116-Sstm8s_itc$ITC_SetSoftwarePriority$115
      001C53 03                    1205 	.db	3
      001C54 01                    1206 	.sleb128	1
      001C55 01                    1207 	.db	1
      001C56 09                    1208 	.db	9
      001C57 00 03                 1209 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$117-Sstm8s_itc$ITC_SetSoftwarePriority$116
      001C59 03                    1210 	.db	3
      001C5A 0A                    1211 	.sleb128	10
      001C5B 01                    1212 	.db	1
      001C5C 09                    1213 	.db	9
      001C5D 00 00                 1214 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$118-Sstm8s_itc$ITC_SetSoftwarePriority$117
      001C5F 03                    1215 	.db	3
      001C60 01                    1216 	.sleb128	1
      001C61 01                    1217 	.db	1
      001C62 09                    1218 	.db	9
      001C63 00 08                 1219 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$119-Sstm8s_itc$ITC_SetSoftwarePriority$118
      001C65 03                    1220 	.db	3
      001C66 01                    1221 	.sleb128	1
      001C67 01                    1222 	.db	1
      001C68 09                    1223 	.db	9
      001C69 00 08                 1224 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$120-Sstm8s_itc$ITC_SetSoftwarePriority$119
      001C6B 03                    1225 	.db	3
      001C6C 01                    1226 	.sleb128	1
      001C6D 01                    1227 	.db	1
      001C6E 09                    1228 	.db	9
      001C6F 00 03                 1229 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$121-Sstm8s_itc$ITC_SetSoftwarePriority$120
      001C71 03                    1230 	.db	3
      001C72 0A                    1231 	.sleb128	10
      001C73 01                    1232 	.db	1
      001C74 09                    1233 	.db	9
      001C75 00 00                 1234 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$122-Sstm8s_itc$ITC_SetSoftwarePriority$121
      001C77 03                    1235 	.db	3
      001C78 01                    1236 	.sleb128	1
      001C79 01                    1237 	.db	1
      001C7A 09                    1238 	.db	9
      001C7B 00 08                 1239 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$123-Sstm8s_itc$ITC_SetSoftwarePriority$122
      001C7D 03                    1240 	.db	3
      001C7E 01                    1241 	.sleb128	1
      001C7F 01                    1242 	.db	1
      001C80 09                    1243 	.db	9
      001C81 00 08                 1244 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$124-Sstm8s_itc$ITC_SetSoftwarePriority$123
      001C83 03                    1245 	.db	3
      001C84 01                    1246 	.sleb128	1
      001C85 01                    1247 	.db	1
      001C86 09                    1248 	.db	9
      001C87 00 03                 1249 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$125-Sstm8s_itc$ITC_SetSoftwarePriority$124
      001C89 03                    1250 	.db	3
      001C8A 0C                    1251 	.sleb128	12
      001C8B 01                    1252 	.db	1
      001C8C 09                    1253 	.db	9
      001C8D 00 00                 1254 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$126-Sstm8s_itc$ITC_SetSoftwarePriority$125
      001C8F 03                    1255 	.db	3
      001C90 01                    1256 	.sleb128	1
      001C91 01                    1257 	.db	1
      001C92 09                    1258 	.db	9
      001C93 00 08                 1259 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$127-Sstm8s_itc$ITC_SetSoftwarePriority$126
      001C95 03                    1260 	.db	3
      001C96 01                    1261 	.sleb128	1
      001C97 01                    1262 	.db	1
      001C98 09                    1263 	.db	9
      001C99 00 08                 1264 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$128-Sstm8s_itc$ITC_SetSoftwarePriority$127
      001C9B 03                    1265 	.db	3
      001C9C 01                    1266 	.sleb128	1
      001C9D 01                    1267 	.db	1
      001C9E 09                    1268 	.db	9
      001C9F 00 03                 1269 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$129-Sstm8s_itc$ITC_SetSoftwarePriority$128
      001CA1 03                    1270 	.db	3
      001CA2 16                    1271 	.sleb128	22
      001CA3 01                    1272 	.db	1
      001CA4 09                    1273 	.db	9
      001CA5 00 00                 1274 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$130-Sstm8s_itc$ITC_SetSoftwarePriority$129
      001CA7 03                    1275 	.db	3
      001CA8 02                    1276 	.sleb128	2
      001CA9 01                    1277 	.db	1
      001CAA 09                    1278 	.db	9
      001CAB 00 08                 1279 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$131-Sstm8s_itc$ITC_SetSoftwarePriority$130
      001CAD 03                    1280 	.db	3
      001CAE 01                    1281 	.sleb128	1
      001CAF 01                    1282 	.db	1
      001CB0 09                    1283 	.db	9
      001CB1 00 08                 1284 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$132-Sstm8s_itc$ITC_SetSoftwarePriority$131
      001CB3 03                    1285 	.db	3
      001CB4 01                    1286 	.sleb128	1
      001CB5 01                    1287 	.db	1
      001CB6 09                    1288 	.db	9
      001CB7 00 03                 1289 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$133-Sstm8s_itc$ITC_SetSoftwarePriority$132
      001CB9 03                    1290 	.db	3
      001CBA 02                    1291 	.sleb128	2
      001CBB 01                    1292 	.db	1
      001CBC 09                    1293 	.db	9
      001CBD 00 00                 1294 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$134-Sstm8s_itc$ITC_SetSoftwarePriority$133
      001CBF 03                    1295 	.db	3
      001CC0 01                    1296 	.sleb128	1
      001CC1 01                    1297 	.db	1
      001CC2 09                    1298 	.db	9
      001CC3 00 08                 1299 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$135-Sstm8s_itc$ITC_SetSoftwarePriority$134
      001CC5 03                    1300 	.db	3
      001CC6 01                    1301 	.sleb128	1
      001CC7 01                    1302 	.db	1
      001CC8 09                    1303 	.db	9
      001CC9 00 08                 1304 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$137-Sstm8s_itc$ITC_SetSoftwarePriority$135
      001CCB 03                    1305 	.db	3
      001CCC 05                    1306 	.sleb128	5
      001CCD 01                    1307 	.db	1
      001CCE 09                    1308 	.db	9
      001CCF 00 00                 1309 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$138-Sstm8s_itc$ITC_SetSoftwarePriority$137
      001CD1 03                    1310 	.db	3
      001CD2 01                    1311 	.sleb128	1
      001CD3 01                    1312 	.db	1
      001CD4 09                    1313 	.db	9
      001CD5 00 03                 1314 	.dw	1+Sstm8s_itc$ITC_SetSoftwarePriority$140-Sstm8s_itc$ITC_SetSoftwarePriority$138
      001CD7 00                    1315 	.db	0
      001CD8 01                    1316 	.uleb128	1
      001CD9 01                    1317 	.db	1
      001CDA                       1318 Ldebug_line_end:
                                   1319 
                                   1320 	.area .debug_loc (NOLOAD)
      0030A8                       1321 Ldebug_loc_start:
      0030A8 00 00 99 3D           1322 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      0030AC 00 00 99 3E           1323 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$141)
      0030B0 00 02                 1324 	.dw	2
      0030B2 78                    1325 	.db	120
      0030B3 01                    1326 	.sleb128	1
      0030B4 00 00 98 74           1327 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      0030B8 00 00 99 3D           1328 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      0030BC 00 02                 1329 	.dw	2
      0030BE 78                    1330 	.db	120
      0030BF 04                    1331 	.sleb128	4
      0030C0 00 00 98 6A           1332 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      0030C4 00 00 98 74           1333 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      0030C8 00 02                 1334 	.dw	2
      0030CA 78                    1335 	.db	120
      0030CB 05                    1336 	.sleb128	5
      0030CC 00 00 98 64           1337 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      0030D0 00 00 98 6A           1338 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      0030D4 00 02                 1339 	.dw	2
      0030D6 78                    1340 	.db	120
      0030D7 04                    1341 	.sleb128	4
      0030D8 00 00 98 5A           1342 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      0030DC 00 00 98 64           1343 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      0030E0 00 02                 1344 	.dw	2
      0030E2 78                    1345 	.db	120
      0030E3 05                    1346 	.sleb128	5
      0030E4 00 00 98 4F           1347 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      0030E8 00 00 98 5A           1348 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      0030EC 00 02                 1349 	.dw	2
      0030EE 78                    1350 	.db	120
      0030EF 04                    1351 	.sleb128	4
      0030F0 00 00 98 4A           1352 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      0030F4 00 00 98 4F           1353 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      0030F8 00 02                 1354 	.dw	2
      0030FA 78                    1355 	.db	120
      0030FB 0A                    1356 	.sleb128	10
      0030FC 00 00 98 48           1357 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      003100 00 00 98 4A           1358 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      003104 00 02                 1359 	.dw	2
      003106 78                    1360 	.db	120
      003107 09                    1361 	.sleb128	9
      003108 00 00 98 46           1362 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      00310C 00 00 98 48           1363 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      003110 00 02                 1364 	.dw	2
      003112 78                    1365 	.db	120
      003113 08                    1366 	.sleb128	8
      003114 00 00 98 44           1367 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      003118 00 00 98 46           1368 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      00311C 00 02                 1369 	.dw	2
      00311E 78                    1370 	.db	120
      00311F 07                    1371 	.sleb128	7
      003120 00 00 98 42           1372 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      003124 00 00 98 44           1373 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      003128 00 02                 1374 	.dw	2
      00312A 78                    1375 	.db	120
      00312B 05                    1376 	.sleb128	5
      00312C 00 00 98 40           1377 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      003130 00 00 98 42           1378 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      003134 00 02                 1379 	.dw	2
      003136 78                    1380 	.db	120
      003137 04                    1381 	.sleb128	4
      003138 00 00 98 36           1382 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      00313C 00 00 98 40           1383 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      003140 00 02                 1384 	.dw	2
      003142 78                    1385 	.db	120
      003143 04                    1386 	.sleb128	4
      003144 00 00 98 31           1387 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      003148 00 00 98 36           1388 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      00314C 00 02                 1389 	.dw	2
      00314E 78                    1390 	.db	120
      00314F 0A                    1391 	.sleb128	10
      003150 00 00 98 2F           1392 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      003154 00 00 98 31           1393 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      003158 00 02                 1394 	.dw	2
      00315A 78                    1395 	.db	120
      00315B 09                    1396 	.sleb128	9
      00315C 00 00 98 2D           1397 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      003160 00 00 98 2F           1398 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      003164 00 02                 1399 	.dw	2
      003166 78                    1400 	.db	120
      003167 08                    1401 	.sleb128	8
      003168 00 00 98 2B           1402 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      00316C 00 00 98 2D           1403 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      003170 00 02                 1404 	.dw	2
      003172 78                    1405 	.db	120
      003173 07                    1406 	.sleb128	7
      003174 00 00 98 29           1407 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      003178 00 00 98 2B           1408 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      00317C 00 02                 1409 	.dw	2
      00317E 78                    1410 	.db	120
      00317F 05                    1411 	.sleb128	5
      003180 00 00 98 27           1412 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      003184 00 00 98 29           1413 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      003188 00 02                 1414 	.dw	2
      00318A 78                    1415 	.db	120
      00318B 04                    1416 	.sleb128	4
      00318C 00 00 98 17           1417 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      003190 00 00 98 27           1418 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      003194 00 02                 1419 	.dw	2
      003196 78                    1420 	.db	120
      003197 04                    1421 	.sleb128	4
      003198 00 00 98 0F           1422 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      00319C 00 00 98 17           1423 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      0031A0 00 02                 1424 	.dw	2
      0031A2 78                    1425 	.db	120
      0031A3 04                    1426 	.sleb128	4
      0031A4 00 00 98 06           1427 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      0031A8 00 00 98 0F           1428 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      0031AC 00 02                 1429 	.dw	2
      0031AE 78                    1430 	.db	120
      0031AF 04                    1431 	.sleb128	4
      0031B0 00 00 98 01           1432 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      0031B4 00 00 98 06           1433 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      0031B8 00 02                 1434 	.dw	2
      0031BA 78                    1435 	.db	120
      0031BB 0A                    1436 	.sleb128	10
      0031BC 00 00 97 FF           1437 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      0031C0 00 00 98 01           1438 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      0031C4 00 02                 1439 	.dw	2
      0031C6 78                    1440 	.db	120
      0031C7 09                    1441 	.sleb128	9
      0031C8 00 00 97 FD           1442 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      0031CC 00 00 97 FF           1443 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      0031D0 00 02                 1444 	.dw	2
      0031D2 78                    1445 	.db	120
      0031D3 08                    1446 	.sleb128	8
      0031D4 00 00 97 FB           1447 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      0031D8 00 00 97 FD           1448 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      0031DC 00 02                 1449 	.dw	2
      0031DE 78                    1450 	.db	120
      0031DF 07                    1451 	.sleb128	7
      0031E0 00 00 97 F9           1452 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      0031E4 00 00 97 FB           1453 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      0031E8 00 02                 1454 	.dw	2
      0031EA 78                    1455 	.db	120
      0031EB 05                    1456 	.sleb128	5
      0031EC 00 00 97 E1           1457 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      0031F0 00 00 97 F9           1458 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      0031F4 00 02                 1459 	.dw	2
      0031F6 78                    1460 	.db	120
      0031F7 04                    1461 	.sleb128	4
      0031F8 00 00 97 DF           1462 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
      0031FC 00 00 97 E1           1463 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      003200 00 02                 1464 	.dw	2
      003202 78                    1465 	.db	120
      003203 01                    1466 	.sleb128	1
      003204 00 00 00 00           1467 	.dw	0,0
      003208 00 00 00 00           1468 	.dw	0,0
      00320C 00 00 97 DE           1469 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      003210 00 00 97 DF           1470 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$72)
      003214 00 02                 1471 	.dw	2
      003216 78                    1472 	.db	120
      003217 01                    1473 	.sleb128	1
      003218 00 00 97 44           1474 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      00321C 00 00 97 DE           1475 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      003220 00 02                 1476 	.dw	2
      003222 78                    1477 	.db	120
      003223 03                    1478 	.sleb128	3
      003224 00 00 97 41           1479 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      003228 00 00 97 44           1480 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      00322C 00 02                 1481 	.dw	2
      00322E 78                    1482 	.db	120
      00322F 04                    1483 	.sleb128	4
      003230 00 00 97 3A           1484 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      003234 00 00 97 41           1485 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      003238 00 02                 1486 	.dw	2
      00323A 78                    1487 	.db	120
      00323B 03                    1488 	.sleb128	3
      00323C 00 00 97 39           1489 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      003240 00 00 97 3A           1490 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      003244 00 02                 1491 	.dw	2
      003246 78                    1492 	.db	120
      003247 05                    1493 	.sleb128	5
      003248 00 00 97 34           1494 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      00324C 00 00 97 39           1495 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      003250 00 02                 1496 	.dw	2
      003252 78                    1497 	.db	120
      003253 0B                    1498 	.sleb128	11
      003254 00 00 97 32           1499 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      003258 00 00 97 34           1500 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      00325C 00 02                 1501 	.dw	2
      00325E 78                    1502 	.db	120
      00325F 0A                    1503 	.sleb128	10
      003260 00 00 97 30           1504 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      003264 00 00 97 32           1505 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      003268 00 02                 1506 	.dw	2
      00326A 78                    1507 	.db	120
      00326B 09                    1508 	.sleb128	9
      00326C 00 00 97 2E           1509 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      003270 00 00 97 30           1510 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      003274 00 02                 1511 	.dw	2
      003276 78                    1512 	.db	120
      003277 08                    1513 	.sleb128	8
      003278 00 00 97 2C           1514 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      00327C 00 00 97 2E           1515 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      003280 00 02                 1516 	.dw	2
      003282 78                    1517 	.db	120
      003283 07                    1518 	.sleb128	7
      003284 00 00 97 2A           1519 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003288 00 00 97 2C           1520 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      00328C 00 02                 1521 	.dw	2
      00328E 78                    1522 	.db	120
      00328F 06                    1523 	.sleb128	6
      003290 00 00 97 28           1524 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      003294 00 00 97 2A           1525 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003298 00 02                 1526 	.dw	2
      00329A 78                    1527 	.db	120
      00329B 05                    1528 	.sleb128	5
      00329C 00 00 97 11           1529 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      0032A0 00 00 97 28           1530 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      0032A4 00 02                 1531 	.dw	2
      0032A6 78                    1532 	.db	120
      0032A7 03                    1533 	.sleb128	3
      0032A8 00 00 97 10           1534 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      0032AC 00 00 97 11           1535 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      0032B0 00 02                 1536 	.dw	2
      0032B2 78                    1537 	.db	120
      0032B3 01                    1538 	.sleb128	1
      0032B4 00 00 00 00           1539 	.dw	0,0
      0032B8 00 00 00 00           1540 	.dw	0,0
      0032BC 00 00 97 0A           1541 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      0032C0 00 00 97 10           1542 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
      0032C4 00 02                 1543 	.dw	2
      0032C6 78                    1544 	.db	120
      0032C7 01                    1545 	.sleb128	1
      0032C8 00 00 00 00           1546 	.dw	0,0
      0032CC 00 00 00 00           1547 	.dw	0,0
      0032D0 00 00 96 E9           1548 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      0032D4 00 00 97 0A           1549 	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
      0032D8 00 02                 1550 	.dw	2
      0032DA 78                    1551 	.db	120
      0032DB 01                    1552 	.sleb128	1
      0032DC 00 00 00 00           1553 	.dw	0,0
      0032E0 00 00 00 00           1554 	.dw	0,0
      0032E4 00 00 96 E6           1555 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      0032E8 00 00 96 E9           1556 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
      0032EC 00 02                 1557 	.dw	2
      0032EE 78                    1558 	.db	120
      0032EF 01                    1559 	.sleb128	1
      0032F0 00 00 00 00           1560 	.dw	0,0
      0032F4 00 00 00 00           1561 	.dw	0,0
                                   1562 
                                   1563 	.area .debug_abbrev (NOLOAD)
      0004DF                       1564 Ldebug_abbrev:
      0004DF 03                    1565 	.uleb128	3
      0004E0 2E                    1566 	.uleb128	46
      0004E1 00                    1567 	.db	0
      0004E2 03                    1568 	.uleb128	3
      0004E3 08                    1569 	.uleb128	8
      0004E4 11                    1570 	.uleb128	17
      0004E5 01                    1571 	.uleb128	1
      0004E6 12                    1572 	.uleb128	18
      0004E7 01                    1573 	.uleb128	1
      0004E8 3F                    1574 	.uleb128	63
      0004E9 0C                    1575 	.uleb128	12
      0004EA 40                    1576 	.uleb128	64
      0004EB 06                    1577 	.uleb128	6
      0004EC 49                    1578 	.uleb128	73
      0004ED 13                    1579 	.uleb128	19
      0004EE 00                    1580 	.uleb128	0
      0004EF 00                    1581 	.uleb128	0
      0004F0 06                    1582 	.uleb128	6
      0004F1 05                    1583 	.uleb128	5
      0004F2 00                    1584 	.db	0
      0004F3 02                    1585 	.uleb128	2
      0004F4 0A                    1586 	.uleb128	10
      0004F5 03                    1587 	.uleb128	3
      0004F6 08                    1588 	.uleb128	8
      0004F7 49                    1589 	.uleb128	73
      0004F8 13                    1590 	.uleb128	19
      0004F9 00                    1591 	.uleb128	0
      0004FA 00                    1592 	.uleb128	0
      0004FB 0B                    1593 	.uleb128	11
      0004FC 01                    1594 	.uleb128	1
      0004FD 01                    1595 	.db	1
      0004FE 01                    1596 	.uleb128	1
      0004FF 13                    1597 	.uleb128	19
      000500 0B                    1598 	.uleb128	11
      000501 0B                    1599 	.uleb128	11
      000502 49                    1600 	.uleb128	73
      000503 13                    1601 	.uleb128	19
      000504 00                    1602 	.uleb128	0
      000505 00                    1603 	.uleb128	0
      000506 09                    1604 	.uleb128	9
      000507 2E                    1605 	.uleb128	46
      000508 01                    1606 	.db	1
      000509 01                    1607 	.uleb128	1
      00050A 13                    1608 	.uleb128	19
      00050B 03                    1609 	.uleb128	3
      00050C 08                    1610 	.uleb128	8
      00050D 11                    1611 	.uleb128	17
      00050E 01                    1612 	.uleb128	1
      00050F 12                    1613 	.uleb128	18
      000510 01                    1614 	.uleb128	1
      000511 3F                    1615 	.uleb128	63
      000512 0C                    1616 	.uleb128	12
      000513 40                    1617 	.uleb128	64
      000514 06                    1618 	.uleb128	6
      000515 00                    1619 	.uleb128	0
      000516 00                    1620 	.uleb128	0
      000517 08                    1621 	.uleb128	8
      000518 34                    1622 	.uleb128	52
      000519 00                    1623 	.db	0
      00051A 02                    1624 	.uleb128	2
      00051B 0A                    1625 	.uleb128	10
      00051C 03                    1626 	.uleb128	3
      00051D 08                    1627 	.uleb128	8
      00051E 49                    1628 	.uleb128	73
      00051F 13                    1629 	.uleb128	19
      000520 00                    1630 	.uleb128	0
      000521 00                    1631 	.uleb128	0
      000522 05                    1632 	.uleb128	5
      000523 2E                    1633 	.uleb128	46
      000524 01                    1634 	.db	1
      000525 01                    1635 	.uleb128	1
      000526 13                    1636 	.uleb128	19
      000527 03                    1637 	.uleb128	3
      000528 08                    1638 	.uleb128	8
      000529 11                    1639 	.uleb128	17
      00052A 01                    1640 	.uleb128	1
      00052B 12                    1641 	.uleb128	18
      00052C 01                    1642 	.uleb128	1
      00052D 3F                    1643 	.uleb128	63
      00052E 0C                    1644 	.uleb128	12
      00052F 40                    1645 	.uleb128	64
      000530 06                    1646 	.uleb128	6
      000531 49                    1647 	.uleb128	73
      000532 13                    1648 	.uleb128	19
      000533 00                    1649 	.uleb128	0
      000534 00                    1650 	.uleb128	0
      000535 0A                    1651 	.uleb128	10
      000536 26                    1652 	.uleb128	38
      000537 00                    1653 	.db	0
      000538 49                    1654 	.uleb128	73
      000539 13                    1655 	.uleb128	19
      00053A 00                    1656 	.uleb128	0
      00053B 00                    1657 	.uleb128	0
      00053C 01                    1658 	.uleb128	1
      00053D 11                    1659 	.uleb128	17
      00053E 01                    1660 	.db	1
      00053F 03                    1661 	.uleb128	3
      000540 08                    1662 	.uleb128	8
      000541 10                    1663 	.uleb128	16
      000542 06                    1664 	.uleb128	6
      000543 13                    1665 	.uleb128	19
      000544 0B                    1666 	.uleb128	11
      000545 25                    1667 	.uleb128	37
      000546 08                    1668 	.uleb128	8
      000547 00                    1669 	.uleb128	0
      000548 00                    1670 	.uleb128	0
      000549 07                    1671 	.uleb128	7
      00054A 0B                    1672 	.uleb128	11
      00054B 00                    1673 	.db	0
      00054C 11                    1674 	.uleb128	17
      00054D 01                    1675 	.uleb128	1
      00054E 12                    1676 	.uleb128	18
      00054F 01                    1677 	.uleb128	1
      000550 00                    1678 	.uleb128	0
      000551 00                    1679 	.uleb128	0
      000552 04                    1680 	.uleb128	4
      000553 2E                    1681 	.uleb128	46
      000554 00                    1682 	.db	0
      000555 03                    1683 	.uleb128	3
      000556 08                    1684 	.uleb128	8
      000557 11                    1685 	.uleb128	17
      000558 01                    1686 	.uleb128	1
      000559 12                    1687 	.uleb128	18
      00055A 01                    1688 	.uleb128	1
      00055B 3F                    1689 	.uleb128	63
      00055C 0C                    1690 	.uleb128	12
      00055D 40                    1691 	.uleb128	64
      00055E 06                    1692 	.uleb128	6
      00055F 00                    1693 	.uleb128	0
      000560 00                    1694 	.uleb128	0
      000561 0C                    1695 	.uleb128	12
      000562 21                    1696 	.uleb128	33
      000563 00                    1697 	.db	0
      000564 2F                    1698 	.uleb128	47
      000565 0B                    1699 	.uleb128	11
      000566 00                    1700 	.uleb128	0
      000567 00                    1701 	.uleb128	0
      000568 02                    1702 	.uleb128	2
      000569 24                    1703 	.uleb128	36
      00056A 00                    1704 	.db	0
      00056B 03                    1705 	.uleb128	3
      00056C 08                    1706 	.uleb128	8
      00056D 0B                    1707 	.uleb128	11
      00056E 0B                    1708 	.uleb128	11
      00056F 3E                    1709 	.uleb128	62
      000570 0B                    1710 	.uleb128	11
      000571 00                    1711 	.uleb128	0
      000572 00                    1712 	.uleb128	0
      000573 00                    1713 	.uleb128	0
                                   1714 
                                   1715 	.area .debug_info (NOLOAD)
      002796 00 00 01 B1           1716 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00279A                       1717 Ldebug_info_start:
      00279A 00 02                 1718 	.dw	2
      00279C 00 00 04 DF           1719 	.dw	0,(Ldebug_abbrev)
      0027A0 04                    1720 	.db	4
      0027A1 01                    1721 	.uleb128	1
      0027A2 2E 2E 2F 53 50 4C 2F  1722 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      0027B8 00                    1723 	.db	0
      0027B9 00 00 1A 37           1724 	.dw	0,(Ldebug_line_start+-4)
      0027BD 01                    1725 	.db	1
      0027BE 53 44 43 43 20 76 65  1726 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0027D7 00                    1727 	.db	0
      0027D8 02                    1728 	.uleb128	2
      0027D9 75 6E 73 69 67 6E 65  1729 	.ascii "unsigned char"
             64 20 63 68 61 72
      0027E6 00                    1730 	.db	0
      0027E7 01                    1731 	.db	1
      0027E8 08                    1732 	.db	8
      0027E9 03                    1733 	.uleb128	3
      0027EA 49 54 43 5F 47 65 74  1734 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      0027F6 00                    1735 	.db	0
      0027F7 00 00 96 E6           1736 	.dw	0,(_ITC_GetCPUCC)
      0027FB 00 00 96 E9           1737 	.dw	0,(XG$ITC_GetCPUCC$0$0+1)
      0027FF 01                    1738 	.db	1
      002800 00 00 32 E4           1739 	.dw	0,(Ldebug_loc_start+572)
      002804 00 00 00 42           1740 	.dw	0,66
      002808 04                    1741 	.uleb128	4
      002809 49 54 43 5F 44 65 49  1742 	.ascii "ITC_DeInit"
             6E 69 74
      002813 00                    1743 	.db	0
      002814 00 00 96 E9           1744 	.dw	0,(_ITC_DeInit)
      002818 00 00 97 0A           1745 	.dw	0,(XG$ITC_DeInit$0$0+1)
      00281C 01                    1746 	.db	1
      00281D 00 00 32 D0           1747 	.dw	0,(Ldebug_loc_start+552)
      002821 03                    1748 	.uleb128	3
      002822 49 54 43 5F 47 65 74  1749 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      002836 00                    1750 	.db	0
      002837 00 00 97 0A           1751 	.dw	0,(_ITC_GetSoftIntStatus)
      00283B 00 00 97 10           1752 	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+1)
      00283F 01                    1753 	.db	1
      002840 00 00 32 BC           1754 	.dw	0,(Ldebug_loc_start+532)
      002844 00 00 00 42           1755 	.dw	0,66
      002848 05                    1756 	.uleb128	5
      002849 00 00 01 13           1757 	.dw	0,275
      00284D 49 54 43 5F 47 65 74  1758 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      002864 00                    1759 	.db	0
      002865 00 00 97 10           1760 	.dw	0,(_ITC_GetSoftwarePriority)
      002869 00 00 97 DF           1761 	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+1)
      00286D 01                    1762 	.db	1
      00286E 00 00 32 0C           1763 	.dw	0,(Ldebug_loc_start+356)
      002872 00 00 00 42           1764 	.dw	0,66
      002876 06                    1765 	.uleb128	6
      002877 02                    1766 	.db	2
      002878 91                    1767 	.db	145
      002879 02                    1768 	.sleb128	2
      00287A 49 72 71 4E 75 6D     1769 	.ascii "IrqNum"
      002880 00                    1770 	.db	0
      002881 00 00 00 42           1771 	.dw	0,66
      002885 07                    1772 	.uleb128	7
      002886 00 00 97 96           1773 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$44)
      00288A 00 00 97 D2           1774 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$65)
      00288E 08                    1775 	.uleb128	8
      00288F 01                    1776 	.db	1
      002890 50                    1777 	.db	80
      002891 56 61 6C 75 65        1778 	.ascii "Value"
      002896 00                    1779 	.db	0
      002897 00 00 00 42           1780 	.dw	0,66
      00289B 08                    1781 	.uleb128	8
      00289C 02                    1782 	.db	2
      00289D 91                    1783 	.db	145
      00289E 7F                    1784 	.sleb128	-1
      00289F 4D 61 73 6B           1785 	.ascii "Mask"
      0028A3 00                    1786 	.db	0
      0028A4 00 00 00 42           1787 	.dw	0,66
      0028A8 00                    1788 	.uleb128	0
      0028A9 09                    1789 	.uleb128	9
      0028AA 00 00 01 8D           1790 	.dw	0,397
      0028AE 49 54 43 5F 53 65 74  1791 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0028C5 00                    1792 	.db	0
      0028C6 00 00 97 DF           1793 	.dw	0,(_ITC_SetSoftwarePriority)
      0028CA 00 00 99 3E           1794 	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+1)
      0028CE 01                    1795 	.db	1
      0028CF 00 00 30 A8           1796 	.dw	0,(Ldebug_loc_start)
      0028D3 06                    1797 	.uleb128	6
      0028D4 02                    1798 	.db	2
      0028D5 91                    1799 	.db	145
      0028D6 02                    1800 	.sleb128	2
      0028D7 49 72 71 4E 75 6D     1801 	.ascii "IrqNum"
      0028DD 00                    1802 	.db	0
      0028DE 00 00 00 42           1803 	.dw	0,66
      0028E2 06                    1804 	.uleb128	6
      0028E3 02                    1805 	.db	2
      0028E4 91                    1806 	.db	145
      0028E5 03                    1807 	.sleb128	3
      0028E6 50 72 69 6F 72 69 74  1808 	.ascii "PriorityValue"
             79 56 61 6C 75 65
      0028F3 00                    1809 	.db	0
      0028F4 00 00 00 42           1810 	.dw	0,66
      0028F8 07                    1811 	.uleb128	7
      0028F9 00 00 98 B9           1812 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$108)
      0028FD 00 00 99 3B           1813 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$136)
      002901 08                    1814 	.uleb128	8
      002902 02                    1815 	.db	2
      002903 91                    1816 	.db	145
      002904 7E                    1817 	.sleb128	-2
      002905 4D 61 73 6B           1818 	.ascii "Mask"
      002909 00                    1819 	.db	0
      00290A 00 00 00 42           1820 	.dw	0,66
      00290E 08                    1821 	.uleb128	8
      00290F 02                    1822 	.db	2
      002910 91                    1823 	.db	145
      002911 7F                    1824 	.sleb128	-1
      002912 4E 65 77 50 72 69 6F  1825 	.ascii "NewPriority"
             72 69 74 79
      00291D 00                    1826 	.db	0
      00291E 00 00 00 42           1827 	.dw	0,66
      002922 00                    1828 	.uleb128	0
      002923 0A                    1829 	.uleb128	10
      002924 00 00 00 42           1830 	.dw	0,66
      002928 0B                    1831 	.uleb128	11
      002929 00 00 01 9F           1832 	.dw	0,415
      00292D 17                    1833 	.db	23
      00292E 00 00 01 8D           1834 	.dw	0,397
      002932 0C                    1835 	.uleb128	12
      002933 16                    1836 	.db	22
      002934 00                    1837 	.uleb128	0
      002935 08                    1838 	.uleb128	8
      002936 05                    1839 	.db	5
      002937 03                    1840 	.db	3
      002938 00 00 80 EB           1841 	.dw	0,(___str_0)
      00293C 5F 5F 73 74 72 5F 30  1842 	.ascii "__str_0"
      002943 00                    1843 	.db	0
      002944 00 00 01 92           1844 	.dw	0,402
      002948 00                    1845 	.uleb128	0
      002949 00                    1846 	.uleb128	0
      00294A 00                    1847 	.uleb128	0
      00294B                       1848 Ldebug_info_end:
                                   1849 
                                   1850 	.area .debug_pubnames (NOLOAD)
      000986 00 00 00 7F           1851 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00098A                       1852 Ldebug_pubnames_start:
      00098A 00 02                 1853 	.dw	2
      00098C 00 00 27 96           1854 	.dw	0,(Ldebug_info_start-4)
      000990 00 00 01 B5           1855 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000994 00 00 00 53           1856 	.dw	0,83
      000998 49 54 43 5F 47 65 74  1857 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      0009A4 00                    1858 	.db	0
      0009A5 00 00 00 72           1859 	.dw	0,114
      0009A9 49 54 43 5F 44 65 49  1860 	.ascii "ITC_DeInit"
             6E 69 74
      0009B3 00                    1861 	.db	0
      0009B4 00 00 00 8B           1862 	.dw	0,139
      0009B8 49 54 43 5F 47 65 74  1863 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      0009CC 00                    1864 	.db	0
      0009CD 00 00 00 B2           1865 	.dw	0,178
      0009D1 49 54 43 5F 47 65 74  1866 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0009E8 00                    1867 	.db	0
      0009E9 00 00 01 13           1868 	.dw	0,275
      0009ED 49 54 43 5F 53 65 74  1869 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000A04 00                    1870 	.db	0
      000A05 00 00 00 00           1871 	.dw	0,0
      000A09                       1872 Ldebug_pubnames_end:
                                   1873 
                                   1874 	.area .debug_frame (NOLOAD)
      00291A 00 00                 1875 	.dw	0
      00291C 00 0E                 1876 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00291E                       1877 Ldebug_CIE0_start:
      00291E FF FF                 1878 	.dw	0xffff
      002920 FF FF                 1879 	.dw	0xffff
      002922 01                    1880 	.db	1
      002923 00                    1881 	.db	0
      002924 01                    1882 	.uleb128	1
      002925 7F                    1883 	.sleb128	-1
      002926 09                    1884 	.db	9
      002927 0C                    1885 	.db	12
      002928 08                    1886 	.uleb128	8
      002929 02                    1887 	.uleb128	2
      00292A 89                    1888 	.db	137
      00292B 01                    1889 	.uleb128	1
      00292C                       1890 Ldebug_CIE0_end:
      00292C 00 00 00 D7           1891 	.dw	0,215
      002930 00 00 29 1A           1892 	.dw	0,(Ldebug_CIE0_start-4)
      002934 00 00 97 DF           1893 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)	;initial loc
      002938 00 00 01 5F           1894 	.dw	0,Sstm8s_itc$ITC_SetSoftwarePriority$141-Sstm8s_itc$ITC_SetSoftwarePriority$74
      00293C 01                    1895 	.db	1
      00293D 00 00 97 DF           1896 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
      002941 0E                    1897 	.db	14
      002942 02                    1898 	.uleb128	2
      002943 01                    1899 	.db	1
      002944 00 00 97 E1           1900 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      002948 0E                    1901 	.db	14
      002949 05                    1902 	.uleb128	5
      00294A 01                    1903 	.db	1
      00294B 00 00 97 F9           1904 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      00294F 0E                    1905 	.db	14
      002950 06                    1906 	.uleb128	6
      002951 01                    1907 	.db	1
      002952 00 00 97 FB           1908 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      002956 0E                    1909 	.db	14
      002957 08                    1910 	.uleb128	8
      002958 01                    1911 	.db	1
      002959 00 00 97 FD           1912 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      00295D 0E                    1913 	.db	14
      00295E 09                    1914 	.uleb128	9
      00295F 01                    1915 	.db	1
      002960 00 00 97 FF           1916 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      002964 0E                    1917 	.db	14
      002965 0A                    1918 	.uleb128	10
      002966 01                    1919 	.db	1
      002967 00 00 98 01           1920 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      00296B 0E                    1921 	.db	14
      00296C 0B                    1922 	.uleb128	11
      00296D 01                    1923 	.db	1
      00296E 00 00 98 06           1924 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      002972 0E                    1925 	.db	14
      002973 05                    1926 	.uleb128	5
      002974 01                    1927 	.db	1
      002975 00 00 98 0F           1928 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      002979 0E                    1929 	.db	14
      00297A 05                    1930 	.uleb128	5
      00297B 01                    1931 	.db	1
      00297C 00 00 98 17           1932 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      002980 0E                    1933 	.db	14
      002981 05                    1934 	.uleb128	5
      002982 01                    1935 	.db	1
      002983 00 00 98 27           1936 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      002987 0E                    1937 	.db	14
      002988 05                    1938 	.uleb128	5
      002989 01                    1939 	.db	1
      00298A 00 00 98 29           1940 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      00298E 0E                    1941 	.db	14
      00298F 06                    1942 	.uleb128	6
      002990 01                    1943 	.db	1
      002991 00 00 98 2B           1944 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      002995 0E                    1945 	.db	14
      002996 08                    1946 	.uleb128	8
      002997 01                    1947 	.db	1
      002998 00 00 98 2D           1948 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      00299C 0E                    1949 	.db	14
      00299D 09                    1950 	.uleb128	9
      00299E 01                    1951 	.db	1
      00299F 00 00 98 2F           1952 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      0029A3 0E                    1953 	.db	14
      0029A4 0A                    1954 	.uleb128	10
      0029A5 01                    1955 	.db	1
      0029A6 00 00 98 31           1956 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      0029AA 0E                    1957 	.db	14
      0029AB 0B                    1958 	.uleb128	11
      0029AC 01                    1959 	.db	1
      0029AD 00 00 98 36           1960 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      0029B1 0E                    1961 	.db	14
      0029B2 05                    1962 	.uleb128	5
      0029B3 01                    1963 	.db	1
      0029B4 00 00 98 40           1964 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      0029B8 0E                    1965 	.db	14
      0029B9 05                    1966 	.uleb128	5
      0029BA 01                    1967 	.db	1
      0029BB 00 00 98 42           1968 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      0029BF 0E                    1969 	.db	14
      0029C0 06                    1970 	.uleb128	6
      0029C1 01                    1971 	.db	1
      0029C2 00 00 98 44           1972 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      0029C6 0E                    1973 	.db	14
      0029C7 08                    1974 	.uleb128	8
      0029C8 01                    1975 	.db	1
      0029C9 00 00 98 46           1976 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      0029CD 0E                    1977 	.db	14
      0029CE 09                    1978 	.uleb128	9
      0029CF 01                    1979 	.db	1
      0029D0 00 00 98 48           1980 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      0029D4 0E                    1981 	.db	14
      0029D5 0A                    1982 	.uleb128	10
      0029D6 01                    1983 	.db	1
      0029D7 00 00 98 4A           1984 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      0029DB 0E                    1985 	.db	14
      0029DC 0B                    1986 	.uleb128	11
      0029DD 01                    1987 	.db	1
      0029DE 00 00 98 4F           1988 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      0029E2 0E                    1989 	.db	14
      0029E3 05                    1990 	.uleb128	5
      0029E4 01                    1991 	.db	1
      0029E5 00 00 98 5A           1992 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      0029E9 0E                    1993 	.db	14
      0029EA 06                    1994 	.uleb128	6
      0029EB 01                    1995 	.db	1
      0029EC 00 00 98 64           1996 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      0029F0 0E                    1997 	.db	14
      0029F1 05                    1998 	.uleb128	5
      0029F2 01                    1999 	.db	1
      0029F3 00 00 98 6A           2000 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      0029F7 0E                    2001 	.db	14
      0029F8 06                    2002 	.uleb128	6
      0029F9 01                    2003 	.db	1
      0029FA 00 00 98 74           2004 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      0029FE 0E                    2005 	.db	14
      0029FF 05                    2006 	.uleb128	5
      002A00 01                    2007 	.db	1
      002A01 00 00 99 3D           2008 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      002A05 0E                    2009 	.db	14
      002A06 02                    2010 	.uleb128	2
                                   2011 
                                   2012 	.area .debug_frame (NOLOAD)
      002A07 00 00                 2013 	.dw	0
      002A09 00 0E                 2014 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002A0B                       2015 Ldebug_CIE1_start:
      002A0B FF FF                 2016 	.dw	0xffff
      002A0D FF FF                 2017 	.dw	0xffff
      002A0F 01                    2018 	.db	1
      002A10 00                    2019 	.db	0
      002A11 01                    2020 	.uleb128	1
      002A12 7F                    2021 	.sleb128	-1
      002A13 09                    2022 	.db	9
      002A14 0C                    2023 	.db	12
      002A15 08                    2024 	.uleb128	8
      002A16 02                    2025 	.uleb128	2
      002A17 89                    2026 	.db	137
      002A18 01                    2027 	.uleb128	1
      002A19                       2028 Ldebug_CIE1_end:
      002A19 00 00 00 6E           2029 	.dw	0,110
      002A1D 00 00 2A 07           2030 	.dw	0,(Ldebug_CIE1_start-4)
      002A21 00 00 97 10           2031 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)	;initial loc
      002A25 00 00 00 CF           2032 	.dw	0,Sstm8s_itc$ITC_GetSoftwarePriority$72-Sstm8s_itc$ITC_GetSoftwarePriority$27
      002A29 01                    2033 	.db	1
      002A2A 00 00 97 10           2034 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      002A2E 0E                    2035 	.db	14
      002A2F 02                    2036 	.uleb128	2
      002A30 01                    2037 	.db	1
      002A31 00 00 97 11           2038 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      002A35 0E                    2039 	.db	14
      002A36 04                    2040 	.uleb128	4
      002A37 01                    2041 	.db	1
      002A38 00 00 97 28           2042 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      002A3C 0E                    2043 	.db	14
      002A3D 06                    2044 	.uleb128	6
      002A3E 01                    2045 	.db	1
      002A3F 00 00 97 2A           2046 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      002A43 0E                    2047 	.db	14
      002A44 07                    2048 	.uleb128	7
      002A45 01                    2049 	.db	1
      002A46 00 00 97 2C           2050 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      002A4A 0E                    2051 	.db	14
      002A4B 08                    2052 	.uleb128	8
      002A4C 01                    2053 	.db	1
      002A4D 00 00 97 2E           2054 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      002A51 0E                    2055 	.db	14
      002A52 09                    2056 	.uleb128	9
      002A53 01                    2057 	.db	1
      002A54 00 00 97 30           2058 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      002A58 0E                    2059 	.db	14
      002A59 0A                    2060 	.uleb128	10
      002A5A 01                    2061 	.db	1
      002A5B 00 00 97 32           2062 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      002A5F 0E                    2063 	.db	14
      002A60 0B                    2064 	.uleb128	11
      002A61 01                    2065 	.db	1
      002A62 00 00 97 34           2066 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      002A66 0E                    2067 	.db	14
      002A67 0C                    2068 	.uleb128	12
      002A68 01                    2069 	.db	1
      002A69 00 00 97 39           2070 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      002A6D 0E                    2071 	.db	14
      002A6E 06                    2072 	.uleb128	6
      002A6F 01                    2073 	.db	1
      002A70 00 00 97 3A           2074 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      002A74 0E                    2075 	.db	14
      002A75 04                    2076 	.uleb128	4
      002A76 01                    2077 	.db	1
      002A77 00 00 97 41           2078 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      002A7B 0E                    2079 	.db	14
      002A7C 05                    2080 	.uleb128	5
      002A7D 01                    2081 	.db	1
      002A7E 00 00 97 44           2082 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      002A82 0E                    2083 	.db	14
      002A83 04                    2084 	.uleb128	4
      002A84 01                    2085 	.db	1
      002A85 00 00 97 DE           2086 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      002A89 0E                    2087 	.db	14
      002A8A 02                    2088 	.uleb128	2
                                   2089 
                                   2090 	.area .debug_frame (NOLOAD)
      002A8B 00 00                 2091 	.dw	0
      002A8D 00 0E                 2092 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002A8F                       2093 Ldebug_CIE2_start:
      002A8F FF FF                 2094 	.dw	0xffff
      002A91 FF FF                 2095 	.dw	0xffff
      002A93 01                    2096 	.db	1
      002A94 00                    2097 	.db	0
      002A95 01                    2098 	.uleb128	1
      002A96 7F                    2099 	.sleb128	-1
      002A97 09                    2100 	.db	9
      002A98 0C                    2101 	.db	12
      002A99 08                    2102 	.uleb128	8
      002A9A 02                    2103 	.uleb128	2
      002A9B 89                    2104 	.db	137
      002A9C 01                    2105 	.uleb128	1
      002A9D                       2106 Ldebug_CIE2_end:
      002A9D 00 00 00 13           2107 	.dw	0,19
      002AA1 00 00 2A 8B           2108 	.dw	0,(Ldebug_CIE2_start-4)
      002AA5 00 00 97 0A           2109 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)	;initial loc
      002AA9 00 00 00 06           2110 	.dw	0,Sstm8s_itc$ITC_GetSoftIntStatus$25-Sstm8s_itc$ITC_GetSoftIntStatus$21
      002AAD 01                    2111 	.db	1
      002AAE 00 00 97 0A           2112 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      002AB2 0E                    2113 	.db	14
      002AB3 02                    2114 	.uleb128	2
                                   2115 
                                   2116 	.area .debug_frame (NOLOAD)
      002AB4 00 00                 2117 	.dw	0
      002AB6 00 0E                 2118 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002AB8                       2119 Ldebug_CIE3_start:
      002AB8 FF FF                 2120 	.dw	0xffff
      002ABA FF FF                 2121 	.dw	0xffff
      002ABC 01                    2122 	.db	1
      002ABD 00                    2123 	.db	0
      002ABE 01                    2124 	.uleb128	1
      002ABF 7F                    2125 	.sleb128	-1
      002AC0 09                    2126 	.db	9
      002AC1 0C                    2127 	.db	12
      002AC2 08                    2128 	.uleb128	8
      002AC3 02                    2129 	.uleb128	2
      002AC4 89                    2130 	.db	137
      002AC5 01                    2131 	.uleb128	1
      002AC6                       2132 Ldebug_CIE3_end:
      002AC6 00 00 00 13           2133 	.dw	0,19
      002ACA 00 00 2A B4           2134 	.dw	0,(Ldebug_CIE3_start-4)
      002ACE 00 00 96 E9           2135 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)	;initial loc
      002AD2 00 00 00 21           2136 	.dw	0,Sstm8s_itc$ITC_DeInit$19-Sstm8s_itc$ITC_DeInit$8
      002AD6 01                    2137 	.db	1
      002AD7 00 00 96 E9           2138 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      002ADB 0E                    2139 	.db	14
      002ADC 02                    2140 	.uleb128	2
                                   2141 
                                   2142 	.area .debug_frame (NOLOAD)
      002ADD 00 00                 2143 	.dw	0
      002ADF 00 0E                 2144 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002AE1                       2145 Ldebug_CIE4_start:
      002AE1 FF FF                 2146 	.dw	0xffff
      002AE3 FF FF                 2147 	.dw	0xffff
      002AE5 01                    2148 	.db	1
      002AE6 00                    2149 	.db	0
      002AE7 01                    2150 	.uleb128	1
      002AE8 7F                    2151 	.sleb128	-1
      002AE9 09                    2152 	.db	9
      002AEA 0C                    2153 	.db	12
      002AEB 08                    2154 	.uleb128	8
      002AEC 02                    2155 	.uleb128	2
      002AED 89                    2156 	.db	137
      002AEE 01                    2157 	.uleb128	1
      002AEF                       2158 Ldebug_CIE4_end:
      002AEF 00 00 00 13           2159 	.dw	0,19
      002AF3 00 00 2A DD           2160 	.dw	0,(Ldebug_CIE4_start-4)
      002AF7 00 00 96 E6           2161 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)	;initial loc
      002AFB 00 00 00 03           2162 	.dw	0,Sstm8s_itc$ITC_GetCPUCC$6-Sstm8s_itc$ITC_GetCPUCC$1
      002AFF 01                    2163 	.db	1
      002B00 00 00 96 E6           2164 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      002B04 0E                    2165 	.db	14
      002B05 02                    2166 	.uleb128	2
