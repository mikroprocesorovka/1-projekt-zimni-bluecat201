                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                           000000    59 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     60 ;	../SPL/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ; genLabel
                                     62 ;	-----------------------------------------
                                     63 ;	 function GPIO_DeInit
                                     64 ;	-----------------------------------------
                                     65 ;	Register assignment might be sub-optimal.
                                     66 ;	Stack space usage: 0 bytes.
      0088FF                         67 _GPIO_DeInit:
                           000000    68 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    69 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     70 ;	../SPL/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     71 ; genAssign
      0088FF 16 03            [ 2]   72 	ldw	y, (0x03, sp)
                                     73 ; genPointerSet
      008901 90 7F            [ 1]   74 	clr	(y)
                           000004    75 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     76 ;	../SPL/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     77 ; genPlus
      008903 93               [ 1]   78 	ldw	x, y
      008904 5C               [ 1]   79 	incw	x
      008905 5C               [ 1]   80 	incw	x
                                     81 ; genPointerSet
      008906 7F               [ 1]   82 	clr	(x)
                           000008    83 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     84 ;	../SPL/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     85 ; genPlus
      008907 93               [ 1]   86 	ldw	x, y
      008908 1C 00 03         [ 2]   87 	addw	x, #0x0003
                                     88 ; genPointerSet
      00890B 7F               [ 1]   89 	clr	(x)
                           00000D    90 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     91 ;	../SPL/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     92 ; genPlus
      00890C 93               [ 1]   93 	ldw	x, y
      00890D 1C 00 04         [ 2]   94 	addw	x, #0x0004
                                     95 ; genPointerSet
      008910 7F               [ 1]   96 	clr	(x)
                                     97 ; genLabel
      008911                         98 00101$:
                           000012    99 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                    100 ;	../SPL/src/stm8s_gpio.c: 59: }
                                    101 ; genEndFunction
                           000012   102 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012   103 	XG$GPIO_DeInit$0$0 ==.
      008911 81               [ 4]  104 	ret
                           000013   105 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013   106 	Sstm8s_gpio$GPIO_Init$9 ==.
                                    107 ;	../SPL/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    108 ; genLabel
                                    109 ;	-----------------------------------------
                                    110 ;	 function GPIO_Init
                                    111 ;	-----------------------------------------
                                    112 ;	Register assignment might be sub-optimal.
                                    113 ;	Stack space usage: 5 bytes.
      008912                        114 _GPIO_Init:
                           000013   115 	Sstm8s_gpio$GPIO_Init$10 ==.
      008912 52 05            [ 2]  116 	sub	sp, #5
                           000015   117 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   118 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    119 ;	../SPL/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
                                    120 ; genIfx
      008914 0D 0B            [ 1]  121 	tnz	(0x0b, sp)
      008916 26 03            [ 1]  122 	jrne	00237$
      008918 CC 89 8D         [ 2]  123 	jp	00116$
      00891B                        124 00237$:
                                    125 ; genCmpEQorNE
      00891B 7B 0B            [ 1]  126 	ld	a, (0x0b, sp)
      00891D A1 40            [ 1]  127 	cp	a, #0x40
      00891F 26 03            [ 1]  128 	jrne	00239$
      008921 CC 89 8D         [ 2]  129 	jp	00116$
      008924                        130 00239$:
                           000025   131 	Sstm8s_gpio$GPIO_Init$13 ==.
                                    132 ; skipping generated iCode
                                    133 ; genCmpEQorNE
      008924 7B 0B            [ 1]  134 	ld	a, (0x0b, sp)
      008926 A1 20            [ 1]  135 	cp	a, #0x20
      008928 26 03            [ 1]  136 	jrne	00242$
      00892A CC 89 8D         [ 2]  137 	jp	00116$
      00892D                        138 00242$:
                           00002E   139 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    140 ; skipping generated iCode
                                    141 ; genCmpEQorNE
      00892D 7B 0B            [ 1]  142 	ld	a, (0x0b, sp)
      00892F A1 60            [ 1]  143 	cp	a, #0x60
      008931 26 03            [ 1]  144 	jrne	00245$
      008933 CC 89 8D         [ 2]  145 	jp	00116$
      008936                        146 00245$:
                           000037   147 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    148 ; skipping generated iCode
                                    149 ; genCmpEQorNE
      008936 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      008938 A1 A0            [ 1]  151 	cp	a, #0xa0
      00893A 26 03            [ 1]  152 	jrne	00248$
      00893C CC 89 8D         [ 2]  153 	jp	00116$
      00893F                        154 00248$:
                           000040   155 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    156 ; skipping generated iCode
                                    157 ; genCmpEQorNE
      00893F 7B 0B            [ 1]  158 	ld	a, (0x0b, sp)
      008941 A1 E0            [ 1]  159 	cp	a, #0xe0
      008943 26 03            [ 1]  160 	jrne	00251$
      008945 CC 89 8D         [ 2]  161 	jp	00116$
      008948                        162 00251$:
                           000049   163 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    164 ; skipping generated iCode
                                    165 ; genCmpEQorNE
      008948 7B 0B            [ 1]  166 	ld	a, (0x0b, sp)
      00894A A1 80            [ 1]  167 	cp	a, #0x80
      00894C 26 03            [ 1]  168 	jrne	00254$
      00894E CC 89 8D         [ 2]  169 	jp	00116$
      008951                        170 00254$:
                           000052   171 	Sstm8s_gpio$GPIO_Init$18 ==.
                                    172 ; skipping generated iCode
                                    173 ; genCmpEQorNE
      008951 7B 0B            [ 1]  174 	ld	a, (0x0b, sp)
      008953 A1 C0            [ 1]  175 	cp	a, #0xc0
      008955 26 03            [ 1]  176 	jrne	00257$
      008957 CC 89 8D         [ 2]  177 	jp	00116$
      00895A                        178 00257$:
                           00005B   179 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    180 ; skipping generated iCode
                                    181 ; genCmpEQorNE
      00895A 7B 0B            [ 1]  182 	ld	a, (0x0b, sp)
      00895C A1 B0            [ 1]  183 	cp	a, #0xb0
      00895E 26 03            [ 1]  184 	jrne	00260$
      008960 CC 89 8D         [ 2]  185 	jp	00116$
      008963                        186 00260$:
                           000064   187 	Sstm8s_gpio$GPIO_Init$20 ==.
                                    188 ; skipping generated iCode
                                    189 ; genCmpEQorNE
      008963 7B 0B            [ 1]  190 	ld	a, (0x0b, sp)
      008965 A1 F0            [ 1]  191 	cp	a, #0xf0
      008967 26 03            [ 1]  192 	jrne	00263$
      008969 CC 89 8D         [ 2]  193 	jp	00116$
      00896C                        194 00263$:
                           00006D   195 	Sstm8s_gpio$GPIO_Init$21 ==.
                                    196 ; skipping generated iCode
                                    197 ; genCmpEQorNE
      00896C 7B 0B            [ 1]  198 	ld	a, (0x0b, sp)
      00896E A1 90            [ 1]  199 	cp	a, #0x90
      008970 26 03            [ 1]  200 	jrne	00266$
      008972 CC 89 8D         [ 2]  201 	jp	00116$
      008975                        202 00266$:
                           000076   203 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    204 ; skipping generated iCode
                                    205 ; genCmpEQorNE
      008975 7B 0B            [ 1]  206 	ld	a, (0x0b, sp)
      008977 A1 D0            [ 1]  207 	cp	a, #0xd0
      008979 26 03            [ 1]  208 	jrne	00269$
      00897B CC 89 8D         [ 2]  209 	jp	00116$
      00897E                        210 00269$:
                           00007F   211 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    212 ; skipping generated iCode
                                    213 ; skipping iCode since result will be rematerialized
                                    214 ; skipping iCode since result will be rematerialized
                                    215 ; genIPush
      00897E 4B 4D            [ 1]  216 	push	#0x4d
                           000081   217 	Sstm8s_gpio$GPIO_Init$24 ==.
      008980 5F               [ 1]  218 	clrw	x
      008981 89               [ 2]  219 	pushw	x
                           000083   220 	Sstm8s_gpio$GPIO_Init$25 ==.
      008982 4B 00            [ 1]  221 	push	#0x00
                           000085   222 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    223 ; genIPush
      008984 4B 98            [ 1]  224 	push	#<(___str_0+0)
                           000087   225 	Sstm8s_gpio$GPIO_Init$27 ==.
      008986 4B 80            [ 1]  226 	push	#((___str_0+0) >> 8)
                           000089   227 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    228 ; genCall
      008988 CD 82 65         [ 4]  229 	call	_assert_failed
      00898B 5B 06            [ 2]  230 	addw	sp, #6
                           00008E   231 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    232 ; genLabel
      00898D                        233 00116$:
                           00008E   234 	Sstm8s_gpio$GPIO_Init$30 ==.
                                    235 ;	../SPL/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    236 ; genIfx
      00898D 0D 0A            [ 1]  237 	tnz	(0x0a, sp)
      00898F 27 03            [ 1]  238 	jreq	00271$
      008991 CC 89 A3         [ 2]  239 	jp	00151$
      008994                        240 00271$:
                                    241 ; skipping iCode since result will be rematerialized
                                    242 ; skipping iCode since result will be rematerialized
                                    243 ; genIPush
      008994 4B 4E            [ 1]  244 	push	#0x4e
                           000097   245 	Sstm8s_gpio$GPIO_Init$31 ==.
      008996 5F               [ 1]  246 	clrw	x
      008997 89               [ 2]  247 	pushw	x
                           000099   248 	Sstm8s_gpio$GPIO_Init$32 ==.
      008998 4B 00            [ 1]  249 	push	#0x00
                           00009B   250 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    251 ; genIPush
      00899A 4B 98            [ 1]  252 	push	#<(___str_0+0)
                           00009D   253 	Sstm8s_gpio$GPIO_Init$34 ==.
      00899C 4B 80            [ 1]  254 	push	#((___str_0+0) >> 8)
                           00009F   255 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    256 ; genCall
      00899E CD 82 65         [ 4]  257 	call	_assert_failed
      0089A1 5B 06            [ 2]  258 	addw	sp, #6
                           0000A4   259 	Sstm8s_gpio$GPIO_Init$36 ==.
                                    260 ; genLabel
      0089A3                        261 00151$:
                           0000A4   262 	Sstm8s_gpio$GPIO_Init$37 ==.
                                    263 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    264 ; genAssign
      0089A3 16 08            [ 2]  265 	ldw	y, (0x08, sp)
                                    266 ; genPlus
      0089A5 93               [ 1]  267 	ldw	x, y
      0089A6 1C 00 04         [ 2]  268 	addw	x, #0x0004
      0089A9 1F 01            [ 2]  269 	ldw	(0x01, sp), x
                                    270 ; genPointerGet
      0089AB 1E 01            [ 2]  271 	ldw	x, (0x01, sp)
      0089AD F6               [ 1]  272 	ld	a, (x)
                                    273 ; genCpl
      0089AE 88               [ 1]  274 	push	a
                           0000B0   275 	Sstm8s_gpio$GPIO_Init$38 ==.
      0089AF 7B 0B            [ 1]  276 	ld	a, (0x0b, sp)
      0089B1 43               [ 1]  277 	cpl	a
      0089B2 6B 04            [ 1]  278 	ld	(0x04, sp), a
      0089B4 84               [ 1]  279 	pop	a
                           0000B6   280 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    281 ; genAnd
      0089B5 14 03            [ 1]  282 	and	a, (0x03, sp)
                                    283 ; genPointerSet
      0089B7 1E 01            [ 2]  284 	ldw	x, (0x01, sp)
      0089B9 F7               [ 1]  285 	ld	(x), a
                           0000BB   286 	Sstm8s_gpio$GPIO_Init$40 ==.
                                    287 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    288 ; genPlus
      0089BA 93               [ 1]  289 	ldw	x, y
      0089BB 5C               [ 1]  290 	incw	x
      0089BC 5C               [ 1]  291 	incw	x
      0089BD 1F 04            [ 2]  292 	ldw	(0x04, sp), x
                           0000C0   293 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    294 ;	../SPL/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    295 ; genAnd
      0089BF 0D 0B            [ 1]  296 	tnz	(0x0b, sp)
      0089C1 2B 03            [ 1]  297 	jrmi	00272$
      0089C3 CC 89 E9         [ 2]  298 	jp	00105$
      0089C6                        299 00272$:
                                    300 ; skipping generated iCode
                           0000C7   301 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    302 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    303 ; genPointerGet
      0089C6 90 F6            [ 1]  304 	ld	a, (y)
                           0000C9   305 	Sstm8s_gpio$GPIO_Init$43 ==.
                           0000C9   306 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    307 ;	../SPL/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    308 ; genAnd
      0089C8 88               [ 1]  309 	push	a
                           0000CA   310 	Sstm8s_gpio$GPIO_Init$45 ==.
      0089C9 7B 0C            [ 1]  311 	ld	a, (0x0c, sp)
      0089CB A5 10            [ 1]  312 	bcp	a, #0x10
      0089CD 84               [ 1]  313 	pop	a
                           0000CF   314 	Sstm8s_gpio$GPIO_Init$46 ==.
      0089CE 26 03            [ 1]  315 	jrne	00273$
      0089D0 CC 89 DA         [ 2]  316 	jp	00102$
      0089D3                        317 00273$:
                                    318 ; skipping generated iCode
                           0000D4   319 	Sstm8s_gpio$GPIO_Init$47 ==.
                           0000D4   320 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    321 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    322 ; genOr
      0089D3 1A 0A            [ 1]  323 	or	a, (0x0a, sp)
                                    324 ; genPointerSet
      0089D5 90 F7            [ 1]  325 	ld	(y), a
                           0000D8   326 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    327 ; genGoto
      0089D7 CC 89 DE         [ 2]  328 	jp	00103$
                                    329 ; genLabel
      0089DA                        330 00102$:
                           0000DB   331 	Sstm8s_gpio$GPIO_Init$50 ==.
                           0000DB   332 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    333 ;	../SPL/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    334 ; genAnd
      0089DA 14 03            [ 1]  335 	and	a, (0x03, sp)
                                    336 ; genPointerSet
      0089DC 90 F7            [ 1]  337 	ld	(y), a
                           0000DF   338 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    339 ; genLabel
      0089DE                        340 00103$:
                           0000DF   341 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    342 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    343 ; genPointerGet
      0089DE 1E 04            [ 2]  344 	ldw	x, (0x04, sp)
      0089E0 F6               [ 1]  345 	ld	a, (x)
                                    346 ; genOr
      0089E1 1A 0A            [ 1]  347 	or	a, (0x0a, sp)
                                    348 ; genPointerSet
      0089E3 1E 04            [ 2]  349 	ldw	x, (0x04, sp)
      0089E5 F7               [ 1]  350 	ld	(x), a
                           0000E7   351 	Sstm8s_gpio$GPIO_Init$54 ==.
                                    352 ; genGoto
      0089E6 CC 89 F1         [ 2]  353 	jp	00106$
                                    354 ; genLabel
      0089E9                        355 00105$:
                           0000EA   356 	Sstm8s_gpio$GPIO_Init$55 ==.
                           0000EA   357 	Sstm8s_gpio$GPIO_Init$56 ==.
                                    358 ;	../SPL/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    359 ; genPointerGet
      0089E9 1E 04            [ 2]  360 	ldw	x, (0x04, sp)
      0089EB F6               [ 1]  361 	ld	a, (x)
                                    362 ; genAnd
      0089EC 14 03            [ 1]  363 	and	a, (0x03, sp)
                                    364 ; genPointerSet
      0089EE 1E 04            [ 2]  365 	ldw	x, (0x04, sp)
      0089F0 F7               [ 1]  366 	ld	(x), a
                           0000F2   367 	Sstm8s_gpio$GPIO_Init$57 ==.
                                    368 ; genLabel
      0089F1                        369 00106$:
                           0000F2   370 	Sstm8s_gpio$GPIO_Init$58 ==.
                                    371 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    372 ; genPlus
      0089F1 93               [ 1]  373 	ldw	x, y
      0089F2 1C 00 03         [ 2]  374 	addw	x, #0x0003
                                    375 ; genPointerGet
      0089F5 F6               [ 1]  376 	ld	a, (x)
                           0000F7   377 	Sstm8s_gpio$GPIO_Init$59 ==.
                                    378 ;	../SPL/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    379 ; genAnd
      0089F6 88               [ 1]  380 	push	a
                           0000F8   381 	Sstm8s_gpio$GPIO_Init$60 ==.
      0089F7 7B 0C            [ 1]  382 	ld	a, (0x0c, sp)
      0089F9 A5 40            [ 1]  383 	bcp	a, #0x40
      0089FB 84               [ 1]  384 	pop	a
                           0000FD   385 	Sstm8s_gpio$GPIO_Init$61 ==.
      0089FC 26 03            [ 1]  386 	jrne	00274$
      0089FE CC 8A 07         [ 2]  387 	jp	00108$
      008A01                        388 00274$:
                                    389 ; skipping generated iCode
                           000102   390 	Sstm8s_gpio$GPIO_Init$62 ==.
                           000102   391 	Sstm8s_gpio$GPIO_Init$63 ==.
                                    392 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    393 ; genOr
      008A01 1A 0A            [ 1]  394 	or	a, (0x0a, sp)
                                    395 ; genPointerSet
      008A03 F7               [ 1]  396 	ld	(x), a
                           000105   397 	Sstm8s_gpio$GPIO_Init$64 ==.
                                    398 ; genGoto
      008A04 CC 8A 0A         [ 2]  399 	jp	00109$
                                    400 ; genLabel
      008A07                        401 00108$:
                           000108   402 	Sstm8s_gpio$GPIO_Init$65 ==.
                           000108   403 	Sstm8s_gpio$GPIO_Init$66 ==.
                                    404 ;	../SPL/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    405 ; genAnd
      008A07 14 03            [ 1]  406 	and	a, (0x03, sp)
                                    407 ; genPointerSet
      008A09 F7               [ 1]  408 	ld	(x), a
                           00010B   409 	Sstm8s_gpio$GPIO_Init$67 ==.
                                    410 ; genLabel
      008A0A                        411 00109$:
                           00010B   412 	Sstm8s_gpio$GPIO_Init$68 ==.
                                    413 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    414 ; genPointerGet
      008A0A 1E 01            [ 2]  415 	ldw	x, (0x01, sp)
      008A0C F6               [ 1]  416 	ld	a, (x)
                           00010E   417 	Sstm8s_gpio$GPIO_Init$69 ==.
                                    418 ;	../SPL/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    419 ; genAnd
      008A0D 88               [ 1]  420 	push	a
                           00010F   421 	Sstm8s_gpio$GPIO_Init$70 ==.
      008A0E 7B 0C            [ 1]  422 	ld	a, (0x0c, sp)
      008A10 A5 20            [ 1]  423 	bcp	a, #0x20
      008A12 84               [ 1]  424 	pop	a
                           000114   425 	Sstm8s_gpio$GPIO_Init$71 ==.
      008A13 26 03            [ 1]  426 	jrne	00275$
      008A15 CC 8A 20         [ 2]  427 	jp	00111$
      008A18                        428 00275$:
                                    429 ; skipping generated iCode
                           000119   430 	Sstm8s_gpio$GPIO_Init$72 ==.
                           000119   431 	Sstm8s_gpio$GPIO_Init$73 ==.
                                    432 ;	../SPL/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    433 ; genOr
      008A18 1A 0A            [ 1]  434 	or	a, (0x0a, sp)
                                    435 ; genPointerSet
      008A1A 1E 01            [ 2]  436 	ldw	x, (0x01, sp)
      008A1C F7               [ 1]  437 	ld	(x), a
                           00011E   438 	Sstm8s_gpio$GPIO_Init$74 ==.
                                    439 ; genGoto
      008A1D CC 8A 25         [ 2]  440 	jp	00113$
                                    441 ; genLabel
      008A20                        442 00111$:
                           000121   443 	Sstm8s_gpio$GPIO_Init$75 ==.
                           000121   444 	Sstm8s_gpio$GPIO_Init$76 ==.
                                    445 ;	../SPL/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    446 ; genAnd
      008A20 14 03            [ 1]  447 	and	a, (0x03, sp)
                                    448 ; genPointerSet
      008A22 1E 01            [ 2]  449 	ldw	x, (0x01, sp)
      008A24 F7               [ 1]  450 	ld	(x), a
                           000126   451 	Sstm8s_gpio$GPIO_Init$77 ==.
                                    452 ; genLabel
      008A25                        453 00113$:
                           000126   454 	Sstm8s_gpio$GPIO_Init$78 ==.
                                    455 ;	../SPL/src/stm8s_gpio.c: 131: }
                                    456 ; genEndFunction
      008A25 5B 05            [ 2]  457 	addw	sp, #5
                           000128   458 	Sstm8s_gpio$GPIO_Init$79 ==.
                           000128   459 	Sstm8s_gpio$GPIO_Init$80 ==.
                           000128   460 	XG$GPIO_Init$0$0 ==.
      008A27 81               [ 4]  461 	ret
                           000129   462 	Sstm8s_gpio$GPIO_Init$81 ==.
                           000129   463 	Sstm8s_gpio$GPIO_Write$82 ==.
                                    464 ;	../SPL/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    465 ; genLabel
                                    466 ;	-----------------------------------------
                                    467 ;	 function GPIO_Write
                                    468 ;	-----------------------------------------
                                    469 ;	Register assignment is optimal.
                                    470 ;	Stack space usage: 0 bytes.
      008A28                        471 _GPIO_Write:
                           000129   472 	Sstm8s_gpio$GPIO_Write$83 ==.
                           000129   473 	Sstm8s_gpio$GPIO_Write$84 ==.
                                    474 ;	../SPL/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    475 ; genAssign
      008A28 1E 03            [ 2]  476 	ldw	x, (0x03, sp)
                                    477 ; genPointerSet
      008A2A 7B 05            [ 1]  478 	ld	a, (0x05, sp)
      008A2C F7               [ 1]  479 	ld	(x), a
                                    480 ; genLabel
      008A2D                        481 00101$:
                           00012E   482 	Sstm8s_gpio$GPIO_Write$85 ==.
                                    483 ;	../SPL/src/stm8s_gpio.c: 144: }
                                    484 ; genEndFunction
                           00012E   485 	Sstm8s_gpio$GPIO_Write$86 ==.
                           00012E   486 	XG$GPIO_Write$0$0 ==.
      008A2D 81               [ 4]  487 	ret
                           00012F   488 	Sstm8s_gpio$GPIO_Write$87 ==.
                           00012F   489 	Sstm8s_gpio$GPIO_WriteHigh$88 ==.
                                    490 ;	../SPL/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    491 ; genLabel
                                    492 ;	-----------------------------------------
                                    493 ;	 function GPIO_WriteHigh
                                    494 ;	-----------------------------------------
                                    495 ;	Register assignment is optimal.
                                    496 ;	Stack space usage: 0 bytes.
      008A2E                        497 _GPIO_WriteHigh:
                           00012F   498 	Sstm8s_gpio$GPIO_WriteHigh$89 ==.
                           00012F   499 	Sstm8s_gpio$GPIO_WriteHigh$90 ==.
                                    500 ;	../SPL/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    501 ; genAssign
      008A2E 1E 03            [ 2]  502 	ldw	x, (0x03, sp)
                                    503 ; genPointerGet
      008A30 F6               [ 1]  504 	ld	a, (x)
                                    505 ; genOr
      008A31 1A 05            [ 1]  506 	or	a, (0x05, sp)
                                    507 ; genPointerSet
      008A33 F7               [ 1]  508 	ld	(x), a
                                    509 ; genLabel
      008A34                        510 00101$:
                           000135   511 	Sstm8s_gpio$GPIO_WriteHigh$91 ==.
                                    512 ;	../SPL/src/stm8s_gpio.c: 157: }
                                    513 ; genEndFunction
                           000135   514 	Sstm8s_gpio$GPIO_WriteHigh$92 ==.
                           000135   515 	XG$GPIO_WriteHigh$0$0 ==.
      008A34 81               [ 4]  516 	ret
                           000136   517 	Sstm8s_gpio$GPIO_WriteHigh$93 ==.
                           000136   518 	Sstm8s_gpio$GPIO_WriteLow$94 ==.
                                    519 ;	../SPL/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    520 ; genLabel
                                    521 ;	-----------------------------------------
                                    522 ;	 function GPIO_WriteLow
                                    523 ;	-----------------------------------------
                                    524 ;	Register assignment is optimal.
                                    525 ;	Stack space usage: 1 bytes.
      008A35                        526 _GPIO_WriteLow:
                           000136   527 	Sstm8s_gpio$GPIO_WriteLow$95 ==.
      008A35 88               [ 1]  528 	push	a
                           000137   529 	Sstm8s_gpio$GPIO_WriteLow$96 ==.
                           000137   530 	Sstm8s_gpio$GPIO_WriteLow$97 ==.
                                    531 ;	../SPL/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    532 ; genAssign
      008A36 1E 04            [ 2]  533 	ldw	x, (0x04, sp)
                                    534 ; genPointerGet
      008A38 F6               [ 1]  535 	ld	a, (x)
      008A39 6B 01            [ 1]  536 	ld	(0x01, sp), a
                                    537 ; genCpl
      008A3B 7B 06            [ 1]  538 	ld	a, (0x06, sp)
      008A3D 43               [ 1]  539 	cpl	a
                                    540 ; genAnd
      008A3E 14 01            [ 1]  541 	and	a, (0x01, sp)
                                    542 ; genPointerSet
      008A40 F7               [ 1]  543 	ld	(x), a
                                    544 ; genLabel
      008A41                        545 00101$:
                           000142   546 	Sstm8s_gpio$GPIO_WriteLow$98 ==.
                                    547 ;	../SPL/src/stm8s_gpio.c: 170: }
                                    548 ; genEndFunction
      008A41 84               [ 1]  549 	pop	a
                           000143   550 	Sstm8s_gpio$GPIO_WriteLow$99 ==.
                           000143   551 	Sstm8s_gpio$GPIO_WriteLow$100 ==.
                           000143   552 	XG$GPIO_WriteLow$0$0 ==.
      008A42 81               [ 4]  553 	ret
                           000144   554 	Sstm8s_gpio$GPIO_WriteLow$101 ==.
                           000144   555 	Sstm8s_gpio$GPIO_WriteReverse$102 ==.
                                    556 ;	../SPL/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    557 ; genLabel
                                    558 ;	-----------------------------------------
                                    559 ;	 function GPIO_WriteReverse
                                    560 ;	-----------------------------------------
                                    561 ;	Register assignment is optimal.
                                    562 ;	Stack space usage: 0 bytes.
      008A43                        563 _GPIO_WriteReverse:
                           000144   564 	Sstm8s_gpio$GPIO_WriteReverse$103 ==.
                           000144   565 	Sstm8s_gpio$GPIO_WriteReverse$104 ==.
                                    566 ;	../SPL/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    567 ; genAssign
      008A43 1E 03            [ 2]  568 	ldw	x, (0x03, sp)
                                    569 ; genPointerGet
      008A45 F6               [ 1]  570 	ld	a, (x)
                                    571 ; genXor
      008A46 18 05            [ 1]  572 	xor	a, (0x05, sp)
                                    573 ; genPointerSet
      008A48 F7               [ 1]  574 	ld	(x), a
                                    575 ; genLabel
      008A49                        576 00101$:
                           00014A   577 	Sstm8s_gpio$GPIO_WriteReverse$105 ==.
                                    578 ;	../SPL/src/stm8s_gpio.c: 183: }
                                    579 ; genEndFunction
                           00014A   580 	Sstm8s_gpio$GPIO_WriteReverse$106 ==.
                           00014A   581 	XG$GPIO_WriteReverse$0$0 ==.
      008A49 81               [ 4]  582 	ret
                           00014B   583 	Sstm8s_gpio$GPIO_WriteReverse$107 ==.
                           00014B   584 	Sstm8s_gpio$GPIO_ReadOutputData$108 ==.
                                    585 ;	../SPL/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    586 ; genLabel
                                    587 ;	-----------------------------------------
                                    588 ;	 function GPIO_ReadOutputData
                                    589 ;	-----------------------------------------
                                    590 ;	Register assignment is optimal.
                                    591 ;	Stack space usage: 0 bytes.
      008A4A                        592 _GPIO_ReadOutputData:
                           00014B   593 	Sstm8s_gpio$GPIO_ReadOutputData$109 ==.
                           00014B   594 	Sstm8s_gpio$GPIO_ReadOutputData$110 ==.
                                    595 ;	../SPL/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    596 ; genAssign
      008A4A 1E 03            [ 2]  597 	ldw	x, (0x03, sp)
                                    598 ; genPointerGet
      008A4C F6               [ 1]  599 	ld	a, (x)
                                    600 ; genReturn
                                    601 ; genLabel
      008A4D                        602 00101$:
                           00014E   603 	Sstm8s_gpio$GPIO_ReadOutputData$111 ==.
                                    604 ;	../SPL/src/stm8s_gpio.c: 194: }
                                    605 ; genEndFunction
                           00014E   606 	Sstm8s_gpio$GPIO_ReadOutputData$112 ==.
                           00014E   607 	XG$GPIO_ReadOutputData$0$0 ==.
      008A4D 81               [ 4]  608 	ret
                           00014F   609 	Sstm8s_gpio$GPIO_ReadOutputData$113 ==.
                           00014F   610 	Sstm8s_gpio$GPIO_ReadInputData$114 ==.
                                    611 ;	../SPL/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    612 ; genLabel
                                    613 ;	-----------------------------------------
                                    614 ;	 function GPIO_ReadInputData
                                    615 ;	-----------------------------------------
                                    616 ;	Register assignment might be sub-optimal.
                                    617 ;	Stack space usage: 0 bytes.
      008A4E                        618 _GPIO_ReadInputData:
                           00014F   619 	Sstm8s_gpio$GPIO_ReadInputData$115 ==.
                           00014F   620 	Sstm8s_gpio$GPIO_ReadInputData$116 ==.
                                    621 ;	../SPL/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    622 ; genAssign
      008A4E 1E 03            [ 2]  623 	ldw	x, (0x03, sp)
                                    624 ; genAssign
                                    625 ; genPointerGet
      008A50 E6 01            [ 1]  626 	ld	a, (0x1, x)
                                    627 ; genReturn
                                    628 ; genLabel
      008A52                        629 00101$:
                           000153   630 	Sstm8s_gpio$GPIO_ReadInputData$117 ==.
                                    631 ;	../SPL/src/stm8s_gpio.c: 205: }
                                    632 ; genEndFunction
                           000153   633 	Sstm8s_gpio$GPIO_ReadInputData$118 ==.
                           000153   634 	XG$GPIO_ReadInputData$0$0 ==.
      008A52 81               [ 4]  635 	ret
                           000154   636 	Sstm8s_gpio$GPIO_ReadInputData$119 ==.
                           000154   637 	Sstm8s_gpio$GPIO_ReadInputPin$120 ==.
                                    638 ;	../SPL/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    639 ; genLabel
                                    640 ;	-----------------------------------------
                                    641 ;	 function GPIO_ReadInputPin
                                    642 ;	-----------------------------------------
                                    643 ;	Register assignment might be sub-optimal.
                                    644 ;	Stack space usage: 0 bytes.
      008A53                        645 _GPIO_ReadInputPin:
                           000154   646 	Sstm8s_gpio$GPIO_ReadInputPin$121 ==.
                           000154   647 	Sstm8s_gpio$GPIO_ReadInputPin$122 ==.
                                    648 ;	../SPL/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    649 ; genAssign
      008A53 1E 03            [ 2]  650 	ldw	x, (0x03, sp)
                                    651 ; genAssign
                                    652 ; genPointerGet
      008A55 E6 01            [ 1]  653 	ld	a, (0x1, x)
                                    654 ; genAnd
      008A57 14 05            [ 1]  655 	and	a, (0x05, sp)
                                    656 ; genReturn
                                    657 ; genLabel
      008A59                        658 00101$:
                           00015A   659 	Sstm8s_gpio$GPIO_ReadInputPin$123 ==.
                                    660 ;	../SPL/src/stm8s_gpio.c: 216: }
                                    661 ; genEndFunction
                           00015A   662 	Sstm8s_gpio$GPIO_ReadInputPin$124 ==.
                           00015A   663 	XG$GPIO_ReadInputPin$0$0 ==.
      008A59 81               [ 4]  664 	ret
                           00015B   665 	Sstm8s_gpio$GPIO_ReadInputPin$125 ==.
                           00015B   666 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$126 ==.
                                    667 ;	../SPL/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    668 ; genLabel
                                    669 ;	-----------------------------------------
                                    670 ;	 function GPIO_ExternalPullUpConfig
                                    671 ;	-----------------------------------------
                                    672 ;	Register assignment might be sub-optimal.
                                    673 ;	Stack space usage: 1 bytes.
      008A5A                        674 _GPIO_ExternalPullUpConfig:
                           00015B   675 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$127 ==.
      008A5A 88               [ 1]  676 	push	a
                           00015C   677 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$128 ==.
                           00015C   678 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129 ==.
                                    679 ;	../SPL/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    680 ; genIfx
      008A5B 0D 06            [ 1]  681 	tnz	(0x06, sp)
      008A5D 27 03            [ 1]  682 	jreq	00133$
      008A5F CC 8A 71         [ 2]  683 	jp	00107$
      008A62                        684 00133$:
                                    685 ; skipping iCode since result will be rematerialized
                                    686 ; skipping iCode since result will be rematerialized
                                    687 ; genIPush
      008A62 4B E4            [ 1]  688 	push	#0xe4
                           000165   689 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$130 ==.
      008A64 5F               [ 1]  690 	clrw	x
      008A65 89               [ 2]  691 	pushw	x
                           000167   692 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$131 ==.
      008A66 4B 00            [ 1]  693 	push	#0x00
                           000169   694 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$132 ==.
                                    695 ; genIPush
      008A68 4B 98            [ 1]  696 	push	#<(___str_0+0)
                           00016B   697 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$133 ==.
      008A6A 4B 80            [ 1]  698 	push	#((___str_0+0) >> 8)
                           00016D   699 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$134 ==.
                                    700 ; genCall
      008A6C CD 82 65         [ 4]  701 	call	_assert_failed
      008A6F 5B 06            [ 2]  702 	addw	sp, #6
                           000172   703 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$135 ==.
                                    704 ; genLabel
      008A71                        705 00107$:
                           000172   706 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136 ==.
                                    707 ;	../SPL/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    708 ; genIfx
      008A71 0D 07            [ 1]  709 	tnz	(0x07, sp)
      008A73 26 03            [ 1]  710 	jrne	00134$
      008A75 CC 8A 8F         [ 2]  711 	jp	00109$
      008A78                        712 00134$:
                                    713 ; genCmpEQorNE
      008A78 7B 07            [ 1]  714 	ld	a, (0x07, sp)
      008A7A 4A               [ 1]  715 	dec	a
      008A7B 26 03            [ 1]  716 	jrne	00136$
      008A7D CC 8A 8F         [ 2]  717 	jp	00109$
      008A80                        718 00136$:
                           000181   719 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$137 ==.
                                    720 ; skipping generated iCode
                                    721 ; skipping iCode since result will be rematerialized
                                    722 ; skipping iCode since result will be rematerialized
                                    723 ; genIPush
      008A80 4B E5            [ 1]  724 	push	#0xe5
                           000183   725 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$138 ==.
      008A82 5F               [ 1]  726 	clrw	x
      008A83 89               [ 2]  727 	pushw	x
                           000185   728 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$139 ==.
      008A84 4B 00            [ 1]  729 	push	#0x00
                           000187   730 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$140 ==.
                                    731 ; genIPush
      008A86 4B 98            [ 1]  732 	push	#<(___str_0+0)
                           000189   733 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$141 ==.
      008A88 4B 80            [ 1]  734 	push	#((___str_0+0) >> 8)
                           00018B   735 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$142 ==.
                                    736 ; genCall
      008A8A CD 82 65         [ 4]  737 	call	_assert_failed
      008A8D 5B 06            [ 2]  738 	addw	sp, #6
                           000190   739 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$143 ==.
                                    740 ; genLabel
      008A8F                        741 00109$:
                           000190   742 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144 ==.
                                    743 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    744 ; genAssign
      008A8F 1E 04            [ 2]  745 	ldw	x, (0x04, sp)
                                    746 ; genPlus
      008A91 1C 00 03         [ 2]  747 	addw	x, #0x0003
                                    748 ; genPointerGet
      008A94 F6               [ 1]  749 	ld	a, (x)
                           000196   750 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145 ==.
                                    751 ;	../SPL/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    752 ; genIfx
      008A95 0D 07            [ 1]  753 	tnz	(0x07, sp)
      008A97 26 03            [ 1]  754 	jrne	00138$
      008A99 CC 8A A2         [ 2]  755 	jp	00102$
      008A9C                        756 00138$:
                           00019D   757 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$146 ==.
                           00019D   758 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147 ==.
                                    759 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    760 ; genOr
      008A9C 1A 06            [ 1]  761 	or	a, (0x06, sp)
                                    762 ; genPointerSet
      008A9E F7               [ 1]  763 	ld	(x), a
                           0001A0   764 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$148 ==.
                                    765 ; genGoto
      008A9F CC 8A AC         [ 2]  766 	jp	00104$
                                    767 ; genLabel
      008AA2                        768 00102$:
                           0001A3   769 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$149 ==.
                           0001A3   770 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150 ==.
                                    771 ;	../SPL/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    772 ; genCpl
      008AA2 88               [ 1]  773 	push	a
                           0001A4   774 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$151 ==.
      008AA3 7B 07            [ 1]  775 	ld	a, (0x07, sp)
      008AA5 43               [ 1]  776 	cpl	a
      008AA6 6B 02            [ 1]  777 	ld	(0x02, sp), a
      008AA8 84               [ 1]  778 	pop	a
                           0001AA   779 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$152 ==.
                                    780 ; genAnd
      008AA9 14 01            [ 1]  781 	and	a, (0x01, sp)
                                    782 ; genPointerSet
      008AAB F7               [ 1]  783 	ld	(x), a
                           0001AD   784 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$153 ==.
                                    785 ; genLabel
      008AAC                        786 00104$:
                           0001AD   787 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154 ==.
                                    788 ;	../SPL/src/stm8s_gpio.c: 238: }
                                    789 ; genEndFunction
      008AAC 84               [ 1]  790 	pop	a
                           0001AE   791 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$155 ==.
                           0001AE   792 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$156 ==.
                           0001AE   793 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008AAD 81               [ 4]  794 	ret
                           0001AF   795 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$157 ==.
                                    796 	.area CODE
                                    797 	.area CONST
                           000000   798 Fstm8s_gpio$__str_0$0_0$0 == .
                                    799 	.area CONST
      008098                        800 ___str_0:
      008098 2E 2E 2F 53 50 4C 2F   801 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      0080AF 00                     802 	.db 0x00
                                    803 	.area CODE
                                    804 	.area INITIALIZER
                                    805 	.area CABS (ABS)
                                    806 
                                    807 	.area .debug_line (NOLOAD)
      000DA1 00 00 02 3B            808 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000DA5                        809 Ldebug_line_start:
      000DA5 00 02                  810 	.dw	2
      000DA7 00 00 00 78            811 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000DAB 01                     812 	.db	1
      000DAC 01                     813 	.db	1
      000DAD FB                     814 	.db	-5
      000DAE 0F                     815 	.db	15
      000DAF 0A                     816 	.db	10
      000DB0 00                     817 	.db	0
      000DB1 01                     818 	.db	1
      000DB2 01                     819 	.db	1
      000DB3 01                     820 	.db	1
      000DB4 01                     821 	.db	1
      000DB5 00                     822 	.db	0
      000DB6 00                     823 	.db	0
      000DB7 00                     824 	.db	0
      000DB8 01                     825 	.db	1
      000DB9 43 3A 5C 50 72 6F 67   826 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000DE1 00                     827 	.db	0
      000DE2 43 3A 5C 50 72 6F 67   828 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000E05 00                     829 	.db	0
      000E06 00                     830 	.db	0
      000E07 2E 2E 2F 53 50 4C 2F   831 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      000E1E 00                     832 	.db	0
      000E1F 00                     833 	.uleb128	0
      000E20 00                     834 	.uleb128	0
      000E21 00                     835 	.uleb128	0
      000E22 00                     836 	.db	0
      000E23                        837 Ldebug_line_stmt:
      000E23 00                     838 	.db	0
      000E24 05                     839 	.uleb128	5
      000E25 02                     840 	.db	2
      000E26 00 00 88 FF            841 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      000E2A 03                     842 	.db	3
      000E2B 34                     843 	.sleb128	52
      000E2C 01                     844 	.db	1
      000E2D 09                     845 	.db	9
      000E2E 00 00                  846 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      000E30 03                     847 	.db	3
      000E31 02                     848 	.sleb128	2
      000E32 01                     849 	.db	1
      000E33 09                     850 	.db	9
      000E34 00 04                  851 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      000E36 03                     852 	.db	3
      000E37 01                     853 	.sleb128	1
      000E38 01                     854 	.db	1
      000E39 09                     855 	.db	9
      000E3A 00 04                  856 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      000E3C 03                     857 	.db	3
      000E3D 01                     858 	.sleb128	1
      000E3E 01                     859 	.db	1
      000E3F 09                     860 	.db	9
      000E40 00 05                  861 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      000E42 03                     862 	.db	3
      000E43 01                     863 	.sleb128	1
      000E44 01                     864 	.db	1
      000E45 09                     865 	.db	9
      000E46 00 05                  866 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      000E48 03                     867 	.db	3
      000E49 01                     868 	.sleb128	1
      000E4A 01                     869 	.db	1
      000E4B 09                     870 	.db	9
      000E4C 00 01                  871 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      000E4E 00                     872 	.db	0
      000E4F 01                     873 	.uleb128	1
      000E50 01                     874 	.db	1
      000E51 00                     875 	.db	0
      000E52 05                     876 	.uleb128	5
      000E53 02                     877 	.db	2
      000E54 00 00 89 12            878 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      000E58 03                     879 	.db	3
      000E59 C6 00                  880 	.sleb128	70
      000E5B 01                     881 	.db	1
      000E5C 09                     882 	.db	9
      000E5D 00 02                  883 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      000E5F 03                     884 	.db	3
      000E60 06                     885 	.sleb128	6
      000E61 01                     886 	.db	1
      000E62 09                     887 	.db	9
      000E63 00 79                  888 	.dw	Sstm8s_gpio$GPIO_Init$30-Sstm8s_gpio$GPIO_Init$12
      000E65 03                     889 	.db	3
      000E66 01                     890 	.sleb128	1
      000E67 01                     891 	.db	1
      000E68 09                     892 	.db	9
      000E69 00 16                  893 	.dw	Sstm8s_gpio$GPIO_Init$37-Sstm8s_gpio$GPIO_Init$30
      000E6B 03                     894 	.db	3
      000E6C 03                     895 	.sleb128	3
      000E6D 01                     896 	.db	1
      000E6E 09                     897 	.db	9
      000E6F 00 17                  898 	.dw	Sstm8s_gpio$GPIO_Init$40-Sstm8s_gpio$GPIO_Init$37
      000E71 03                     899 	.db	3
      000E72 11                     900 	.sleb128	17
      000E73 01                     901 	.db	1
      000E74 09                     902 	.db	9
      000E75 00 05                  903 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$40
      000E77 03                     904 	.db	3
      000E78 75                     905 	.sleb128	-11
      000E79 01                     906 	.db	1
      000E7A 09                     907 	.db	9
      000E7B 00 07                  908 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$41
      000E7D 03                     909 	.db	3
      000E7E 04                     910 	.sleb128	4
      000E7F 01                     911 	.db	1
      000E80 09                     912 	.db	9
      000E81 00 02                  913 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      000E83 03                     914 	.db	3
      000E84 7E                     915 	.sleb128	-2
      000E85 01                     916 	.db	1
      000E86 09                     917 	.db	9
      000E87 00 0B                  918 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      000E89 03                     919 	.db	3
      000E8A 02                     920 	.sleb128	2
      000E8B 01                     921 	.db	1
      000E8C 09                     922 	.db	9
      000E8D 00 07                  923 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      000E8F 03                     924 	.db	3
      000E90 04                     925 	.sleb128	4
      000E91 01                     926 	.db	1
      000E92 09                     927 	.db	9
      000E93 00 04                  928 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      000E95 03                     929 	.db	3
      000E96 03                     930 	.sleb128	3
      000E97 01                     931 	.db	1
      000E98 09                     932 	.db	9
      000E99 00 0B                  933 	.dw	Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$53
      000E9B 03                     934 	.db	3
      000E9C 05                     935 	.sleb128	5
      000E9D 01                     936 	.db	1
      000E9E 09                     937 	.db	9
      000E9F 00 08                  938 	.dw	Sstm8s_gpio$GPIO_Init$58-Sstm8s_gpio$GPIO_Init$56
      000EA1 03                     939 	.db	3
      000EA2 09                     940 	.sleb128	9
      000EA3 01                     941 	.db	1
      000EA4 09                     942 	.db	9
      000EA5 00 05                  943 	.dw	Sstm8s_gpio$GPIO_Init$59-Sstm8s_gpio$GPIO_Init$58
      000EA7 03                     944 	.db	3
      000EA8 7E                     945 	.sleb128	-2
      000EA9 01                     946 	.db	1
      000EAA 09                     947 	.db	9
      000EAB 00 0B                  948 	.dw	Sstm8s_gpio$GPIO_Init$63-Sstm8s_gpio$GPIO_Init$59
      000EAD 03                     949 	.db	3
      000EAE 02                     950 	.sleb128	2
      000EAF 01                     951 	.db	1
      000EB0 09                     952 	.db	9
      000EB1 00 06                  953 	.dw	Sstm8s_gpio$GPIO_Init$66-Sstm8s_gpio$GPIO_Init$63
      000EB3 03                     954 	.db	3
      000EB4 04                     955 	.sleb128	4
      000EB5 01                     956 	.db	1
      000EB6 09                     957 	.db	9
      000EB7 00 03                  958 	.dw	Sstm8s_gpio$GPIO_Init$68-Sstm8s_gpio$GPIO_Init$66
      000EB9 03                     959 	.db	3
      000EBA 5D                     960 	.sleb128	-35
      000EBB 01                     961 	.db	1
      000EBC 09                     962 	.db	9
      000EBD 00 03                  963 	.dw	Sstm8s_gpio$GPIO_Init$69-Sstm8s_gpio$GPIO_Init$68
      000EBF 03                     964 	.db	3
      000EC0 2A                     965 	.sleb128	42
      000EC1 01                     966 	.db	1
      000EC2 09                     967 	.db	9
      000EC3 00 0B                  968 	.dw	Sstm8s_gpio$GPIO_Init$73-Sstm8s_gpio$GPIO_Init$69
      000EC5 03                     969 	.db	3
      000EC6 02                     970 	.sleb128	2
      000EC7 01                     971 	.db	1
      000EC8 09                     972 	.db	9
      000EC9 00 08                  973 	.dw	Sstm8s_gpio$GPIO_Init$76-Sstm8s_gpio$GPIO_Init$73
      000ECB 03                     974 	.db	3
      000ECC 04                     975 	.sleb128	4
      000ECD 01                     976 	.db	1
      000ECE 09                     977 	.db	9
      000ECF 00 05                  978 	.dw	Sstm8s_gpio$GPIO_Init$78-Sstm8s_gpio$GPIO_Init$76
      000ED1 03                     979 	.db	3
      000ED2 02                     980 	.sleb128	2
      000ED3 01                     981 	.db	1
      000ED4 09                     982 	.db	9
      000ED5 00 03                  983 	.dw	1+Sstm8s_gpio$GPIO_Init$80-Sstm8s_gpio$GPIO_Init$78
      000ED7 00                     984 	.db	0
      000ED8 01                     985 	.uleb128	1
      000ED9 01                     986 	.db	1
      000EDA 00                     987 	.db	0
      000EDB 05                     988 	.uleb128	5
      000EDC 02                     989 	.db	2
      000EDD 00 00 8A 28            990 	.dw	0,(Sstm8s_gpio$GPIO_Write$82)
      000EE1 03                     991 	.db	3
      000EE2 8C 01                  992 	.sleb128	140
      000EE4 01                     993 	.db	1
      000EE5 09                     994 	.db	9
      000EE6 00 00                  995 	.dw	Sstm8s_gpio$GPIO_Write$84-Sstm8s_gpio$GPIO_Write$82
      000EE8 03                     996 	.db	3
      000EE9 02                     997 	.sleb128	2
      000EEA 01                     998 	.db	1
      000EEB 09                     999 	.db	9
      000EEC 00 05                 1000 	.dw	Sstm8s_gpio$GPIO_Write$85-Sstm8s_gpio$GPIO_Write$84
      000EEE 03                    1001 	.db	3
      000EEF 01                    1002 	.sleb128	1
      000EF0 01                    1003 	.db	1
      000EF1 09                    1004 	.db	9
      000EF2 00 01                 1005 	.dw	1+Sstm8s_gpio$GPIO_Write$86-Sstm8s_gpio$GPIO_Write$85
      000EF4 00                    1006 	.db	0
      000EF5 01                    1007 	.uleb128	1
      000EF6 01                    1008 	.db	1
      000EF7 00                    1009 	.db	0
      000EF8 05                    1010 	.uleb128	5
      000EF9 02                    1011 	.db	2
      000EFA 00 00 8A 2E           1012 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$88)
      000EFE 03                    1013 	.db	3
      000EFF 99 01                 1014 	.sleb128	153
      000F01 01                    1015 	.db	1
      000F02 09                    1016 	.db	9
      000F03 00 00                 1017 	.dw	Sstm8s_gpio$GPIO_WriteHigh$90-Sstm8s_gpio$GPIO_WriteHigh$88
      000F05 03                    1018 	.db	3
      000F06 02                    1019 	.sleb128	2
      000F07 01                    1020 	.db	1
      000F08 09                    1021 	.db	9
      000F09 00 06                 1022 	.dw	Sstm8s_gpio$GPIO_WriteHigh$91-Sstm8s_gpio$GPIO_WriteHigh$90
      000F0B 03                    1023 	.db	3
      000F0C 01                    1024 	.sleb128	1
      000F0D 01                    1025 	.db	1
      000F0E 09                    1026 	.db	9
      000F0F 00 01                 1027 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$92-Sstm8s_gpio$GPIO_WriteHigh$91
      000F11 00                    1028 	.db	0
      000F12 01                    1029 	.uleb128	1
      000F13 01                    1030 	.db	1
      000F14 00                    1031 	.db	0
      000F15 05                    1032 	.uleb128	5
      000F16 02                    1033 	.db	2
      000F17 00 00 8A 35           1034 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$94)
      000F1B 03                    1035 	.db	3
      000F1C A6 01                 1036 	.sleb128	166
      000F1E 01                    1037 	.db	1
      000F1F 09                    1038 	.db	9
      000F20 00 01                 1039 	.dw	Sstm8s_gpio$GPIO_WriteLow$97-Sstm8s_gpio$GPIO_WriteLow$94
      000F22 03                    1040 	.db	3
      000F23 02                    1041 	.sleb128	2
      000F24 01                    1042 	.db	1
      000F25 09                    1043 	.db	9
      000F26 00 0B                 1044 	.dw	Sstm8s_gpio$GPIO_WriteLow$98-Sstm8s_gpio$GPIO_WriteLow$97
      000F28 03                    1045 	.db	3
      000F29 01                    1046 	.sleb128	1
      000F2A 01                    1047 	.db	1
      000F2B 09                    1048 	.db	9
      000F2C 00 02                 1049 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$100-Sstm8s_gpio$GPIO_WriteLow$98
      000F2E 00                    1050 	.db	0
      000F2F 01                    1051 	.uleb128	1
      000F30 01                    1052 	.db	1
      000F31 00                    1053 	.db	0
      000F32 05                    1054 	.uleb128	5
      000F33 02                    1055 	.db	2
      000F34 00 00 8A 43           1056 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$102)
      000F38 03                    1057 	.db	3
      000F39 B3 01                 1058 	.sleb128	179
      000F3B 01                    1059 	.db	1
      000F3C 09                    1060 	.db	9
      000F3D 00 00                 1061 	.dw	Sstm8s_gpio$GPIO_WriteReverse$104-Sstm8s_gpio$GPIO_WriteReverse$102
      000F3F 03                    1062 	.db	3
      000F40 02                    1063 	.sleb128	2
      000F41 01                    1064 	.db	1
      000F42 09                    1065 	.db	9
      000F43 00 06                 1066 	.dw	Sstm8s_gpio$GPIO_WriteReverse$105-Sstm8s_gpio$GPIO_WriteReverse$104
      000F45 03                    1067 	.db	3
      000F46 01                    1068 	.sleb128	1
      000F47 01                    1069 	.db	1
      000F48 09                    1070 	.db	9
      000F49 00 01                 1071 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$106-Sstm8s_gpio$GPIO_WriteReverse$105
      000F4B 00                    1072 	.db	0
      000F4C 01                    1073 	.uleb128	1
      000F4D 01                    1074 	.db	1
      000F4E 00                    1075 	.db	0
      000F4F 05                    1076 	.uleb128	5
      000F50 02                    1077 	.db	2
      000F51 00 00 8A 4A           1078 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$108)
      000F55 03                    1079 	.db	3
      000F56 BE 01                 1080 	.sleb128	190
      000F58 01                    1081 	.db	1
      000F59 09                    1082 	.db	9
      000F5A 00 00                 1083 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$110-Sstm8s_gpio$GPIO_ReadOutputData$108
      000F5C 03                    1084 	.db	3
      000F5D 02                    1085 	.sleb128	2
      000F5E 01                    1086 	.db	1
      000F5F 09                    1087 	.db	9
      000F60 00 03                 1088 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$111-Sstm8s_gpio$GPIO_ReadOutputData$110
      000F62 03                    1089 	.db	3
      000F63 01                    1090 	.sleb128	1
      000F64 01                    1091 	.db	1
      000F65 09                    1092 	.db	9
      000F66 00 01                 1093 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$112-Sstm8s_gpio$GPIO_ReadOutputData$111
      000F68 00                    1094 	.db	0
      000F69 01                    1095 	.uleb128	1
      000F6A 01                    1096 	.db	1
      000F6B 00                    1097 	.db	0
      000F6C 05                    1098 	.uleb128	5
      000F6D 02                    1099 	.db	2
      000F6E 00 00 8A 4E           1100 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$114)
      000F72 03                    1101 	.db	3
      000F73 C9 01                 1102 	.sleb128	201
      000F75 01                    1103 	.db	1
      000F76 09                    1104 	.db	9
      000F77 00 00                 1105 	.dw	Sstm8s_gpio$GPIO_ReadInputData$116-Sstm8s_gpio$GPIO_ReadInputData$114
      000F79 03                    1106 	.db	3
      000F7A 02                    1107 	.sleb128	2
      000F7B 01                    1108 	.db	1
      000F7C 09                    1109 	.db	9
      000F7D 00 04                 1110 	.dw	Sstm8s_gpio$GPIO_ReadInputData$117-Sstm8s_gpio$GPIO_ReadInputData$116
      000F7F 03                    1111 	.db	3
      000F80 01                    1112 	.sleb128	1
      000F81 01                    1113 	.db	1
      000F82 09                    1114 	.db	9
      000F83 00 01                 1115 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$118-Sstm8s_gpio$GPIO_ReadInputData$117
      000F85 00                    1116 	.db	0
      000F86 01                    1117 	.uleb128	1
      000F87 01                    1118 	.db	1
      000F88 00                    1119 	.db	0
      000F89 05                    1120 	.uleb128	5
      000F8A 02                    1121 	.db	2
      000F8B 00 00 8A 53           1122 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$120)
      000F8F 03                    1123 	.db	3
      000F90 D4 01                 1124 	.sleb128	212
      000F92 01                    1125 	.db	1
      000F93 09                    1126 	.db	9
      000F94 00 00                 1127 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$122-Sstm8s_gpio$GPIO_ReadInputPin$120
      000F96 03                    1128 	.db	3
      000F97 02                    1129 	.sleb128	2
      000F98 01                    1130 	.db	1
      000F99 09                    1131 	.db	9
      000F9A 00 06                 1132 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$123-Sstm8s_gpio$GPIO_ReadInputPin$122
      000F9C 03                    1133 	.db	3
      000F9D 01                    1134 	.sleb128	1
      000F9E 01                    1135 	.db	1
      000F9F 09                    1136 	.db	9
      000FA0 00 01                 1137 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$124-Sstm8s_gpio$GPIO_ReadInputPin$123
      000FA2 00                    1138 	.db	0
      000FA3 01                    1139 	.uleb128	1
      000FA4 01                    1140 	.db	1
      000FA5 00                    1141 	.db	0
      000FA6 05                    1142 	.uleb128	5
      000FA7 02                    1143 	.db	2
      000FA8 00 00 8A 5A           1144 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$126)
      000FAC 03                    1145 	.db	3
      000FAD E0 01                 1146 	.sleb128	224
      000FAF 01                    1147 	.db	1
      000FB0 09                    1148 	.db	9
      000FB1 00 01                 1149 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129-Sstm8s_gpio$GPIO_ExternalPullUpConfig$126
      000FB3 03                    1150 	.db	3
      000FB4 03                    1151 	.sleb128	3
      000FB5 01                    1152 	.db	1
      000FB6 09                    1153 	.db	9
      000FB7 00 16                 1154 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136-Sstm8s_gpio$GPIO_ExternalPullUpConfig$129
      000FB9 03                    1155 	.db	3
      000FBA 01                    1156 	.sleb128	1
      000FBB 01                    1157 	.db	1
      000FBC 09                    1158 	.db	9
      000FBD 00 1E                 1159 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144-Sstm8s_gpio$GPIO_ExternalPullUpConfig$136
      000FBF 03                    1160 	.db	3
      000FC0 04                    1161 	.sleb128	4
      000FC1 01                    1162 	.db	1
      000FC2 09                    1163 	.db	9
      000FC3 00 06                 1164 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145-Sstm8s_gpio$GPIO_ExternalPullUpConfig$144
      000FC5 03                    1165 	.db	3
      000FC6 7E                    1166 	.sleb128	-2
      000FC7 01                    1167 	.db	1
      000FC8 09                    1168 	.db	9
      000FC9 00 07                 1169 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147-Sstm8s_gpio$GPIO_ExternalPullUpConfig$145
      000FCB 03                    1170 	.db	3
      000FCC 02                    1171 	.sleb128	2
      000FCD 01                    1172 	.db	1
      000FCE 09                    1173 	.db	9
      000FCF 00 06                 1174 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150-Sstm8s_gpio$GPIO_ExternalPullUpConfig$147
      000FD1 03                    1175 	.db	3
      000FD2 03                    1176 	.sleb128	3
      000FD3 01                    1177 	.db	1
      000FD4 09                    1178 	.db	9
      000FD5 00 0A                 1179 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154-Sstm8s_gpio$GPIO_ExternalPullUpConfig$150
      000FD7 03                    1180 	.db	3
      000FD8 02                    1181 	.sleb128	2
      000FD9 01                    1182 	.db	1
      000FDA 09                    1183 	.db	9
      000FDB 00 02                 1184 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$156-Sstm8s_gpio$GPIO_ExternalPullUpConfig$154
      000FDD 00                    1185 	.db	0
      000FDE 01                    1186 	.uleb128	1
      000FDF 01                    1187 	.db	1
      000FE0                       1188 Ldebug_line_end:
                                   1189 
                                   1190 	.area .debug_loc (NOLOAD)
      001824                       1191 Ldebug_loc_start:
      001824 00 00 8A AD           1192 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      001828 00 00 8A AE           1193 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$157)
      00182C 00 02                 1194 	.dw	2
      00182E 78                    1195 	.db	120
      00182F 01                    1196 	.sleb128	1
      001830 00 00 8A A9           1197 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      001834 00 00 8A AD           1198 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      001838 00 02                 1199 	.dw	2
      00183A 78                    1200 	.db	120
      00183B 02                    1201 	.sleb128	2
      00183C 00 00 8A A3           1202 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      001840 00 00 8A A9           1203 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      001844 00 02                 1204 	.dw	2
      001846 78                    1205 	.db	120
      001847 03                    1206 	.sleb128	3
      001848 00 00 8A 8F           1207 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      00184C 00 00 8A A3           1208 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      001850 00 02                 1209 	.dw	2
      001852 78                    1210 	.db	120
      001853 02                    1211 	.sleb128	2
      001854 00 00 8A 8A           1212 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      001858 00 00 8A 8F           1213 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      00185C 00 02                 1214 	.dw	2
      00185E 78                    1215 	.db	120
      00185F 08                    1216 	.sleb128	8
      001860 00 00 8A 88           1217 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      001864 00 00 8A 8A           1218 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      001868 00 02                 1219 	.dw	2
      00186A 78                    1220 	.db	120
      00186B 07                    1221 	.sleb128	7
      00186C 00 00 8A 86           1222 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      001870 00 00 8A 88           1223 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      001874 00 02                 1224 	.dw	2
      001876 78                    1225 	.db	120
      001877 06                    1226 	.sleb128	6
      001878 00 00 8A 84           1227 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      00187C 00 00 8A 86           1228 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      001880 00 02                 1229 	.dw	2
      001882 78                    1230 	.db	120
      001883 05                    1231 	.sleb128	5
      001884 00 00 8A 82           1232 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      001888 00 00 8A 84           1233 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      00188C 00 02                 1234 	.dw	2
      00188E 78                    1235 	.db	120
      00188F 03                    1236 	.sleb128	3
      001890 00 00 8A 80           1237 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      001894 00 00 8A 82           1238 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      001898 00 02                 1239 	.dw	2
      00189A 78                    1240 	.db	120
      00189B 02                    1241 	.sleb128	2
      00189C 00 00 8A 71           1242 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      0018A0 00 00 8A 80           1243 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      0018A4 00 02                 1244 	.dw	2
      0018A6 78                    1245 	.db	120
      0018A7 02                    1246 	.sleb128	2
      0018A8 00 00 8A 6C           1247 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      0018AC 00 00 8A 71           1248 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      0018B0 00 02                 1249 	.dw	2
      0018B2 78                    1250 	.db	120
      0018B3 08                    1251 	.sleb128	8
      0018B4 00 00 8A 6A           1252 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      0018B8 00 00 8A 6C           1253 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      0018BC 00 02                 1254 	.dw	2
      0018BE 78                    1255 	.db	120
      0018BF 07                    1256 	.sleb128	7
      0018C0 00 00 8A 68           1257 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      0018C4 00 00 8A 6A           1258 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      0018C8 00 02                 1259 	.dw	2
      0018CA 78                    1260 	.db	120
      0018CB 06                    1261 	.sleb128	6
      0018CC 00 00 8A 66           1262 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      0018D0 00 00 8A 68           1263 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      0018D4 00 02                 1264 	.dw	2
      0018D6 78                    1265 	.db	120
      0018D7 05                    1266 	.sleb128	5
      0018D8 00 00 8A 64           1267 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      0018DC 00 00 8A 66           1268 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      0018E0 00 02                 1269 	.dw	2
      0018E2 78                    1270 	.db	120
      0018E3 03                    1271 	.sleb128	3
      0018E4 00 00 8A 5B           1272 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      0018E8 00 00 8A 64           1273 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      0018EC 00 02                 1274 	.dw	2
      0018EE 78                    1275 	.db	120
      0018EF 02                    1276 	.sleb128	2
      0018F0 00 00 8A 5A           1277 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      0018F4 00 00 8A 5B           1278 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      0018F8 00 02                 1279 	.dw	2
      0018FA 78                    1280 	.db	120
      0018FB 01                    1281 	.sleb128	1
      0018FC 00 00 00 00           1282 	.dw	0,0
      001900 00 00 00 00           1283 	.dw	0,0
      001904 00 00 8A 53           1284 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      001908 00 00 8A 5A           1285 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$125)
      00190C 00 02                 1286 	.dw	2
      00190E 78                    1287 	.db	120
      00190F 01                    1288 	.sleb128	1
      001910 00 00 00 00           1289 	.dw	0,0
      001914 00 00 00 00           1290 	.dw	0,0
      001918 00 00 8A 4E           1291 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      00191C 00 00 8A 53           1292 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$119)
      001920 00 02                 1293 	.dw	2
      001922 78                    1294 	.db	120
      001923 01                    1295 	.sleb128	1
      001924 00 00 00 00           1296 	.dw	0,0
      001928 00 00 00 00           1297 	.dw	0,0
      00192C 00 00 8A 4A           1298 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      001930 00 00 8A 4E           1299 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$113)
      001934 00 02                 1300 	.dw	2
      001936 78                    1301 	.db	120
      001937 01                    1302 	.sleb128	1
      001938 00 00 00 00           1303 	.dw	0,0
      00193C 00 00 00 00           1304 	.dw	0,0
      001940 00 00 8A 43           1305 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      001944 00 00 8A 4A           1306 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$107)
      001948 00 02                 1307 	.dw	2
      00194A 78                    1308 	.db	120
      00194B 01                    1309 	.sleb128	1
      00194C 00 00 00 00           1310 	.dw	0,0
      001950 00 00 00 00           1311 	.dw	0,0
      001954 00 00 8A 42           1312 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      001958 00 00 8A 43           1313 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$101)
      00195C 00 02                 1314 	.dw	2
      00195E 78                    1315 	.db	120
      00195F 01                    1316 	.sleb128	1
      001960 00 00 8A 36           1317 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      001964 00 00 8A 42           1318 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      001968 00 02                 1319 	.dw	2
      00196A 78                    1320 	.db	120
      00196B 02                    1321 	.sleb128	2
      00196C 00 00 8A 35           1322 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      001970 00 00 8A 36           1323 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      001974 00 02                 1324 	.dw	2
      001976 78                    1325 	.db	120
      001977 01                    1326 	.sleb128	1
      001978 00 00 00 00           1327 	.dw	0,0
      00197C 00 00 00 00           1328 	.dw	0,0
      001980 00 00 8A 2E           1329 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      001984 00 00 8A 35           1330 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$93)
      001988 00 02                 1331 	.dw	2
      00198A 78                    1332 	.db	120
      00198B 01                    1333 	.sleb128	1
      00198C 00 00 00 00           1334 	.dw	0,0
      001990 00 00 00 00           1335 	.dw	0,0
      001994 00 00 8A 28           1336 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      001998 00 00 8A 2E           1337 	.dw	0,(Sstm8s_gpio$GPIO_Write$87)
      00199C 00 02                 1338 	.dw	2
      00199E 78                    1339 	.db	120
      00199F 01                    1340 	.sleb128	1
      0019A0 00 00 00 00           1341 	.dw	0,0
      0019A4 00 00 00 00           1342 	.dw	0,0
      0019A8 00 00 8A 27           1343 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      0019AC 00 00 8A 28           1344 	.dw	0,(Sstm8s_gpio$GPIO_Init$81)
      0019B0 00 02                 1345 	.dw	2
      0019B2 78                    1346 	.db	120
      0019B3 01                    1347 	.sleb128	1
      0019B4 00 00 8A 13           1348 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      0019B8 00 00 8A 27           1349 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      0019BC 00 02                 1350 	.dw	2
      0019BE 78                    1351 	.db	120
      0019BF 06                    1352 	.sleb128	6
      0019C0 00 00 8A 0E           1353 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      0019C4 00 00 8A 13           1354 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      0019C8 00 02                 1355 	.dw	2
      0019CA 78                    1356 	.db	120
      0019CB 07                    1357 	.sleb128	7
      0019CC 00 00 89 FC           1358 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      0019D0 00 00 8A 0E           1359 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      0019D4 00 02                 1360 	.dw	2
      0019D6 78                    1361 	.db	120
      0019D7 06                    1362 	.sleb128	6
      0019D8 00 00 89 F7           1363 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      0019DC 00 00 89 FC           1364 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      0019E0 00 02                 1365 	.dw	2
      0019E2 78                    1366 	.db	120
      0019E3 07                    1367 	.sleb128	7
      0019E4 00 00 89 CE           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0019E8 00 00 89 F7           1369 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      0019EC 00 02                 1370 	.dw	2
      0019EE 78                    1371 	.db	120
      0019EF 06                    1372 	.sleb128	6
      0019F0 00 00 89 C9           1373 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0019F4 00 00 89 CE           1374 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0019F8 00 02                 1375 	.dw	2
      0019FA 78                    1376 	.db	120
      0019FB 07                    1377 	.sleb128	7
      0019FC 00 00 89 B5           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      001A00 00 00 89 C9           1379 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      001A04 00 02                 1380 	.dw	2
      001A06 78                    1381 	.db	120
      001A07 06                    1382 	.sleb128	6
      001A08 00 00 89 AF           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001A0C 00 00 89 B5           1384 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      001A10 00 02                 1385 	.dw	2
      001A12 78                    1386 	.db	120
      001A13 07                    1387 	.sleb128	7
      001A14 00 00 89 A3           1388 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001A18 00 00 89 AF           1389 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001A1C 00 02                 1390 	.dw	2
      001A1E 78                    1391 	.db	120
      001A1F 06                    1392 	.sleb128	6
      001A20 00 00 89 9E           1393 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      001A24 00 00 89 A3           1394 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001A28 00 02                 1395 	.dw	2
      001A2A 78                    1396 	.db	120
      001A2B 0C                    1397 	.sleb128	12
      001A2C 00 00 89 9C           1398 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      001A30 00 00 89 9E           1399 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      001A34 00 02                 1400 	.dw	2
      001A36 78                    1401 	.db	120
      001A37 0B                    1402 	.sleb128	11
      001A38 00 00 89 9A           1403 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      001A3C 00 00 89 9C           1404 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      001A40 00 02                 1405 	.dw	2
      001A42 78                    1406 	.db	120
      001A43 0A                    1407 	.sleb128	10
      001A44 00 00 89 98           1408 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      001A48 00 00 89 9A           1409 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      001A4C 00 02                 1410 	.dw	2
      001A4E 78                    1411 	.db	120
      001A4F 09                    1412 	.sleb128	9
      001A50 00 00 89 96           1413 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      001A54 00 00 89 98           1414 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      001A58 00 02                 1415 	.dw	2
      001A5A 78                    1416 	.db	120
      001A5B 07                    1417 	.sleb128	7
      001A5C 00 00 89 8D           1418 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      001A60 00 00 89 96           1419 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      001A64 00 02                 1420 	.dw	2
      001A66 78                    1421 	.db	120
      001A67 06                    1422 	.sleb128	6
      001A68 00 00 89 88           1423 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      001A6C 00 00 89 8D           1424 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      001A70 00 02                 1425 	.dw	2
      001A72 78                    1426 	.db	120
      001A73 0C                    1427 	.sleb128	12
      001A74 00 00 89 86           1428 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      001A78 00 00 89 88           1429 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      001A7C 00 02                 1430 	.dw	2
      001A7E 78                    1431 	.db	120
      001A7F 0B                    1432 	.sleb128	11
      001A80 00 00 89 84           1433 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      001A84 00 00 89 86           1434 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      001A88 00 02                 1435 	.dw	2
      001A8A 78                    1436 	.db	120
      001A8B 0A                    1437 	.sleb128	10
      001A8C 00 00 89 82           1438 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      001A90 00 00 89 84           1439 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      001A94 00 02                 1440 	.dw	2
      001A96 78                    1441 	.db	120
      001A97 09                    1442 	.sleb128	9
      001A98 00 00 89 80           1443 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      001A9C 00 00 89 82           1444 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      001AA0 00 02                 1445 	.dw	2
      001AA2 78                    1446 	.db	120
      001AA3 07                    1447 	.sleb128	7
      001AA4 00 00 89 7E           1448 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      001AA8 00 00 89 80           1449 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      001AAC 00 02                 1450 	.dw	2
      001AAE 78                    1451 	.db	120
      001AAF 06                    1452 	.sleb128	6
      001AB0 00 00 89 75           1453 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      001AB4 00 00 89 7E           1454 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      001AB8 00 02                 1455 	.dw	2
      001ABA 78                    1456 	.db	120
      001ABB 06                    1457 	.sleb128	6
      001ABC 00 00 89 6C           1458 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001AC0 00 00 89 75           1459 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      001AC4 00 02                 1460 	.dw	2
      001AC6 78                    1461 	.db	120
      001AC7 06                    1462 	.sleb128	6
      001AC8 00 00 89 63           1463 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001ACC 00 00 89 6C           1464 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001AD0 00 02                 1465 	.dw	2
      001AD2 78                    1466 	.db	120
      001AD3 06                    1467 	.sleb128	6
      001AD4 00 00 89 5A           1468 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001AD8 00 00 89 63           1469 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001ADC 00 02                 1470 	.dw	2
      001ADE 78                    1471 	.db	120
      001ADF 06                    1472 	.sleb128	6
      001AE0 00 00 89 51           1473 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      001AE4 00 00 89 5A           1474 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001AE8 00 02                 1475 	.dw	2
      001AEA 78                    1476 	.db	120
      001AEB 06                    1477 	.sleb128	6
      001AEC 00 00 89 48           1478 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      001AF0 00 00 89 51           1479 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      001AF4 00 02                 1480 	.dw	2
      001AF6 78                    1481 	.db	120
      001AF7 06                    1482 	.sleb128	6
      001AF8 00 00 89 3F           1483 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      001AFC 00 00 89 48           1484 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      001B00 00 02                 1485 	.dw	2
      001B02 78                    1486 	.db	120
      001B03 06                    1487 	.sleb128	6
      001B04 00 00 89 36           1488 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      001B08 00 00 89 3F           1489 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      001B0C 00 02                 1490 	.dw	2
      001B0E 78                    1491 	.db	120
      001B0F 06                    1492 	.sleb128	6
      001B10 00 00 89 2D           1493 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001B14 00 00 89 36           1494 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      001B18 00 02                 1495 	.dw	2
      001B1A 78                    1496 	.db	120
      001B1B 06                    1497 	.sleb128	6
      001B1C 00 00 89 24           1498 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      001B20 00 00 89 2D           1499 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001B24 00 02                 1500 	.dw	2
      001B26 78                    1501 	.db	120
      001B27 06                    1502 	.sleb128	6
      001B28 00 00 89 14           1503 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001B2C 00 00 89 24           1504 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      001B30 00 02                 1505 	.dw	2
      001B32 78                    1506 	.db	120
      001B33 06                    1507 	.sleb128	6
      001B34 00 00 89 12           1508 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      001B38 00 00 89 14           1509 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001B3C 00 02                 1510 	.dw	2
      001B3E 78                    1511 	.db	120
      001B3F 01                    1512 	.sleb128	1
      001B40 00 00 00 00           1513 	.dw	0,0
      001B44 00 00 00 00           1514 	.dw	0,0
      001B48 00 00 88 FF           1515 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      001B4C 00 00 89 12           1516 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      001B50 00 02                 1517 	.dw	2
      001B52 78                    1518 	.db	120
      001B53 01                    1519 	.sleb128	1
      001B54 00 00 00 00           1520 	.dw	0,0
      001B58 00 00 00 00           1521 	.dw	0,0
                                   1522 
                                   1523 	.area .debug_abbrev (NOLOAD)
      0002E7                       1524 Ldebug_abbrev:
      0002E7 06                    1525 	.uleb128	6
      0002E8 0F                    1526 	.uleb128	15
      0002E9 00                    1527 	.db	0
      0002EA 0B                    1528 	.uleb128	11
      0002EB 0B                    1529 	.uleb128	11
      0002EC 49                    1530 	.uleb128	73
      0002ED 13                    1531 	.uleb128	19
      0002EE 00                    1532 	.uleb128	0
      0002EF 00                    1533 	.uleb128	0
      0002F0 04                    1534 	.uleb128	4
      0002F1 35                    1535 	.uleb128	53
      0002F2 00                    1536 	.db	0
      0002F3 49                    1537 	.uleb128	73
      0002F4 13                    1538 	.uleb128	19
      0002F5 00                    1539 	.uleb128	0
      0002F6 00                    1540 	.uleb128	0
      0002F7 07                    1541 	.uleb128	7
      0002F8 05                    1542 	.uleb128	5
      0002F9 00                    1543 	.db	0
      0002FA 02                    1544 	.uleb128	2
      0002FB 0A                    1545 	.uleb128	10
      0002FC 03                    1546 	.uleb128	3
      0002FD 08                    1547 	.uleb128	8
      0002FE 49                    1548 	.uleb128	73
      0002FF 13                    1549 	.uleb128	19
      000300 00                    1550 	.uleb128	0
      000301 00                    1551 	.uleb128	0
      000302 0D                    1552 	.uleb128	13
      000303 01                    1553 	.uleb128	1
      000304 01                    1554 	.db	1
      000305 01                    1555 	.uleb128	1
      000306 13                    1556 	.uleb128	19
      000307 0B                    1557 	.uleb128	11
      000308 0B                    1558 	.uleb128	11
      000309 49                    1559 	.uleb128	73
      00030A 13                    1560 	.uleb128	19
      00030B 00                    1561 	.uleb128	0
      00030C 00                    1562 	.uleb128	0
      00030D 02                    1563 	.uleb128	2
      00030E 2E                    1564 	.uleb128	46
      00030F 01                    1565 	.db	1
      000310 01                    1566 	.uleb128	1
      000311 13                    1567 	.uleb128	19
      000312 03                    1568 	.uleb128	3
      000313 08                    1569 	.uleb128	8
      000314 11                    1570 	.uleb128	17
      000315 01                    1571 	.uleb128	1
      000316 12                    1572 	.uleb128	18
      000317 01                    1573 	.uleb128	1
      000318 3F                    1574 	.uleb128	63
      000319 0C                    1575 	.uleb128	12
      00031A 40                    1576 	.uleb128	64
      00031B 06                    1577 	.uleb128	6
      00031C 00                    1578 	.uleb128	0
      00031D 00                    1579 	.uleb128	0
      00031E 0F                    1580 	.uleb128	15
      00031F 34                    1581 	.uleb128	52
      000320 00                    1582 	.db	0
      000321 02                    1583 	.uleb128	2
      000322 0A                    1584 	.uleb128	10
      000323 03                    1585 	.uleb128	3
      000324 08                    1586 	.uleb128	8
      000325 49                    1587 	.uleb128	73
      000326 13                    1588 	.uleb128	19
      000327 00                    1589 	.uleb128	0
      000328 00                    1590 	.uleb128	0
      000329 0B                    1591 	.uleb128	11
      00032A 2E                    1592 	.uleb128	46
      00032B 01                    1593 	.db	1
      00032C 01                    1594 	.uleb128	1
      00032D 13                    1595 	.uleb128	19
      00032E 03                    1596 	.uleb128	3
      00032F 08                    1597 	.uleb128	8
      000330 11                    1598 	.uleb128	17
      000331 01                    1599 	.uleb128	1
      000332 12                    1600 	.uleb128	18
      000333 01                    1601 	.uleb128	1
      000334 3F                    1602 	.uleb128	63
      000335 0C                    1603 	.uleb128	12
      000336 40                    1604 	.uleb128	64
      000337 06                    1605 	.uleb128	6
      000338 49                    1606 	.uleb128	73
      000339 13                    1607 	.uleb128	19
      00033A 00                    1608 	.uleb128	0
      00033B 00                    1609 	.uleb128	0
      00033C 0C                    1610 	.uleb128	12
      00033D 26                    1611 	.uleb128	38
      00033E 00                    1612 	.db	0
      00033F 49                    1613 	.uleb128	73
      000340 13                    1614 	.uleb128	19
      000341 00                    1615 	.uleb128	0
      000342 00                    1616 	.uleb128	0
      000343 01                    1617 	.uleb128	1
      000344 11                    1618 	.uleb128	17
      000345 01                    1619 	.db	1
      000346 03                    1620 	.uleb128	3
      000347 08                    1621 	.uleb128	8
      000348 10                    1622 	.uleb128	16
      000349 06                    1623 	.uleb128	6
      00034A 13                    1624 	.uleb128	19
      00034B 0B                    1625 	.uleb128	11
      00034C 25                    1626 	.uleb128	37
      00034D 08                    1627 	.uleb128	8
      00034E 00                    1628 	.uleb128	0
      00034F 00                    1629 	.uleb128	0
      000350 05                    1630 	.uleb128	5
      000351 0D                    1631 	.uleb128	13
      000352 00                    1632 	.db	0
      000353 03                    1633 	.uleb128	3
      000354 08                    1634 	.uleb128	8
      000355 38                    1635 	.uleb128	56
      000356 0A                    1636 	.uleb128	10
      000357 49                    1637 	.uleb128	73
      000358 13                    1638 	.uleb128	19
      000359 00                    1639 	.uleb128	0
      00035A 00                    1640 	.uleb128	0
      00035B 0A                    1641 	.uleb128	10
      00035C 0B                    1642 	.uleb128	11
      00035D 00                    1643 	.db	0
      00035E 11                    1644 	.uleb128	17
      00035F 01                    1645 	.uleb128	1
      000360 12                    1646 	.uleb128	18
      000361 01                    1647 	.uleb128	1
      000362 00                    1648 	.uleb128	0
      000363 00                    1649 	.uleb128	0
      000364 09                    1650 	.uleb128	9
      000365 0B                    1651 	.uleb128	11
      000366 01                    1652 	.db	1
      000367 01                    1653 	.uleb128	1
      000368 13                    1654 	.uleb128	19
      000369 11                    1655 	.uleb128	17
      00036A 01                    1656 	.uleb128	1
      00036B 12                    1657 	.uleb128	18
      00036C 01                    1658 	.uleb128	1
      00036D 00                    1659 	.uleb128	0
      00036E 00                    1660 	.uleb128	0
      00036F 0E                    1661 	.uleb128	14
      000370 21                    1662 	.uleb128	33
      000371 00                    1663 	.db	0
      000372 2F                    1664 	.uleb128	47
      000373 0B                    1665 	.uleb128	11
      000374 00                    1666 	.uleb128	0
      000375 00                    1667 	.uleb128	0
      000376 03                    1668 	.uleb128	3
      000377 13                    1669 	.uleb128	19
      000378 01                    1670 	.db	1
      000379 01                    1671 	.uleb128	1
      00037A 13                    1672 	.uleb128	19
      00037B 03                    1673 	.uleb128	3
      00037C 08                    1674 	.uleb128	8
      00037D 0B                    1675 	.uleb128	11
      00037E 0B                    1676 	.uleb128	11
      00037F 00                    1677 	.uleb128	0
      000380 00                    1678 	.uleb128	0
      000381 08                    1679 	.uleb128	8
      000382 24                    1680 	.uleb128	36
      000383 00                    1681 	.db	0
      000384 03                    1682 	.uleb128	3
      000385 08                    1683 	.uleb128	8
      000386 0B                    1684 	.uleb128	11
      000387 0B                    1685 	.uleb128	11
      000388 3E                    1686 	.uleb128	62
      000389 0B                    1687 	.uleb128	11
      00038A 00                    1688 	.uleb128	0
      00038B 00                    1689 	.uleb128	0
      00038C 00                    1690 	.uleb128	0
                                   1691 
                                   1692 	.area .debug_info (NOLOAD)
      001555 00 00 03 D4           1693 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001559                       1694 Ldebug_info_start:
      001559 00 02                 1695 	.dw	2
      00155B 00 00 02 E7           1696 	.dw	0,(Ldebug_abbrev)
      00155F 04                    1697 	.db	4
      001560 01                    1698 	.uleb128	1
      001561 2E 2E 2F 53 50 4C 2F  1699 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      001578 00                    1700 	.db	0
      001579 00 00 0D A1           1701 	.dw	0,(Ldebug_line_start+-4)
      00157D 01                    1702 	.db	1
      00157E 53 44 43 43 20 76 65  1703 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001597 00                    1704 	.db	0
      001598 02                    1705 	.uleb128	2
      001599 00 00 00 CA           1706 	.dw	0,202
      00159D 47 50 49 4F 5F 44 65  1707 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0015A8 00                    1708 	.db	0
      0015A9 00 00 88 FF           1709 	.dw	0,(_GPIO_DeInit)
      0015AD 00 00 89 12           1710 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      0015B1 01                    1711 	.db	1
      0015B2 00 00 1B 48           1712 	.dw	0,(Ldebug_loc_start+804)
      0015B6 03                    1713 	.uleb128	3
      0015B7 00 00 00 B5           1714 	.dw	0,181
      0015BB 47 50 49 4F 5F 73 74  1715 	.ascii "GPIO_struct"
             72 75 63 74
      0015C6 00                    1716 	.db	0
      0015C7 05                    1717 	.db	5
      0015C8 04                    1718 	.uleb128	4
      0015C9 00 00 00 CA           1719 	.dw	0,202
      0015CD 05                    1720 	.uleb128	5
      0015CE 4F 44 52              1721 	.ascii "ODR"
      0015D1 00                    1722 	.db	0
      0015D2 02                    1723 	.db	2
      0015D3 23                    1724 	.db	35
      0015D4 00                    1725 	.uleb128	0
      0015D5 00 00 00 73           1726 	.dw	0,115
      0015D9 05                    1727 	.uleb128	5
      0015DA 49 44 52              1728 	.ascii "IDR"
      0015DD 00                    1729 	.db	0
      0015DE 02                    1730 	.db	2
      0015DF 23                    1731 	.db	35
      0015E0 01                    1732 	.uleb128	1
      0015E1 00 00 00 73           1733 	.dw	0,115
      0015E5 05                    1734 	.uleb128	5
      0015E6 44 44 52              1735 	.ascii "DDR"
      0015E9 00                    1736 	.db	0
      0015EA 02                    1737 	.db	2
      0015EB 23                    1738 	.db	35
      0015EC 02                    1739 	.uleb128	2
      0015ED 00 00 00 73           1740 	.dw	0,115
      0015F1 05                    1741 	.uleb128	5
      0015F2 43 52 31              1742 	.ascii "CR1"
      0015F5 00                    1743 	.db	0
      0015F6 02                    1744 	.db	2
      0015F7 23                    1745 	.db	35
      0015F8 03                    1746 	.uleb128	3
      0015F9 00 00 00 73           1747 	.dw	0,115
      0015FD 05                    1748 	.uleb128	5
      0015FE 43 52 32              1749 	.ascii "CR2"
      001601 00                    1750 	.db	0
      001602 02                    1751 	.db	2
      001603 23                    1752 	.db	35
      001604 04                    1753 	.uleb128	4
      001605 00 00 00 73           1754 	.dw	0,115
      001609 00                    1755 	.uleb128	0
      00160A 06                    1756 	.uleb128	6
      00160B 02                    1757 	.db	2
      00160C 00 00 00 61           1758 	.dw	0,97
      001610 07                    1759 	.uleb128	7
      001611 02                    1760 	.db	2
      001612 91                    1761 	.db	145
      001613 02                    1762 	.sleb128	2
      001614 47 50 49 4F 78        1763 	.ascii "GPIOx"
      001619 00                    1764 	.db	0
      00161A 00 00 00 B5           1765 	.dw	0,181
      00161E 00                    1766 	.uleb128	0
      00161F 08                    1767 	.uleb128	8
      001620 75 6E 73 69 67 6E 65  1768 	.ascii "unsigned char"
             64 20 63 68 61 72
      00162D 00                    1769 	.db	0
      00162E 01                    1770 	.db	1
      00162F 08                    1771 	.db	8
      001630 02                    1772 	.uleb128	2
      001631 00 00 01 76           1773 	.dw	0,374
      001635 47 50 49 4F 5F 49 6E  1774 	.ascii "GPIO_Init"
             69 74
      00163E 00                    1775 	.db	0
      00163F 00 00 89 12           1776 	.dw	0,(_GPIO_Init)
      001643 00 00 8A 28           1777 	.dw	0,(XG$GPIO_Init$0$0+1)
      001647 01                    1778 	.db	1
      001648 00 00 19 A8           1779 	.dw	0,(Ldebug_loc_start+388)
      00164C 07                    1780 	.uleb128	7
      00164D 02                    1781 	.db	2
      00164E 91                    1782 	.db	145
      00164F 02                    1783 	.sleb128	2
      001650 47 50 49 4F 78        1784 	.ascii "GPIOx"
      001655 00                    1785 	.db	0
      001656 00 00 00 B5           1786 	.dw	0,181
      00165A 07                    1787 	.uleb128	7
      00165B 02                    1788 	.db	2
      00165C 91                    1789 	.db	145
      00165D 04                    1790 	.sleb128	4
      00165E 47 50 49 4F 5F 50 69  1791 	.ascii "GPIO_Pin"
             6E
      001666 00                    1792 	.db	0
      001667 00 00 01 76           1793 	.dw	0,374
      00166B 07                    1794 	.uleb128	7
      00166C 02                    1795 	.db	2
      00166D 91                    1796 	.db	145
      00166E 05                    1797 	.sleb128	5
      00166F 47 50 49 4F 5F 4D 6F  1798 	.ascii "GPIO_Mode"
             64 65
      001678 00                    1799 	.db	0
      001679 00 00 01 76           1800 	.dw	0,374
      00167D 09                    1801 	.uleb128	9
      00167E 00 00 01 48           1802 	.dw	0,328
      001682 00 00 89 C8           1803 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      001686 00 00 89 E6           1804 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      00168A 0A                    1805 	.uleb128	10
      00168B 00 00 89 D3           1806 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      00168F 00 00 89 D7           1807 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      001693 0A                    1808 	.uleb128	10
      001694 00 00 89 DA           1809 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      001698 00 00 89 DE           1810 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      00169C 00                    1811 	.uleb128	0
      00169D 0A                    1812 	.uleb128	10
      00169E 00 00 89 E9           1813 	.dw	0,(Sstm8s_gpio$GPIO_Init$55)
      0016A2 00 00 89 F1           1814 	.dw	0,(Sstm8s_gpio$GPIO_Init$57)
      0016A6 0A                    1815 	.uleb128	10
      0016A7 00 00 8A 01           1816 	.dw	0,(Sstm8s_gpio$GPIO_Init$62)
      0016AB 00 00 8A 04           1817 	.dw	0,(Sstm8s_gpio$GPIO_Init$64)
      0016AF 0A                    1818 	.uleb128	10
      0016B0 00 00 8A 07           1819 	.dw	0,(Sstm8s_gpio$GPIO_Init$65)
      0016B4 00 00 8A 0A           1820 	.dw	0,(Sstm8s_gpio$GPIO_Init$67)
      0016B8 0A                    1821 	.uleb128	10
      0016B9 00 00 8A 18           1822 	.dw	0,(Sstm8s_gpio$GPIO_Init$72)
      0016BD 00 00 8A 1D           1823 	.dw	0,(Sstm8s_gpio$GPIO_Init$74)
      0016C1 0A                    1824 	.uleb128	10
      0016C2 00 00 8A 20           1825 	.dw	0,(Sstm8s_gpio$GPIO_Init$75)
      0016C6 00 00 8A 25           1826 	.dw	0,(Sstm8s_gpio$GPIO_Init$77)
      0016CA 00                    1827 	.uleb128	0
      0016CB 08                    1828 	.uleb128	8
      0016CC 75 6E 73 69 67 6E 65  1829 	.ascii "unsigned char"
             64 20 63 68 61 72
      0016D9 00                    1830 	.db	0
      0016DA 01                    1831 	.db	1
      0016DB 08                    1832 	.db	8
      0016DC 02                    1833 	.uleb128	2
      0016DD 00 00 01 C3           1834 	.dw	0,451
      0016E1 47 50 49 4F 5F 57 72  1835 	.ascii "GPIO_Write"
             69 74 65
      0016EB 00                    1836 	.db	0
      0016EC 00 00 8A 28           1837 	.dw	0,(_GPIO_Write)
      0016F0 00 00 8A 2E           1838 	.dw	0,(XG$GPIO_Write$0$0+1)
      0016F4 01                    1839 	.db	1
      0016F5 00 00 19 94           1840 	.dw	0,(Ldebug_loc_start+368)
      0016F9 07                    1841 	.uleb128	7
      0016FA 02                    1842 	.db	2
      0016FB 91                    1843 	.db	145
      0016FC 02                    1844 	.sleb128	2
      0016FD 47 50 49 4F 78        1845 	.ascii "GPIOx"
      001702 00                    1846 	.db	0
      001703 00 00 00 B5           1847 	.dw	0,181
      001707 07                    1848 	.uleb128	7
      001708 02                    1849 	.db	2
      001709 91                    1850 	.db	145
      00170A 04                    1851 	.sleb128	4
      00170B 50 6F 72 74 56 61 6C  1852 	.ascii "PortVal"
      001712 00                    1853 	.db	0
      001713 00 00 01 76           1854 	.dw	0,374
      001717 00                    1855 	.uleb128	0
      001718 02                    1856 	.uleb128	2
      001719 00 00 02 04           1857 	.dw	0,516
      00171D 47 50 49 4F 5F 57 72  1858 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      00172B 00                    1859 	.db	0
      00172C 00 00 8A 2E           1860 	.dw	0,(_GPIO_WriteHigh)
      001730 00 00 8A 35           1861 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      001734 01                    1862 	.db	1
      001735 00 00 19 80           1863 	.dw	0,(Ldebug_loc_start+348)
      001739 07                    1864 	.uleb128	7
      00173A 02                    1865 	.db	2
      00173B 91                    1866 	.db	145
      00173C 02                    1867 	.sleb128	2
      00173D 47 50 49 4F 78        1868 	.ascii "GPIOx"
      001742 00                    1869 	.db	0
      001743 00 00 00 B5           1870 	.dw	0,181
      001747 07                    1871 	.uleb128	7
      001748 02                    1872 	.db	2
      001749 91                    1873 	.db	145
      00174A 04                    1874 	.sleb128	4
      00174B 50 6F 72 74 50 69 6E  1875 	.ascii "PortPins"
             73
      001753 00                    1876 	.db	0
      001754 00 00 01 76           1877 	.dw	0,374
      001758 00                    1878 	.uleb128	0
      001759 02                    1879 	.uleb128	2
      00175A 00 00 02 44           1880 	.dw	0,580
      00175E 47 50 49 4F 5F 57 72  1881 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00176B 00                    1882 	.db	0
      00176C 00 00 8A 35           1883 	.dw	0,(_GPIO_WriteLow)
      001770 00 00 8A 43           1884 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      001774 01                    1885 	.db	1
      001775 00 00 19 54           1886 	.dw	0,(Ldebug_loc_start+304)
      001779 07                    1887 	.uleb128	7
      00177A 02                    1888 	.db	2
      00177B 91                    1889 	.db	145
      00177C 02                    1890 	.sleb128	2
      00177D 47 50 49 4F 78        1891 	.ascii "GPIOx"
      001782 00                    1892 	.db	0
      001783 00 00 00 B5           1893 	.dw	0,181
      001787 07                    1894 	.uleb128	7
      001788 02                    1895 	.db	2
      001789 91                    1896 	.db	145
      00178A 04                    1897 	.sleb128	4
      00178B 50 6F 72 74 50 69 6E  1898 	.ascii "PortPins"
             73
      001793 00                    1899 	.db	0
      001794 00 00 01 76           1900 	.dw	0,374
      001798 00                    1901 	.uleb128	0
      001799 02                    1902 	.uleb128	2
      00179A 00 00 02 88           1903 	.dw	0,648
      00179E 47 50 49 4F 5F 57 72  1904 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      0017AF 00                    1905 	.db	0
      0017B0 00 00 8A 43           1906 	.dw	0,(_GPIO_WriteReverse)
      0017B4 00 00 8A 4A           1907 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      0017B8 01                    1908 	.db	1
      0017B9 00 00 19 40           1909 	.dw	0,(Ldebug_loc_start+284)
      0017BD 07                    1910 	.uleb128	7
      0017BE 02                    1911 	.db	2
      0017BF 91                    1912 	.db	145
      0017C0 02                    1913 	.sleb128	2
      0017C1 47 50 49 4F 78        1914 	.ascii "GPIOx"
      0017C6 00                    1915 	.db	0
      0017C7 00 00 00 B5           1916 	.dw	0,181
      0017CB 07                    1917 	.uleb128	7
      0017CC 02                    1918 	.db	2
      0017CD 91                    1919 	.db	145
      0017CE 04                    1920 	.sleb128	4
      0017CF 50 6F 72 74 50 69 6E  1921 	.ascii "PortPins"
             73
      0017D7 00                    1922 	.db	0
      0017D8 00 00 01 76           1923 	.dw	0,374
      0017DC 00                    1924 	.uleb128	0
      0017DD 0B                    1925 	.uleb128	11
      0017DE 00 00 02 C1           1926 	.dw	0,705
      0017E2 47 50 49 4F 5F 52 65  1927 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      0017F5 00                    1928 	.db	0
      0017F6 00 00 8A 4A           1929 	.dw	0,(_GPIO_ReadOutputData)
      0017FA 00 00 8A 4E           1930 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      0017FE 01                    1931 	.db	1
      0017FF 00 00 19 2C           1932 	.dw	0,(Ldebug_loc_start+264)
      001803 00 00 01 76           1933 	.dw	0,374
      001807 07                    1934 	.uleb128	7
      001808 02                    1935 	.db	2
      001809 91                    1936 	.db	145
      00180A 02                    1937 	.sleb128	2
      00180B 47 50 49 4F 78        1938 	.ascii "GPIOx"
      001810 00                    1939 	.db	0
      001811 00 00 00 B5           1940 	.dw	0,181
      001815 00                    1941 	.uleb128	0
      001816 0B                    1942 	.uleb128	11
      001817 00 00 02 F9           1943 	.dw	0,761
      00181B 47 50 49 4F 5F 52 65  1944 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      00182D 00                    1945 	.db	0
      00182E 00 00 8A 4E           1946 	.dw	0,(_GPIO_ReadInputData)
      001832 00 00 8A 53           1947 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      001836 01                    1948 	.db	1
      001837 00 00 19 18           1949 	.dw	0,(Ldebug_loc_start+244)
      00183B 00 00 01 76           1950 	.dw	0,374
      00183F 07                    1951 	.uleb128	7
      001840 02                    1952 	.db	2
      001841 91                    1953 	.db	145
      001842 02                    1954 	.sleb128	2
      001843 47 50 49 4F 78        1955 	.ascii "GPIOx"
      001848 00                    1956 	.db	0
      001849 00 00 00 B5           1957 	.dw	0,181
      00184D 00                    1958 	.uleb128	0
      00184E 0B                    1959 	.uleb128	11
      00184F 00 00 03 41           1960 	.dw	0,833
      001853 47 50 49 4F 5F 52 65  1961 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      001864 00                    1962 	.db	0
      001865 00 00 8A 53           1963 	.dw	0,(_GPIO_ReadInputPin)
      001869 00 00 8A 5A           1964 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      00186D 01                    1965 	.db	1
      00186E 00 00 19 04           1966 	.dw	0,(Ldebug_loc_start+224)
      001872 00 00 01 76           1967 	.dw	0,374
      001876 07                    1968 	.uleb128	7
      001877 02                    1969 	.db	2
      001878 91                    1970 	.db	145
      001879 02                    1971 	.sleb128	2
      00187A 47 50 49 4F 78        1972 	.ascii "GPIOx"
      00187F 00                    1973 	.db	0
      001880 00 00 00 B5           1974 	.dw	0,181
      001884 07                    1975 	.uleb128	7
      001885 02                    1976 	.db	2
      001886 91                    1977 	.db	145
      001887 04                    1978 	.sleb128	4
      001888 47 50 49 4F 5F 50 69  1979 	.ascii "GPIO_Pin"
             6E
      001890 00                    1980 	.db	0
      001891 00 00 01 76           1981 	.dw	0,374
      001895 00                    1982 	.uleb128	0
      001896 02                    1983 	.uleb128	2
      001897 00 00 03 B0           1984 	.dw	0,944
      00189B 47 50 49 4F 5F 45 78  1985 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      0018B4 00                    1986 	.db	0
      0018B5 00 00 8A 5A           1987 	.dw	0,(_GPIO_ExternalPullUpConfig)
      0018B9 00 00 8A AE           1988 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      0018BD 01                    1989 	.db	1
      0018BE 00 00 18 24           1990 	.dw	0,(Ldebug_loc_start)
      0018C2 07                    1991 	.uleb128	7
      0018C3 02                    1992 	.db	2
      0018C4 91                    1993 	.db	145
      0018C5 02                    1994 	.sleb128	2
      0018C6 47 50 49 4F 78        1995 	.ascii "GPIOx"
      0018CB 00                    1996 	.db	0
      0018CC 00 00 00 B5           1997 	.dw	0,181
      0018D0 07                    1998 	.uleb128	7
      0018D1 02                    1999 	.db	2
      0018D2 91                    2000 	.db	145
      0018D3 04                    2001 	.sleb128	4
      0018D4 47 50 49 4F 5F 50 69  2002 	.ascii "GPIO_Pin"
             6E
      0018DC 00                    2003 	.db	0
      0018DD 00 00 01 76           2004 	.dw	0,374
      0018E1 07                    2005 	.uleb128	7
      0018E2 02                    2006 	.db	2
      0018E3 91                    2007 	.db	145
      0018E4 05                    2008 	.sleb128	5
      0018E5 4E 65 77 53 74 61 74  2009 	.ascii "NewState"
             65
      0018ED 00                    2010 	.db	0
      0018EE 00 00 01 76           2011 	.dw	0,374
      0018F2 0A                    2012 	.uleb128	10
      0018F3 00 00 8A 9C           2013 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$146)
      0018F7 00 00 8A 9F           2014 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$148)
      0018FB 0A                    2015 	.uleb128	10
      0018FC 00 00 8A A2           2016 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$149)
      001900 00 00 8A AC           2017 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$153)
      001904 00                    2018 	.uleb128	0
      001905 0C                    2019 	.uleb128	12
      001906 00 00 01 76           2020 	.dw	0,374
      00190A 0D                    2021 	.uleb128	13
      00190B 00 00 03 C2           2022 	.dw	0,962
      00190F 18                    2023 	.db	24
      001910 00 00 03 B0           2024 	.dw	0,944
      001914 0E                    2025 	.uleb128	14
      001915 17                    2026 	.db	23
      001916 00                    2027 	.uleb128	0
      001917 0F                    2028 	.uleb128	15
      001918 05                    2029 	.db	5
      001919 03                    2030 	.db	3
      00191A 00 00 80 98           2031 	.dw	0,(___str_0)
      00191E 5F 5F 73 74 72 5F 30  2032 	.ascii "__str_0"
      001925 00                    2033 	.db	0
      001926 00 00 03 B5           2034 	.dw	0,949
      00192A 00                    2035 	.uleb128	0
      00192B 00                    2036 	.uleb128	0
      00192C 00                    2037 	.uleb128	0
      00192D                       2038 Ldebug_info_end:
                                   2039 
                                   2040 	.area .debug_pubnames (NOLOAD)
      0004C2 00 00 00 D9           2041 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0004C6                       2042 Ldebug_pubnames_start:
      0004C6 00 02                 2043 	.dw	2
      0004C8 00 00 15 55           2044 	.dw	0,(Ldebug_info_start-4)
      0004CC 00 00 03 D8           2045 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004D0 00 00 00 43           2046 	.dw	0,67
      0004D4 47 50 49 4F 5F 44 65  2047 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0004DF 00                    2048 	.db	0
      0004E0 00 00 00 DB           2049 	.dw	0,219
      0004E4 47 50 49 4F 5F 49 6E  2050 	.ascii "GPIO_Init"
             69 74
      0004ED 00                    2051 	.db	0
      0004EE 00 00 01 87           2052 	.dw	0,391
      0004F2 47 50 49 4F 5F 57 72  2053 	.ascii "GPIO_Write"
             69 74 65
      0004FC 00                    2054 	.db	0
      0004FD 00 00 01 C3           2055 	.dw	0,451
      000501 47 50 49 4F 5F 57 72  2056 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      00050F 00                    2057 	.db	0
      000510 00 00 02 04           2058 	.dw	0,516
      000514 47 50 49 4F 5F 57 72  2059 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000521 00                    2060 	.db	0
      000522 00 00 02 44           2061 	.dw	0,580
      000526 47 50 49 4F 5F 57 72  2062 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000537 00                    2063 	.db	0
      000538 00 00 02 88           2064 	.dw	0,648
      00053C 47 50 49 4F 5F 52 65  2065 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      00054F 00                    2066 	.db	0
      000550 00 00 02 C1           2067 	.dw	0,705
      000554 47 50 49 4F 5F 52 65  2068 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      000566 00                    2069 	.db	0
      000567 00 00 02 F9           2070 	.dw	0,761
      00056B 47 50 49 4F 5F 52 65  2071 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00057C 00                    2072 	.db	0
      00057D 00 00 03 41           2073 	.dw	0,833
      000581 47 50 49 4F 5F 45 78  2074 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      00059A 00                    2075 	.db	0
      00059B 00 00 00 00           2076 	.dw	0,0
      00059F                       2077 Ldebug_pubnames_end:
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      0014F5 00 00                 2080 	.dw	0
      0014F7 00 0E                 2081 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0014F9                       2082 Ldebug_CIE0_start:
      0014F9 FF FF                 2083 	.dw	0xffff
      0014FB FF FF                 2084 	.dw	0xffff
      0014FD 01                    2085 	.db	1
      0014FE 00                    2086 	.db	0
      0014FF 01                    2087 	.uleb128	1
      001500 7F                    2088 	.sleb128	-1
      001501 09                    2089 	.db	9
      001502 0C                    2090 	.db	12
      001503 08                    2091 	.uleb128	8
      001504 02                    2092 	.uleb128	2
      001505 89                    2093 	.db	137
      001506 01                    2094 	.uleb128	1
      001507                       2095 Ldebug_CIE0_end:
      001507 00 00 00 8A           2096 	.dw	0,138
      00150B 00 00 14 F5           2097 	.dw	0,(Ldebug_CIE0_start-4)
      00150F 00 00 8A 5A           2098 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)	;initial loc
      001513 00 00 00 54           2099 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$157-Sstm8s_gpio$GPIO_ExternalPullUpConfig$127
      001517 01                    2100 	.db	1
      001518 00 00 8A 5A           2101 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      00151C 0E                    2102 	.db	14
      00151D 02                    2103 	.uleb128	2
      00151E 01                    2104 	.db	1
      00151F 00 00 8A 5B           2105 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      001523 0E                    2106 	.db	14
      001524 03                    2107 	.uleb128	3
      001525 01                    2108 	.db	1
      001526 00 00 8A 64           2109 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      00152A 0E                    2110 	.db	14
      00152B 04                    2111 	.uleb128	4
      00152C 01                    2112 	.db	1
      00152D 00 00 8A 66           2113 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      001531 0E                    2114 	.db	14
      001532 06                    2115 	.uleb128	6
      001533 01                    2116 	.db	1
      001534 00 00 8A 68           2117 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      001538 0E                    2118 	.db	14
      001539 07                    2119 	.uleb128	7
      00153A 01                    2120 	.db	1
      00153B 00 00 8A 6A           2121 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      00153F 0E                    2122 	.db	14
      001540 08                    2123 	.uleb128	8
      001541 01                    2124 	.db	1
      001542 00 00 8A 6C           2125 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      001546 0E                    2126 	.db	14
      001547 09                    2127 	.uleb128	9
      001548 01                    2128 	.db	1
      001549 00 00 8A 71           2129 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      00154D 0E                    2130 	.db	14
      00154E 03                    2131 	.uleb128	3
      00154F 01                    2132 	.db	1
      001550 00 00 8A 80           2133 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      001554 0E                    2134 	.db	14
      001555 03                    2135 	.uleb128	3
      001556 01                    2136 	.db	1
      001557 00 00 8A 82           2137 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      00155B 0E                    2138 	.db	14
      00155C 04                    2139 	.uleb128	4
      00155D 01                    2140 	.db	1
      00155E 00 00 8A 84           2141 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      001562 0E                    2142 	.db	14
      001563 06                    2143 	.uleb128	6
      001564 01                    2144 	.db	1
      001565 00 00 8A 86           2145 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      001569 0E                    2146 	.db	14
      00156A 07                    2147 	.uleb128	7
      00156B 01                    2148 	.db	1
      00156C 00 00 8A 88           2149 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      001570 0E                    2150 	.db	14
      001571 08                    2151 	.uleb128	8
      001572 01                    2152 	.db	1
      001573 00 00 8A 8A           2153 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      001577 0E                    2154 	.db	14
      001578 09                    2155 	.uleb128	9
      001579 01                    2156 	.db	1
      00157A 00 00 8A 8F           2157 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      00157E 0E                    2158 	.db	14
      00157F 03                    2159 	.uleb128	3
      001580 01                    2160 	.db	1
      001581 00 00 8A A3           2161 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      001585 0E                    2162 	.db	14
      001586 04                    2163 	.uleb128	4
      001587 01                    2164 	.db	1
      001588 00 00 8A A9           2165 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      00158C 0E                    2166 	.db	14
      00158D 03                    2167 	.uleb128	3
      00158E 01                    2168 	.db	1
      00158F 00 00 8A AD           2169 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      001593 0E                    2170 	.db	14
      001594 02                    2171 	.uleb128	2
                                   2172 
                                   2173 	.area .debug_frame (NOLOAD)
      001595 00 00                 2174 	.dw	0
      001597 00 0E                 2175 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001599                       2176 Ldebug_CIE1_start:
      001599 FF FF                 2177 	.dw	0xffff
      00159B FF FF                 2178 	.dw	0xffff
      00159D 01                    2179 	.db	1
      00159E 00                    2180 	.db	0
      00159F 01                    2181 	.uleb128	1
      0015A0 7F                    2182 	.sleb128	-1
      0015A1 09                    2183 	.db	9
      0015A2 0C                    2184 	.db	12
      0015A3 08                    2185 	.uleb128	8
      0015A4 02                    2186 	.uleb128	2
      0015A5 89                    2187 	.db	137
      0015A6 01                    2188 	.uleb128	1
      0015A7                       2189 Ldebug_CIE1_end:
      0015A7 00 00 00 13           2190 	.dw	0,19
      0015AB 00 00 15 95           2191 	.dw	0,(Ldebug_CIE1_start-4)
      0015AF 00 00 8A 53           2192 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)	;initial loc
      0015B3 00 00 00 07           2193 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$125-Sstm8s_gpio$GPIO_ReadInputPin$121
      0015B7 01                    2194 	.db	1
      0015B8 00 00 8A 53           2195 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      0015BC 0E                    2196 	.db	14
      0015BD 02                    2197 	.uleb128	2
                                   2198 
                                   2199 	.area .debug_frame (NOLOAD)
      0015BE 00 00                 2200 	.dw	0
      0015C0 00 0E                 2201 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0015C2                       2202 Ldebug_CIE2_start:
      0015C2 FF FF                 2203 	.dw	0xffff
      0015C4 FF FF                 2204 	.dw	0xffff
      0015C6 01                    2205 	.db	1
      0015C7 00                    2206 	.db	0
      0015C8 01                    2207 	.uleb128	1
      0015C9 7F                    2208 	.sleb128	-1
      0015CA 09                    2209 	.db	9
      0015CB 0C                    2210 	.db	12
      0015CC 08                    2211 	.uleb128	8
      0015CD 02                    2212 	.uleb128	2
      0015CE 89                    2213 	.db	137
      0015CF 01                    2214 	.uleb128	1
      0015D0                       2215 Ldebug_CIE2_end:
      0015D0 00 00 00 13           2216 	.dw	0,19
      0015D4 00 00 15 BE           2217 	.dw	0,(Ldebug_CIE2_start-4)
      0015D8 00 00 8A 4E           2218 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)	;initial loc
      0015DC 00 00 00 05           2219 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$119-Sstm8s_gpio$GPIO_ReadInputData$115
      0015E0 01                    2220 	.db	1
      0015E1 00 00 8A 4E           2221 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      0015E5 0E                    2222 	.db	14
      0015E6 02                    2223 	.uleb128	2
                                   2224 
                                   2225 	.area .debug_frame (NOLOAD)
      0015E7 00 00                 2226 	.dw	0
      0015E9 00 0E                 2227 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0015EB                       2228 Ldebug_CIE3_start:
      0015EB FF FF                 2229 	.dw	0xffff
      0015ED FF FF                 2230 	.dw	0xffff
      0015EF 01                    2231 	.db	1
      0015F0 00                    2232 	.db	0
      0015F1 01                    2233 	.uleb128	1
      0015F2 7F                    2234 	.sleb128	-1
      0015F3 09                    2235 	.db	9
      0015F4 0C                    2236 	.db	12
      0015F5 08                    2237 	.uleb128	8
      0015F6 02                    2238 	.uleb128	2
      0015F7 89                    2239 	.db	137
      0015F8 01                    2240 	.uleb128	1
      0015F9                       2241 Ldebug_CIE3_end:
      0015F9 00 00 00 13           2242 	.dw	0,19
      0015FD 00 00 15 E7           2243 	.dw	0,(Ldebug_CIE3_start-4)
      001601 00 00 8A 4A           2244 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)	;initial loc
      001605 00 00 00 04           2245 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$113-Sstm8s_gpio$GPIO_ReadOutputData$109
      001609 01                    2246 	.db	1
      00160A 00 00 8A 4A           2247 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      00160E 0E                    2248 	.db	14
      00160F 02                    2249 	.uleb128	2
                                   2250 
                                   2251 	.area .debug_frame (NOLOAD)
      001610 00 00                 2252 	.dw	0
      001612 00 0E                 2253 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      001614                       2254 Ldebug_CIE4_start:
      001614 FF FF                 2255 	.dw	0xffff
      001616 FF FF                 2256 	.dw	0xffff
      001618 01                    2257 	.db	1
      001619 00                    2258 	.db	0
      00161A 01                    2259 	.uleb128	1
      00161B 7F                    2260 	.sleb128	-1
      00161C 09                    2261 	.db	9
      00161D 0C                    2262 	.db	12
      00161E 08                    2263 	.uleb128	8
      00161F 02                    2264 	.uleb128	2
      001620 89                    2265 	.db	137
      001621 01                    2266 	.uleb128	1
      001622                       2267 Ldebug_CIE4_end:
      001622 00 00 00 13           2268 	.dw	0,19
      001626 00 00 16 10           2269 	.dw	0,(Ldebug_CIE4_start-4)
      00162A 00 00 8A 43           2270 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)	;initial loc
      00162E 00 00 00 07           2271 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$107-Sstm8s_gpio$GPIO_WriteReverse$103
      001632 01                    2272 	.db	1
      001633 00 00 8A 43           2273 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      001637 0E                    2274 	.db	14
      001638 02                    2275 	.uleb128	2
                                   2276 
                                   2277 	.area .debug_frame (NOLOAD)
      001639 00 00                 2278 	.dw	0
      00163B 00 0E                 2279 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00163D                       2280 Ldebug_CIE5_start:
      00163D FF FF                 2281 	.dw	0xffff
      00163F FF FF                 2282 	.dw	0xffff
      001641 01                    2283 	.db	1
      001642 00                    2284 	.db	0
      001643 01                    2285 	.uleb128	1
      001644 7F                    2286 	.sleb128	-1
      001645 09                    2287 	.db	9
      001646 0C                    2288 	.db	12
      001647 08                    2289 	.uleb128	8
      001648 02                    2290 	.uleb128	2
      001649 89                    2291 	.db	137
      00164A 01                    2292 	.uleb128	1
      00164B                       2293 Ldebug_CIE5_end:
      00164B 00 00 00 21           2294 	.dw	0,33
      00164F 00 00 16 39           2295 	.dw	0,(Ldebug_CIE5_start-4)
      001653 00 00 8A 35           2296 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)	;initial loc
      001657 00 00 00 0E           2297 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$101-Sstm8s_gpio$GPIO_WriteLow$95
      00165B 01                    2298 	.db	1
      00165C 00 00 8A 35           2299 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      001660 0E                    2300 	.db	14
      001661 02                    2301 	.uleb128	2
      001662 01                    2302 	.db	1
      001663 00 00 8A 36           2303 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      001667 0E                    2304 	.db	14
      001668 03                    2305 	.uleb128	3
      001669 01                    2306 	.db	1
      00166A 00 00 8A 42           2307 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      00166E 0E                    2308 	.db	14
      00166F 02                    2309 	.uleb128	2
                                   2310 
                                   2311 	.area .debug_frame (NOLOAD)
      001670 00 00                 2312 	.dw	0
      001672 00 0E                 2313 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      001674                       2314 Ldebug_CIE6_start:
      001674 FF FF                 2315 	.dw	0xffff
      001676 FF FF                 2316 	.dw	0xffff
      001678 01                    2317 	.db	1
      001679 00                    2318 	.db	0
      00167A 01                    2319 	.uleb128	1
      00167B 7F                    2320 	.sleb128	-1
      00167C 09                    2321 	.db	9
      00167D 0C                    2322 	.db	12
      00167E 08                    2323 	.uleb128	8
      00167F 02                    2324 	.uleb128	2
      001680 89                    2325 	.db	137
      001681 01                    2326 	.uleb128	1
      001682                       2327 Ldebug_CIE6_end:
      001682 00 00 00 13           2328 	.dw	0,19
      001686 00 00 16 70           2329 	.dw	0,(Ldebug_CIE6_start-4)
      00168A 00 00 8A 2E           2330 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)	;initial loc
      00168E 00 00 00 07           2331 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$93-Sstm8s_gpio$GPIO_WriteHigh$89
      001692 01                    2332 	.db	1
      001693 00 00 8A 2E           2333 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      001697 0E                    2334 	.db	14
      001698 02                    2335 	.uleb128	2
                                   2336 
                                   2337 	.area .debug_frame (NOLOAD)
      001699 00 00                 2338 	.dw	0
      00169B 00 0E                 2339 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00169D                       2340 Ldebug_CIE7_start:
      00169D FF FF                 2341 	.dw	0xffff
      00169F FF FF                 2342 	.dw	0xffff
      0016A1 01                    2343 	.db	1
      0016A2 00                    2344 	.db	0
      0016A3 01                    2345 	.uleb128	1
      0016A4 7F                    2346 	.sleb128	-1
      0016A5 09                    2347 	.db	9
      0016A6 0C                    2348 	.db	12
      0016A7 08                    2349 	.uleb128	8
      0016A8 02                    2350 	.uleb128	2
      0016A9 89                    2351 	.db	137
      0016AA 01                    2352 	.uleb128	1
      0016AB                       2353 Ldebug_CIE7_end:
      0016AB 00 00 00 13           2354 	.dw	0,19
      0016AF 00 00 16 99           2355 	.dw	0,(Ldebug_CIE7_start-4)
      0016B3 00 00 8A 28           2356 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)	;initial loc
      0016B7 00 00 00 06           2357 	.dw	0,Sstm8s_gpio$GPIO_Write$87-Sstm8s_gpio$GPIO_Write$83
      0016BB 01                    2358 	.db	1
      0016BC 00 00 8A 28           2359 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      0016C0 0E                    2360 	.db	14
      0016C1 02                    2361 	.uleb128	2
                                   2362 
                                   2363 	.area .debug_frame (NOLOAD)
      0016C2 00 00                 2364 	.dw	0
      0016C4 00 0E                 2365 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0016C6                       2366 Ldebug_CIE8_start:
      0016C6 FF FF                 2367 	.dw	0xffff
      0016C8 FF FF                 2368 	.dw	0xffff
      0016CA 01                    2369 	.db	1
      0016CB 00                    2370 	.db	0
      0016CC 01                    2371 	.uleb128	1
      0016CD 7F                    2372 	.sleb128	-1
      0016CE 09                    2373 	.db	9
      0016CF 0C                    2374 	.db	12
      0016D0 08                    2375 	.uleb128	8
      0016D1 02                    2376 	.uleb128	2
      0016D2 89                    2377 	.db	137
      0016D3 01                    2378 	.uleb128	1
      0016D4                       2379 Ldebug_CIE8_end:
      0016D4 00 00 00 FA           2380 	.dw	0,250
      0016D8 00 00 16 C2           2381 	.dw	0,(Ldebug_CIE8_start-4)
      0016DC 00 00 89 12           2382 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      0016E0 00 00 01 16           2383 	.dw	0,Sstm8s_gpio$GPIO_Init$81-Sstm8s_gpio$GPIO_Init$10
      0016E4 01                    2384 	.db	1
      0016E5 00 00 89 12           2385 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      0016E9 0E                    2386 	.db	14
      0016EA 02                    2387 	.uleb128	2
      0016EB 01                    2388 	.db	1
      0016EC 00 00 89 14           2389 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      0016F0 0E                    2390 	.db	14
      0016F1 07                    2391 	.uleb128	7
      0016F2 01                    2392 	.db	1
      0016F3 00 00 89 24           2393 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      0016F7 0E                    2394 	.db	14
      0016F8 07                    2395 	.uleb128	7
      0016F9 01                    2396 	.db	1
      0016FA 00 00 89 2D           2397 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      0016FE 0E                    2398 	.db	14
      0016FF 07                    2399 	.uleb128	7
      001700 01                    2400 	.db	1
      001701 00 00 89 36           2401 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      001705 0E                    2402 	.db	14
      001706 07                    2403 	.uleb128	7
      001707 01                    2404 	.db	1
      001708 00 00 89 3F           2405 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      00170C 0E                    2406 	.db	14
      00170D 07                    2407 	.uleb128	7
      00170E 01                    2408 	.db	1
      00170F 00 00 89 48           2409 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      001713 0E                    2410 	.db	14
      001714 07                    2411 	.uleb128	7
      001715 01                    2412 	.db	1
      001716 00 00 89 51           2413 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      00171A 0E                    2414 	.db	14
      00171B 07                    2415 	.uleb128	7
      00171C 01                    2416 	.db	1
      00171D 00 00 89 5A           2417 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001721 0E                    2418 	.db	14
      001722 07                    2419 	.uleb128	7
      001723 01                    2420 	.db	1
      001724 00 00 89 63           2421 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001728 0E                    2422 	.db	14
      001729 07                    2423 	.uleb128	7
      00172A 01                    2424 	.db	1
      00172B 00 00 89 6C           2425 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      00172F 0E                    2426 	.db	14
      001730 07                    2427 	.uleb128	7
      001731 01                    2428 	.db	1
      001732 00 00 89 75           2429 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      001736 0E                    2430 	.db	14
      001737 07                    2431 	.uleb128	7
      001738 01                    2432 	.db	1
      001739 00 00 89 7E           2433 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      00173D 0E                    2434 	.db	14
      00173E 07                    2435 	.uleb128	7
      00173F 01                    2436 	.db	1
      001740 00 00 89 80           2437 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      001744 0E                    2438 	.db	14
      001745 08                    2439 	.uleb128	8
      001746 01                    2440 	.db	1
      001747 00 00 89 82           2441 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      00174B 0E                    2442 	.db	14
      00174C 0A                    2443 	.uleb128	10
      00174D 01                    2444 	.db	1
      00174E 00 00 89 84           2445 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      001752 0E                    2446 	.db	14
      001753 0B                    2447 	.uleb128	11
      001754 01                    2448 	.db	1
      001755 00 00 89 86           2449 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      001759 0E                    2450 	.db	14
      00175A 0C                    2451 	.uleb128	12
      00175B 01                    2452 	.db	1
      00175C 00 00 89 88           2453 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      001760 0E                    2454 	.db	14
      001761 0D                    2455 	.uleb128	13
      001762 01                    2456 	.db	1
      001763 00 00 89 8D           2457 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      001767 0E                    2458 	.db	14
      001768 07                    2459 	.uleb128	7
      001769 01                    2460 	.db	1
      00176A 00 00 89 96           2461 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      00176E 0E                    2462 	.db	14
      00176F 08                    2463 	.uleb128	8
      001770 01                    2464 	.db	1
      001771 00 00 89 98           2465 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      001775 0E                    2466 	.db	14
      001776 0A                    2467 	.uleb128	10
      001777 01                    2468 	.db	1
      001778 00 00 89 9A           2469 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      00177C 0E                    2470 	.db	14
      00177D 0B                    2471 	.uleb128	11
      00177E 01                    2472 	.db	1
      00177F 00 00 89 9C           2473 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      001783 0E                    2474 	.db	14
      001784 0C                    2475 	.uleb128	12
      001785 01                    2476 	.db	1
      001786 00 00 89 9E           2477 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      00178A 0E                    2478 	.db	14
      00178B 0D                    2479 	.uleb128	13
      00178C 01                    2480 	.db	1
      00178D 00 00 89 A3           2481 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001791 0E                    2482 	.db	14
      001792 07                    2483 	.uleb128	7
      001793 01                    2484 	.db	1
      001794 00 00 89 AF           2485 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001798 0E                    2486 	.db	14
      001799 08                    2487 	.uleb128	8
      00179A 01                    2488 	.db	1
      00179B 00 00 89 B5           2489 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      00179F 0E                    2490 	.db	14
      0017A0 07                    2491 	.uleb128	7
      0017A1 01                    2492 	.db	1
      0017A2 00 00 89 C9           2493 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0017A6 0E                    2494 	.db	14
      0017A7 08                    2495 	.uleb128	8
      0017A8 01                    2496 	.db	1
      0017A9 00 00 89 CE           2497 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0017AD 0E                    2498 	.db	14
      0017AE 07                    2499 	.uleb128	7
      0017AF 01                    2500 	.db	1
      0017B0 00 00 89 F7           2501 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      0017B4 0E                    2502 	.db	14
      0017B5 08                    2503 	.uleb128	8
      0017B6 01                    2504 	.db	1
      0017B7 00 00 89 FC           2505 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      0017BB 0E                    2506 	.db	14
      0017BC 07                    2507 	.uleb128	7
      0017BD 01                    2508 	.db	1
      0017BE 00 00 8A 0E           2509 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      0017C2 0E                    2510 	.db	14
      0017C3 08                    2511 	.uleb128	8
      0017C4 01                    2512 	.db	1
      0017C5 00 00 8A 13           2513 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      0017C9 0E                    2514 	.db	14
      0017CA 07                    2515 	.uleb128	7
      0017CB 01                    2516 	.db	1
      0017CC 00 00 8A 27           2517 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      0017D0 0E                    2518 	.db	14
      0017D1 02                    2519 	.uleb128	2
                                   2520 
                                   2521 	.area .debug_frame (NOLOAD)
      0017D2 00 00                 2522 	.dw	0
      0017D4 00 0E                 2523 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0017D6                       2524 Ldebug_CIE9_start:
      0017D6 FF FF                 2525 	.dw	0xffff
      0017D8 FF FF                 2526 	.dw	0xffff
      0017DA 01                    2527 	.db	1
      0017DB 00                    2528 	.db	0
      0017DC 01                    2529 	.uleb128	1
      0017DD 7F                    2530 	.sleb128	-1
      0017DE 09                    2531 	.db	9
      0017DF 0C                    2532 	.db	12
      0017E0 08                    2533 	.uleb128	8
      0017E1 02                    2534 	.uleb128	2
      0017E2 89                    2535 	.db	137
      0017E3 01                    2536 	.uleb128	1
      0017E4                       2537 Ldebug_CIE9_end:
      0017E4 00 00 00 13           2538 	.dw	0,19
      0017E8 00 00 17 D2           2539 	.dw	0,(Ldebug_CIE9_start-4)
      0017EC 00 00 88 FF           2540 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      0017F0 00 00 00 13           2541 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      0017F4 01                    2542 	.db	1
      0017F5 00 00 88 FF           2543 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      0017F9 0E                    2544 	.db	14
      0017FA 02                    2545 	.uleb128	2
