                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM4_DeInit
                                     13 	.globl _TIM4_TimeBaseInit
                                     14 	.globl _TIM4_Cmd
                                     15 	.globl _TIM4_ITConfig
                                     16 	.globl _TIM4_UpdateDisableConfig
                                     17 	.globl _TIM4_UpdateRequestConfig
                                     18 	.globl _TIM4_SelectOnePulseMode
                                     19 	.globl _TIM4_PrescalerConfig
                                     20 	.globl _TIM4_ARRPreloadConfig
                                     21 	.globl _TIM4_GenerateEvent
                                     22 	.globl _TIM4_SetCounter
                                     23 	.globl _TIM4_SetAutoreload
                                     24 	.globl _TIM4_GetCounter
                                     25 	.globl _TIM4_GetPrescaler
                                     26 	.globl _TIM4_GetFlagStatus
                                     27 	.globl _TIM4_ClearFlag
                                     28 	.globl _TIM4_GetITStatus
                                     29 	.globl _TIM4_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                           000000    67 	Sstm8s_tim4$TIM4_DeInit$0 ==.
                                     68 ;	../SPL/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     69 ; genLabel
                                     70 ;	-----------------------------------------
                                     71 ;	 function TIM4_DeInit
                                     72 ;	-----------------------------------------
                                     73 ;	Register assignment is optimal.
                                     74 ;	Stack space usage: 0 bytes.
      0093B6                         75 _TIM4_DeInit:
                           000000    76 	Sstm8s_tim4$TIM4_DeInit$1 ==.
                           000000    77 	Sstm8s_tim4$TIM4_DeInit$2 ==.
                                     78 ;	../SPL/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
                                     79 ; genPointerSet
      0093B6 35 00 53 40      [ 1]   80 	mov	0x5340+0, #0x00
                           000004    81 	Sstm8s_tim4$TIM4_DeInit$3 ==.
                                     82 ;	../SPL/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
                                     83 ; genPointerSet
      0093BA 35 00 53 41      [ 1]   84 	mov	0x5341+0, #0x00
                           000008    85 	Sstm8s_tim4$TIM4_DeInit$4 ==.
                                     86 ;	../SPL/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
                                     87 ; genPointerSet
      0093BE 35 00 53 44      [ 1]   88 	mov	0x5344+0, #0x00
                           00000C    89 	Sstm8s_tim4$TIM4_DeInit$5 ==.
                                     90 ;	../SPL/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
                                     91 ; genPointerSet
      0093C2 35 00 53 45      [ 1]   92 	mov	0x5345+0, #0x00
                           000010    93 	Sstm8s_tim4$TIM4_DeInit$6 ==.
                                     94 ;	../SPL/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
                                     95 ; genPointerSet
      0093C6 35 FF 53 46      [ 1]   96 	mov	0x5346+0, #0xff
                           000014    97 	Sstm8s_tim4$TIM4_DeInit$7 ==.
                                     98 ;	../SPL/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
                                     99 ; genPointerSet
      0093CA 35 00 53 42      [ 1]  100 	mov	0x5342+0, #0x00
                                    101 ; genLabel
      0093CE                        102 00101$:
                           000018   103 	Sstm8s_tim4$TIM4_DeInit$8 ==.
                                    104 ;	../SPL/src/stm8s_tim4.c: 57: }
                                    105 ; genEndFunction
                           000018   106 	Sstm8s_tim4$TIM4_DeInit$9 ==.
                           000018   107 	XG$TIM4_DeInit$0$0 ==.
      0093CE 81               [ 4]  108 	ret
                           000019   109 	Sstm8s_tim4$TIM4_DeInit$10 ==.
                           000019   110 	Sstm8s_tim4$TIM4_TimeBaseInit$11 ==.
                                    111 ;	../SPL/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                    112 ; genLabel
                                    113 ;	-----------------------------------------
                                    114 ;	 function TIM4_TimeBaseInit
                                    115 ;	-----------------------------------------
                                    116 ;	Register assignment is optimal.
                                    117 ;	Stack space usage: 0 bytes.
      0093CF                        118 _TIM4_TimeBaseInit:
                           000019   119 	Sstm8s_tim4$TIM4_TimeBaseInit$12 ==.
                           000019   120 	Sstm8s_tim4$TIM4_TimeBaseInit$13 ==.
                                    121 ;	../SPL/src/stm8s_tim4.c: 68: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
                                    122 ; genIfx
      0093CF 0D 03            [ 1]  123 	tnz	(0x03, sp)
      0093D1 26 03            [ 1]  124 	jrne	00166$
      0093D3 CC 94 23         [ 2]  125 	jp	00104$
      0093D6                        126 00166$:
                                    127 ; genCmpEQorNE
      0093D6 7B 03            [ 1]  128 	ld	a, (0x03, sp)
      0093D8 4A               [ 1]  129 	dec	a
      0093D9 26 03            [ 1]  130 	jrne	00168$
      0093DB CC 94 23         [ 2]  131 	jp	00104$
      0093DE                        132 00168$:
                           000028   133 	Sstm8s_tim4$TIM4_TimeBaseInit$14 ==.
                                    134 ; skipping generated iCode
                                    135 ; genCmpEQorNE
      0093DE 7B 03            [ 1]  136 	ld	a, (0x03, sp)
      0093E0 A1 02            [ 1]  137 	cp	a, #0x02
      0093E2 26 03            [ 1]  138 	jrne	00171$
      0093E4 CC 94 23         [ 2]  139 	jp	00104$
      0093E7                        140 00171$:
                           000031   141 	Sstm8s_tim4$TIM4_TimeBaseInit$15 ==.
                                    142 ; skipping generated iCode
                                    143 ; genCmpEQorNE
      0093E7 7B 03            [ 1]  144 	ld	a, (0x03, sp)
      0093E9 A1 03            [ 1]  145 	cp	a, #0x03
      0093EB 26 03            [ 1]  146 	jrne	00174$
      0093ED CC 94 23         [ 2]  147 	jp	00104$
      0093F0                        148 00174$:
                           00003A   149 	Sstm8s_tim4$TIM4_TimeBaseInit$16 ==.
                                    150 ; skipping generated iCode
                                    151 ; genCmpEQorNE
      0093F0 7B 03            [ 1]  152 	ld	a, (0x03, sp)
      0093F2 A1 04            [ 1]  153 	cp	a, #0x04
      0093F4 26 03            [ 1]  154 	jrne	00177$
      0093F6 CC 94 23         [ 2]  155 	jp	00104$
      0093F9                        156 00177$:
                           000043   157 	Sstm8s_tim4$TIM4_TimeBaseInit$17 ==.
                                    158 ; skipping generated iCode
                                    159 ; genCmpEQorNE
      0093F9 7B 03            [ 1]  160 	ld	a, (0x03, sp)
      0093FB A1 05            [ 1]  161 	cp	a, #0x05
      0093FD 26 03            [ 1]  162 	jrne	00180$
      0093FF CC 94 23         [ 2]  163 	jp	00104$
      009402                        164 00180$:
                           00004C   165 	Sstm8s_tim4$TIM4_TimeBaseInit$18 ==.
                                    166 ; skipping generated iCode
                                    167 ; genCmpEQorNE
      009402 7B 03            [ 1]  168 	ld	a, (0x03, sp)
      009404 A1 06            [ 1]  169 	cp	a, #0x06
      009406 26 03            [ 1]  170 	jrne	00183$
      009408 CC 94 23         [ 2]  171 	jp	00104$
      00940B                        172 00183$:
                           000055   173 	Sstm8s_tim4$TIM4_TimeBaseInit$19 ==.
                                    174 ; skipping generated iCode
                                    175 ; genCmpEQorNE
      00940B 7B 03            [ 1]  176 	ld	a, (0x03, sp)
      00940D A1 07            [ 1]  177 	cp	a, #0x07
      00940F 26 03            [ 1]  178 	jrne	00186$
      009411 CC 94 23         [ 2]  179 	jp	00104$
      009414                        180 00186$:
                           00005E   181 	Sstm8s_tim4$TIM4_TimeBaseInit$20 ==.
                                    182 ; skipping generated iCode
                                    183 ; skipping iCode since result will be rematerialized
                                    184 ; skipping iCode since result will be rematerialized
                                    185 ; genIPush
      009414 4B 44            [ 1]  186 	push	#0x44
                           000060   187 	Sstm8s_tim4$TIM4_TimeBaseInit$21 ==.
      009416 5F               [ 1]  188 	clrw	x
      009417 89               [ 2]  189 	pushw	x
                           000062   190 	Sstm8s_tim4$TIM4_TimeBaseInit$22 ==.
      009418 4B 00            [ 1]  191 	push	#0x00
                           000064   192 	Sstm8s_tim4$TIM4_TimeBaseInit$23 ==.
                                    193 ; genIPush
      00941A 4B D3            [ 1]  194 	push	#<(___str_0+0)
                           000066   195 	Sstm8s_tim4$TIM4_TimeBaseInit$24 ==.
      00941C 4B 80            [ 1]  196 	push	#((___str_0+0) >> 8)
                           000068   197 	Sstm8s_tim4$TIM4_TimeBaseInit$25 ==.
                                    198 ; genCall
      00941E CD 82 65         [ 4]  199 	call	_assert_failed
      009421 5B 06            [ 2]  200 	addw	sp, #6
                           00006D   201 	Sstm8s_tim4$TIM4_TimeBaseInit$26 ==.
                                    202 ; genLabel
      009423                        203 00104$:
                           00006D   204 	Sstm8s_tim4$TIM4_TimeBaseInit$27 ==.
                                    205 ;	../SPL/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
                                    206 ; genPointerSet
      009423 AE 53 45         [ 2]  207 	ldw	x, #0x5345
      009426 7B 03            [ 1]  208 	ld	a, (0x03, sp)
      009428 F7               [ 1]  209 	ld	(x), a
                           000073   210 	Sstm8s_tim4$TIM4_TimeBaseInit$28 ==.
                                    211 ;	../SPL/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
                                    212 ; genPointerSet
      009429 AE 53 46         [ 2]  213 	ldw	x, #0x5346
      00942C 7B 04            [ 1]  214 	ld	a, (0x04, sp)
      00942E F7               [ 1]  215 	ld	(x), a
                                    216 ; genLabel
      00942F                        217 00101$:
                           000079   218 	Sstm8s_tim4$TIM4_TimeBaseInit$29 ==.
                                    219 ;	../SPL/src/stm8s_tim4.c: 73: }
                                    220 ; genEndFunction
                           000079   221 	Sstm8s_tim4$TIM4_TimeBaseInit$30 ==.
                           000079   222 	XG$TIM4_TimeBaseInit$0$0 ==.
      00942F 81               [ 4]  223 	ret
                           00007A   224 	Sstm8s_tim4$TIM4_TimeBaseInit$31 ==.
                           00007A   225 	Sstm8s_tim4$TIM4_Cmd$32 ==.
                                    226 ;	../SPL/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function TIM4_Cmd
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      009430                        233 _TIM4_Cmd:
                           00007A   234 	Sstm8s_tim4$TIM4_Cmd$33 ==.
                           00007A   235 	Sstm8s_tim4$TIM4_Cmd$34 ==.
                                    236 ;	../SPL/src/stm8s_tim4.c: 84: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    237 ; genIfx
      009430 0D 03            [ 1]  238 	tnz	(0x03, sp)
      009432 26 03            [ 1]  239 	jrne	00126$
      009434 CC 94 4E         [ 2]  240 	jp	00107$
      009437                        241 00126$:
                                    242 ; genCmpEQorNE
      009437 7B 03            [ 1]  243 	ld	a, (0x03, sp)
      009439 4A               [ 1]  244 	dec	a
      00943A 26 03            [ 1]  245 	jrne	00128$
      00943C CC 94 4E         [ 2]  246 	jp	00107$
      00943F                        247 00128$:
                           000089   248 	Sstm8s_tim4$TIM4_Cmd$35 ==.
                                    249 ; skipping generated iCode
                                    250 ; skipping iCode since result will be rematerialized
                                    251 ; skipping iCode since result will be rematerialized
                                    252 ; genIPush
      00943F 4B 54            [ 1]  253 	push	#0x54
                           00008B   254 	Sstm8s_tim4$TIM4_Cmd$36 ==.
      009441 5F               [ 1]  255 	clrw	x
      009442 89               [ 2]  256 	pushw	x
                           00008D   257 	Sstm8s_tim4$TIM4_Cmd$37 ==.
      009443 4B 00            [ 1]  258 	push	#0x00
                           00008F   259 	Sstm8s_tim4$TIM4_Cmd$38 ==.
                                    260 ; genIPush
      009445 4B D3            [ 1]  261 	push	#<(___str_0+0)
                           000091   262 	Sstm8s_tim4$TIM4_Cmd$39 ==.
      009447 4B 80            [ 1]  263 	push	#((___str_0+0) >> 8)
                           000093   264 	Sstm8s_tim4$TIM4_Cmd$40 ==.
                                    265 ; genCall
      009449 CD 82 65         [ 4]  266 	call	_assert_failed
      00944C 5B 06            [ 2]  267 	addw	sp, #6
                           000098   268 	Sstm8s_tim4$TIM4_Cmd$41 ==.
                                    269 ; genLabel
      00944E                        270 00107$:
                           000098   271 	Sstm8s_tim4$TIM4_Cmd$42 ==.
                                    272 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    273 ; genPointerGet
      00944E C6 53 40         [ 1]  274 	ld	a, 0x5340
                           00009B   275 	Sstm8s_tim4$TIM4_Cmd$43 ==.
                                    276 ;	../SPL/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
                                    277 ; genIfx
      009451 0D 03            [ 1]  278 	tnz	(0x03, sp)
      009453 26 03            [ 1]  279 	jrne	00130$
      009455 CC 94 60         [ 2]  280 	jp	00102$
      009458                        281 00130$:
                           0000A2   282 	Sstm8s_tim4$TIM4_Cmd$44 ==.
                           0000A2   283 	Sstm8s_tim4$TIM4_Cmd$45 ==.
                                    284 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    285 ; genOr
      009458 AA 01            [ 1]  286 	or	a, #0x01
                                    287 ; genPointerSet
      00945A C7 53 40         [ 1]  288 	ld	0x5340, a
                           0000A7   289 	Sstm8s_tim4$TIM4_Cmd$46 ==.
                                    290 ; genGoto
      00945D CC 94 65         [ 2]  291 	jp	00104$
                                    292 ; genLabel
      009460                        293 00102$:
                           0000AA   294 	Sstm8s_tim4$TIM4_Cmd$47 ==.
                           0000AA   295 	Sstm8s_tim4$TIM4_Cmd$48 ==.
                                    296 ;	../SPL/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
                                    297 ; genAnd
      009460 A4 FE            [ 1]  298 	and	a, #0xfe
                                    299 ; genPointerSet
      009462 C7 53 40         [ 1]  300 	ld	0x5340, a
                           0000AF   301 	Sstm8s_tim4$TIM4_Cmd$49 ==.
                                    302 ; genLabel
      009465                        303 00104$:
                           0000AF   304 	Sstm8s_tim4$TIM4_Cmd$50 ==.
                                    305 ;	../SPL/src/stm8s_tim4.c: 95: }
                                    306 ; genEndFunction
                           0000AF   307 	Sstm8s_tim4$TIM4_Cmd$51 ==.
                           0000AF   308 	XG$TIM4_Cmd$0$0 ==.
      009465 81               [ 4]  309 	ret
                           0000B0   310 	Sstm8s_tim4$TIM4_Cmd$52 ==.
                           0000B0   311 	Sstm8s_tim4$TIM4_ITConfig$53 ==.
                                    312 ;	../SPL/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    313 ; genLabel
                                    314 ;	-----------------------------------------
                                    315 ;	 function TIM4_ITConfig
                                    316 ;	-----------------------------------------
                                    317 ;	Register assignment is optimal.
                                    318 ;	Stack space usage: 1 bytes.
      009466                        319 _TIM4_ITConfig:
                           0000B0   320 	Sstm8s_tim4$TIM4_ITConfig$54 ==.
      009466 88               [ 1]  321 	push	a
                           0000B1   322 	Sstm8s_tim4$TIM4_ITConfig$55 ==.
                           0000B1   323 	Sstm8s_tim4$TIM4_ITConfig$56 ==.
                                    324 ;	../SPL/src/stm8s_tim4.c: 110: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                    325 ; genCmpEQorNE
      009467 7B 04            [ 1]  326 	ld	a, (0x04, sp)
      009469 4A               [ 1]  327 	dec	a
      00946A 26 03            [ 1]  328 	jrne	00134$
      00946C CC 94 7E         [ 2]  329 	jp	00107$
      00946F                        330 00134$:
                           0000B9   331 	Sstm8s_tim4$TIM4_ITConfig$57 ==.
                                    332 ; skipping generated iCode
                                    333 ; skipping iCode since result will be rematerialized
                                    334 ; skipping iCode since result will be rematerialized
                                    335 ; genIPush
      00946F 4B 6E            [ 1]  336 	push	#0x6e
                           0000BB   337 	Sstm8s_tim4$TIM4_ITConfig$58 ==.
      009471 5F               [ 1]  338 	clrw	x
      009472 89               [ 2]  339 	pushw	x
                           0000BD   340 	Sstm8s_tim4$TIM4_ITConfig$59 ==.
      009473 4B 00            [ 1]  341 	push	#0x00
                           0000BF   342 	Sstm8s_tim4$TIM4_ITConfig$60 ==.
                                    343 ; genIPush
      009475 4B D3            [ 1]  344 	push	#<(___str_0+0)
                           0000C1   345 	Sstm8s_tim4$TIM4_ITConfig$61 ==.
      009477 4B 80            [ 1]  346 	push	#((___str_0+0) >> 8)
                           0000C3   347 	Sstm8s_tim4$TIM4_ITConfig$62 ==.
                                    348 ; genCall
      009479 CD 82 65         [ 4]  349 	call	_assert_failed
      00947C 5B 06            [ 2]  350 	addw	sp, #6
                           0000C8   351 	Sstm8s_tim4$TIM4_ITConfig$63 ==.
                                    352 ; genLabel
      00947E                        353 00107$:
                           0000C8   354 	Sstm8s_tim4$TIM4_ITConfig$64 ==.
                                    355 ;	../SPL/src/stm8s_tim4.c: 111: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    356 ; genIfx
      00947E 0D 05            [ 1]  357 	tnz	(0x05, sp)
      009480 26 03            [ 1]  358 	jrne	00136$
      009482 CC 94 9C         [ 2]  359 	jp	00109$
      009485                        360 00136$:
                                    361 ; genCmpEQorNE
      009485 7B 05            [ 1]  362 	ld	a, (0x05, sp)
      009487 4A               [ 1]  363 	dec	a
      009488 26 03            [ 1]  364 	jrne	00138$
      00948A CC 94 9C         [ 2]  365 	jp	00109$
      00948D                        366 00138$:
                           0000D7   367 	Sstm8s_tim4$TIM4_ITConfig$65 ==.
                                    368 ; skipping generated iCode
                                    369 ; skipping iCode since result will be rematerialized
                                    370 ; skipping iCode since result will be rematerialized
                                    371 ; genIPush
      00948D 4B 6F            [ 1]  372 	push	#0x6f
                           0000D9   373 	Sstm8s_tim4$TIM4_ITConfig$66 ==.
      00948F 5F               [ 1]  374 	clrw	x
      009490 89               [ 2]  375 	pushw	x
                           0000DB   376 	Sstm8s_tim4$TIM4_ITConfig$67 ==.
      009491 4B 00            [ 1]  377 	push	#0x00
                           0000DD   378 	Sstm8s_tim4$TIM4_ITConfig$68 ==.
                                    379 ; genIPush
      009493 4B D3            [ 1]  380 	push	#<(___str_0+0)
                           0000DF   381 	Sstm8s_tim4$TIM4_ITConfig$69 ==.
      009495 4B 80            [ 1]  382 	push	#((___str_0+0) >> 8)
                           0000E1   383 	Sstm8s_tim4$TIM4_ITConfig$70 ==.
                                    384 ; genCall
      009497 CD 82 65         [ 4]  385 	call	_assert_failed
      00949A 5B 06            [ 2]  386 	addw	sp, #6
                           0000E6   387 	Sstm8s_tim4$TIM4_ITConfig$71 ==.
                                    388 ; genLabel
      00949C                        389 00109$:
                           0000E6   390 	Sstm8s_tim4$TIM4_ITConfig$72 ==.
                                    391 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    392 ; genPointerGet
      00949C C6 53 41         [ 1]  393 	ld	a, 0x5341
                           0000E9   394 	Sstm8s_tim4$TIM4_ITConfig$73 ==.
                                    395 ;	../SPL/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
                                    396 ; genIfx
      00949F 0D 05            [ 1]  397 	tnz	(0x05, sp)
      0094A1 26 03            [ 1]  398 	jrne	00140$
      0094A3 CC 94 AE         [ 2]  399 	jp	00102$
      0094A6                        400 00140$:
                           0000F0   401 	Sstm8s_tim4$TIM4_ITConfig$74 ==.
                           0000F0   402 	Sstm8s_tim4$TIM4_ITConfig$75 ==.
                                    403 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    404 ; genOr
      0094A6 1A 04            [ 1]  405 	or	a, (0x04, sp)
                                    406 ; genPointerSet
      0094A8 C7 53 41         [ 1]  407 	ld	0x5341, a
                           0000F5   408 	Sstm8s_tim4$TIM4_ITConfig$76 ==.
                                    409 ; genGoto
      0094AB CC 94 BA         [ 2]  410 	jp	00104$
                                    411 ; genLabel
      0094AE                        412 00102$:
                           0000F8   413 	Sstm8s_tim4$TIM4_ITConfig$77 ==.
                           0000F8   414 	Sstm8s_tim4$TIM4_ITConfig$78 ==.
                                    415 ;	../SPL/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
                                    416 ; genCpl
      0094AE 88               [ 1]  417 	push	a
                           0000F9   418 	Sstm8s_tim4$TIM4_ITConfig$79 ==.
      0094AF 7B 05            [ 1]  419 	ld	a, (0x05, sp)
      0094B1 43               [ 1]  420 	cpl	a
      0094B2 6B 02            [ 1]  421 	ld	(0x02, sp), a
      0094B4 84               [ 1]  422 	pop	a
                           0000FF   423 	Sstm8s_tim4$TIM4_ITConfig$80 ==.
                                    424 ; genAnd
      0094B5 14 01            [ 1]  425 	and	a, (0x01, sp)
                                    426 ; genPointerSet
      0094B7 C7 53 41         [ 1]  427 	ld	0x5341, a
                           000104   428 	Sstm8s_tim4$TIM4_ITConfig$81 ==.
                                    429 ; genLabel
      0094BA                        430 00104$:
                           000104   431 	Sstm8s_tim4$TIM4_ITConfig$82 ==.
                                    432 ;	../SPL/src/stm8s_tim4.c: 123: }
                                    433 ; genEndFunction
      0094BA 84               [ 1]  434 	pop	a
                           000105   435 	Sstm8s_tim4$TIM4_ITConfig$83 ==.
                           000105   436 	Sstm8s_tim4$TIM4_ITConfig$84 ==.
                           000105   437 	XG$TIM4_ITConfig$0$0 ==.
      0094BB 81               [ 4]  438 	ret
                           000106   439 	Sstm8s_tim4$TIM4_ITConfig$85 ==.
                           000106   440 	Sstm8s_tim4$TIM4_UpdateDisableConfig$86 ==.
                                    441 ;	../SPL/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    442 ; genLabel
                                    443 ;	-----------------------------------------
                                    444 ;	 function TIM4_UpdateDisableConfig
                                    445 ;	-----------------------------------------
                                    446 ;	Register assignment is optimal.
                                    447 ;	Stack space usage: 0 bytes.
      0094BC                        448 _TIM4_UpdateDisableConfig:
                           000106   449 	Sstm8s_tim4$TIM4_UpdateDisableConfig$87 ==.
                           000106   450 	Sstm8s_tim4$TIM4_UpdateDisableConfig$88 ==.
                                    451 ;	../SPL/src/stm8s_tim4.c: 134: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    452 ; genIfx
      0094BC 0D 03            [ 1]  453 	tnz	(0x03, sp)
      0094BE 26 03            [ 1]  454 	jrne	00126$
      0094C0 CC 94 DA         [ 2]  455 	jp	00107$
      0094C3                        456 00126$:
                                    457 ; genCmpEQorNE
      0094C3 7B 03            [ 1]  458 	ld	a, (0x03, sp)
      0094C5 4A               [ 1]  459 	dec	a
      0094C6 26 03            [ 1]  460 	jrne	00128$
      0094C8 CC 94 DA         [ 2]  461 	jp	00107$
      0094CB                        462 00128$:
                           000115   463 	Sstm8s_tim4$TIM4_UpdateDisableConfig$89 ==.
                                    464 ; skipping generated iCode
                                    465 ; skipping iCode since result will be rematerialized
                                    466 ; skipping iCode since result will be rematerialized
                                    467 ; genIPush
      0094CB 4B 86            [ 1]  468 	push	#0x86
                           000117   469 	Sstm8s_tim4$TIM4_UpdateDisableConfig$90 ==.
      0094CD 5F               [ 1]  470 	clrw	x
      0094CE 89               [ 2]  471 	pushw	x
                           000119   472 	Sstm8s_tim4$TIM4_UpdateDisableConfig$91 ==.
      0094CF 4B 00            [ 1]  473 	push	#0x00
                           00011B   474 	Sstm8s_tim4$TIM4_UpdateDisableConfig$92 ==.
                                    475 ; genIPush
      0094D1 4B D3            [ 1]  476 	push	#<(___str_0+0)
                           00011D   477 	Sstm8s_tim4$TIM4_UpdateDisableConfig$93 ==.
      0094D3 4B 80            [ 1]  478 	push	#((___str_0+0) >> 8)
                           00011F   479 	Sstm8s_tim4$TIM4_UpdateDisableConfig$94 ==.
                                    480 ; genCall
      0094D5 CD 82 65         [ 4]  481 	call	_assert_failed
      0094D8 5B 06            [ 2]  482 	addw	sp, #6
                           000124   483 	Sstm8s_tim4$TIM4_UpdateDisableConfig$95 ==.
                                    484 ; genLabel
      0094DA                        485 00107$:
                           000124   486 	Sstm8s_tim4$TIM4_UpdateDisableConfig$96 ==.
                                    487 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    488 ; genPointerGet
      0094DA C6 53 40         [ 1]  489 	ld	a, 0x5340
                           000127   490 	Sstm8s_tim4$TIM4_UpdateDisableConfig$97 ==.
                                    491 ;	../SPL/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
                                    492 ; genIfx
      0094DD 0D 03            [ 1]  493 	tnz	(0x03, sp)
      0094DF 26 03            [ 1]  494 	jrne	00130$
      0094E1 CC 94 EC         [ 2]  495 	jp	00102$
      0094E4                        496 00130$:
                           00012E   497 	Sstm8s_tim4$TIM4_UpdateDisableConfig$98 ==.
                           00012E   498 	Sstm8s_tim4$TIM4_UpdateDisableConfig$99 ==.
                                    499 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    500 ; genOr
      0094E4 AA 02            [ 1]  501 	or	a, #0x02
                                    502 ; genPointerSet
      0094E6 C7 53 40         [ 1]  503 	ld	0x5340, a
                           000133   504 	Sstm8s_tim4$TIM4_UpdateDisableConfig$100 ==.
                                    505 ; genGoto
      0094E9 CC 94 F1         [ 2]  506 	jp	00104$
                                    507 ; genLabel
      0094EC                        508 00102$:
                           000136   509 	Sstm8s_tim4$TIM4_UpdateDisableConfig$101 ==.
                           000136   510 	Sstm8s_tim4$TIM4_UpdateDisableConfig$102 ==.
                                    511 ;	../SPL/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
                                    512 ; genAnd
      0094EC A4 FD            [ 1]  513 	and	a, #0xfd
                                    514 ; genPointerSet
      0094EE C7 53 40         [ 1]  515 	ld	0x5340, a
                           00013B   516 	Sstm8s_tim4$TIM4_UpdateDisableConfig$103 ==.
                                    517 ; genLabel
      0094F1                        518 00104$:
                           00013B   519 	Sstm8s_tim4$TIM4_UpdateDisableConfig$104 ==.
                                    520 ;	../SPL/src/stm8s_tim4.c: 145: }
                                    521 ; genEndFunction
                           00013B   522 	Sstm8s_tim4$TIM4_UpdateDisableConfig$105 ==.
                           00013B   523 	XG$TIM4_UpdateDisableConfig$0$0 ==.
      0094F1 81               [ 4]  524 	ret
                           00013C   525 	Sstm8s_tim4$TIM4_UpdateDisableConfig$106 ==.
                           00013C   526 	Sstm8s_tim4$TIM4_UpdateRequestConfig$107 ==.
                                    527 ;	../SPL/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    528 ; genLabel
                                    529 ;	-----------------------------------------
                                    530 ;	 function TIM4_UpdateRequestConfig
                                    531 ;	-----------------------------------------
                                    532 ;	Register assignment is optimal.
                                    533 ;	Stack space usage: 0 bytes.
      0094F2                        534 _TIM4_UpdateRequestConfig:
                           00013C   535 	Sstm8s_tim4$TIM4_UpdateRequestConfig$108 ==.
                           00013C   536 	Sstm8s_tim4$TIM4_UpdateRequestConfig$109 ==.
                                    537 ;	../SPL/src/stm8s_tim4.c: 158: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
                                    538 ; genIfx
      0094F2 0D 03            [ 1]  539 	tnz	(0x03, sp)
      0094F4 26 03            [ 1]  540 	jrne	00126$
      0094F6 CC 95 10         [ 2]  541 	jp	00107$
      0094F9                        542 00126$:
                                    543 ; genCmpEQorNE
      0094F9 7B 03            [ 1]  544 	ld	a, (0x03, sp)
      0094FB 4A               [ 1]  545 	dec	a
      0094FC 26 03            [ 1]  546 	jrne	00128$
      0094FE CC 95 10         [ 2]  547 	jp	00107$
      009501                        548 00128$:
                           00014B   549 	Sstm8s_tim4$TIM4_UpdateRequestConfig$110 ==.
                                    550 ; skipping generated iCode
                                    551 ; skipping iCode since result will be rematerialized
                                    552 ; skipping iCode since result will be rematerialized
                                    553 ; genIPush
      009501 4B 9E            [ 1]  554 	push	#0x9e
                           00014D   555 	Sstm8s_tim4$TIM4_UpdateRequestConfig$111 ==.
      009503 5F               [ 1]  556 	clrw	x
      009504 89               [ 2]  557 	pushw	x
                           00014F   558 	Sstm8s_tim4$TIM4_UpdateRequestConfig$112 ==.
      009505 4B 00            [ 1]  559 	push	#0x00
                           000151   560 	Sstm8s_tim4$TIM4_UpdateRequestConfig$113 ==.
                                    561 ; genIPush
      009507 4B D3            [ 1]  562 	push	#<(___str_0+0)
                           000153   563 	Sstm8s_tim4$TIM4_UpdateRequestConfig$114 ==.
      009509 4B 80            [ 1]  564 	push	#((___str_0+0) >> 8)
                           000155   565 	Sstm8s_tim4$TIM4_UpdateRequestConfig$115 ==.
                                    566 ; genCall
      00950B CD 82 65         [ 4]  567 	call	_assert_failed
      00950E 5B 06            [ 2]  568 	addw	sp, #6
                           00015A   569 	Sstm8s_tim4$TIM4_UpdateRequestConfig$116 ==.
                                    570 ; genLabel
      009510                        571 00107$:
                           00015A   572 	Sstm8s_tim4$TIM4_UpdateRequestConfig$117 ==.
                                    573 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    574 ; genPointerGet
      009510 C6 53 40         [ 1]  575 	ld	a, 0x5340
                           00015D   576 	Sstm8s_tim4$TIM4_UpdateRequestConfig$118 ==.
                                    577 ;	../SPL/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
                                    578 ; genIfx
      009513 0D 03            [ 1]  579 	tnz	(0x03, sp)
      009515 26 03            [ 1]  580 	jrne	00130$
      009517 CC 95 22         [ 2]  581 	jp	00102$
      00951A                        582 00130$:
                           000164   583 	Sstm8s_tim4$TIM4_UpdateRequestConfig$119 ==.
                           000164   584 	Sstm8s_tim4$TIM4_UpdateRequestConfig$120 ==.
                                    585 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    586 ; genOr
      00951A AA 04            [ 1]  587 	or	a, #0x04
                                    588 ; genPointerSet
      00951C C7 53 40         [ 1]  589 	ld	0x5340, a
                           000169   590 	Sstm8s_tim4$TIM4_UpdateRequestConfig$121 ==.
                                    591 ; genGoto
      00951F CC 95 27         [ 2]  592 	jp	00104$
                                    593 ; genLabel
      009522                        594 00102$:
                           00016C   595 	Sstm8s_tim4$TIM4_UpdateRequestConfig$122 ==.
                           00016C   596 	Sstm8s_tim4$TIM4_UpdateRequestConfig$123 ==.
                                    597 ;	../SPL/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
                                    598 ; genAnd
      009522 A4 FB            [ 1]  599 	and	a, #0xfb
                                    600 ; genPointerSet
      009524 C7 53 40         [ 1]  601 	ld	0x5340, a
                           000171   602 	Sstm8s_tim4$TIM4_UpdateRequestConfig$124 ==.
                                    603 ; genLabel
      009527                        604 00104$:
                           000171   605 	Sstm8s_tim4$TIM4_UpdateRequestConfig$125 ==.
                                    606 ;	../SPL/src/stm8s_tim4.c: 169: }
                                    607 ; genEndFunction
                           000171   608 	Sstm8s_tim4$TIM4_UpdateRequestConfig$126 ==.
                           000171   609 	XG$TIM4_UpdateRequestConfig$0$0 ==.
      009527 81               [ 4]  610 	ret
                           000172   611 	Sstm8s_tim4$TIM4_UpdateRequestConfig$127 ==.
                           000172   612 	Sstm8s_tim4$TIM4_SelectOnePulseMode$128 ==.
                                    613 ;	../SPL/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    614 ; genLabel
                                    615 ;	-----------------------------------------
                                    616 ;	 function TIM4_SelectOnePulseMode
                                    617 ;	-----------------------------------------
                                    618 ;	Register assignment is optimal.
                                    619 ;	Stack space usage: 0 bytes.
      009528                        620 _TIM4_SelectOnePulseMode:
                           000172   621 	Sstm8s_tim4$TIM4_SelectOnePulseMode$129 ==.
                           000172   622 	Sstm8s_tim4$TIM4_SelectOnePulseMode$130 ==.
                                    623 ;	../SPL/src/stm8s_tim4.c: 182: assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
                                    624 ; genCmpEQorNE
      009528 7B 03            [ 1]  625 	ld	a, (0x03, sp)
      00952A 4A               [ 1]  626 	dec	a
      00952B 26 03            [ 1]  627 	jrne	00127$
      00952D CC 95 46         [ 2]  628 	jp	00107$
      009530                        629 00127$:
                           00017A   630 	Sstm8s_tim4$TIM4_SelectOnePulseMode$131 ==.
                                    631 ; skipping generated iCode
                                    632 ; genIfx
      009530 0D 03            [ 1]  633 	tnz	(0x03, sp)
      009532 26 03            [ 1]  634 	jrne	00129$
      009534 CC 95 46         [ 2]  635 	jp	00107$
      009537                        636 00129$:
                                    637 ; skipping iCode since result will be rematerialized
                                    638 ; skipping iCode since result will be rematerialized
                                    639 ; genIPush
      009537 4B B6            [ 1]  640 	push	#0xb6
                           000183   641 	Sstm8s_tim4$TIM4_SelectOnePulseMode$132 ==.
      009539 5F               [ 1]  642 	clrw	x
      00953A 89               [ 2]  643 	pushw	x
                           000185   644 	Sstm8s_tim4$TIM4_SelectOnePulseMode$133 ==.
      00953B 4B 00            [ 1]  645 	push	#0x00
                           000187   646 	Sstm8s_tim4$TIM4_SelectOnePulseMode$134 ==.
                                    647 ; genIPush
      00953D 4B D3            [ 1]  648 	push	#<(___str_0+0)
                           000189   649 	Sstm8s_tim4$TIM4_SelectOnePulseMode$135 ==.
      00953F 4B 80            [ 1]  650 	push	#((___str_0+0) >> 8)
                           00018B   651 	Sstm8s_tim4$TIM4_SelectOnePulseMode$136 ==.
                                    652 ; genCall
      009541 CD 82 65         [ 4]  653 	call	_assert_failed
      009544 5B 06            [ 2]  654 	addw	sp, #6
                           000190   655 	Sstm8s_tim4$TIM4_SelectOnePulseMode$137 ==.
                                    656 ; genLabel
      009546                        657 00107$:
                           000190   658 	Sstm8s_tim4$TIM4_SelectOnePulseMode$138 ==.
                                    659 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    660 ; genPointerGet
      009546 C6 53 40         [ 1]  661 	ld	a, 0x5340
                           000193   662 	Sstm8s_tim4$TIM4_SelectOnePulseMode$139 ==.
                                    663 ;	../SPL/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
                                    664 ; genIfx
      009549 0D 03            [ 1]  665 	tnz	(0x03, sp)
      00954B 26 03            [ 1]  666 	jrne	00130$
      00954D CC 95 58         [ 2]  667 	jp	00102$
      009550                        668 00130$:
                           00019A   669 	Sstm8s_tim4$TIM4_SelectOnePulseMode$140 ==.
                           00019A   670 	Sstm8s_tim4$TIM4_SelectOnePulseMode$141 ==.
                                    671 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    672 ; genOr
      009550 AA 08            [ 1]  673 	or	a, #0x08
                                    674 ; genPointerSet
      009552 C7 53 40         [ 1]  675 	ld	0x5340, a
                           00019F   676 	Sstm8s_tim4$TIM4_SelectOnePulseMode$142 ==.
                                    677 ; genGoto
      009555 CC 95 5D         [ 2]  678 	jp	00104$
                                    679 ; genLabel
      009558                        680 00102$:
                           0001A2   681 	Sstm8s_tim4$TIM4_SelectOnePulseMode$143 ==.
                           0001A2   682 	Sstm8s_tim4$TIM4_SelectOnePulseMode$144 ==.
                                    683 ;	../SPL/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
                                    684 ; genAnd
      009558 A4 F7            [ 1]  685 	and	a, #0xf7
                                    686 ; genPointerSet
      00955A C7 53 40         [ 1]  687 	ld	0x5340, a
                           0001A7   688 	Sstm8s_tim4$TIM4_SelectOnePulseMode$145 ==.
                                    689 ; genLabel
      00955D                        690 00104$:
                           0001A7   691 	Sstm8s_tim4$TIM4_SelectOnePulseMode$146 ==.
                                    692 ;	../SPL/src/stm8s_tim4.c: 193: }
                                    693 ; genEndFunction
                           0001A7   694 	Sstm8s_tim4$TIM4_SelectOnePulseMode$147 ==.
                           0001A7   695 	XG$TIM4_SelectOnePulseMode$0$0 ==.
      00955D 81               [ 4]  696 	ret
                           0001A8   697 	Sstm8s_tim4$TIM4_SelectOnePulseMode$148 ==.
                           0001A8   698 	Sstm8s_tim4$TIM4_PrescalerConfig$149 ==.
                                    699 ;	../SPL/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    700 ; genLabel
                                    701 ;	-----------------------------------------
                                    702 ;	 function TIM4_PrescalerConfig
                                    703 ;	-----------------------------------------
                                    704 ;	Register assignment is optimal.
                                    705 ;	Stack space usage: 0 bytes.
      00955E                        706 _TIM4_PrescalerConfig:
                           0001A8   707 	Sstm8s_tim4$TIM4_PrescalerConfig$150 ==.
                           0001A8   708 	Sstm8s_tim4$TIM4_PrescalerConfig$151 ==.
                                    709 ;	../SPL/src/stm8s_tim4.c: 218: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
                                    710 ; genIfx
      00955E 0D 04            [ 1]  711 	tnz	(0x04, sp)
      009560 26 03            [ 1]  712 	jrne	00181$
      009562 CC 95 7C         [ 2]  713 	jp	00104$
      009565                        714 00181$:
                                    715 ; genCmpEQorNE
      009565 7B 04            [ 1]  716 	ld	a, (0x04, sp)
      009567 4A               [ 1]  717 	dec	a
      009568 26 03            [ 1]  718 	jrne	00183$
      00956A CC 95 7C         [ 2]  719 	jp	00104$
      00956D                        720 00183$:
                           0001B7   721 	Sstm8s_tim4$TIM4_PrescalerConfig$152 ==.
                                    722 ; skipping generated iCode
                                    723 ; skipping iCode since result will be rematerialized
                                    724 ; skipping iCode since result will be rematerialized
                                    725 ; genIPush
      00956D 4B DA            [ 1]  726 	push	#0xda
                           0001B9   727 	Sstm8s_tim4$TIM4_PrescalerConfig$153 ==.
      00956F 5F               [ 1]  728 	clrw	x
      009570 89               [ 2]  729 	pushw	x
                           0001BB   730 	Sstm8s_tim4$TIM4_PrescalerConfig$154 ==.
      009571 4B 00            [ 1]  731 	push	#0x00
                           0001BD   732 	Sstm8s_tim4$TIM4_PrescalerConfig$155 ==.
                                    733 ; genIPush
      009573 4B D3            [ 1]  734 	push	#<(___str_0+0)
                           0001BF   735 	Sstm8s_tim4$TIM4_PrescalerConfig$156 ==.
      009575 4B 80            [ 1]  736 	push	#((___str_0+0) >> 8)
                           0001C1   737 	Sstm8s_tim4$TIM4_PrescalerConfig$157 ==.
                                    738 ; genCall
      009577 CD 82 65         [ 4]  739 	call	_assert_failed
      00957A 5B 06            [ 2]  740 	addw	sp, #6
                           0001C6   741 	Sstm8s_tim4$TIM4_PrescalerConfig$158 ==.
                                    742 ; genLabel
      00957C                        743 00104$:
                           0001C6   744 	Sstm8s_tim4$TIM4_PrescalerConfig$159 ==.
                                    745 ;	../SPL/src/stm8s_tim4.c: 219: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
                                    746 ; genIfx
      00957C 0D 03            [ 1]  747 	tnz	(0x03, sp)
      00957E 26 03            [ 1]  748 	jrne	00185$
      009580 CC 95 D0         [ 2]  749 	jp	00109$
      009583                        750 00185$:
                                    751 ; genCmpEQorNE
      009583 7B 03            [ 1]  752 	ld	a, (0x03, sp)
      009585 4A               [ 1]  753 	dec	a
      009586 26 03            [ 1]  754 	jrne	00187$
      009588 CC 95 D0         [ 2]  755 	jp	00109$
      00958B                        756 00187$:
                           0001D5   757 	Sstm8s_tim4$TIM4_PrescalerConfig$160 ==.
                                    758 ; skipping generated iCode
                                    759 ; genCmpEQorNE
      00958B 7B 03            [ 1]  760 	ld	a, (0x03, sp)
      00958D A1 02            [ 1]  761 	cp	a, #0x02
      00958F 26 03            [ 1]  762 	jrne	00190$
      009591 CC 95 D0         [ 2]  763 	jp	00109$
      009594                        764 00190$:
                           0001DE   765 	Sstm8s_tim4$TIM4_PrescalerConfig$161 ==.
                                    766 ; skipping generated iCode
                                    767 ; genCmpEQorNE
      009594 7B 03            [ 1]  768 	ld	a, (0x03, sp)
      009596 A1 03            [ 1]  769 	cp	a, #0x03
      009598 26 03            [ 1]  770 	jrne	00193$
      00959A CC 95 D0         [ 2]  771 	jp	00109$
      00959D                        772 00193$:
                           0001E7   773 	Sstm8s_tim4$TIM4_PrescalerConfig$162 ==.
                                    774 ; skipping generated iCode
                                    775 ; genCmpEQorNE
      00959D 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      00959F A1 04            [ 1]  777 	cp	a, #0x04
      0095A1 26 03            [ 1]  778 	jrne	00196$
      0095A3 CC 95 D0         [ 2]  779 	jp	00109$
      0095A6                        780 00196$:
                           0001F0   781 	Sstm8s_tim4$TIM4_PrescalerConfig$163 ==.
                                    782 ; skipping generated iCode
                                    783 ; genCmpEQorNE
      0095A6 7B 03            [ 1]  784 	ld	a, (0x03, sp)
      0095A8 A1 05            [ 1]  785 	cp	a, #0x05
      0095AA 26 03            [ 1]  786 	jrne	00199$
      0095AC CC 95 D0         [ 2]  787 	jp	00109$
      0095AF                        788 00199$:
                           0001F9   789 	Sstm8s_tim4$TIM4_PrescalerConfig$164 ==.
                                    790 ; skipping generated iCode
                                    791 ; genCmpEQorNE
      0095AF 7B 03            [ 1]  792 	ld	a, (0x03, sp)
      0095B1 A1 06            [ 1]  793 	cp	a, #0x06
      0095B3 26 03            [ 1]  794 	jrne	00202$
      0095B5 CC 95 D0         [ 2]  795 	jp	00109$
      0095B8                        796 00202$:
                           000202   797 	Sstm8s_tim4$TIM4_PrescalerConfig$165 ==.
                                    798 ; skipping generated iCode
                                    799 ; genCmpEQorNE
      0095B8 7B 03            [ 1]  800 	ld	a, (0x03, sp)
      0095BA A1 07            [ 1]  801 	cp	a, #0x07
      0095BC 26 03            [ 1]  802 	jrne	00205$
      0095BE CC 95 D0         [ 2]  803 	jp	00109$
      0095C1                        804 00205$:
                           00020B   805 	Sstm8s_tim4$TIM4_PrescalerConfig$166 ==.
                                    806 ; skipping generated iCode
                                    807 ; skipping iCode since result will be rematerialized
                                    808 ; skipping iCode since result will be rematerialized
                                    809 ; genIPush
      0095C1 4B DB            [ 1]  810 	push	#0xdb
                           00020D   811 	Sstm8s_tim4$TIM4_PrescalerConfig$167 ==.
      0095C3 5F               [ 1]  812 	clrw	x
      0095C4 89               [ 2]  813 	pushw	x
                           00020F   814 	Sstm8s_tim4$TIM4_PrescalerConfig$168 ==.
      0095C5 4B 00            [ 1]  815 	push	#0x00
                           000211   816 	Sstm8s_tim4$TIM4_PrescalerConfig$169 ==.
                                    817 ; genIPush
      0095C7 4B D3            [ 1]  818 	push	#<(___str_0+0)
                           000213   819 	Sstm8s_tim4$TIM4_PrescalerConfig$170 ==.
      0095C9 4B 80            [ 1]  820 	push	#((___str_0+0) >> 8)
                           000215   821 	Sstm8s_tim4$TIM4_PrescalerConfig$171 ==.
                                    822 ; genCall
      0095CB CD 82 65         [ 4]  823 	call	_assert_failed
      0095CE 5B 06            [ 2]  824 	addw	sp, #6
                           00021A   825 	Sstm8s_tim4$TIM4_PrescalerConfig$172 ==.
                                    826 ; genLabel
      0095D0                        827 00109$:
                           00021A   828 	Sstm8s_tim4$TIM4_PrescalerConfig$173 ==.
                                    829 ;	../SPL/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
                                    830 ; genPointerSet
      0095D0 AE 53 45         [ 2]  831 	ldw	x, #0x5345
      0095D3 7B 03            [ 1]  832 	ld	a, (0x03, sp)
      0095D5 F7               [ 1]  833 	ld	(x), a
                           000220   834 	Sstm8s_tim4$TIM4_PrescalerConfig$174 ==.
                                    835 ;	../SPL/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
                                    836 ; genPointerSet
      0095D6 AE 53 43         [ 2]  837 	ldw	x, #0x5343
      0095D9 7B 04            [ 1]  838 	ld	a, (0x04, sp)
      0095DB F7               [ 1]  839 	ld	(x), a
                                    840 ; genLabel
      0095DC                        841 00101$:
                           000226   842 	Sstm8s_tim4$TIM4_PrescalerConfig$175 ==.
                                    843 ;	../SPL/src/stm8s_tim4.c: 226: }
                                    844 ; genEndFunction
                           000226   845 	Sstm8s_tim4$TIM4_PrescalerConfig$176 ==.
                           000226   846 	XG$TIM4_PrescalerConfig$0$0 ==.
      0095DC 81               [ 4]  847 	ret
                           000227   848 	Sstm8s_tim4$TIM4_PrescalerConfig$177 ==.
                           000227   849 	Sstm8s_tim4$TIM4_ARRPreloadConfig$178 ==.
                                    850 ;	../SPL/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    851 ; genLabel
                                    852 ;	-----------------------------------------
                                    853 ;	 function TIM4_ARRPreloadConfig
                                    854 ;	-----------------------------------------
                                    855 ;	Register assignment is optimal.
                                    856 ;	Stack space usage: 0 bytes.
      0095DD                        857 _TIM4_ARRPreloadConfig:
                           000227   858 	Sstm8s_tim4$TIM4_ARRPreloadConfig$179 ==.
                           000227   859 	Sstm8s_tim4$TIM4_ARRPreloadConfig$180 ==.
                                    860 ;	../SPL/src/stm8s_tim4.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    861 ; genIfx
      0095DD 0D 03            [ 1]  862 	tnz	(0x03, sp)
      0095DF 26 03            [ 1]  863 	jrne	00126$
      0095E1 CC 95 FB         [ 2]  864 	jp	00107$
      0095E4                        865 00126$:
                                    866 ; genCmpEQorNE
      0095E4 7B 03            [ 1]  867 	ld	a, (0x03, sp)
      0095E6 4A               [ 1]  868 	dec	a
      0095E7 26 03            [ 1]  869 	jrne	00128$
      0095E9 CC 95 FB         [ 2]  870 	jp	00107$
      0095EC                        871 00128$:
                           000236   872 	Sstm8s_tim4$TIM4_ARRPreloadConfig$181 ==.
                                    873 ; skipping generated iCode
                                    874 ; skipping iCode since result will be rematerialized
                                    875 ; skipping iCode since result will be rematerialized
                                    876 ; genIPush
      0095EC 4B ED            [ 1]  877 	push	#0xed
                           000238   878 	Sstm8s_tim4$TIM4_ARRPreloadConfig$182 ==.
      0095EE 5F               [ 1]  879 	clrw	x
      0095EF 89               [ 2]  880 	pushw	x
                           00023A   881 	Sstm8s_tim4$TIM4_ARRPreloadConfig$183 ==.
      0095F0 4B 00            [ 1]  882 	push	#0x00
                           00023C   883 	Sstm8s_tim4$TIM4_ARRPreloadConfig$184 ==.
                                    884 ; genIPush
      0095F2 4B D3            [ 1]  885 	push	#<(___str_0+0)
                           00023E   886 	Sstm8s_tim4$TIM4_ARRPreloadConfig$185 ==.
      0095F4 4B 80            [ 1]  887 	push	#((___str_0+0) >> 8)
                           000240   888 	Sstm8s_tim4$TIM4_ARRPreloadConfig$186 ==.
                                    889 ; genCall
      0095F6 CD 82 65         [ 4]  890 	call	_assert_failed
      0095F9 5B 06            [ 2]  891 	addw	sp, #6
                           000245   892 	Sstm8s_tim4$TIM4_ARRPreloadConfig$187 ==.
                                    893 ; genLabel
      0095FB                        894 00107$:
                           000245   895 	Sstm8s_tim4$TIM4_ARRPreloadConfig$188 ==.
                                    896 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    897 ; genPointerGet
      0095FB C6 53 40         [ 1]  898 	ld	a, 0x5340
                           000248   899 	Sstm8s_tim4$TIM4_ARRPreloadConfig$189 ==.
                                    900 ;	../SPL/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
                                    901 ; genIfx
      0095FE 0D 03            [ 1]  902 	tnz	(0x03, sp)
      009600 26 03            [ 1]  903 	jrne	00130$
      009602 CC 96 0D         [ 2]  904 	jp	00102$
      009605                        905 00130$:
                           00024F   906 	Sstm8s_tim4$TIM4_ARRPreloadConfig$190 ==.
                           00024F   907 	Sstm8s_tim4$TIM4_ARRPreloadConfig$191 ==.
                                    908 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    909 ; genOr
      009605 AA 80            [ 1]  910 	or	a, #0x80
                                    911 ; genPointerSet
      009607 C7 53 40         [ 1]  912 	ld	0x5340, a
                           000254   913 	Sstm8s_tim4$TIM4_ARRPreloadConfig$192 ==.
                                    914 ; genGoto
      00960A CC 96 12         [ 2]  915 	jp	00104$
                                    916 ; genLabel
      00960D                        917 00102$:
                           000257   918 	Sstm8s_tim4$TIM4_ARRPreloadConfig$193 ==.
                           000257   919 	Sstm8s_tim4$TIM4_ARRPreloadConfig$194 ==.
                                    920 ;	../SPL/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
                                    921 ; genAnd
      00960D A4 7F            [ 1]  922 	and	a, #0x7f
                                    923 ; genPointerSet
      00960F C7 53 40         [ 1]  924 	ld	0x5340, a
                           00025C   925 	Sstm8s_tim4$TIM4_ARRPreloadConfig$195 ==.
                                    926 ; genLabel
      009612                        927 00104$:
                           00025C   928 	Sstm8s_tim4$TIM4_ARRPreloadConfig$196 ==.
                                    929 ;	../SPL/src/stm8s_tim4.c: 248: }
                                    930 ; genEndFunction
                           00025C   931 	Sstm8s_tim4$TIM4_ARRPreloadConfig$197 ==.
                           00025C   932 	XG$TIM4_ARRPreloadConfig$0$0 ==.
      009612 81               [ 4]  933 	ret
                           00025D   934 	Sstm8s_tim4$TIM4_ARRPreloadConfig$198 ==.
                           00025D   935 	Sstm8s_tim4$TIM4_GenerateEvent$199 ==.
                                    936 ;	../SPL/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    937 ; genLabel
                                    938 ;	-----------------------------------------
                                    939 ;	 function TIM4_GenerateEvent
                                    940 ;	-----------------------------------------
                                    941 ;	Register assignment is optimal.
                                    942 ;	Stack space usage: 0 bytes.
      009613                        943 _TIM4_GenerateEvent:
                           00025D   944 	Sstm8s_tim4$TIM4_GenerateEvent$200 ==.
                           00025D   945 	Sstm8s_tim4$TIM4_GenerateEvent$201 ==.
                                    946 ;	../SPL/src/stm8s_tim4.c: 260: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
                                    947 ; genCmpEQorNE
      009613 7B 03            [ 1]  948 	ld	a, (0x03, sp)
      009615 4A               [ 1]  949 	dec	a
      009616 26 03            [ 1]  950 	jrne	00111$
      009618 CC 96 2A         [ 2]  951 	jp	00104$
      00961B                        952 00111$:
                           000265   953 	Sstm8s_tim4$TIM4_GenerateEvent$202 ==.
                                    954 ; skipping generated iCode
                                    955 ; skipping iCode since result will be rematerialized
                                    956 ; skipping iCode since result will be rematerialized
                                    957 ; genIPush
      00961B 4B 04            [ 1]  958 	push	#0x04
                           000267   959 	Sstm8s_tim4$TIM4_GenerateEvent$203 ==.
      00961D 4B 01            [ 1]  960 	push	#0x01
                           000269   961 	Sstm8s_tim4$TIM4_GenerateEvent$204 ==.
      00961F 5F               [ 1]  962 	clrw	x
      009620 89               [ 2]  963 	pushw	x
                           00026B   964 	Sstm8s_tim4$TIM4_GenerateEvent$205 ==.
                                    965 ; genIPush
      009621 4B D3            [ 1]  966 	push	#<(___str_0+0)
                           00026D   967 	Sstm8s_tim4$TIM4_GenerateEvent$206 ==.
      009623 4B 80            [ 1]  968 	push	#((___str_0+0) >> 8)
                           00026F   969 	Sstm8s_tim4$TIM4_GenerateEvent$207 ==.
                                    970 ; genCall
      009625 CD 82 65         [ 4]  971 	call	_assert_failed
      009628 5B 06            [ 2]  972 	addw	sp, #6
                           000274   973 	Sstm8s_tim4$TIM4_GenerateEvent$208 ==.
                                    974 ; genLabel
      00962A                        975 00104$:
                           000274   976 	Sstm8s_tim4$TIM4_GenerateEvent$209 ==.
                                    977 ;	../SPL/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
                                    978 ; genPointerSet
      00962A AE 53 43         [ 2]  979 	ldw	x, #0x5343
      00962D 7B 03            [ 1]  980 	ld	a, (0x03, sp)
      00962F F7               [ 1]  981 	ld	(x), a
                                    982 ; genLabel
      009630                        983 00101$:
                           00027A   984 	Sstm8s_tim4$TIM4_GenerateEvent$210 ==.
                                    985 ;	../SPL/src/stm8s_tim4.c: 264: }
                                    986 ; genEndFunction
                           00027A   987 	Sstm8s_tim4$TIM4_GenerateEvent$211 ==.
                           00027A   988 	XG$TIM4_GenerateEvent$0$0 ==.
      009630 81               [ 4]  989 	ret
                           00027B   990 	Sstm8s_tim4$TIM4_GenerateEvent$212 ==.
                           00027B   991 	Sstm8s_tim4$TIM4_SetCounter$213 ==.
                                    992 ;	../SPL/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    993 ; genLabel
                                    994 ;	-----------------------------------------
                                    995 ;	 function TIM4_SetCounter
                                    996 ;	-----------------------------------------
                                    997 ;	Register assignment is optimal.
                                    998 ;	Stack space usage: 0 bytes.
      009631                        999 _TIM4_SetCounter:
                           00027B  1000 	Sstm8s_tim4$TIM4_SetCounter$214 ==.
                           00027B  1001 	Sstm8s_tim4$TIM4_SetCounter$215 ==.
                                   1002 ;	../SPL/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
                                   1003 ; genPointerSet
      009631 AE 53 44         [ 2] 1004 	ldw	x, #0x5344
      009634 7B 03            [ 1] 1005 	ld	a, (0x03, sp)
      009636 F7               [ 1] 1006 	ld	(x), a
                                   1007 ; genLabel
      009637                       1008 00101$:
                           000281  1009 	Sstm8s_tim4$TIM4_SetCounter$216 ==.
                                   1010 ;	../SPL/src/stm8s_tim4.c: 276: }
                                   1011 ; genEndFunction
                           000281  1012 	Sstm8s_tim4$TIM4_SetCounter$217 ==.
                           000281  1013 	XG$TIM4_SetCounter$0$0 ==.
      009637 81               [ 4] 1014 	ret
                           000282  1015 	Sstm8s_tim4$TIM4_SetCounter$218 ==.
                           000282  1016 	Sstm8s_tim4$TIM4_SetAutoreload$219 ==.
                                   1017 ;	../SPL/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                   1018 ; genLabel
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function TIM4_SetAutoreload
                                   1021 ;	-----------------------------------------
                                   1022 ;	Register assignment is optimal.
                                   1023 ;	Stack space usage: 0 bytes.
      009638                       1024 _TIM4_SetAutoreload:
                           000282  1025 	Sstm8s_tim4$TIM4_SetAutoreload$220 ==.
                           000282  1026 	Sstm8s_tim4$TIM4_SetAutoreload$221 ==.
                                   1027 ;	../SPL/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
                                   1028 ; genPointerSet
      009638 AE 53 46         [ 2] 1029 	ldw	x, #0x5346
      00963B 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      00963D F7               [ 1] 1031 	ld	(x), a
                                   1032 ; genLabel
      00963E                       1033 00101$:
                           000288  1034 	Sstm8s_tim4$TIM4_SetAutoreload$222 ==.
                                   1035 ;	../SPL/src/stm8s_tim4.c: 288: }
                                   1036 ; genEndFunction
                           000288  1037 	Sstm8s_tim4$TIM4_SetAutoreload$223 ==.
                           000288  1038 	XG$TIM4_SetAutoreload$0$0 ==.
      00963E 81               [ 4] 1039 	ret
                           000289  1040 	Sstm8s_tim4$TIM4_SetAutoreload$224 ==.
                           000289  1041 	Sstm8s_tim4$TIM4_GetCounter$225 ==.
                                   1042 ;	../SPL/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                   1043 ; genLabel
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function TIM4_GetCounter
                                   1046 ;	-----------------------------------------
                                   1047 ;	Register assignment is optimal.
                                   1048 ;	Stack space usage: 0 bytes.
      00963F                       1049 _TIM4_GetCounter:
                           000289  1050 	Sstm8s_tim4$TIM4_GetCounter$226 ==.
                           000289  1051 	Sstm8s_tim4$TIM4_GetCounter$227 ==.
                                   1052 ;	../SPL/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
                                   1053 ; genPointerGet
      00963F C6 53 44         [ 1] 1054 	ld	a, 0x5344
                                   1055 ; genReturn
                                   1056 ; genLabel
      009642                       1057 00101$:
                           00028C  1058 	Sstm8s_tim4$TIM4_GetCounter$228 ==.
                                   1059 ;	../SPL/src/stm8s_tim4.c: 299: }
                                   1060 ; genEndFunction
                           00028C  1061 	Sstm8s_tim4$TIM4_GetCounter$229 ==.
                           00028C  1062 	XG$TIM4_GetCounter$0$0 ==.
      009642 81               [ 4] 1063 	ret
                           00028D  1064 	Sstm8s_tim4$TIM4_GetCounter$230 ==.
                           00028D  1065 	Sstm8s_tim4$TIM4_GetPrescaler$231 ==.
                                   1066 ;	../SPL/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                   1067 ; genLabel
                                   1068 ;	-----------------------------------------
                                   1069 ;	 function TIM4_GetPrescaler
                                   1070 ;	-----------------------------------------
                                   1071 ;	Register assignment is optimal.
                                   1072 ;	Stack space usage: 0 bytes.
      009643                       1073 _TIM4_GetPrescaler:
                           00028D  1074 	Sstm8s_tim4$TIM4_GetPrescaler$232 ==.
                           00028D  1075 	Sstm8s_tim4$TIM4_GetPrescaler$233 ==.
                                   1076 ;	../SPL/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
                                   1077 ; genPointerGet
      009643 C6 53 45         [ 1] 1078 	ld	a, 0x5345
                                   1079 ; genReturn
                                   1080 ; genLabel
      009646                       1081 00101$:
                           000290  1082 	Sstm8s_tim4$TIM4_GetPrescaler$234 ==.
                                   1083 ;	../SPL/src/stm8s_tim4.c: 310: }
                                   1084 ; genEndFunction
                           000290  1085 	Sstm8s_tim4$TIM4_GetPrescaler$235 ==.
                           000290  1086 	XG$TIM4_GetPrescaler$0$0 ==.
      009646 81               [ 4] 1087 	ret
                           000291  1088 	Sstm8s_tim4$TIM4_GetPrescaler$236 ==.
                           000291  1089 	Sstm8s_tim4$TIM4_GetFlagStatus$237 ==.
                                   1090 ;	../SPL/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                   1091 ; genLabel
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function TIM4_GetFlagStatus
                                   1094 ;	-----------------------------------------
                                   1095 ;	Register assignment is optimal.
                                   1096 ;	Stack space usage: 0 bytes.
      009647                       1097 _TIM4_GetFlagStatus:
                           000291  1098 	Sstm8s_tim4$TIM4_GetFlagStatus$238 ==.
                           000291  1099 	Sstm8s_tim4$TIM4_GetFlagStatus$239 ==.
                                   1100 ;	../SPL/src/stm8s_tim4.c: 324: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
                                   1101 ; genCmpEQorNE
      009647 7B 03            [ 1] 1102 	ld	a, (0x03, sp)
      009649 4A               [ 1] 1103 	dec	a
      00964A 26 03            [ 1] 1104 	jrne	00119$
      00964C CC 96 5E         [ 2] 1105 	jp	00107$
      00964F                       1106 00119$:
                           000299  1107 	Sstm8s_tim4$TIM4_GetFlagStatus$240 ==.
                                   1108 ; skipping generated iCode
                                   1109 ; skipping iCode since result will be rematerialized
                                   1110 ; skipping iCode since result will be rematerialized
                                   1111 ; genIPush
      00964F 4B 44            [ 1] 1112 	push	#0x44
                           00029B  1113 	Sstm8s_tim4$TIM4_GetFlagStatus$241 ==.
      009651 4B 01            [ 1] 1114 	push	#0x01
                           00029D  1115 	Sstm8s_tim4$TIM4_GetFlagStatus$242 ==.
      009653 5F               [ 1] 1116 	clrw	x
      009654 89               [ 2] 1117 	pushw	x
                           00029F  1118 	Sstm8s_tim4$TIM4_GetFlagStatus$243 ==.
                                   1119 ; genIPush
      009655 4B D3            [ 1] 1120 	push	#<(___str_0+0)
                           0002A1  1121 	Sstm8s_tim4$TIM4_GetFlagStatus$244 ==.
      009657 4B 80            [ 1] 1122 	push	#((___str_0+0) >> 8)
                           0002A3  1123 	Sstm8s_tim4$TIM4_GetFlagStatus$245 ==.
                                   1124 ; genCall
      009659 CD 82 65         [ 4] 1125 	call	_assert_failed
      00965C 5B 06            [ 2] 1126 	addw	sp, #6
                           0002A8  1127 	Sstm8s_tim4$TIM4_GetFlagStatus$246 ==.
                                   1128 ; genLabel
      00965E                       1129 00107$:
                           0002A8  1130 	Sstm8s_tim4$TIM4_GetFlagStatus$247 ==.
                                   1131 ;	../SPL/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
                                   1132 ; genPointerGet
      00965E C6 53 42         [ 1] 1133 	ld	a, 0x5342
                                   1134 ; genAnd
      009661 14 03            [ 1] 1135 	and	a, (0x03, sp)
                                   1136 ; genIfx
      009663 4D               [ 1] 1137 	tnz	a
      009664 26 03            [ 1] 1138 	jrne	00121$
      009666 CC 96 6E         [ 2] 1139 	jp	00102$
      009669                       1140 00121$:
                           0002B3  1141 	Sstm8s_tim4$TIM4_GetFlagStatus$248 ==.
                           0002B3  1142 	Sstm8s_tim4$TIM4_GetFlagStatus$249 ==.
                                   1143 ;	../SPL/src/stm8s_tim4.c: 328: bitstatus = SET;
                                   1144 ; genAssign
      009669 A6 01            [ 1] 1145 	ld	a, #0x01
                           0002B5  1146 	Sstm8s_tim4$TIM4_GetFlagStatus$250 ==.
                                   1147 ; genGoto
      00966B CC 96 6F         [ 2] 1148 	jp	00103$
                                   1149 ; genLabel
      00966E                       1150 00102$:
                           0002B8  1151 	Sstm8s_tim4$TIM4_GetFlagStatus$251 ==.
                           0002B8  1152 	Sstm8s_tim4$TIM4_GetFlagStatus$252 ==.
                                   1153 ;	../SPL/src/stm8s_tim4.c: 332: bitstatus = RESET;
                                   1154 ; genAssign
      00966E 4F               [ 1] 1155 	clr	a
                           0002B9  1156 	Sstm8s_tim4$TIM4_GetFlagStatus$253 ==.
                                   1157 ; genLabel
      00966F                       1158 00103$:
                           0002B9  1159 	Sstm8s_tim4$TIM4_GetFlagStatus$254 ==.
                                   1160 ;	../SPL/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                   1161 ; genReturn
                                   1162 ; genLabel
      00966F                       1163 00104$:
                           0002B9  1164 	Sstm8s_tim4$TIM4_GetFlagStatus$255 ==.
                                   1165 ;	../SPL/src/stm8s_tim4.c: 335: }
                                   1166 ; genEndFunction
                           0002B9  1167 	Sstm8s_tim4$TIM4_GetFlagStatus$256 ==.
                           0002B9  1168 	XG$TIM4_GetFlagStatus$0$0 ==.
      00966F 81               [ 4] 1169 	ret
                           0002BA  1170 	Sstm8s_tim4$TIM4_GetFlagStatus$257 ==.
                           0002BA  1171 	Sstm8s_tim4$TIM4_ClearFlag$258 ==.
                                   1172 ;	../SPL/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                   1173 ; genLabel
                                   1174 ;	-----------------------------------------
                                   1175 ;	 function TIM4_ClearFlag
                                   1176 ;	-----------------------------------------
                                   1177 ;	Register assignment is optimal.
                                   1178 ;	Stack space usage: 0 bytes.
      009670                       1179 _TIM4_ClearFlag:
                           0002BA  1180 	Sstm8s_tim4$TIM4_ClearFlag$259 ==.
                           0002BA  1181 	Sstm8s_tim4$TIM4_ClearFlag$260 ==.
                                   1182 ;	../SPL/src/stm8s_tim4.c: 347: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
                                   1183 ; genCmpEQorNE
      009670 7B 03            [ 1] 1184 	ld	a, (0x03, sp)
      009672 4A               [ 1] 1185 	dec	a
      009673 26 03            [ 1] 1186 	jrne	00111$
      009675 CC 96 87         [ 2] 1187 	jp	00104$
      009678                       1188 00111$:
                           0002C2  1189 	Sstm8s_tim4$TIM4_ClearFlag$261 ==.
                                   1190 ; skipping generated iCode
                                   1191 ; skipping iCode since result will be rematerialized
                                   1192 ; skipping iCode since result will be rematerialized
                                   1193 ; genIPush
      009678 4B 5B            [ 1] 1194 	push	#0x5b
                           0002C4  1195 	Sstm8s_tim4$TIM4_ClearFlag$262 ==.
      00967A 4B 01            [ 1] 1196 	push	#0x01
                           0002C6  1197 	Sstm8s_tim4$TIM4_ClearFlag$263 ==.
      00967C 5F               [ 1] 1198 	clrw	x
      00967D 89               [ 2] 1199 	pushw	x
                           0002C8  1200 	Sstm8s_tim4$TIM4_ClearFlag$264 ==.
                                   1201 ; genIPush
      00967E 4B D3            [ 1] 1202 	push	#<(___str_0+0)
                           0002CA  1203 	Sstm8s_tim4$TIM4_ClearFlag$265 ==.
      009680 4B 80            [ 1] 1204 	push	#((___str_0+0) >> 8)
                           0002CC  1205 	Sstm8s_tim4$TIM4_ClearFlag$266 ==.
                                   1206 ; genCall
      009682 CD 82 65         [ 4] 1207 	call	_assert_failed
      009685 5B 06            [ 2] 1208 	addw	sp, #6
                           0002D1  1209 	Sstm8s_tim4$TIM4_ClearFlag$267 ==.
                                   1210 ; genLabel
      009687                       1211 00104$:
                           0002D1  1212 	Sstm8s_tim4$TIM4_ClearFlag$268 ==.
                                   1213 ;	../SPL/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
                                   1214 ; genCpl
      009687 7B 03            [ 1] 1215 	ld	a, (0x03, sp)
      009689 43               [ 1] 1216 	cpl	a
                                   1217 ; genPointerSet
      00968A C7 53 42         [ 1] 1218 	ld	0x5342, a
                                   1219 ; genLabel
      00968D                       1220 00101$:
                           0002D7  1221 	Sstm8s_tim4$TIM4_ClearFlag$269 ==.
                                   1222 ;	../SPL/src/stm8s_tim4.c: 351: }
                                   1223 ; genEndFunction
                           0002D7  1224 	Sstm8s_tim4$TIM4_ClearFlag$270 ==.
                           0002D7  1225 	XG$TIM4_ClearFlag$0$0 ==.
      00968D 81               [ 4] 1226 	ret
                           0002D8  1227 	Sstm8s_tim4$TIM4_ClearFlag$271 ==.
                           0002D8  1228 	Sstm8s_tim4$TIM4_GetITStatus$272 ==.
                                   1229 ;	../SPL/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                   1230 ; genLabel
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function TIM4_GetITStatus
                                   1233 ;	-----------------------------------------
                                   1234 ;	Register assignment is optimal.
                                   1235 ;	Stack space usage: 1 bytes.
      00968E                       1236 _TIM4_GetITStatus:
                           0002D8  1237 	Sstm8s_tim4$TIM4_GetITStatus$273 ==.
      00968E 88               [ 1] 1238 	push	a
                           0002D9  1239 	Sstm8s_tim4$TIM4_GetITStatus$274 ==.
                           0002D9  1240 	Sstm8s_tim4$TIM4_GetITStatus$275 ==.
                                   1241 ;	../SPL/src/stm8s_tim4.c: 367: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                   1242 ; genCmpEQorNE
      00968F 7B 04            [ 1] 1243 	ld	a, (0x04, sp)
      009691 4A               [ 1] 1244 	dec	a
      009692 26 03            [ 1] 1245 	jrne	00125$
      009694 CC 96 A6         [ 2] 1246 	jp	00108$
      009697                       1247 00125$:
                           0002E1  1248 	Sstm8s_tim4$TIM4_GetITStatus$276 ==.
                                   1249 ; skipping generated iCode
                                   1250 ; skipping iCode since result will be rematerialized
                                   1251 ; skipping iCode since result will be rematerialized
                                   1252 ; genIPush
      009697 4B 6F            [ 1] 1253 	push	#0x6f
                           0002E3  1254 	Sstm8s_tim4$TIM4_GetITStatus$277 ==.
      009699 4B 01            [ 1] 1255 	push	#0x01
                           0002E5  1256 	Sstm8s_tim4$TIM4_GetITStatus$278 ==.
      00969B 5F               [ 1] 1257 	clrw	x
      00969C 89               [ 2] 1258 	pushw	x
                           0002E7  1259 	Sstm8s_tim4$TIM4_GetITStatus$279 ==.
                                   1260 ; genIPush
      00969D 4B D3            [ 1] 1261 	push	#<(___str_0+0)
                           0002E9  1262 	Sstm8s_tim4$TIM4_GetITStatus$280 ==.
      00969F 4B 80            [ 1] 1263 	push	#((___str_0+0) >> 8)
                           0002EB  1264 	Sstm8s_tim4$TIM4_GetITStatus$281 ==.
                                   1265 ; genCall
      0096A1 CD 82 65         [ 4] 1266 	call	_assert_failed
      0096A4 5B 06            [ 2] 1267 	addw	sp, #6
                           0002F0  1268 	Sstm8s_tim4$TIM4_GetITStatus$282 ==.
                                   1269 ; genLabel
      0096A6                       1270 00108$:
                           0002F0  1271 	Sstm8s_tim4$TIM4_GetITStatus$283 ==.
                                   1272 ;	../SPL/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
                                   1273 ; genPointerGet
      0096A6 C6 53 42         [ 1] 1274 	ld	a, 0x5342
                                   1275 ; genAnd
      0096A9 14 04            [ 1] 1276 	and	a, (0x04, sp)
                                   1277 ; genAssign
      0096AB 6B 01            [ 1] 1278 	ld	(0x01, sp), a
                           0002F7  1279 	Sstm8s_tim4$TIM4_GetITStatus$284 ==.
                                   1280 ;	../SPL/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
                                   1281 ; genPointerGet
      0096AD C6 53 41         [ 1] 1282 	ld	a, 0x5341
                                   1283 ; genAnd
      0096B0 14 04            [ 1] 1284 	and	a, (0x04, sp)
                                   1285 ; genAssign
                           0002FC  1286 	Sstm8s_tim4$TIM4_GetITStatus$285 ==.
                                   1287 ;	../SPL/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
                                   1288 ; genIfx
      0096B2 0D 01            [ 1] 1289 	tnz	(0x01, sp)
      0096B4 26 03            [ 1] 1290 	jrne	00127$
      0096B6 CC 96 C4         [ 2] 1291 	jp	00102$
      0096B9                       1292 00127$:
                                   1293 ; genIfx
      0096B9 4D               [ 1] 1294 	tnz	a
      0096BA 26 03            [ 1] 1295 	jrne	00128$
      0096BC CC 96 C4         [ 2] 1296 	jp	00102$
      0096BF                       1297 00128$:
                           000309  1298 	Sstm8s_tim4$TIM4_GetITStatus$286 ==.
                           000309  1299 	Sstm8s_tim4$TIM4_GetITStatus$287 ==.
                                   1300 ;	../SPL/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
                                   1301 ; genAssign
      0096BF A6 01            [ 1] 1302 	ld	a, #0x01
                           00030B  1303 	Sstm8s_tim4$TIM4_GetITStatus$288 ==.
                                   1304 ; genGoto
      0096C1 CC 96 C5         [ 2] 1305 	jp	00103$
                                   1306 ; genLabel
      0096C4                       1307 00102$:
                           00030E  1308 	Sstm8s_tim4$TIM4_GetITStatus$289 ==.
                           00030E  1309 	Sstm8s_tim4$TIM4_GetITStatus$290 ==.
                                   1310 ;	../SPL/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
                                   1311 ; genAssign
      0096C4 4F               [ 1] 1312 	clr	a
                           00030F  1313 	Sstm8s_tim4$TIM4_GetITStatus$291 ==.
                                   1314 ; genLabel
      0096C5                       1315 00103$:
                           00030F  1316 	Sstm8s_tim4$TIM4_GetITStatus$292 ==.
                                   1317 ;	../SPL/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                   1318 ; genReturn
                                   1319 ; genLabel
      0096C5                       1320 00105$:
                           00030F  1321 	Sstm8s_tim4$TIM4_GetITStatus$293 ==.
                                   1322 ;	../SPL/src/stm8s_tim4.c: 382: }
                                   1323 ; genEndFunction
      0096C5 5B 01            [ 2] 1324 	addw	sp, #1
                           000311  1325 	Sstm8s_tim4$TIM4_GetITStatus$294 ==.
                           000311  1326 	Sstm8s_tim4$TIM4_GetITStatus$295 ==.
                           000311  1327 	XG$TIM4_GetITStatus$0$0 ==.
      0096C7 81               [ 4] 1328 	ret
                           000312  1329 	Sstm8s_tim4$TIM4_GetITStatus$296 ==.
                           000312  1330 	Sstm8s_tim4$TIM4_ClearITPendingBit$297 ==.
                                   1331 ;	../SPL/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                   1332 ; genLabel
                                   1333 ;	-----------------------------------------
                                   1334 ;	 function TIM4_ClearITPendingBit
                                   1335 ;	-----------------------------------------
                                   1336 ;	Register assignment is optimal.
                                   1337 ;	Stack space usage: 0 bytes.
      0096C8                       1338 _TIM4_ClearITPendingBit:
                           000312  1339 	Sstm8s_tim4$TIM4_ClearITPendingBit$298 ==.
                           000312  1340 	Sstm8s_tim4$TIM4_ClearITPendingBit$299 ==.
                                   1341 ;	../SPL/src/stm8s_tim4.c: 394: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                   1342 ; genCmpEQorNE
      0096C8 7B 03            [ 1] 1343 	ld	a, (0x03, sp)
      0096CA 4A               [ 1] 1344 	dec	a
      0096CB 26 03            [ 1] 1345 	jrne	00111$
      0096CD CC 96 DF         [ 2] 1346 	jp	00104$
      0096D0                       1347 00111$:
                           00031A  1348 	Sstm8s_tim4$TIM4_ClearITPendingBit$300 ==.
                                   1349 ; skipping generated iCode
                                   1350 ; skipping iCode since result will be rematerialized
                                   1351 ; skipping iCode since result will be rematerialized
                                   1352 ; genIPush
      0096D0 4B 8A            [ 1] 1353 	push	#0x8a
                           00031C  1354 	Sstm8s_tim4$TIM4_ClearITPendingBit$301 ==.
      0096D2 4B 01            [ 1] 1355 	push	#0x01
                           00031E  1356 	Sstm8s_tim4$TIM4_ClearITPendingBit$302 ==.
      0096D4 5F               [ 1] 1357 	clrw	x
      0096D5 89               [ 2] 1358 	pushw	x
                           000320  1359 	Sstm8s_tim4$TIM4_ClearITPendingBit$303 ==.
                                   1360 ; genIPush
      0096D6 4B D3            [ 1] 1361 	push	#<(___str_0+0)
                           000322  1362 	Sstm8s_tim4$TIM4_ClearITPendingBit$304 ==.
      0096D8 4B 80            [ 1] 1363 	push	#((___str_0+0) >> 8)
                           000324  1364 	Sstm8s_tim4$TIM4_ClearITPendingBit$305 ==.
                                   1365 ; genCall
      0096DA CD 82 65         [ 4] 1366 	call	_assert_failed
      0096DD 5B 06            [ 2] 1367 	addw	sp, #6
                           000329  1368 	Sstm8s_tim4$TIM4_ClearITPendingBit$306 ==.
                                   1369 ; genLabel
      0096DF                       1370 00104$:
                           000329  1371 	Sstm8s_tim4$TIM4_ClearITPendingBit$307 ==.
                                   1372 ;	../SPL/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
                                   1373 ; genCpl
      0096DF 7B 03            [ 1] 1374 	ld	a, (0x03, sp)
      0096E1 43               [ 1] 1375 	cpl	a
                                   1376 ; genPointerSet
      0096E2 C7 53 42         [ 1] 1377 	ld	0x5342, a
                                   1378 ; genLabel
      0096E5                       1379 00101$:
                           00032F  1380 	Sstm8s_tim4$TIM4_ClearITPendingBit$308 ==.
                                   1381 ;	../SPL/src/stm8s_tim4.c: 398: }
                                   1382 ; genEndFunction
                           00032F  1383 	Sstm8s_tim4$TIM4_ClearITPendingBit$309 ==.
                           00032F  1384 	XG$TIM4_ClearITPendingBit$0$0 ==.
      0096E5 81               [ 4] 1385 	ret
                           000330  1386 	Sstm8s_tim4$TIM4_ClearITPendingBit$310 ==.
                                   1387 	.area CODE
                                   1388 	.area CONST
                           000000  1389 Fstm8s_tim4$__str_0$0_0$0 == .
                                   1390 	.area CONST
      0080D3                       1391 ___str_0:
      0080D3 2E 2E 2F 53 50 4C 2F  1392 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      0080EA 00                    1393 	.db 0x00
                                   1394 	.area CODE
                                   1395 	.area INITIALIZER
                                   1396 	.area CABS (ABS)
                                   1397 
                                   1398 	.area .debug_line (NOLOAD)
      00168C 00 00 03 A7           1399 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001690                       1400 Ldebug_line_start:
      001690 00 02                 1401 	.dw	2
      001692 00 00 00 78           1402 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001696 01                    1403 	.db	1
      001697 01                    1404 	.db	1
      001698 FB                    1405 	.db	-5
      001699 0F                    1406 	.db	15
      00169A 0A                    1407 	.db	10
      00169B 00                    1408 	.db	0
      00169C 01                    1409 	.db	1
      00169D 01                    1410 	.db	1
      00169E 01                    1411 	.db	1
      00169F 01                    1412 	.db	1
      0016A0 00                    1413 	.db	0
      0016A1 00                    1414 	.db	0
      0016A2 00                    1415 	.db	0
      0016A3 01                    1416 	.db	1
      0016A4 43 3A 5C 50 72 6F 67  1417 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0016CC 00                    1418 	.db	0
      0016CD 43 3A 5C 50 72 6F 67  1419 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0016F0 00                    1420 	.db	0
      0016F1 00                    1421 	.db	0
      0016F2 2E 2E 2F 53 50 4C 2F  1422 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      001709 00                    1423 	.db	0
      00170A 00                    1424 	.uleb128	0
      00170B 00                    1425 	.uleb128	0
      00170C 00                    1426 	.uleb128	0
      00170D 00                    1427 	.db	0
      00170E                       1428 Ldebug_line_stmt:
      00170E 00                    1429 	.db	0
      00170F 05                    1430 	.uleb128	5
      001710 02                    1431 	.db	2
      001711 00 00 93 B6           1432 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$0)
      001715 03                    1433 	.db	3
      001716 30                    1434 	.sleb128	48
      001717 01                    1435 	.db	1
      001718 09                    1436 	.db	9
      001719 00 00                 1437 	.dw	Sstm8s_tim4$TIM4_DeInit$2-Sstm8s_tim4$TIM4_DeInit$0
      00171B 03                    1438 	.db	3
      00171C 02                    1439 	.sleb128	2
      00171D 01                    1440 	.db	1
      00171E 09                    1441 	.db	9
      00171F 00 04                 1442 	.dw	Sstm8s_tim4$TIM4_DeInit$3-Sstm8s_tim4$TIM4_DeInit$2
      001721 03                    1443 	.db	3
      001722 01                    1444 	.sleb128	1
      001723 01                    1445 	.db	1
      001724 09                    1446 	.db	9
      001725 00 04                 1447 	.dw	Sstm8s_tim4$TIM4_DeInit$4-Sstm8s_tim4$TIM4_DeInit$3
      001727 03                    1448 	.db	3
      001728 01                    1449 	.sleb128	1
      001729 01                    1450 	.db	1
      00172A 09                    1451 	.db	9
      00172B 00 04                 1452 	.dw	Sstm8s_tim4$TIM4_DeInit$5-Sstm8s_tim4$TIM4_DeInit$4
      00172D 03                    1453 	.db	3
      00172E 01                    1454 	.sleb128	1
      00172F 01                    1455 	.db	1
      001730 09                    1456 	.db	9
      001731 00 04                 1457 	.dw	Sstm8s_tim4$TIM4_DeInit$6-Sstm8s_tim4$TIM4_DeInit$5
      001733 03                    1458 	.db	3
      001734 01                    1459 	.sleb128	1
      001735 01                    1460 	.db	1
      001736 09                    1461 	.db	9
      001737 00 04                 1462 	.dw	Sstm8s_tim4$TIM4_DeInit$7-Sstm8s_tim4$TIM4_DeInit$6
      001739 03                    1463 	.db	3
      00173A 01                    1464 	.sleb128	1
      00173B 01                    1465 	.db	1
      00173C 09                    1466 	.db	9
      00173D 00 04                 1467 	.dw	Sstm8s_tim4$TIM4_DeInit$8-Sstm8s_tim4$TIM4_DeInit$7
      00173F 03                    1468 	.db	3
      001740 01                    1469 	.sleb128	1
      001741 01                    1470 	.db	1
      001742 09                    1471 	.db	9
      001743 00 01                 1472 	.dw	1+Sstm8s_tim4$TIM4_DeInit$9-Sstm8s_tim4$TIM4_DeInit$8
      001745 00                    1473 	.db	0
      001746 01                    1474 	.uleb128	1
      001747 01                    1475 	.db	1
      001748 00                    1476 	.db	0
      001749 05                    1477 	.uleb128	5
      00174A 02                    1478 	.db	2
      00174B 00 00 93 CF           1479 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$11)
      00174F 03                    1480 	.db	3
      001750 C0 00                 1481 	.sleb128	64
      001752 01                    1482 	.db	1
      001753 09                    1483 	.db	9
      001754 00 00                 1484 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$13-Sstm8s_tim4$TIM4_TimeBaseInit$11
      001756 03                    1485 	.db	3
      001757 03                    1486 	.sleb128	3
      001758 01                    1487 	.db	1
      001759 09                    1488 	.db	9
      00175A 00 54                 1489 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$27-Sstm8s_tim4$TIM4_TimeBaseInit$13
      00175C 03                    1490 	.db	3
      00175D 02                    1491 	.sleb128	2
      00175E 01                    1492 	.db	1
      00175F 09                    1493 	.db	9
      001760 00 06                 1494 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$28-Sstm8s_tim4$TIM4_TimeBaseInit$27
      001762 03                    1495 	.db	3
      001763 02                    1496 	.sleb128	2
      001764 01                    1497 	.db	1
      001765 09                    1498 	.db	9
      001766 00 06                 1499 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$29-Sstm8s_tim4$TIM4_TimeBaseInit$28
      001768 03                    1500 	.db	3
      001769 01                    1501 	.sleb128	1
      00176A 01                    1502 	.db	1
      00176B 09                    1503 	.db	9
      00176C 00 01                 1504 	.dw	1+Sstm8s_tim4$TIM4_TimeBaseInit$30-Sstm8s_tim4$TIM4_TimeBaseInit$29
      00176E 00                    1505 	.db	0
      00176F 01                    1506 	.uleb128	1
      001770 01                    1507 	.db	1
      001771 00                    1508 	.db	0
      001772 05                    1509 	.uleb128	5
      001773 02                    1510 	.db	2
      001774 00 00 94 30           1511 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$32)
      001778 03                    1512 	.db	3
      001779 D0 00                 1513 	.sleb128	80
      00177B 01                    1514 	.db	1
      00177C 09                    1515 	.db	9
      00177D 00 00                 1516 	.dw	Sstm8s_tim4$TIM4_Cmd$34-Sstm8s_tim4$TIM4_Cmd$32
      00177F 03                    1517 	.db	3
      001780 03                    1518 	.sleb128	3
      001781 01                    1519 	.db	1
      001782 09                    1520 	.db	9
      001783 00 1E                 1521 	.dw	Sstm8s_tim4$TIM4_Cmd$42-Sstm8s_tim4$TIM4_Cmd$34
      001785 03                    1522 	.db	3
      001786 05                    1523 	.sleb128	5
      001787 01                    1524 	.db	1
      001788 09                    1525 	.db	9
      001789 00 03                 1526 	.dw	Sstm8s_tim4$TIM4_Cmd$43-Sstm8s_tim4$TIM4_Cmd$42
      00178B 03                    1527 	.db	3
      00178C 7E                    1528 	.sleb128	-2
      00178D 01                    1529 	.db	1
      00178E 09                    1530 	.db	9
      00178F 00 07                 1531 	.dw	Sstm8s_tim4$TIM4_Cmd$45-Sstm8s_tim4$TIM4_Cmd$43
      001791 03                    1532 	.db	3
      001792 02                    1533 	.sleb128	2
      001793 01                    1534 	.db	1
      001794 09                    1535 	.db	9
      001795 00 08                 1536 	.dw	Sstm8s_tim4$TIM4_Cmd$48-Sstm8s_tim4$TIM4_Cmd$45
      001797 03                    1537 	.db	3
      001798 04                    1538 	.sleb128	4
      001799 01                    1539 	.db	1
      00179A 09                    1540 	.db	9
      00179B 00 05                 1541 	.dw	Sstm8s_tim4$TIM4_Cmd$50-Sstm8s_tim4$TIM4_Cmd$48
      00179D 03                    1542 	.db	3
      00179E 02                    1543 	.sleb128	2
      00179F 01                    1544 	.db	1
      0017A0 09                    1545 	.db	9
      0017A1 00 01                 1546 	.dw	1+Sstm8s_tim4$TIM4_Cmd$51-Sstm8s_tim4$TIM4_Cmd$50
      0017A3 00                    1547 	.db	0
      0017A4 01                    1548 	.uleb128	1
      0017A5 01                    1549 	.db	1
      0017A6 00                    1550 	.db	0
      0017A7 05                    1551 	.uleb128	5
      0017A8 02                    1552 	.db	2
      0017A9 00 00 94 66           1553 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$53)
      0017AD 03                    1554 	.db	3
      0017AE EA 00                 1555 	.sleb128	106
      0017B0 01                    1556 	.db	1
      0017B1 09                    1557 	.db	9
      0017B2 00 01                 1558 	.dw	Sstm8s_tim4$TIM4_ITConfig$56-Sstm8s_tim4$TIM4_ITConfig$53
      0017B4 03                    1559 	.db	3
      0017B5 03                    1560 	.sleb128	3
      0017B6 01                    1561 	.db	1
      0017B7 09                    1562 	.db	9
      0017B8 00 17                 1563 	.dw	Sstm8s_tim4$TIM4_ITConfig$64-Sstm8s_tim4$TIM4_ITConfig$56
      0017BA 03                    1564 	.db	3
      0017BB 01                    1565 	.sleb128	1
      0017BC 01                    1566 	.db	1
      0017BD 09                    1567 	.db	9
      0017BE 00 1E                 1568 	.dw	Sstm8s_tim4$TIM4_ITConfig$72-Sstm8s_tim4$TIM4_ITConfig$64
      0017C0 03                    1569 	.db	3
      0017C1 05                    1570 	.sleb128	5
      0017C2 01                    1571 	.db	1
      0017C3 09                    1572 	.db	9
      0017C4 00 03                 1573 	.dw	Sstm8s_tim4$TIM4_ITConfig$73-Sstm8s_tim4$TIM4_ITConfig$72
      0017C6 03                    1574 	.db	3
      0017C7 7D                    1575 	.sleb128	-3
      0017C8 01                    1576 	.db	1
      0017C9 09                    1577 	.db	9
      0017CA 00 07                 1578 	.dw	Sstm8s_tim4$TIM4_ITConfig$75-Sstm8s_tim4$TIM4_ITConfig$73
      0017CC 03                    1579 	.db	3
      0017CD 03                    1580 	.sleb128	3
      0017CE 01                    1581 	.db	1
      0017CF 09                    1582 	.db	9
      0017D0 00 08                 1583 	.dw	Sstm8s_tim4$TIM4_ITConfig$78-Sstm8s_tim4$TIM4_ITConfig$75
      0017D2 03                    1584 	.db	3
      0017D3 05                    1585 	.sleb128	5
      0017D4 01                    1586 	.db	1
      0017D5 09                    1587 	.db	9
      0017D6 00 0C                 1588 	.dw	Sstm8s_tim4$TIM4_ITConfig$82-Sstm8s_tim4$TIM4_ITConfig$78
      0017D8 03                    1589 	.db	3
      0017D9 02                    1590 	.sleb128	2
      0017DA 01                    1591 	.db	1
      0017DB 09                    1592 	.db	9
      0017DC 00 02                 1593 	.dw	1+Sstm8s_tim4$TIM4_ITConfig$84-Sstm8s_tim4$TIM4_ITConfig$82
      0017DE 00                    1594 	.db	0
      0017DF 01                    1595 	.uleb128	1
      0017E0 01                    1596 	.db	1
      0017E1 00                    1597 	.db	0
      0017E2 05                    1598 	.uleb128	5
      0017E3 02                    1599 	.db	2
      0017E4 00 00 94 BC           1600 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$86)
      0017E8 03                    1601 	.db	3
      0017E9 82 01                 1602 	.sleb128	130
      0017EB 01                    1603 	.db	1
      0017EC 09                    1604 	.db	9
      0017ED 00 00                 1605 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$88-Sstm8s_tim4$TIM4_UpdateDisableConfig$86
      0017EF 03                    1606 	.db	3
      0017F0 03                    1607 	.sleb128	3
      0017F1 01                    1608 	.db	1
      0017F2 09                    1609 	.db	9
      0017F3 00 1E                 1610 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$96-Sstm8s_tim4$TIM4_UpdateDisableConfig$88
      0017F5 03                    1611 	.db	3
      0017F6 05                    1612 	.sleb128	5
      0017F7 01                    1613 	.db	1
      0017F8 09                    1614 	.db	9
      0017F9 00 03                 1615 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$97-Sstm8s_tim4$TIM4_UpdateDisableConfig$96
      0017FB 03                    1616 	.db	3
      0017FC 7E                    1617 	.sleb128	-2
      0017FD 01                    1618 	.db	1
      0017FE 09                    1619 	.db	9
      0017FF 00 07                 1620 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$99-Sstm8s_tim4$TIM4_UpdateDisableConfig$97
      001801 03                    1621 	.db	3
      001802 02                    1622 	.sleb128	2
      001803 01                    1623 	.db	1
      001804 09                    1624 	.db	9
      001805 00 08                 1625 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$102-Sstm8s_tim4$TIM4_UpdateDisableConfig$99
      001807 03                    1626 	.db	3
      001808 04                    1627 	.sleb128	4
      001809 01                    1628 	.db	1
      00180A 09                    1629 	.db	9
      00180B 00 05                 1630 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$104-Sstm8s_tim4$TIM4_UpdateDisableConfig$102
      00180D 03                    1631 	.db	3
      00180E 02                    1632 	.sleb128	2
      00180F 01                    1633 	.db	1
      001810 09                    1634 	.db	9
      001811 00 01                 1635 	.dw	1+Sstm8s_tim4$TIM4_UpdateDisableConfig$105-Sstm8s_tim4$TIM4_UpdateDisableConfig$104
      001813 00                    1636 	.db	0
      001814 01                    1637 	.uleb128	1
      001815 01                    1638 	.db	1
      001816 00                    1639 	.db	0
      001817 05                    1640 	.uleb128	5
      001818 02                    1641 	.db	2
      001819 00 00 94 F2           1642 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$107)
      00181D 03                    1643 	.db	3
      00181E 9A 01                 1644 	.sleb128	154
      001820 01                    1645 	.db	1
      001821 09                    1646 	.db	9
      001822 00 00                 1647 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$109-Sstm8s_tim4$TIM4_UpdateRequestConfig$107
      001824 03                    1648 	.db	3
      001825 03                    1649 	.sleb128	3
      001826 01                    1650 	.db	1
      001827 09                    1651 	.db	9
      001828 00 1E                 1652 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$117-Sstm8s_tim4$TIM4_UpdateRequestConfig$109
      00182A 03                    1653 	.db	3
      00182B 05                    1654 	.sleb128	5
      00182C 01                    1655 	.db	1
      00182D 09                    1656 	.db	9
      00182E 00 03                 1657 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$118-Sstm8s_tim4$TIM4_UpdateRequestConfig$117
      001830 03                    1658 	.db	3
      001831 7E                    1659 	.sleb128	-2
      001832 01                    1660 	.db	1
      001833 09                    1661 	.db	9
      001834 00 07                 1662 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$120-Sstm8s_tim4$TIM4_UpdateRequestConfig$118
      001836 03                    1663 	.db	3
      001837 02                    1664 	.sleb128	2
      001838 01                    1665 	.db	1
      001839 09                    1666 	.db	9
      00183A 00 08                 1667 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$123-Sstm8s_tim4$TIM4_UpdateRequestConfig$120
      00183C 03                    1668 	.db	3
      00183D 04                    1669 	.sleb128	4
      00183E 01                    1670 	.db	1
      00183F 09                    1671 	.db	9
      001840 00 05                 1672 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$125-Sstm8s_tim4$TIM4_UpdateRequestConfig$123
      001842 03                    1673 	.db	3
      001843 02                    1674 	.sleb128	2
      001844 01                    1675 	.db	1
      001845 09                    1676 	.db	9
      001846 00 01                 1677 	.dw	1+Sstm8s_tim4$TIM4_UpdateRequestConfig$126-Sstm8s_tim4$TIM4_UpdateRequestConfig$125
      001848 00                    1678 	.db	0
      001849 01                    1679 	.uleb128	1
      00184A 01                    1680 	.db	1
      00184B 00                    1681 	.db	0
      00184C 05                    1682 	.uleb128	5
      00184D 02                    1683 	.db	2
      00184E 00 00 95 28           1684 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$128)
      001852 03                    1685 	.db	3
      001853 B2 01                 1686 	.sleb128	178
      001855 01                    1687 	.db	1
      001856 09                    1688 	.db	9
      001857 00 00                 1689 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$130-Sstm8s_tim4$TIM4_SelectOnePulseMode$128
      001859 03                    1690 	.db	3
      00185A 03                    1691 	.sleb128	3
      00185B 01                    1692 	.db	1
      00185C 09                    1693 	.db	9
      00185D 00 1E                 1694 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$138-Sstm8s_tim4$TIM4_SelectOnePulseMode$130
      00185F 03                    1695 	.db	3
      001860 05                    1696 	.sleb128	5
      001861 01                    1697 	.db	1
      001862 09                    1698 	.db	9
      001863 00 03                 1699 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$139-Sstm8s_tim4$TIM4_SelectOnePulseMode$138
      001865 03                    1700 	.db	3
      001866 7E                    1701 	.sleb128	-2
      001867 01                    1702 	.db	1
      001868 09                    1703 	.db	9
      001869 00 07                 1704 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$141-Sstm8s_tim4$TIM4_SelectOnePulseMode$139
      00186B 03                    1705 	.db	3
      00186C 02                    1706 	.sleb128	2
      00186D 01                    1707 	.db	1
      00186E 09                    1708 	.db	9
      00186F 00 08                 1709 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$144-Sstm8s_tim4$TIM4_SelectOnePulseMode$141
      001871 03                    1710 	.db	3
      001872 04                    1711 	.sleb128	4
      001873 01                    1712 	.db	1
      001874 09                    1713 	.db	9
      001875 00 05                 1714 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$146-Sstm8s_tim4$TIM4_SelectOnePulseMode$144
      001877 03                    1715 	.db	3
      001878 02                    1716 	.sleb128	2
      001879 01                    1717 	.db	1
      00187A 09                    1718 	.db	9
      00187B 00 01                 1719 	.dw	1+Sstm8s_tim4$TIM4_SelectOnePulseMode$147-Sstm8s_tim4$TIM4_SelectOnePulseMode$146
      00187D 00                    1720 	.db	0
      00187E 01                    1721 	.uleb128	1
      00187F 01                    1722 	.db	1
      001880 00                    1723 	.db	0
      001881 05                    1724 	.uleb128	5
      001882 02                    1725 	.db	2
      001883 00 00 95 5E           1726 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$149)
      001887 03                    1727 	.db	3
      001888 D6 01                 1728 	.sleb128	214
      00188A 01                    1729 	.db	1
      00188B 09                    1730 	.db	9
      00188C 00 00                 1731 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$151-Sstm8s_tim4$TIM4_PrescalerConfig$149
      00188E 03                    1732 	.db	3
      00188F 03                    1733 	.sleb128	3
      001890 01                    1734 	.db	1
      001891 09                    1735 	.db	9
      001892 00 1E                 1736 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$159-Sstm8s_tim4$TIM4_PrescalerConfig$151
      001894 03                    1737 	.db	3
      001895 01                    1738 	.sleb128	1
      001896 01                    1739 	.db	1
      001897 09                    1740 	.db	9
      001898 00 54                 1741 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$173-Sstm8s_tim4$TIM4_PrescalerConfig$159
      00189A 03                    1742 	.db	3
      00189B 03                    1743 	.sleb128	3
      00189C 01                    1744 	.db	1
      00189D 09                    1745 	.db	9
      00189E 00 06                 1746 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$174-Sstm8s_tim4$TIM4_PrescalerConfig$173
      0018A0 03                    1747 	.db	3
      0018A1 03                    1748 	.sleb128	3
      0018A2 01                    1749 	.db	1
      0018A3 09                    1750 	.db	9
      0018A4 00 06                 1751 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$175-Sstm8s_tim4$TIM4_PrescalerConfig$174
      0018A6 03                    1752 	.db	3
      0018A7 01                    1753 	.sleb128	1
      0018A8 01                    1754 	.db	1
      0018A9 09                    1755 	.db	9
      0018AA 00 01                 1756 	.dw	1+Sstm8s_tim4$TIM4_PrescalerConfig$176-Sstm8s_tim4$TIM4_PrescalerConfig$175
      0018AC 00                    1757 	.db	0
      0018AD 01                    1758 	.uleb128	1
      0018AE 01                    1759 	.db	1
      0018AF 00                    1760 	.db	0
      0018B0 05                    1761 	.uleb128	5
      0018B1 02                    1762 	.db	2
      0018B2 00 00 95 DD           1763 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$178)
      0018B6 03                    1764 	.db	3
      0018B7 E9 01                 1765 	.sleb128	233
      0018B9 01                    1766 	.db	1
      0018BA 09                    1767 	.db	9
      0018BB 00 00                 1768 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$180-Sstm8s_tim4$TIM4_ARRPreloadConfig$178
      0018BD 03                    1769 	.db	3
      0018BE 03                    1770 	.sleb128	3
      0018BF 01                    1771 	.db	1
      0018C0 09                    1772 	.db	9
      0018C1 00 1E                 1773 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$188-Sstm8s_tim4$TIM4_ARRPreloadConfig$180
      0018C3 03                    1774 	.db	3
      0018C4 05                    1775 	.sleb128	5
      0018C5 01                    1776 	.db	1
      0018C6 09                    1777 	.db	9
      0018C7 00 03                 1778 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$189-Sstm8s_tim4$TIM4_ARRPreloadConfig$188
      0018C9 03                    1779 	.db	3
      0018CA 7E                    1780 	.sleb128	-2
      0018CB 01                    1781 	.db	1
      0018CC 09                    1782 	.db	9
      0018CD 00 07                 1783 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$191-Sstm8s_tim4$TIM4_ARRPreloadConfig$189
      0018CF 03                    1784 	.db	3
      0018D0 02                    1785 	.sleb128	2
      0018D1 01                    1786 	.db	1
      0018D2 09                    1787 	.db	9
      0018D3 00 08                 1788 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$194-Sstm8s_tim4$TIM4_ARRPreloadConfig$191
      0018D5 03                    1789 	.db	3
      0018D6 04                    1790 	.sleb128	4
      0018D7 01                    1791 	.db	1
      0018D8 09                    1792 	.db	9
      0018D9 00 05                 1793 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$196-Sstm8s_tim4$TIM4_ARRPreloadConfig$194
      0018DB 03                    1794 	.db	3
      0018DC 02                    1795 	.sleb128	2
      0018DD 01                    1796 	.db	1
      0018DE 09                    1797 	.db	9
      0018DF 00 01                 1798 	.dw	1+Sstm8s_tim4$TIM4_ARRPreloadConfig$197-Sstm8s_tim4$TIM4_ARRPreloadConfig$196
      0018E1 00                    1799 	.db	0
      0018E2 01                    1800 	.uleb128	1
      0018E3 01                    1801 	.db	1
      0018E4 00                    1802 	.db	0
      0018E5 05                    1803 	.uleb128	5
      0018E6 02                    1804 	.db	2
      0018E7 00 00 96 13           1805 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$199)
      0018EB 03                    1806 	.db	3
      0018EC 80 02                 1807 	.sleb128	256
      0018EE 01                    1808 	.db	1
      0018EF 09                    1809 	.db	9
      0018F0 00 00                 1810 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$201-Sstm8s_tim4$TIM4_GenerateEvent$199
      0018F2 03                    1811 	.db	3
      0018F3 03                    1812 	.sleb128	3
      0018F4 01                    1813 	.db	1
      0018F5 09                    1814 	.db	9
      0018F6 00 17                 1815 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$209-Sstm8s_tim4$TIM4_GenerateEvent$201
      0018F8 03                    1816 	.db	3
      0018F9 03                    1817 	.sleb128	3
      0018FA 01                    1818 	.db	1
      0018FB 09                    1819 	.db	9
      0018FC 00 06                 1820 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$210-Sstm8s_tim4$TIM4_GenerateEvent$209
      0018FE 03                    1821 	.db	3
      0018FF 01                    1822 	.sleb128	1
      001900 01                    1823 	.db	1
      001901 09                    1824 	.db	9
      001902 00 01                 1825 	.dw	1+Sstm8s_tim4$TIM4_GenerateEvent$211-Sstm8s_tim4$TIM4_GenerateEvent$210
      001904 00                    1826 	.db	0
      001905 01                    1827 	.uleb128	1
      001906 01                    1828 	.db	1
      001907 00                    1829 	.db	0
      001908 05                    1830 	.uleb128	5
      001909 02                    1831 	.db	2
      00190A 00 00 96 31           1832 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$213)
      00190E 03                    1833 	.db	3
      00190F 8F 02                 1834 	.sleb128	271
      001911 01                    1835 	.db	1
      001912 09                    1836 	.db	9
      001913 00 00                 1837 	.dw	Sstm8s_tim4$TIM4_SetCounter$215-Sstm8s_tim4$TIM4_SetCounter$213
      001915 03                    1838 	.db	3
      001916 03                    1839 	.sleb128	3
      001917 01                    1840 	.db	1
      001918 09                    1841 	.db	9
      001919 00 06                 1842 	.dw	Sstm8s_tim4$TIM4_SetCounter$216-Sstm8s_tim4$TIM4_SetCounter$215
      00191B 03                    1843 	.db	3
      00191C 01                    1844 	.sleb128	1
      00191D 01                    1845 	.db	1
      00191E 09                    1846 	.db	9
      00191F 00 01                 1847 	.dw	1+Sstm8s_tim4$TIM4_SetCounter$217-Sstm8s_tim4$TIM4_SetCounter$216
      001921 00                    1848 	.db	0
      001922 01                    1849 	.uleb128	1
      001923 01                    1850 	.db	1
      001924 00                    1851 	.db	0
      001925 05                    1852 	.uleb128	5
      001926 02                    1853 	.db	2
      001927 00 00 96 38           1854 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$219)
      00192B 03                    1855 	.db	3
      00192C 9B 02                 1856 	.sleb128	283
      00192E 01                    1857 	.db	1
      00192F 09                    1858 	.db	9
      001930 00 00                 1859 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$221-Sstm8s_tim4$TIM4_SetAutoreload$219
      001932 03                    1860 	.db	3
      001933 03                    1861 	.sleb128	3
      001934 01                    1862 	.db	1
      001935 09                    1863 	.db	9
      001936 00 06                 1864 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$222-Sstm8s_tim4$TIM4_SetAutoreload$221
      001938 03                    1865 	.db	3
      001939 01                    1866 	.sleb128	1
      00193A 01                    1867 	.db	1
      00193B 09                    1868 	.db	9
      00193C 00 01                 1869 	.dw	1+Sstm8s_tim4$TIM4_SetAutoreload$223-Sstm8s_tim4$TIM4_SetAutoreload$222
      00193E 00                    1870 	.db	0
      00193F 01                    1871 	.uleb128	1
      001940 01                    1872 	.db	1
      001941 00                    1873 	.db	0
      001942 05                    1874 	.uleb128	5
      001943 02                    1875 	.db	2
      001944 00 00 96 3F           1876 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$225)
      001948 03                    1877 	.db	3
      001949 A6 02                 1878 	.sleb128	294
      00194B 01                    1879 	.db	1
      00194C 09                    1880 	.db	9
      00194D 00 00                 1881 	.dw	Sstm8s_tim4$TIM4_GetCounter$227-Sstm8s_tim4$TIM4_GetCounter$225
      00194F 03                    1882 	.db	3
      001950 03                    1883 	.sleb128	3
      001951 01                    1884 	.db	1
      001952 09                    1885 	.db	9
      001953 00 03                 1886 	.dw	Sstm8s_tim4$TIM4_GetCounter$228-Sstm8s_tim4$TIM4_GetCounter$227
      001955 03                    1887 	.db	3
      001956 01                    1888 	.sleb128	1
      001957 01                    1889 	.db	1
      001958 09                    1890 	.db	9
      001959 00 01                 1891 	.dw	1+Sstm8s_tim4$TIM4_GetCounter$229-Sstm8s_tim4$TIM4_GetCounter$228
      00195B 00                    1892 	.db	0
      00195C 01                    1893 	.uleb128	1
      00195D 01                    1894 	.db	1
      00195E 00                    1895 	.db	0
      00195F 05                    1896 	.uleb128	5
      001960 02                    1897 	.db	2
      001961 00 00 96 43           1898 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$231)
      001965 03                    1899 	.db	3
      001966 B1 02                 1900 	.sleb128	305
      001968 01                    1901 	.db	1
      001969 09                    1902 	.db	9
      00196A 00 00                 1903 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$233-Sstm8s_tim4$TIM4_GetPrescaler$231
      00196C 03                    1904 	.db	3
      00196D 03                    1905 	.sleb128	3
      00196E 01                    1906 	.db	1
      00196F 09                    1907 	.db	9
      001970 00 03                 1908 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$234-Sstm8s_tim4$TIM4_GetPrescaler$233
      001972 03                    1909 	.db	3
      001973 01                    1910 	.sleb128	1
      001974 01                    1911 	.db	1
      001975 09                    1912 	.db	9
      001976 00 01                 1913 	.dw	1+Sstm8s_tim4$TIM4_GetPrescaler$235-Sstm8s_tim4$TIM4_GetPrescaler$234
      001978 00                    1914 	.db	0
      001979 01                    1915 	.uleb128	1
      00197A 01                    1916 	.db	1
      00197B 00                    1917 	.db	0
      00197C 05                    1918 	.uleb128	5
      00197D 02                    1919 	.db	2
      00197E 00 00 96 47           1920 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$237)
      001982 03                    1921 	.db	3
      001983 BE 02                 1922 	.sleb128	318
      001985 01                    1923 	.db	1
      001986 09                    1924 	.db	9
      001987 00 00                 1925 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$239-Sstm8s_tim4$TIM4_GetFlagStatus$237
      001989 03                    1926 	.db	3
      00198A 05                    1927 	.sleb128	5
      00198B 01                    1928 	.db	1
      00198C 09                    1929 	.db	9
      00198D 00 17                 1930 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$247-Sstm8s_tim4$TIM4_GetFlagStatus$239
      00198F 03                    1931 	.db	3
      001990 02                    1932 	.sleb128	2
      001991 01                    1933 	.db	1
      001992 09                    1934 	.db	9
      001993 00 0B                 1935 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$249-Sstm8s_tim4$TIM4_GetFlagStatus$247
      001995 03                    1936 	.db	3
      001996 02                    1937 	.sleb128	2
      001997 01                    1938 	.db	1
      001998 09                    1939 	.db	9
      001999 00 05                 1940 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$252-Sstm8s_tim4$TIM4_GetFlagStatus$249
      00199B 03                    1941 	.db	3
      00199C 04                    1942 	.sleb128	4
      00199D 01                    1943 	.db	1
      00199E 09                    1944 	.db	9
      00199F 00 01                 1945 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$254-Sstm8s_tim4$TIM4_GetFlagStatus$252
      0019A1 03                    1946 	.db	3
      0019A2 02                    1947 	.sleb128	2
      0019A3 01                    1948 	.db	1
      0019A4 09                    1949 	.db	9
      0019A5 00 00                 1950 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$255-Sstm8s_tim4$TIM4_GetFlagStatus$254
      0019A7 03                    1951 	.db	3
      0019A8 01                    1952 	.sleb128	1
      0019A9 01                    1953 	.db	1
      0019AA 09                    1954 	.db	9
      0019AB 00 01                 1955 	.dw	1+Sstm8s_tim4$TIM4_GetFlagStatus$256-Sstm8s_tim4$TIM4_GetFlagStatus$255
      0019AD 00                    1956 	.db	0
      0019AE 01                    1957 	.uleb128	1
      0019AF 01                    1958 	.db	1
      0019B0 00                    1959 	.db	0
      0019B1 05                    1960 	.uleb128	5
      0019B2 02                    1961 	.db	2
      0019B3 00 00 96 70           1962 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$258)
      0019B7 03                    1963 	.db	3
      0019B8 D7 02                 1964 	.sleb128	343
      0019BA 01                    1965 	.db	1
      0019BB 09                    1966 	.db	9
      0019BC 00 00                 1967 	.dw	Sstm8s_tim4$TIM4_ClearFlag$260-Sstm8s_tim4$TIM4_ClearFlag$258
      0019BE 03                    1968 	.db	3
      0019BF 03                    1969 	.sleb128	3
      0019C0 01                    1970 	.db	1
      0019C1 09                    1971 	.db	9
      0019C2 00 17                 1972 	.dw	Sstm8s_tim4$TIM4_ClearFlag$268-Sstm8s_tim4$TIM4_ClearFlag$260
      0019C4 03                    1973 	.db	3
      0019C5 03                    1974 	.sleb128	3
      0019C6 01                    1975 	.db	1
      0019C7 09                    1976 	.db	9
      0019C8 00 06                 1977 	.dw	Sstm8s_tim4$TIM4_ClearFlag$269-Sstm8s_tim4$TIM4_ClearFlag$268
      0019CA 03                    1978 	.db	3
      0019CB 01                    1979 	.sleb128	1
      0019CC 01                    1980 	.db	1
      0019CD 09                    1981 	.db	9
      0019CE 00 01                 1982 	.dw	1+Sstm8s_tim4$TIM4_ClearFlag$270-Sstm8s_tim4$TIM4_ClearFlag$269
      0019D0 00                    1983 	.db	0
      0019D1 01                    1984 	.uleb128	1
      0019D2 01                    1985 	.db	1
      0019D3 00                    1986 	.db	0
      0019D4 05                    1987 	.uleb128	5
      0019D5 02                    1988 	.db	2
      0019D6 00 00 96 8E           1989 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$272)
      0019DA 03                    1990 	.db	3
      0019DB E7 02                 1991 	.sleb128	359
      0019DD 01                    1992 	.db	1
      0019DE 09                    1993 	.db	9
      0019DF 00 01                 1994 	.dw	Sstm8s_tim4$TIM4_GetITStatus$275-Sstm8s_tim4$TIM4_GetITStatus$272
      0019E1 03                    1995 	.db	3
      0019E2 07                    1996 	.sleb128	7
      0019E3 01                    1997 	.db	1
      0019E4 09                    1998 	.db	9
      0019E5 00 17                 1999 	.dw	Sstm8s_tim4$TIM4_GetITStatus$283-Sstm8s_tim4$TIM4_GetITStatus$275
      0019E7 03                    2000 	.db	3
      0019E8 02                    2001 	.sleb128	2
      0019E9 01                    2002 	.db	1
      0019EA 09                    2003 	.db	9
      0019EB 00 07                 2004 	.dw	Sstm8s_tim4$TIM4_GetITStatus$284-Sstm8s_tim4$TIM4_GetITStatus$283
      0019ED 03                    2005 	.db	3
      0019EE 02                    2006 	.sleb128	2
      0019EF 01                    2007 	.db	1
      0019F0 09                    2008 	.db	9
      0019F1 00 05                 2009 	.dw	Sstm8s_tim4$TIM4_GetITStatus$285-Sstm8s_tim4$TIM4_GetITStatus$284
      0019F3 03                    2010 	.db	3
      0019F4 02                    2011 	.sleb128	2
      0019F5 01                    2012 	.db	1
      0019F6 09                    2013 	.db	9
      0019F7 00 0D                 2014 	.dw	Sstm8s_tim4$TIM4_GetITStatus$287-Sstm8s_tim4$TIM4_GetITStatus$285
      0019F9 03                    2015 	.db	3
      0019FA 02                    2016 	.sleb128	2
      0019FB 01                    2017 	.db	1
      0019FC 09                    2018 	.db	9
      0019FD 00 05                 2019 	.dw	Sstm8s_tim4$TIM4_GetITStatus$290-Sstm8s_tim4$TIM4_GetITStatus$287
      0019FF 03                    2020 	.db	3
      001A00 04                    2021 	.sleb128	4
      001A01 01                    2022 	.db	1
      001A02 09                    2023 	.db	9
      001A03 00 01                 2024 	.dw	Sstm8s_tim4$TIM4_GetITStatus$292-Sstm8s_tim4$TIM4_GetITStatus$290
      001A05 03                    2025 	.db	3
      001A06 02                    2026 	.sleb128	2
      001A07 01                    2027 	.db	1
      001A08 09                    2028 	.db	9
      001A09 00 00                 2029 	.dw	Sstm8s_tim4$TIM4_GetITStatus$293-Sstm8s_tim4$TIM4_GetITStatus$292
      001A0B 03                    2030 	.db	3
      001A0C 01                    2031 	.sleb128	1
      001A0D 01                    2032 	.db	1
      001A0E 09                    2033 	.db	9
      001A0F 00 03                 2034 	.dw	1+Sstm8s_tim4$TIM4_GetITStatus$295-Sstm8s_tim4$TIM4_GetITStatus$293
      001A11 00                    2035 	.db	0
      001A12 01                    2036 	.uleb128	1
      001A13 01                    2037 	.db	1
      001A14 00                    2038 	.db	0
      001A15 05                    2039 	.uleb128	5
      001A16 02                    2040 	.db	2
      001A17 00 00 96 C8           2041 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$297)
      001A1B 03                    2042 	.db	3
      001A1C 86 03                 2043 	.sleb128	390
      001A1E 01                    2044 	.db	1
      001A1F 09                    2045 	.db	9
      001A20 00 00                 2046 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$299-Sstm8s_tim4$TIM4_ClearITPendingBit$297
      001A22 03                    2047 	.db	3
      001A23 03                    2048 	.sleb128	3
      001A24 01                    2049 	.db	1
      001A25 09                    2050 	.db	9
      001A26 00 17                 2051 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$307-Sstm8s_tim4$TIM4_ClearITPendingBit$299
      001A28 03                    2052 	.db	3
      001A29 03                    2053 	.sleb128	3
      001A2A 01                    2054 	.db	1
      001A2B 09                    2055 	.db	9
      001A2C 00 06                 2056 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$308-Sstm8s_tim4$TIM4_ClearITPendingBit$307
      001A2E 03                    2057 	.db	3
      001A2F 01                    2058 	.sleb128	1
      001A30 01                    2059 	.db	1
      001A31 09                    2060 	.db	9
      001A32 00 01                 2061 	.dw	1+Sstm8s_tim4$TIM4_ClearITPendingBit$309-Sstm8s_tim4$TIM4_ClearITPendingBit$308
      001A34 00                    2062 	.db	0
      001A35 01                    2063 	.uleb128	1
      001A36 01                    2064 	.db	1
      001A37                       2065 Ldebug_line_end:
                                   2066 
                                   2067 	.area .debug_loc (NOLOAD)
      00297C                       2068 Ldebug_loc_start:
      00297C 00 00 96 DF           2069 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      002980 00 00 96 E6           2070 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$310)
      002984 00 02                 2071 	.dw	2
      002986 78                    2072 	.db	120
      002987 01                    2073 	.sleb128	1
      002988 00 00 96 DA           2074 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      00298C 00 00 96 DF           2075 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      002990 00 02                 2076 	.dw	2
      002992 78                    2077 	.db	120
      002993 07                    2078 	.sleb128	7
      002994 00 00 96 D8           2079 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      002998 00 00 96 DA           2080 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      00299C 00 02                 2081 	.dw	2
      00299E 78                    2082 	.db	120
      00299F 06                    2083 	.sleb128	6
      0029A0 00 00 96 D6           2084 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      0029A4 00 00 96 D8           2085 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      0029A8 00 02                 2086 	.dw	2
      0029AA 78                    2087 	.db	120
      0029AB 05                    2088 	.sleb128	5
      0029AC 00 00 96 D4           2089 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      0029B0 00 00 96 D6           2090 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      0029B4 00 02                 2091 	.dw	2
      0029B6 78                    2092 	.db	120
      0029B7 03                    2093 	.sleb128	3
      0029B8 00 00 96 D2           2094 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      0029BC 00 00 96 D4           2095 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      0029C0 00 02                 2096 	.dw	2
      0029C2 78                    2097 	.db	120
      0029C3 02                    2098 	.sleb128	2
      0029C4 00 00 96 D0           2099 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      0029C8 00 00 96 D2           2100 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      0029CC 00 02                 2101 	.dw	2
      0029CE 78                    2102 	.db	120
      0029CF 01                    2103 	.sleb128	1
      0029D0 00 00 96 C8           2104 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)
      0029D4 00 00 96 D0           2105 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      0029D8 00 02                 2106 	.dw	2
      0029DA 78                    2107 	.db	120
      0029DB 01                    2108 	.sleb128	1
      0029DC 00 00 00 00           2109 	.dw	0,0
      0029E0 00 00 00 00           2110 	.dw	0,0
      0029E4 00 00 96 C7           2111 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      0029E8 00 00 96 C8           2112 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$296)
      0029EC 00 02                 2113 	.dw	2
      0029EE 78                    2114 	.db	120
      0029EF 01                    2115 	.sleb128	1
      0029F0 00 00 96 A6           2116 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      0029F4 00 00 96 C7           2117 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      0029F8 00 02                 2118 	.dw	2
      0029FA 78                    2119 	.db	120
      0029FB 02                    2120 	.sleb128	2
      0029FC 00 00 96 A1           2121 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      002A00 00 00 96 A6           2122 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      002A04 00 02                 2123 	.dw	2
      002A06 78                    2124 	.db	120
      002A07 08                    2125 	.sleb128	8
      002A08 00 00 96 9F           2126 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      002A0C 00 00 96 A1           2127 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      002A10 00 02                 2128 	.dw	2
      002A12 78                    2129 	.db	120
      002A13 07                    2130 	.sleb128	7
      002A14 00 00 96 9D           2131 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      002A18 00 00 96 9F           2132 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      002A1C 00 02                 2133 	.dw	2
      002A1E 78                    2134 	.db	120
      002A1F 06                    2135 	.sleb128	6
      002A20 00 00 96 9B           2136 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      002A24 00 00 96 9D           2137 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      002A28 00 02                 2138 	.dw	2
      002A2A 78                    2139 	.db	120
      002A2B 04                    2140 	.sleb128	4
      002A2C 00 00 96 99           2141 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      002A30 00 00 96 9B           2142 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      002A34 00 02                 2143 	.dw	2
      002A36 78                    2144 	.db	120
      002A37 03                    2145 	.sleb128	3
      002A38 00 00 96 97           2146 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      002A3C 00 00 96 99           2147 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      002A40 00 02                 2148 	.dw	2
      002A42 78                    2149 	.db	120
      002A43 02                    2150 	.sleb128	2
      002A44 00 00 96 8F           2151 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      002A48 00 00 96 97           2152 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      002A4C 00 02                 2153 	.dw	2
      002A4E 78                    2154 	.db	120
      002A4F 02                    2155 	.sleb128	2
      002A50 00 00 96 8E           2156 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)
      002A54 00 00 96 8F           2157 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      002A58 00 02                 2158 	.dw	2
      002A5A 78                    2159 	.db	120
      002A5B 01                    2160 	.sleb128	1
      002A5C 00 00 00 00           2161 	.dw	0,0
      002A60 00 00 00 00           2162 	.dw	0,0
      002A64 00 00 96 87           2163 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      002A68 00 00 96 8E           2164 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$271)
      002A6C 00 02                 2165 	.dw	2
      002A6E 78                    2166 	.db	120
      002A6F 01                    2167 	.sleb128	1
      002A70 00 00 96 82           2168 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      002A74 00 00 96 87           2169 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      002A78 00 02                 2170 	.dw	2
      002A7A 78                    2171 	.db	120
      002A7B 07                    2172 	.sleb128	7
      002A7C 00 00 96 80           2173 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      002A80 00 00 96 82           2174 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      002A84 00 02                 2175 	.dw	2
      002A86 78                    2176 	.db	120
      002A87 06                    2177 	.sleb128	6
      002A88 00 00 96 7E           2178 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      002A8C 00 00 96 80           2179 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      002A90 00 02                 2180 	.dw	2
      002A92 78                    2181 	.db	120
      002A93 05                    2182 	.sleb128	5
      002A94 00 00 96 7C           2183 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      002A98 00 00 96 7E           2184 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      002A9C 00 02                 2185 	.dw	2
      002A9E 78                    2186 	.db	120
      002A9F 03                    2187 	.sleb128	3
      002AA0 00 00 96 7A           2188 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      002AA4 00 00 96 7C           2189 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      002AA8 00 02                 2190 	.dw	2
      002AAA 78                    2191 	.db	120
      002AAB 02                    2192 	.sleb128	2
      002AAC 00 00 96 78           2193 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      002AB0 00 00 96 7A           2194 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      002AB4 00 02                 2195 	.dw	2
      002AB6 78                    2196 	.db	120
      002AB7 01                    2197 	.sleb128	1
      002AB8 00 00 96 70           2198 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)
      002ABC 00 00 96 78           2199 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      002AC0 00 02                 2200 	.dw	2
      002AC2 78                    2201 	.db	120
      002AC3 01                    2202 	.sleb128	1
      002AC4 00 00 00 00           2203 	.dw	0,0
      002AC8 00 00 00 00           2204 	.dw	0,0
      002ACC 00 00 96 5E           2205 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      002AD0 00 00 96 70           2206 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$257)
      002AD4 00 02                 2207 	.dw	2
      002AD6 78                    2208 	.db	120
      002AD7 01                    2209 	.sleb128	1
      002AD8 00 00 96 59           2210 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      002ADC 00 00 96 5E           2211 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      002AE0 00 02                 2212 	.dw	2
      002AE2 78                    2213 	.db	120
      002AE3 07                    2214 	.sleb128	7
      002AE4 00 00 96 57           2215 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      002AE8 00 00 96 59           2216 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      002AEC 00 02                 2217 	.dw	2
      002AEE 78                    2218 	.db	120
      002AEF 06                    2219 	.sleb128	6
      002AF0 00 00 96 55           2220 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      002AF4 00 00 96 57           2221 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      002AF8 00 02                 2222 	.dw	2
      002AFA 78                    2223 	.db	120
      002AFB 05                    2224 	.sleb128	5
      002AFC 00 00 96 53           2225 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      002B00 00 00 96 55           2226 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      002B04 00 02                 2227 	.dw	2
      002B06 78                    2228 	.db	120
      002B07 03                    2229 	.sleb128	3
      002B08 00 00 96 51           2230 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      002B0C 00 00 96 53           2231 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      002B10 00 02                 2232 	.dw	2
      002B12 78                    2233 	.db	120
      002B13 02                    2234 	.sleb128	2
      002B14 00 00 96 4F           2235 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      002B18 00 00 96 51           2236 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      002B1C 00 02                 2237 	.dw	2
      002B1E 78                    2238 	.db	120
      002B1F 01                    2239 	.sleb128	1
      002B20 00 00 96 47           2240 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)
      002B24 00 00 96 4F           2241 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      002B28 00 02                 2242 	.dw	2
      002B2A 78                    2243 	.db	120
      002B2B 01                    2244 	.sleb128	1
      002B2C 00 00 00 00           2245 	.dw	0,0
      002B30 00 00 00 00           2246 	.dw	0,0
      002B34 00 00 96 43           2247 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)
      002B38 00 00 96 47           2248 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$236)
      002B3C 00 02                 2249 	.dw	2
      002B3E 78                    2250 	.db	120
      002B3F 01                    2251 	.sleb128	1
      002B40 00 00 00 00           2252 	.dw	0,0
      002B44 00 00 00 00           2253 	.dw	0,0
      002B48 00 00 96 3F           2254 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)
      002B4C 00 00 96 43           2255 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$230)
      002B50 00 02                 2256 	.dw	2
      002B52 78                    2257 	.db	120
      002B53 01                    2258 	.sleb128	1
      002B54 00 00 00 00           2259 	.dw	0,0
      002B58 00 00 00 00           2260 	.dw	0,0
      002B5C 00 00 96 38           2261 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)
      002B60 00 00 96 3F           2262 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$224)
      002B64 00 02                 2263 	.dw	2
      002B66 78                    2264 	.db	120
      002B67 01                    2265 	.sleb128	1
      002B68 00 00 00 00           2266 	.dw	0,0
      002B6C 00 00 00 00           2267 	.dw	0,0
      002B70 00 00 96 31           2268 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)
      002B74 00 00 96 38           2269 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$218)
      002B78 00 02                 2270 	.dw	2
      002B7A 78                    2271 	.db	120
      002B7B 01                    2272 	.sleb128	1
      002B7C 00 00 00 00           2273 	.dw	0,0
      002B80 00 00 00 00           2274 	.dw	0,0
      002B84 00 00 96 2A           2275 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      002B88 00 00 96 31           2276 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$212)
      002B8C 00 02                 2277 	.dw	2
      002B8E 78                    2278 	.db	120
      002B8F 01                    2279 	.sleb128	1
      002B90 00 00 96 25           2280 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      002B94 00 00 96 2A           2281 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      002B98 00 02                 2282 	.dw	2
      002B9A 78                    2283 	.db	120
      002B9B 07                    2284 	.sleb128	7
      002B9C 00 00 96 23           2285 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      002BA0 00 00 96 25           2286 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      002BA4 00 02                 2287 	.dw	2
      002BA6 78                    2288 	.db	120
      002BA7 06                    2289 	.sleb128	6
      002BA8 00 00 96 21           2290 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      002BAC 00 00 96 23           2291 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      002BB0 00 02                 2292 	.dw	2
      002BB2 78                    2293 	.db	120
      002BB3 05                    2294 	.sleb128	5
      002BB4 00 00 96 1F           2295 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002BB8 00 00 96 21           2296 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      002BBC 00 02                 2297 	.dw	2
      002BBE 78                    2298 	.db	120
      002BBF 03                    2299 	.sleb128	3
      002BC0 00 00 96 1D           2300 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      002BC4 00 00 96 1F           2301 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002BC8 00 02                 2302 	.dw	2
      002BCA 78                    2303 	.db	120
      002BCB 02                    2304 	.sleb128	2
      002BCC 00 00 96 1B           2305 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      002BD0 00 00 96 1D           2306 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      002BD4 00 02                 2307 	.dw	2
      002BD6 78                    2308 	.db	120
      002BD7 01                    2309 	.sleb128	1
      002BD8 00 00 96 13           2310 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)
      002BDC 00 00 96 1B           2311 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      002BE0 00 02                 2312 	.dw	2
      002BE2 78                    2313 	.db	120
      002BE3 01                    2314 	.sleb128	1
      002BE4 00 00 00 00           2315 	.dw	0,0
      002BE8 00 00 00 00           2316 	.dw	0,0
      002BEC 00 00 95 FB           2317 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      002BF0 00 00 96 13           2318 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$198)
      002BF4 00 02                 2319 	.dw	2
      002BF6 78                    2320 	.db	120
      002BF7 01                    2321 	.sleb128	1
      002BF8 00 00 95 F6           2322 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      002BFC 00 00 95 FB           2323 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      002C00 00 02                 2324 	.dw	2
      002C02 78                    2325 	.db	120
      002C03 07                    2326 	.sleb128	7
      002C04 00 00 95 F4           2327 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002C08 00 00 95 F6           2328 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      002C0C 00 02                 2329 	.dw	2
      002C0E 78                    2330 	.db	120
      002C0F 06                    2331 	.sleb128	6
      002C10 00 00 95 F2           2332 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      002C14 00 00 95 F4           2333 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002C18 00 02                 2334 	.dw	2
      002C1A 78                    2335 	.db	120
      002C1B 05                    2336 	.sleb128	5
      002C1C 00 00 95 F0           2337 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      002C20 00 00 95 F2           2338 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      002C24 00 02                 2339 	.dw	2
      002C26 78                    2340 	.db	120
      002C27 04                    2341 	.sleb128	4
      002C28 00 00 95 EE           2342 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      002C2C 00 00 95 F0           2343 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      002C30 00 02                 2344 	.dw	2
      002C32 78                    2345 	.db	120
      002C33 02                    2346 	.sleb128	2
      002C34 00 00 95 EC           2347 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      002C38 00 00 95 EE           2348 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      002C3C 00 02                 2349 	.dw	2
      002C3E 78                    2350 	.db	120
      002C3F 01                    2351 	.sleb128	1
      002C40 00 00 95 DD           2352 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)
      002C44 00 00 95 EC           2353 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      002C48 00 02                 2354 	.dw	2
      002C4A 78                    2355 	.db	120
      002C4B 01                    2356 	.sleb128	1
      002C4C 00 00 00 00           2357 	.dw	0,0
      002C50 00 00 00 00           2358 	.dw	0,0
      002C54 00 00 95 D0           2359 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      002C58 00 00 95 DD           2360 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$177)
      002C5C 00 02                 2361 	.dw	2
      002C5E 78                    2362 	.db	120
      002C5F 01                    2363 	.sleb128	1
      002C60 00 00 95 CB           2364 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      002C64 00 00 95 D0           2365 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      002C68 00 02                 2366 	.dw	2
      002C6A 78                    2367 	.db	120
      002C6B 07                    2368 	.sleb128	7
      002C6C 00 00 95 C9           2369 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      002C70 00 00 95 CB           2370 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      002C74 00 02                 2371 	.dw	2
      002C76 78                    2372 	.db	120
      002C77 06                    2373 	.sleb128	6
      002C78 00 00 95 C7           2374 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      002C7C 00 00 95 C9           2375 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      002C80 00 02                 2376 	.dw	2
      002C82 78                    2377 	.db	120
      002C83 05                    2378 	.sleb128	5
      002C84 00 00 95 C5           2379 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      002C88 00 00 95 C7           2380 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      002C8C 00 02                 2381 	.dw	2
      002C8E 78                    2382 	.db	120
      002C8F 04                    2383 	.sleb128	4
      002C90 00 00 95 C3           2384 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      002C94 00 00 95 C5           2385 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      002C98 00 02                 2386 	.dw	2
      002C9A 78                    2387 	.db	120
      002C9B 02                    2388 	.sleb128	2
      002C9C 00 00 95 C1           2389 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      002CA0 00 00 95 C3           2390 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      002CA4 00 02                 2391 	.dw	2
      002CA6 78                    2392 	.db	120
      002CA7 01                    2393 	.sleb128	1
      002CA8 00 00 95 B8           2394 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      002CAC 00 00 95 C1           2395 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      002CB0 00 02                 2396 	.dw	2
      002CB2 78                    2397 	.db	120
      002CB3 01                    2398 	.sleb128	1
      002CB4 00 00 95 AF           2399 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      002CB8 00 00 95 B8           2400 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      002CBC 00 02                 2401 	.dw	2
      002CBE 78                    2402 	.db	120
      002CBF 01                    2403 	.sleb128	1
      002CC0 00 00 95 A6           2404 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      002CC4 00 00 95 AF           2405 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      002CC8 00 02                 2406 	.dw	2
      002CCA 78                    2407 	.db	120
      002CCB 01                    2408 	.sleb128	1
      002CCC 00 00 95 9D           2409 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      002CD0 00 00 95 A6           2410 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      002CD4 00 02                 2411 	.dw	2
      002CD6 78                    2412 	.db	120
      002CD7 01                    2413 	.sleb128	1
      002CD8 00 00 95 94           2414 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      002CDC 00 00 95 9D           2415 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      002CE0 00 02                 2416 	.dw	2
      002CE2 78                    2417 	.db	120
      002CE3 01                    2418 	.sleb128	1
      002CE4 00 00 95 8B           2419 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002CE8 00 00 95 94           2420 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      002CEC 00 02                 2421 	.dw	2
      002CEE 78                    2422 	.db	120
      002CEF 01                    2423 	.sleb128	1
      002CF0 00 00 95 7C           2424 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002CF4 00 00 95 8B           2425 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002CF8 00 02                 2426 	.dw	2
      002CFA 78                    2427 	.db	120
      002CFB 01                    2428 	.sleb128	1
      002CFC 00 00 95 77           2429 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      002D00 00 00 95 7C           2430 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002D04 00 02                 2431 	.dw	2
      002D06 78                    2432 	.db	120
      002D07 07                    2433 	.sleb128	7
      002D08 00 00 95 75           2434 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      002D0C 00 00 95 77           2435 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      002D10 00 02                 2436 	.dw	2
      002D12 78                    2437 	.db	120
      002D13 06                    2438 	.sleb128	6
      002D14 00 00 95 73           2439 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      002D18 00 00 95 75           2440 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      002D1C 00 02                 2441 	.dw	2
      002D1E 78                    2442 	.db	120
      002D1F 05                    2443 	.sleb128	5
      002D20 00 00 95 71           2444 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      002D24 00 00 95 73           2445 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      002D28 00 02                 2446 	.dw	2
      002D2A 78                    2447 	.db	120
      002D2B 04                    2448 	.sleb128	4
      002D2C 00 00 95 6F           2449 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      002D30 00 00 95 71           2450 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      002D34 00 02                 2451 	.dw	2
      002D36 78                    2452 	.db	120
      002D37 02                    2453 	.sleb128	2
      002D38 00 00 95 6D           2454 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      002D3C 00 00 95 6F           2455 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      002D40 00 02                 2456 	.dw	2
      002D42 78                    2457 	.db	120
      002D43 01                    2458 	.sleb128	1
      002D44 00 00 95 5E           2459 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)
      002D48 00 00 95 6D           2460 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      002D4C 00 02                 2461 	.dw	2
      002D4E 78                    2462 	.db	120
      002D4F 01                    2463 	.sleb128	1
      002D50 00 00 00 00           2464 	.dw	0,0
      002D54 00 00 00 00           2465 	.dw	0,0
      002D58 00 00 95 46           2466 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      002D5C 00 00 95 5E           2467 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$148)
      002D60 00 02                 2468 	.dw	2
      002D62 78                    2469 	.db	120
      002D63 01                    2470 	.sleb128	1
      002D64 00 00 95 41           2471 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      002D68 00 00 95 46           2472 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      002D6C 00 02                 2473 	.dw	2
      002D6E 78                    2474 	.db	120
      002D6F 07                    2475 	.sleb128	7
      002D70 00 00 95 3F           2476 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      002D74 00 00 95 41           2477 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      002D78 00 02                 2478 	.dw	2
      002D7A 78                    2479 	.db	120
      002D7B 06                    2480 	.sleb128	6
      002D7C 00 00 95 3D           2481 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      002D80 00 00 95 3F           2482 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      002D84 00 02                 2483 	.dw	2
      002D86 78                    2484 	.db	120
      002D87 05                    2485 	.sleb128	5
      002D88 00 00 95 3B           2486 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      002D8C 00 00 95 3D           2487 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      002D90 00 02                 2488 	.dw	2
      002D92 78                    2489 	.db	120
      002D93 04                    2490 	.sleb128	4
      002D94 00 00 95 39           2491 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      002D98 00 00 95 3B           2492 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      002D9C 00 02                 2493 	.dw	2
      002D9E 78                    2494 	.db	120
      002D9F 02                    2495 	.sleb128	2
      002DA0 00 00 95 30           2496 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      002DA4 00 00 95 39           2497 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      002DA8 00 02                 2498 	.dw	2
      002DAA 78                    2499 	.db	120
      002DAB 01                    2500 	.sleb128	1
      002DAC 00 00 95 28           2501 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)
      002DB0 00 00 95 30           2502 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      002DB4 00 02                 2503 	.dw	2
      002DB6 78                    2504 	.db	120
      002DB7 01                    2505 	.sleb128	1
      002DB8 00 00 00 00           2506 	.dw	0,0
      002DBC 00 00 00 00           2507 	.dw	0,0
      002DC0 00 00 95 10           2508 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002DC4 00 00 95 28           2509 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$127)
      002DC8 00 02                 2510 	.dw	2
      002DCA 78                    2511 	.db	120
      002DCB 01                    2512 	.sleb128	1
      002DCC 00 00 95 0B           2513 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002DD0 00 00 95 10           2514 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002DD4 00 02                 2515 	.dw	2
      002DD6 78                    2516 	.db	120
      002DD7 07                    2517 	.sleb128	7
      002DD8 00 00 95 09           2518 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      002DDC 00 00 95 0B           2519 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002DE0 00 02                 2520 	.dw	2
      002DE2 78                    2521 	.db	120
      002DE3 06                    2522 	.sleb128	6
      002DE4 00 00 95 07           2523 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      002DE8 00 00 95 09           2524 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      002DEC 00 02                 2525 	.dw	2
      002DEE 78                    2526 	.db	120
      002DEF 05                    2527 	.sleb128	5
      002DF0 00 00 95 05           2528 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      002DF4 00 00 95 07           2529 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      002DF8 00 02                 2530 	.dw	2
      002DFA 78                    2531 	.db	120
      002DFB 04                    2532 	.sleb128	4
      002DFC 00 00 95 03           2533 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      002E00 00 00 95 05           2534 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      002E04 00 02                 2535 	.dw	2
      002E06 78                    2536 	.db	120
      002E07 02                    2537 	.sleb128	2
      002E08 00 00 95 01           2538 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      002E0C 00 00 95 03           2539 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      002E10 00 02                 2540 	.dw	2
      002E12 78                    2541 	.db	120
      002E13 01                    2542 	.sleb128	1
      002E14 00 00 94 F2           2543 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)
      002E18 00 00 95 01           2544 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      002E1C 00 02                 2545 	.dw	2
      002E1E 78                    2546 	.db	120
      002E1F 01                    2547 	.sleb128	1
      002E20 00 00 00 00           2548 	.dw	0,0
      002E24 00 00 00 00           2549 	.dw	0,0
      002E28 00 00 94 DA           2550 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      002E2C 00 00 94 F2           2551 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$106)
      002E30 00 02                 2552 	.dw	2
      002E32 78                    2553 	.db	120
      002E33 01                    2554 	.sleb128	1
      002E34 00 00 94 D5           2555 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      002E38 00 00 94 DA           2556 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      002E3C 00 02                 2557 	.dw	2
      002E3E 78                    2558 	.db	120
      002E3F 07                    2559 	.sleb128	7
      002E40 00 00 94 D3           2560 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      002E44 00 00 94 D5           2561 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      002E48 00 02                 2562 	.dw	2
      002E4A 78                    2563 	.db	120
      002E4B 06                    2564 	.sleb128	6
      002E4C 00 00 94 D1           2565 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      002E50 00 00 94 D3           2566 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      002E54 00 02                 2567 	.dw	2
      002E56 78                    2568 	.db	120
      002E57 05                    2569 	.sleb128	5
      002E58 00 00 94 CF           2570 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      002E5C 00 00 94 D1           2571 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      002E60 00 02                 2572 	.dw	2
      002E62 78                    2573 	.db	120
      002E63 04                    2574 	.sleb128	4
      002E64 00 00 94 CD           2575 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      002E68 00 00 94 CF           2576 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      002E6C 00 02                 2577 	.dw	2
      002E6E 78                    2578 	.db	120
      002E6F 02                    2579 	.sleb128	2
      002E70 00 00 94 CB           2580 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      002E74 00 00 94 CD           2581 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      002E78 00 02                 2582 	.dw	2
      002E7A 78                    2583 	.db	120
      002E7B 01                    2584 	.sleb128	1
      002E7C 00 00 94 BC           2585 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)
      002E80 00 00 94 CB           2586 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      002E84 00 02                 2587 	.dw	2
      002E86 78                    2588 	.db	120
      002E87 01                    2589 	.sleb128	1
      002E88 00 00 00 00           2590 	.dw	0,0
      002E8C 00 00 00 00           2591 	.dw	0,0
      002E90 00 00 94 BB           2592 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002E94 00 00 94 BC           2593 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$85)
      002E98 00 02                 2594 	.dw	2
      002E9A 78                    2595 	.db	120
      002E9B 01                    2596 	.sleb128	1
      002E9C 00 00 94 B5           2597 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      002EA0 00 00 94 BB           2598 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002EA4 00 02                 2599 	.dw	2
      002EA6 78                    2600 	.db	120
      002EA7 02                    2601 	.sleb128	2
      002EA8 00 00 94 AF           2602 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      002EAC 00 00 94 B5           2603 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      002EB0 00 02                 2604 	.dw	2
      002EB2 78                    2605 	.db	120
      002EB3 03                    2606 	.sleb128	3
      002EB4 00 00 94 9C           2607 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      002EB8 00 00 94 AF           2608 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      002EBC 00 02                 2609 	.dw	2
      002EBE 78                    2610 	.db	120
      002EBF 02                    2611 	.sleb128	2
      002EC0 00 00 94 97           2612 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      002EC4 00 00 94 9C           2613 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      002EC8 00 02                 2614 	.dw	2
      002ECA 78                    2615 	.db	120
      002ECB 08                    2616 	.sleb128	8
      002ECC 00 00 94 95           2617 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      002ED0 00 00 94 97           2618 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      002ED4 00 02                 2619 	.dw	2
      002ED6 78                    2620 	.db	120
      002ED7 07                    2621 	.sleb128	7
      002ED8 00 00 94 93           2622 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      002EDC 00 00 94 95           2623 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      002EE0 00 02                 2624 	.dw	2
      002EE2 78                    2625 	.db	120
      002EE3 06                    2626 	.sleb128	6
      002EE4 00 00 94 91           2627 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      002EE8 00 00 94 93           2628 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      002EEC 00 02                 2629 	.dw	2
      002EEE 78                    2630 	.db	120
      002EEF 05                    2631 	.sleb128	5
      002EF0 00 00 94 8F           2632 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      002EF4 00 00 94 91           2633 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      002EF8 00 02                 2634 	.dw	2
      002EFA 78                    2635 	.db	120
      002EFB 03                    2636 	.sleb128	3
      002EFC 00 00 94 8D           2637 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      002F00 00 00 94 8F           2638 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      002F04 00 02                 2639 	.dw	2
      002F06 78                    2640 	.db	120
      002F07 02                    2641 	.sleb128	2
      002F08 00 00 94 7E           2642 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      002F0C 00 00 94 8D           2643 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      002F10 00 02                 2644 	.dw	2
      002F12 78                    2645 	.db	120
      002F13 02                    2646 	.sleb128	2
      002F14 00 00 94 79           2647 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      002F18 00 00 94 7E           2648 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      002F1C 00 02                 2649 	.dw	2
      002F1E 78                    2650 	.db	120
      002F1F 08                    2651 	.sleb128	8
      002F20 00 00 94 77           2652 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      002F24 00 00 94 79           2653 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      002F28 00 02                 2654 	.dw	2
      002F2A 78                    2655 	.db	120
      002F2B 07                    2656 	.sleb128	7
      002F2C 00 00 94 75           2657 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      002F30 00 00 94 77           2658 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      002F34 00 02                 2659 	.dw	2
      002F36 78                    2660 	.db	120
      002F37 06                    2661 	.sleb128	6
      002F38 00 00 94 73           2662 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      002F3C 00 00 94 75           2663 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      002F40 00 02                 2664 	.dw	2
      002F42 78                    2665 	.db	120
      002F43 05                    2666 	.sleb128	5
      002F44 00 00 94 71           2667 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      002F48 00 00 94 73           2668 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      002F4C 00 02                 2669 	.dw	2
      002F4E 78                    2670 	.db	120
      002F4F 03                    2671 	.sleb128	3
      002F50 00 00 94 6F           2672 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      002F54 00 00 94 71           2673 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      002F58 00 02                 2674 	.dw	2
      002F5A 78                    2675 	.db	120
      002F5B 02                    2676 	.sleb128	2
      002F5C 00 00 94 67           2677 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      002F60 00 00 94 6F           2678 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      002F64 00 02                 2679 	.dw	2
      002F66 78                    2680 	.db	120
      002F67 02                    2681 	.sleb128	2
      002F68 00 00 94 66           2682 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)
      002F6C 00 00 94 67           2683 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      002F70 00 02                 2684 	.dw	2
      002F72 78                    2685 	.db	120
      002F73 01                    2686 	.sleb128	1
      002F74 00 00 00 00           2687 	.dw	0,0
      002F78 00 00 00 00           2688 	.dw	0,0
      002F7C 00 00 94 4E           2689 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      002F80 00 00 94 66           2690 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$52)
      002F84 00 02                 2691 	.dw	2
      002F86 78                    2692 	.db	120
      002F87 01                    2693 	.sleb128	1
      002F88 00 00 94 49           2694 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      002F8C 00 00 94 4E           2695 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      002F90 00 02                 2696 	.dw	2
      002F92 78                    2697 	.db	120
      002F93 07                    2698 	.sleb128	7
      002F94 00 00 94 47           2699 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      002F98 00 00 94 49           2700 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      002F9C 00 02                 2701 	.dw	2
      002F9E 78                    2702 	.db	120
      002F9F 06                    2703 	.sleb128	6
      002FA0 00 00 94 45           2704 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      002FA4 00 00 94 47           2705 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      002FA8 00 02                 2706 	.dw	2
      002FAA 78                    2707 	.db	120
      002FAB 05                    2708 	.sleb128	5
      002FAC 00 00 94 43           2709 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      002FB0 00 00 94 45           2710 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      002FB4 00 02                 2711 	.dw	2
      002FB6 78                    2712 	.db	120
      002FB7 04                    2713 	.sleb128	4
      002FB8 00 00 94 41           2714 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      002FBC 00 00 94 43           2715 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      002FC0 00 02                 2716 	.dw	2
      002FC2 78                    2717 	.db	120
      002FC3 02                    2718 	.sleb128	2
      002FC4 00 00 94 3F           2719 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      002FC8 00 00 94 41           2720 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      002FCC 00 02                 2721 	.dw	2
      002FCE 78                    2722 	.db	120
      002FCF 01                    2723 	.sleb128	1
      002FD0 00 00 94 30           2724 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)
      002FD4 00 00 94 3F           2725 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      002FD8 00 02                 2726 	.dw	2
      002FDA 78                    2727 	.db	120
      002FDB 01                    2728 	.sleb128	1
      002FDC 00 00 00 00           2729 	.dw	0,0
      002FE0 00 00 00 00           2730 	.dw	0,0
      002FE4 00 00 94 23           2731 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      002FE8 00 00 94 30           2732 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$31)
      002FEC 00 02                 2733 	.dw	2
      002FEE 78                    2734 	.db	120
      002FEF 01                    2735 	.sleb128	1
      002FF0 00 00 94 1E           2736 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      002FF4 00 00 94 23           2737 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      002FF8 00 02                 2738 	.dw	2
      002FFA 78                    2739 	.db	120
      002FFB 07                    2740 	.sleb128	7
      002FFC 00 00 94 1C           2741 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      003000 00 00 94 1E           2742 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      003004 00 02                 2743 	.dw	2
      003006 78                    2744 	.db	120
      003007 06                    2745 	.sleb128	6
      003008 00 00 94 1A           2746 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      00300C 00 00 94 1C           2747 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      003010 00 02                 2748 	.dw	2
      003012 78                    2749 	.db	120
      003013 05                    2750 	.sleb128	5
      003014 00 00 94 18           2751 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      003018 00 00 94 1A           2752 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      00301C 00 02                 2753 	.dw	2
      00301E 78                    2754 	.db	120
      00301F 04                    2755 	.sleb128	4
      003020 00 00 94 16           2756 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      003024 00 00 94 18           2757 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      003028 00 02                 2758 	.dw	2
      00302A 78                    2759 	.db	120
      00302B 02                    2760 	.sleb128	2
      00302C 00 00 94 14           2761 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      003030 00 00 94 16           2762 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      003034 00 02                 2763 	.dw	2
      003036 78                    2764 	.db	120
      003037 01                    2765 	.sleb128	1
      003038 00 00 94 0B           2766 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      00303C 00 00 94 14           2767 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      003040 00 02                 2768 	.dw	2
      003042 78                    2769 	.db	120
      003043 01                    2770 	.sleb128	1
      003044 00 00 94 02           2771 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      003048 00 00 94 0B           2772 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      00304C 00 02                 2773 	.dw	2
      00304E 78                    2774 	.db	120
      00304F 01                    2775 	.sleb128	1
      003050 00 00 93 F9           2776 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      003054 00 00 94 02           2777 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      003058 00 02                 2778 	.dw	2
      00305A 78                    2779 	.db	120
      00305B 01                    2780 	.sleb128	1
      00305C 00 00 93 F0           2781 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      003060 00 00 93 F9           2782 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      003064 00 02                 2783 	.dw	2
      003066 78                    2784 	.db	120
      003067 01                    2785 	.sleb128	1
      003068 00 00 93 E7           2786 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      00306C 00 00 93 F0           2787 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      003070 00 02                 2788 	.dw	2
      003072 78                    2789 	.db	120
      003073 01                    2790 	.sleb128	1
      003074 00 00 93 DE           2791 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      003078 00 00 93 E7           2792 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      00307C 00 02                 2793 	.dw	2
      00307E 78                    2794 	.db	120
      00307F 01                    2795 	.sleb128	1
      003080 00 00 93 CF           2796 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      003084 00 00 93 DE           2797 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      003088 00 02                 2798 	.dw	2
      00308A 78                    2799 	.db	120
      00308B 01                    2800 	.sleb128	1
      00308C 00 00 00 00           2801 	.dw	0,0
      003090 00 00 00 00           2802 	.dw	0,0
      003094 00 00 93 B6           2803 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      003098 00 00 93 CF           2804 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$10)
      00309C 00 02                 2805 	.dw	2
      00309E 78                    2806 	.db	120
      00309F 01                    2807 	.sleb128	1
      0030A0 00 00 00 00           2808 	.dw	0,0
      0030A4 00 00 00 00           2809 	.dw	0,0
                                   2810 
                                   2811 	.area .debug_abbrev (NOLOAD)
      00044A                       2812 Ldebug_abbrev:
      00044A 07                    2813 	.uleb128	7
      00044B 2E                    2814 	.uleb128	46
      00044C 00                    2815 	.db	0
      00044D 03                    2816 	.uleb128	3
      00044E 08                    2817 	.uleb128	8
      00044F 11                    2818 	.uleb128	17
      000450 01                    2819 	.uleb128	1
      000451 12                    2820 	.uleb128	18
      000452 01                    2821 	.uleb128	1
      000453 3F                    2822 	.uleb128	63
      000454 0C                    2823 	.uleb128	12
      000455 40                    2824 	.uleb128	64
      000456 06                    2825 	.uleb128	6
      000457 49                    2826 	.uleb128	73
      000458 13                    2827 	.uleb128	19
      000459 00                    2828 	.uleb128	0
      00045A 00                    2829 	.uleb128	0
      00045B 04                    2830 	.uleb128	4
      00045C 05                    2831 	.uleb128	5
      00045D 00                    2832 	.db	0
      00045E 02                    2833 	.uleb128	2
      00045F 0A                    2834 	.uleb128	10
      000460 03                    2835 	.uleb128	3
      000461 08                    2836 	.uleb128	8
      000462 49                    2837 	.uleb128	73
      000463 13                    2838 	.uleb128	19
      000464 00                    2839 	.uleb128	0
      000465 00                    2840 	.uleb128	0
      000466 0B                    2841 	.uleb128	11
      000467 01                    2842 	.uleb128	1
      000468 01                    2843 	.db	1
      000469 01                    2844 	.uleb128	1
      00046A 13                    2845 	.uleb128	19
      00046B 0B                    2846 	.uleb128	11
      00046C 0B                    2847 	.uleb128	11
      00046D 49                    2848 	.uleb128	73
      00046E 13                    2849 	.uleb128	19
      00046F 00                    2850 	.uleb128	0
      000470 00                    2851 	.uleb128	0
      000471 03                    2852 	.uleb128	3
      000472 2E                    2853 	.uleb128	46
      000473 01                    2854 	.db	1
      000474 01                    2855 	.uleb128	1
      000475 13                    2856 	.uleb128	19
      000476 03                    2857 	.uleb128	3
      000477 08                    2858 	.uleb128	8
      000478 11                    2859 	.uleb128	17
      000479 01                    2860 	.uleb128	1
      00047A 12                    2861 	.uleb128	18
      00047B 01                    2862 	.uleb128	1
      00047C 3F                    2863 	.uleb128	63
      00047D 0C                    2864 	.uleb128	12
      00047E 40                    2865 	.uleb128	64
      00047F 06                    2866 	.uleb128	6
      000480 00                    2867 	.uleb128	0
      000481 00                    2868 	.uleb128	0
      000482 09                    2869 	.uleb128	9
      000483 34                    2870 	.uleb128	52
      000484 00                    2871 	.db	0
      000485 02                    2872 	.uleb128	2
      000486 0A                    2873 	.uleb128	10
      000487 03                    2874 	.uleb128	3
      000488 08                    2875 	.uleb128	8
      000489 49                    2876 	.uleb128	73
      00048A 13                    2877 	.uleb128	19
      00048B 00                    2878 	.uleb128	0
      00048C 00                    2879 	.uleb128	0
      00048D 08                    2880 	.uleb128	8
      00048E 2E                    2881 	.uleb128	46
      00048F 01                    2882 	.db	1
      000490 01                    2883 	.uleb128	1
      000491 13                    2884 	.uleb128	19
      000492 03                    2885 	.uleb128	3
      000493 08                    2886 	.uleb128	8
      000494 11                    2887 	.uleb128	17
      000495 01                    2888 	.uleb128	1
      000496 12                    2889 	.uleb128	18
      000497 01                    2890 	.uleb128	1
      000498 3F                    2891 	.uleb128	63
      000499 0C                    2892 	.uleb128	12
      00049A 40                    2893 	.uleb128	64
      00049B 06                    2894 	.uleb128	6
      00049C 49                    2895 	.uleb128	73
      00049D 13                    2896 	.uleb128	19
      00049E 00                    2897 	.uleb128	0
      00049F 00                    2898 	.uleb128	0
      0004A0 0A                    2899 	.uleb128	10
      0004A1 26                    2900 	.uleb128	38
      0004A2 00                    2901 	.db	0
      0004A3 49                    2902 	.uleb128	73
      0004A4 13                    2903 	.uleb128	19
      0004A5 00                    2904 	.uleb128	0
      0004A6 00                    2905 	.uleb128	0
      0004A7 01                    2906 	.uleb128	1
      0004A8 11                    2907 	.uleb128	17
      0004A9 01                    2908 	.db	1
      0004AA 03                    2909 	.uleb128	3
      0004AB 08                    2910 	.uleb128	8
      0004AC 10                    2911 	.uleb128	16
      0004AD 06                    2912 	.uleb128	6
      0004AE 13                    2913 	.uleb128	19
      0004AF 0B                    2914 	.uleb128	11
      0004B0 25                    2915 	.uleb128	37
      0004B1 08                    2916 	.uleb128	8
      0004B2 00                    2917 	.uleb128	0
      0004B3 00                    2918 	.uleb128	0
      0004B4 06                    2919 	.uleb128	6
      0004B5 0B                    2920 	.uleb128	11
      0004B6 00                    2921 	.db	0
      0004B7 11                    2922 	.uleb128	17
      0004B8 01                    2923 	.uleb128	1
      0004B9 12                    2924 	.uleb128	18
      0004BA 01                    2925 	.uleb128	1
      0004BB 00                    2926 	.uleb128	0
      0004BC 00                    2927 	.uleb128	0
      0004BD 02                    2928 	.uleb128	2
      0004BE 2E                    2929 	.uleb128	46
      0004BF 00                    2930 	.db	0
      0004C0 03                    2931 	.uleb128	3
      0004C1 08                    2932 	.uleb128	8
      0004C2 11                    2933 	.uleb128	17
      0004C3 01                    2934 	.uleb128	1
      0004C4 12                    2935 	.uleb128	18
      0004C5 01                    2936 	.uleb128	1
      0004C6 3F                    2937 	.uleb128	63
      0004C7 0C                    2938 	.uleb128	12
      0004C8 40                    2939 	.uleb128	64
      0004C9 06                    2940 	.uleb128	6
      0004CA 00                    2941 	.uleb128	0
      0004CB 00                    2942 	.uleb128	0
      0004CC 0C                    2943 	.uleb128	12
      0004CD 21                    2944 	.uleb128	33
      0004CE 00                    2945 	.db	0
      0004CF 2F                    2946 	.uleb128	47
      0004D0 0B                    2947 	.uleb128	11
      0004D1 00                    2948 	.uleb128	0
      0004D2 00                    2949 	.uleb128	0
      0004D3 05                    2950 	.uleb128	5
      0004D4 24                    2951 	.uleb128	36
      0004D5 00                    2952 	.db	0
      0004D6 03                    2953 	.uleb128	3
      0004D7 08                    2954 	.uleb128	8
      0004D8 0B                    2955 	.uleb128	11
      0004D9 0B                    2956 	.uleb128	11
      0004DA 3E                    2957 	.uleb128	62
      0004DB 0B                    2958 	.uleb128	11
      0004DC 00                    2959 	.uleb128	0
      0004DD 00                    2960 	.uleb128	0
      0004DE 00                    2961 	.uleb128	0
                                   2962 
                                   2963 	.area .debug_info (NOLOAD)
      00224A 00 00 05 48           2964 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00224E                       2965 Ldebug_info_start:
      00224E 00 02                 2966 	.dw	2
      002250 00 00 04 4A           2967 	.dw	0,(Ldebug_abbrev)
      002254 04                    2968 	.db	4
      002255 01                    2969 	.uleb128	1
      002256 2E 2E 2F 53 50 4C 2F  2970 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      00226D 00                    2971 	.db	0
      00226E 00 00 16 8C           2972 	.dw	0,(Ldebug_line_start+-4)
      002272 01                    2973 	.db	1
      002273 53 44 43 43 20 76 65  2974 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00228C 00                    2975 	.db	0
      00228D 02                    2976 	.uleb128	2
      00228E 54 49 4D 34 5F 44 65  2977 	.ascii "TIM4_DeInit"
             49 6E 69 74
      002299 00                    2978 	.db	0
      00229A 00 00 93 B6           2979 	.dw	0,(_TIM4_DeInit)
      00229E 00 00 93 CF           2980 	.dw	0,(XG$TIM4_DeInit$0$0+1)
      0022A2 01                    2981 	.db	1
      0022A3 00 00 30 94           2982 	.dw	0,(Ldebug_loc_start+1816)
      0022A7 03                    2983 	.uleb128	3
      0022A8 00 00 00 AD           2984 	.dw	0,173
      0022AC 54 49 4D 34 5F 54 69  2985 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0022BD 00                    2986 	.db	0
      0022BE 00 00 93 CF           2987 	.dw	0,(_TIM4_TimeBaseInit)
      0022C2 00 00 94 30           2988 	.dw	0,(XG$TIM4_TimeBaseInit$0$0+1)
      0022C6 01                    2989 	.db	1
      0022C7 00 00 2F E4           2990 	.dw	0,(Ldebug_loc_start+1640)
      0022CB 04                    2991 	.uleb128	4
      0022CC 02                    2992 	.db	2
      0022CD 91                    2993 	.db	145
      0022CE 02                    2994 	.sleb128	2
      0022CF 54 49 4D 34 5F 50 72  2995 	.ascii "TIM4_Prescaler"
             65 73 63 61 6C 65 72
      0022DD 00                    2996 	.db	0
      0022DE 00 00 00 AD           2997 	.dw	0,173
      0022E2 04                    2998 	.uleb128	4
      0022E3 02                    2999 	.db	2
      0022E4 91                    3000 	.db	145
      0022E5 03                    3001 	.sleb128	3
      0022E6 54 49 4D 34 5F 50 65  3002 	.ascii "TIM4_Period"
             72 69 6F 64
      0022F1 00                    3003 	.db	0
      0022F2 00 00 00 AD           3004 	.dw	0,173
      0022F6 00                    3005 	.uleb128	0
      0022F7 05                    3006 	.uleb128	5
      0022F8 75 6E 73 69 67 6E 65  3007 	.ascii "unsigned char"
             64 20 63 68 61 72
      002305 00                    3008 	.db	0
      002306 01                    3009 	.db	1
      002307 08                    3010 	.db	8
      002308 03                    3011 	.uleb128	3
      002309 00 00 00 FD           3012 	.dw	0,253
      00230D 54 49 4D 34 5F 43 6D  3013 	.ascii "TIM4_Cmd"
             64
      002315 00                    3014 	.db	0
      002316 00 00 94 30           3015 	.dw	0,(_TIM4_Cmd)
      00231A 00 00 94 66           3016 	.dw	0,(XG$TIM4_Cmd$0$0+1)
      00231E 01                    3017 	.db	1
      00231F 00 00 2F 7C           3018 	.dw	0,(Ldebug_loc_start+1536)
      002323 04                    3019 	.uleb128	4
      002324 02                    3020 	.db	2
      002325 91                    3021 	.db	145
      002326 02                    3022 	.sleb128	2
      002327 4E 65 77 53 74 61 74  3023 	.ascii "NewState"
             65
      00232F 00                    3024 	.db	0
      002330 00 00 00 AD           3025 	.dw	0,173
      002334 06                    3026 	.uleb128	6
      002335 00 00 94 58           3027 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$44)
      002339 00 00 94 5D           3028 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$46)
      00233D 06                    3029 	.uleb128	6
      00233E 00 00 94 60           3030 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$47)
      002342 00 00 94 65           3031 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$49)
      002346 00                    3032 	.uleb128	0
      002347 03                    3033 	.uleb128	3
      002348 00 00 01 51           3034 	.dw	0,337
      00234C 54 49 4D 34 5F 49 54  3035 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      002359 00                    3036 	.db	0
      00235A 00 00 94 66           3037 	.dw	0,(_TIM4_ITConfig)
      00235E 00 00 94 BC           3038 	.dw	0,(XG$TIM4_ITConfig$0$0+1)
      002362 01                    3039 	.db	1
      002363 00 00 2E 90           3040 	.dw	0,(Ldebug_loc_start+1300)
      002367 04                    3041 	.uleb128	4
      002368 02                    3042 	.db	2
      002369 91                    3043 	.db	145
      00236A 02                    3044 	.sleb128	2
      00236B 54 49 4D 34 5F 49 54  3045 	.ascii "TIM4_IT"
      002372 00                    3046 	.db	0
      002373 00 00 00 AD           3047 	.dw	0,173
      002377 04                    3048 	.uleb128	4
      002378 02                    3049 	.db	2
      002379 91                    3050 	.db	145
      00237A 03                    3051 	.sleb128	3
      00237B 4E 65 77 53 74 61 74  3052 	.ascii "NewState"
             65
      002383 00                    3053 	.db	0
      002384 00 00 00 AD           3054 	.dw	0,173
      002388 06                    3055 	.uleb128	6
      002389 00 00 94 A6           3056 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$74)
      00238D 00 00 94 AB           3057 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$76)
      002391 06                    3058 	.uleb128	6
      002392 00 00 94 AE           3059 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$77)
      002396 00 00 94 BA           3060 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$81)
      00239A 00                    3061 	.uleb128	0
      00239B 03                    3062 	.uleb128	3
      00239C 00 00 01 A0           3063 	.dw	0,416
      0023A0 54 49 4D 34 5F 55 70  3064 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      0023B8 00                    3065 	.db	0
      0023B9 00 00 94 BC           3066 	.dw	0,(_TIM4_UpdateDisableConfig)
      0023BD 00 00 94 F2           3067 	.dw	0,(XG$TIM4_UpdateDisableConfig$0$0+1)
      0023C1 01                    3068 	.db	1
      0023C2 00 00 2E 28           3069 	.dw	0,(Ldebug_loc_start+1196)
      0023C6 04                    3070 	.uleb128	4
      0023C7 02                    3071 	.db	2
      0023C8 91                    3072 	.db	145
      0023C9 02                    3073 	.sleb128	2
      0023CA 4E 65 77 53 74 61 74  3074 	.ascii "NewState"
             65
      0023D2 00                    3075 	.db	0
      0023D3 00 00 00 AD           3076 	.dw	0,173
      0023D7 06                    3077 	.uleb128	6
      0023D8 00 00 94 E4           3078 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$98)
      0023DC 00 00 94 E9           3079 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$100)
      0023E0 06                    3080 	.uleb128	6
      0023E1 00 00 94 EC           3081 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$101)
      0023E5 00 00 94 F1           3082 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$103)
      0023E9 00                    3083 	.uleb128	0
      0023EA 03                    3084 	.uleb128	3
      0023EB 00 00 01 F8           3085 	.dw	0,504
      0023EF 54 49 4D 34 5F 55 70  3086 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      002407 00                    3087 	.db	0
      002408 00 00 94 F2           3088 	.dw	0,(_TIM4_UpdateRequestConfig)
      00240C 00 00 95 28           3089 	.dw	0,(XG$TIM4_UpdateRequestConfig$0$0+1)
      002410 01                    3090 	.db	1
      002411 00 00 2D C0           3091 	.dw	0,(Ldebug_loc_start+1092)
      002415 04                    3092 	.uleb128	4
      002416 02                    3093 	.db	2
      002417 91                    3094 	.db	145
      002418 02                    3095 	.sleb128	2
      002419 54 49 4D 34 5F 55 70  3096 	.ascii "TIM4_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      00242A 00                    3097 	.db	0
      00242B 00 00 00 AD           3098 	.dw	0,173
      00242F 06                    3099 	.uleb128	6
      002430 00 00 95 1A           3100 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$119)
      002434 00 00 95 1F           3101 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$121)
      002438 06                    3102 	.uleb128	6
      002439 00 00 95 22           3103 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$122)
      00243D 00 00 95 27           3104 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$124)
      002441 00                    3105 	.uleb128	0
      002442 03                    3106 	.uleb128	3
      002443 00 00 02 49           3107 	.dw	0,585
      002447 54 49 4D 34 5F 53 65  3108 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      00245E 00                    3109 	.db	0
      00245F 00 00 95 28           3110 	.dw	0,(_TIM4_SelectOnePulseMode)
      002463 00 00 95 5E           3111 	.dw	0,(XG$TIM4_SelectOnePulseMode$0$0+1)
      002467 01                    3112 	.db	1
      002468 00 00 2D 58           3113 	.dw	0,(Ldebug_loc_start+988)
      00246C 04                    3114 	.uleb128	4
      00246D 02                    3115 	.db	2
      00246E 91                    3116 	.db	145
      00246F 02                    3117 	.sleb128	2
      002470 54 49 4D 34 5F 4F 50  3118 	.ascii "TIM4_OPMode"
             4D 6F 64 65
      00247B 00                    3119 	.db	0
      00247C 00 00 00 AD           3120 	.dw	0,173
      002480 06                    3121 	.uleb128	6
      002481 00 00 95 50           3122 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$140)
      002485 00 00 95 55           3123 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$142)
      002489 06                    3124 	.uleb128	6
      00248A 00 00 95 58           3125 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$143)
      00248E 00 00 95 5D           3126 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$145)
      002492 00                    3127 	.uleb128	0
      002493 03                    3128 	.uleb128	3
      002494 00 00 02 9E           3129 	.dw	0,670
      002498 54 49 4D 34 5F 50 72  3130 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0024AC 00                    3131 	.db	0
      0024AD 00 00 95 5E           3132 	.dw	0,(_TIM4_PrescalerConfig)
      0024B1 00 00 95 DD           3133 	.dw	0,(XG$TIM4_PrescalerConfig$0$0+1)
      0024B5 01                    3134 	.db	1
      0024B6 00 00 2C 54           3135 	.dw	0,(Ldebug_loc_start+728)
      0024BA 04                    3136 	.uleb128	4
      0024BB 02                    3137 	.db	2
      0024BC 91                    3138 	.db	145
      0024BD 02                    3139 	.sleb128	2
      0024BE 50 72 65 73 63 61 6C  3140 	.ascii "Prescaler"
             65 72
      0024C7 00                    3141 	.db	0
      0024C8 00 00 00 AD           3142 	.dw	0,173
      0024CC 04                    3143 	.uleb128	4
      0024CD 02                    3144 	.db	2
      0024CE 91                    3145 	.db	145
      0024CF 03                    3146 	.sleb128	3
      0024D0 54 49 4D 34 5F 50 53  3147 	.ascii "TIM4_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      0024E2 00                    3148 	.db	0
      0024E3 00 00 00 AD           3149 	.dw	0,173
      0024E7 00                    3150 	.uleb128	0
      0024E8 03                    3151 	.uleb128	3
      0024E9 00 00 02 EA           3152 	.dw	0,746
      0024ED 54 49 4D 34 5F 41 52  3153 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      002502 00                    3154 	.db	0
      002503 00 00 95 DD           3155 	.dw	0,(_TIM4_ARRPreloadConfig)
      002507 00 00 96 13           3156 	.dw	0,(XG$TIM4_ARRPreloadConfig$0$0+1)
      00250B 01                    3157 	.db	1
      00250C 00 00 2B EC           3158 	.dw	0,(Ldebug_loc_start+624)
      002510 04                    3159 	.uleb128	4
      002511 02                    3160 	.db	2
      002512 91                    3161 	.db	145
      002513 02                    3162 	.sleb128	2
      002514 4E 65 77 53 74 61 74  3163 	.ascii "NewState"
             65
      00251C 00                    3164 	.db	0
      00251D 00 00 00 AD           3165 	.dw	0,173
      002521 06                    3166 	.uleb128	6
      002522 00 00 96 05           3167 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$190)
      002526 00 00 96 0A           3168 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$192)
      00252A 06                    3169 	.uleb128	6
      00252B 00 00 96 0D           3170 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$193)
      00252F 00 00 96 12           3171 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$195)
      002533 00                    3172 	.uleb128	0
      002534 03                    3173 	.uleb128	3
      002535 00 00 03 29           3174 	.dw	0,809
      002539 54 49 4D 34 5F 47 65  3175 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      00254B 00                    3176 	.db	0
      00254C 00 00 96 13           3177 	.dw	0,(_TIM4_GenerateEvent)
      002550 00 00 96 31           3178 	.dw	0,(XG$TIM4_GenerateEvent$0$0+1)
      002554 01                    3179 	.db	1
      002555 00 00 2B 84           3180 	.dw	0,(Ldebug_loc_start+520)
      002559 04                    3181 	.uleb128	4
      00255A 02                    3182 	.db	2
      00255B 91                    3183 	.db	145
      00255C 02                    3184 	.sleb128	2
      00255D 54 49 4D 34 5F 45 76  3185 	.ascii "TIM4_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      00256D 00                    3186 	.db	0
      00256E 00 00 00 AD           3187 	.dw	0,173
      002572 00                    3188 	.uleb128	0
      002573 03                    3189 	.uleb128	3
      002574 00 00 03 5C           3190 	.dw	0,860
      002578 54 49 4D 34 5F 53 65  3191 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      002587 00                    3192 	.db	0
      002588 00 00 96 31           3193 	.dw	0,(_TIM4_SetCounter)
      00258C 00 00 96 38           3194 	.dw	0,(XG$TIM4_SetCounter$0$0+1)
      002590 01                    3195 	.db	1
      002591 00 00 2B 70           3196 	.dw	0,(Ldebug_loc_start+500)
      002595 04                    3197 	.uleb128	4
      002596 02                    3198 	.db	2
      002597 91                    3199 	.db	145
      002598 02                    3200 	.sleb128	2
      002599 43 6F 75 6E 74 65 72  3201 	.ascii "Counter"
      0025A0 00                    3202 	.db	0
      0025A1 00 00 00 AD           3203 	.dw	0,173
      0025A5 00                    3204 	.uleb128	0
      0025A6 03                    3205 	.uleb128	3
      0025A7 00 00 03 95           3206 	.dw	0,917
      0025AB 54 49 4D 34 5F 53 65  3207 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0025BD 00                    3208 	.db	0
      0025BE 00 00 96 38           3209 	.dw	0,(_TIM4_SetAutoreload)
      0025C2 00 00 96 3F           3210 	.dw	0,(XG$TIM4_SetAutoreload$0$0+1)
      0025C6 01                    3211 	.db	1
      0025C7 00 00 2B 5C           3212 	.dw	0,(Ldebug_loc_start+480)
      0025CB 04                    3213 	.uleb128	4
      0025CC 02                    3214 	.db	2
      0025CD 91                    3215 	.db	145
      0025CE 02                    3216 	.sleb128	2
      0025CF 41 75 74 6F 72 65 6C  3217 	.ascii "Autoreload"
             6F 61 64
      0025D9 00                    3218 	.db	0
      0025DA 00 00 00 AD           3219 	.dw	0,173
      0025DE 00                    3220 	.uleb128	0
      0025DF 07                    3221 	.uleb128	7
      0025E0 54 49 4D 34 5F 47 65  3222 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      0025EF 00                    3223 	.db	0
      0025F0 00 00 96 3F           3224 	.dw	0,(_TIM4_GetCounter)
      0025F4 00 00 96 43           3225 	.dw	0,(XG$TIM4_GetCounter$0$0+1)
      0025F8 01                    3226 	.db	1
      0025F9 00 00 2B 48           3227 	.dw	0,(Ldebug_loc_start+460)
      0025FD 00 00 00 AD           3228 	.dw	0,173
      002601 07                    3229 	.uleb128	7
      002602 54 49 4D 34 5F 47 65  3230 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      002613 00                    3231 	.db	0
      002614 00 00 96 43           3232 	.dw	0,(_TIM4_GetPrescaler)
      002618 00 00 96 47           3233 	.dw	0,(XG$TIM4_GetPrescaler$0$0+1)
      00261C 01                    3234 	.db	1
      00261D 00 00 2B 34           3235 	.dw	0,(Ldebug_loc_start+440)
      002621 00 00 00 AD           3236 	.dw	0,173
      002625 08                    3237 	.uleb128	8
      002626 00 00 04 3A           3238 	.dw	0,1082
      00262A 54 49 4D 34 5F 47 65  3239 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      00263C 00                    3240 	.db	0
      00263D 00 00 96 47           3241 	.dw	0,(_TIM4_GetFlagStatus)
      002641 00 00 96 70           3242 	.dw	0,(XG$TIM4_GetFlagStatus$0$0+1)
      002645 01                    3243 	.db	1
      002646 00 00 2A CC           3244 	.dw	0,(Ldebug_loc_start+336)
      00264A 00 00 00 AD           3245 	.dw	0,173
      00264E 04                    3246 	.uleb128	4
      00264F 02                    3247 	.db	2
      002650 91                    3248 	.db	145
      002651 02                    3249 	.sleb128	2
      002652 54 49 4D 34 5F 46 4C  3250 	.ascii "TIM4_FLAG"
             41 47
      00265B 00                    3251 	.db	0
      00265C 00 00 00 AD           3252 	.dw	0,173
      002660 06                    3253 	.uleb128	6
      002661 00 00 96 69           3254 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$248)
      002665 00 00 96 6B           3255 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$250)
      002669 06                    3256 	.uleb128	6
      00266A 00 00 96 6E           3257 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$251)
      00266E 00 00 96 6F           3258 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$253)
      002672 09                    3259 	.uleb128	9
      002673 01                    3260 	.db	1
      002674 50                    3261 	.db	80
      002675 62 69 74 73 74 61 74  3262 	.ascii "bitstatus"
             75 73
      00267E 00                    3263 	.db	0
      00267F 00 00 00 AD           3264 	.dw	0,173
      002683 00                    3265 	.uleb128	0
      002684 03                    3266 	.uleb128	3
      002685 00 00 04 6E           3267 	.dw	0,1134
      002689 54 49 4D 34 5F 43 6C  3268 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      002697 00                    3269 	.db	0
      002698 00 00 96 70           3270 	.dw	0,(_TIM4_ClearFlag)
      00269C 00 00 96 8E           3271 	.dw	0,(XG$TIM4_ClearFlag$0$0+1)
      0026A0 01                    3272 	.db	1
      0026A1 00 00 2A 64           3273 	.dw	0,(Ldebug_loc_start+232)
      0026A5 04                    3274 	.uleb128	4
      0026A6 02                    3275 	.db	2
      0026A7 91                    3276 	.db	145
      0026A8 02                    3277 	.sleb128	2
      0026A9 54 49 4D 34 5F 46 4C  3278 	.ascii "TIM4_FLAG"
             41 47
      0026B2 00                    3279 	.db	0
      0026B3 00 00 00 AD           3280 	.dw	0,173
      0026B7 00                    3281 	.uleb128	0
      0026B8 08                    3282 	.uleb128	8
      0026B9 00 00 04 EA           3283 	.dw	0,1258
      0026BD 54 49 4D 34 5F 47 65  3284 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      0026CD 00                    3285 	.db	0
      0026CE 00 00 96 8E           3286 	.dw	0,(_TIM4_GetITStatus)
      0026D2 00 00 96 C8           3287 	.dw	0,(XG$TIM4_GetITStatus$0$0+1)
      0026D6 01                    3288 	.db	1
      0026D7 00 00 29 E4           3289 	.dw	0,(Ldebug_loc_start+104)
      0026DB 00 00 00 AD           3290 	.dw	0,173
      0026DF 04                    3291 	.uleb128	4
      0026E0 02                    3292 	.db	2
      0026E1 91                    3293 	.db	145
      0026E2 02                    3294 	.sleb128	2
      0026E3 54 49 4D 34 5F 49 54  3295 	.ascii "TIM4_IT"
      0026EA 00                    3296 	.db	0
      0026EB 00 00 00 AD           3297 	.dw	0,173
      0026EF 06                    3298 	.uleb128	6
      0026F0 00 00 96 BF           3299 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$286)
      0026F4 00 00 96 C1           3300 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$288)
      0026F8 06                    3301 	.uleb128	6
      0026F9 00 00 96 C4           3302 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$289)
      0026FD 00 00 96 C5           3303 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$291)
      002701 09                    3304 	.uleb128	9
      002702 01                    3305 	.db	1
      002703 50                    3306 	.db	80
      002704 62 69 74 73 74 61 74  3307 	.ascii "bitstatus"
             75 73
      00270D 00                    3308 	.db	0
      00270E 00 00 00 AD           3309 	.dw	0,173
      002712 09                    3310 	.uleb128	9
      002713 02                    3311 	.db	2
      002714 91                    3312 	.db	145
      002715 7F                    3313 	.sleb128	-1
      002716 69 74 73 74 61 74 75  3314 	.ascii "itstatus"
             73
      00271E 00                    3315 	.db	0
      00271F 00 00 00 AD           3316 	.dw	0,173
      002723 09                    3317 	.uleb128	9
      002724 01                    3318 	.db	1
      002725 50                    3319 	.db	80
      002726 69 74 65 6E 61 62 6C  3320 	.ascii "itenable"
             65
      00272E 00                    3321 	.db	0
      00272F 00 00 00 AD           3322 	.dw	0,173
      002733 00                    3323 	.uleb128	0
      002734 03                    3324 	.uleb128	3
      002735 00 00 05 24           3325 	.dw	0,1316
      002739 54 49 4D 34 5F 43 6C  3326 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      00274F 00                    3327 	.db	0
      002750 00 00 96 C8           3328 	.dw	0,(_TIM4_ClearITPendingBit)
      002754 00 00 96 E6           3329 	.dw	0,(XG$TIM4_ClearITPendingBit$0$0+1)
      002758 01                    3330 	.db	1
      002759 00 00 29 7C           3331 	.dw	0,(Ldebug_loc_start)
      00275D 04                    3332 	.uleb128	4
      00275E 02                    3333 	.db	2
      00275F 91                    3334 	.db	145
      002760 02                    3335 	.sleb128	2
      002761 54 49 4D 34 5F 49 54  3336 	.ascii "TIM4_IT"
      002768 00                    3337 	.db	0
      002769 00 00 00 AD           3338 	.dw	0,173
      00276D 00                    3339 	.uleb128	0
      00276E 0A                    3340 	.uleb128	10
      00276F 00 00 00 AD           3341 	.dw	0,173
      002773 0B                    3342 	.uleb128	11
      002774 00 00 05 36           3343 	.dw	0,1334
      002778 18                    3344 	.db	24
      002779 00 00 05 24           3345 	.dw	0,1316
      00277D 0C                    3346 	.uleb128	12
      00277E 17                    3347 	.db	23
      00277F 00                    3348 	.uleb128	0
      002780 09                    3349 	.uleb128	9
      002781 05                    3350 	.db	5
      002782 03                    3351 	.db	3
      002783 00 00 80 D3           3352 	.dw	0,(___str_0)
      002787 5F 5F 73 74 72 5F 30  3353 	.ascii "__str_0"
      00278E 00                    3354 	.db	0
      00278F 00 00 05 29           3355 	.dw	0,1321
      002793 00                    3356 	.uleb128	0
      002794 00                    3357 	.uleb128	0
      002795 00                    3358 	.uleb128	0
      002796                       3359 Ldebug_info_end:
                                   3360 
                                   3361 	.area .debug_pubnames (NOLOAD)
      0007E0 00 00 01 A2           3362 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0007E4                       3363 Ldebug_pubnames_start:
      0007E4 00 02                 3364 	.dw	2
      0007E6 00 00 22 4A           3365 	.dw	0,(Ldebug_info_start-4)
      0007EA 00 00 05 4C           3366 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0007EE 00 00 00 43           3367 	.dw	0,67
      0007F2 54 49 4D 34 5F 44 65  3368 	.ascii "TIM4_DeInit"
             49 6E 69 74
      0007FD 00                    3369 	.db	0
      0007FE 00 00 00 5D           3370 	.dw	0,93
      000802 54 49 4D 34 5F 54 69  3371 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      000813 00                    3372 	.db	0
      000814 00 00 00 BE           3373 	.dw	0,190
      000818 54 49 4D 34 5F 43 6D  3374 	.ascii "TIM4_Cmd"
             64
      000820 00                    3375 	.db	0
      000821 00 00 00 FD           3376 	.dw	0,253
      000825 54 49 4D 34 5F 49 54  3377 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      000832 00                    3378 	.db	0
      000833 00 00 01 51           3379 	.dw	0,337
      000837 54 49 4D 34 5F 55 70  3380 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      00084F 00                    3381 	.db	0
      000850 00 00 01 A0           3382 	.dw	0,416
      000854 54 49 4D 34 5F 55 70  3383 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      00086C 00                    3384 	.db	0
      00086D 00 00 01 F8           3385 	.dw	0,504
      000871 54 49 4D 34 5F 53 65  3386 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000888 00                    3387 	.db	0
      000889 00 00 02 49           3388 	.dw	0,585
      00088D 54 49 4D 34 5F 50 72  3389 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0008A1 00                    3390 	.db	0
      0008A2 00 00 02 9E           3391 	.dw	0,670
      0008A6 54 49 4D 34 5F 41 52  3392 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0008BB 00                    3393 	.db	0
      0008BC 00 00 02 EA           3394 	.dw	0,746
      0008C0 54 49 4D 34 5F 47 65  3395 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      0008D2 00                    3396 	.db	0
      0008D3 00 00 03 29           3397 	.dw	0,809
      0008D7 54 49 4D 34 5F 53 65  3398 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0008E6 00                    3399 	.db	0
      0008E7 00 00 03 5C           3400 	.dw	0,860
      0008EB 54 49 4D 34 5F 53 65  3401 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0008FD 00                    3402 	.db	0
      0008FE 00 00 03 95           3403 	.dw	0,917
      000902 54 49 4D 34 5F 47 65  3404 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      000911 00                    3405 	.db	0
      000912 00 00 03 B7           3406 	.dw	0,951
      000916 54 49 4D 34 5F 47 65  3407 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      000927 00                    3408 	.db	0
      000928 00 00 03 DB           3409 	.dw	0,987
      00092C 54 49 4D 34 5F 47 65  3410 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      00093E 00                    3411 	.db	0
      00093F 00 00 04 3A           3412 	.dw	0,1082
      000943 54 49 4D 34 5F 43 6C  3413 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      000951 00                    3414 	.db	0
      000952 00 00 04 6E           3415 	.dw	0,1134
      000956 54 49 4D 34 5F 47 65  3416 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000966 00                    3417 	.db	0
      000967 00 00 04 EA           3418 	.dw	0,1258
      00096B 54 49 4D 34 5F 43 6C  3419 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000981 00                    3420 	.db	0
      000982 00 00 00 00           3421 	.dw	0,0
      000986                       3422 Ldebug_pubnames_end:
                                   3423 
                                   3424 	.area .debug_frame (NOLOAD)
      0022DB 00 00                 3425 	.dw	0
      0022DD 00 0E                 3426 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0022DF                       3427 Ldebug_CIE0_start:
      0022DF FF FF                 3428 	.dw	0xffff
      0022E1 FF FF                 3429 	.dw	0xffff
      0022E3 01                    3430 	.db	1
      0022E4 00                    3431 	.db	0
      0022E5 01                    3432 	.uleb128	1
      0022E6 7F                    3433 	.sleb128	-1
      0022E7 09                    3434 	.db	9
      0022E8 0C                    3435 	.db	12
      0022E9 08                    3436 	.uleb128	8
      0022EA 02                    3437 	.uleb128	2
      0022EB 89                    3438 	.db	137
      0022EC 01                    3439 	.uleb128	1
      0022ED                       3440 Ldebug_CIE0_end:
      0022ED 00 00 00 44           3441 	.dw	0,68
      0022F1 00 00 22 DB           3442 	.dw	0,(Ldebug_CIE0_start-4)
      0022F5 00 00 96 C8           3443 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)	;initial loc
      0022F9 00 00 00 1E           3444 	.dw	0,Sstm8s_tim4$TIM4_ClearITPendingBit$310-Sstm8s_tim4$TIM4_ClearITPendingBit$298
      0022FD 01                    3445 	.db	1
      0022FE 00 00 96 C8           3446 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)
      002302 0E                    3447 	.db	14
      002303 02                    3448 	.uleb128	2
      002304 01                    3449 	.db	1
      002305 00 00 96 D0           3450 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      002309 0E                    3451 	.db	14
      00230A 02                    3452 	.uleb128	2
      00230B 01                    3453 	.db	1
      00230C 00 00 96 D2           3454 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      002310 0E                    3455 	.db	14
      002311 03                    3456 	.uleb128	3
      002312 01                    3457 	.db	1
      002313 00 00 96 D4           3458 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      002317 0E                    3459 	.db	14
      002318 04                    3460 	.uleb128	4
      002319 01                    3461 	.db	1
      00231A 00 00 96 D6           3462 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      00231E 0E                    3463 	.db	14
      00231F 06                    3464 	.uleb128	6
      002320 01                    3465 	.db	1
      002321 00 00 96 D8           3466 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      002325 0E                    3467 	.db	14
      002326 07                    3468 	.uleb128	7
      002327 01                    3469 	.db	1
      002328 00 00 96 DA           3470 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      00232C 0E                    3471 	.db	14
      00232D 08                    3472 	.uleb128	8
      00232E 01                    3473 	.db	1
      00232F 00 00 96 DF           3474 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      002333 0E                    3475 	.db	14
      002334 02                    3476 	.uleb128	2
                                   3477 
                                   3478 	.area .debug_frame (NOLOAD)
      002335 00 00                 3479 	.dw	0
      002337 00 0E                 3480 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002339                       3481 Ldebug_CIE1_start:
      002339 FF FF                 3482 	.dw	0xffff
      00233B FF FF                 3483 	.dw	0xffff
      00233D 01                    3484 	.db	1
      00233E 00                    3485 	.db	0
      00233F 01                    3486 	.uleb128	1
      002340 7F                    3487 	.sleb128	-1
      002341 09                    3488 	.db	9
      002342 0C                    3489 	.db	12
      002343 08                    3490 	.uleb128	8
      002344 02                    3491 	.uleb128	2
      002345 89                    3492 	.db	137
      002346 01                    3493 	.uleb128	1
      002347                       3494 Ldebug_CIE1_end:
      002347 00 00 00 52           3495 	.dw	0,82
      00234B 00 00 23 35           3496 	.dw	0,(Ldebug_CIE1_start-4)
      00234F 00 00 96 8E           3497 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)	;initial loc
      002353 00 00 00 3A           3498 	.dw	0,Sstm8s_tim4$TIM4_GetITStatus$296-Sstm8s_tim4$TIM4_GetITStatus$273
      002357 01                    3499 	.db	1
      002358 00 00 96 8E           3500 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)
      00235C 0E                    3501 	.db	14
      00235D 02                    3502 	.uleb128	2
      00235E 01                    3503 	.db	1
      00235F 00 00 96 8F           3504 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      002363 0E                    3505 	.db	14
      002364 03                    3506 	.uleb128	3
      002365 01                    3507 	.db	1
      002366 00 00 96 97           3508 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      00236A 0E                    3509 	.db	14
      00236B 03                    3510 	.uleb128	3
      00236C 01                    3511 	.db	1
      00236D 00 00 96 99           3512 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      002371 0E                    3513 	.db	14
      002372 04                    3514 	.uleb128	4
      002373 01                    3515 	.db	1
      002374 00 00 96 9B           3516 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      002378 0E                    3517 	.db	14
      002379 05                    3518 	.uleb128	5
      00237A 01                    3519 	.db	1
      00237B 00 00 96 9D           3520 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      00237F 0E                    3521 	.db	14
      002380 07                    3522 	.uleb128	7
      002381 01                    3523 	.db	1
      002382 00 00 96 9F           3524 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      002386 0E                    3525 	.db	14
      002387 08                    3526 	.uleb128	8
      002388 01                    3527 	.db	1
      002389 00 00 96 A1           3528 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      00238D 0E                    3529 	.db	14
      00238E 09                    3530 	.uleb128	9
      00238F 01                    3531 	.db	1
      002390 00 00 96 A6           3532 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      002394 0E                    3533 	.db	14
      002395 03                    3534 	.uleb128	3
      002396 01                    3535 	.db	1
      002397 00 00 96 C7           3536 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      00239B 0E                    3537 	.db	14
      00239C 02                    3538 	.uleb128	2
                                   3539 
                                   3540 	.area .debug_frame (NOLOAD)
      00239D 00 00                 3541 	.dw	0
      00239F 00 0E                 3542 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0023A1                       3543 Ldebug_CIE2_start:
      0023A1 FF FF                 3544 	.dw	0xffff
      0023A3 FF FF                 3545 	.dw	0xffff
      0023A5 01                    3546 	.db	1
      0023A6 00                    3547 	.db	0
      0023A7 01                    3548 	.uleb128	1
      0023A8 7F                    3549 	.sleb128	-1
      0023A9 09                    3550 	.db	9
      0023AA 0C                    3551 	.db	12
      0023AB 08                    3552 	.uleb128	8
      0023AC 02                    3553 	.uleb128	2
      0023AD 89                    3554 	.db	137
      0023AE 01                    3555 	.uleb128	1
      0023AF                       3556 Ldebug_CIE2_end:
      0023AF 00 00 00 44           3557 	.dw	0,68
      0023B3 00 00 23 9D           3558 	.dw	0,(Ldebug_CIE2_start-4)
      0023B7 00 00 96 70           3559 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)	;initial loc
      0023BB 00 00 00 1E           3560 	.dw	0,Sstm8s_tim4$TIM4_ClearFlag$271-Sstm8s_tim4$TIM4_ClearFlag$259
      0023BF 01                    3561 	.db	1
      0023C0 00 00 96 70           3562 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)
      0023C4 0E                    3563 	.db	14
      0023C5 02                    3564 	.uleb128	2
      0023C6 01                    3565 	.db	1
      0023C7 00 00 96 78           3566 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      0023CB 0E                    3567 	.db	14
      0023CC 02                    3568 	.uleb128	2
      0023CD 01                    3569 	.db	1
      0023CE 00 00 96 7A           3570 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      0023D2 0E                    3571 	.db	14
      0023D3 03                    3572 	.uleb128	3
      0023D4 01                    3573 	.db	1
      0023D5 00 00 96 7C           3574 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      0023D9 0E                    3575 	.db	14
      0023DA 04                    3576 	.uleb128	4
      0023DB 01                    3577 	.db	1
      0023DC 00 00 96 7E           3578 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      0023E0 0E                    3579 	.db	14
      0023E1 06                    3580 	.uleb128	6
      0023E2 01                    3581 	.db	1
      0023E3 00 00 96 80           3582 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      0023E7 0E                    3583 	.db	14
      0023E8 07                    3584 	.uleb128	7
      0023E9 01                    3585 	.db	1
      0023EA 00 00 96 82           3586 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      0023EE 0E                    3587 	.db	14
      0023EF 08                    3588 	.uleb128	8
      0023F0 01                    3589 	.db	1
      0023F1 00 00 96 87           3590 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      0023F5 0E                    3591 	.db	14
      0023F6 02                    3592 	.uleb128	2
                                   3593 
                                   3594 	.area .debug_frame (NOLOAD)
      0023F7 00 00                 3595 	.dw	0
      0023F9 00 0E                 3596 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0023FB                       3597 Ldebug_CIE3_start:
      0023FB FF FF                 3598 	.dw	0xffff
      0023FD FF FF                 3599 	.dw	0xffff
      0023FF 01                    3600 	.db	1
      002400 00                    3601 	.db	0
      002401 01                    3602 	.uleb128	1
      002402 7F                    3603 	.sleb128	-1
      002403 09                    3604 	.db	9
      002404 0C                    3605 	.db	12
      002405 08                    3606 	.uleb128	8
      002406 02                    3607 	.uleb128	2
      002407 89                    3608 	.db	137
      002408 01                    3609 	.uleb128	1
      002409                       3610 Ldebug_CIE3_end:
      002409 00 00 00 44           3611 	.dw	0,68
      00240D 00 00 23 F7           3612 	.dw	0,(Ldebug_CIE3_start-4)
      002411 00 00 96 47           3613 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)	;initial loc
      002415 00 00 00 29           3614 	.dw	0,Sstm8s_tim4$TIM4_GetFlagStatus$257-Sstm8s_tim4$TIM4_GetFlagStatus$238
      002419 01                    3615 	.db	1
      00241A 00 00 96 47           3616 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)
      00241E 0E                    3617 	.db	14
      00241F 02                    3618 	.uleb128	2
      002420 01                    3619 	.db	1
      002421 00 00 96 4F           3620 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      002425 0E                    3621 	.db	14
      002426 02                    3622 	.uleb128	2
      002427 01                    3623 	.db	1
      002428 00 00 96 51           3624 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      00242C 0E                    3625 	.db	14
      00242D 03                    3626 	.uleb128	3
      00242E 01                    3627 	.db	1
      00242F 00 00 96 53           3628 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      002433 0E                    3629 	.db	14
      002434 04                    3630 	.uleb128	4
      002435 01                    3631 	.db	1
      002436 00 00 96 55           3632 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      00243A 0E                    3633 	.db	14
      00243B 06                    3634 	.uleb128	6
      00243C 01                    3635 	.db	1
      00243D 00 00 96 57           3636 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      002441 0E                    3637 	.db	14
      002442 07                    3638 	.uleb128	7
      002443 01                    3639 	.db	1
      002444 00 00 96 59           3640 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      002448 0E                    3641 	.db	14
      002449 08                    3642 	.uleb128	8
      00244A 01                    3643 	.db	1
      00244B 00 00 96 5E           3644 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      00244F 0E                    3645 	.db	14
      002450 02                    3646 	.uleb128	2
                                   3647 
                                   3648 	.area .debug_frame (NOLOAD)
      002451 00 00                 3649 	.dw	0
      002453 00 0E                 3650 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002455                       3651 Ldebug_CIE4_start:
      002455 FF FF                 3652 	.dw	0xffff
      002457 FF FF                 3653 	.dw	0xffff
      002459 01                    3654 	.db	1
      00245A 00                    3655 	.db	0
      00245B 01                    3656 	.uleb128	1
      00245C 7F                    3657 	.sleb128	-1
      00245D 09                    3658 	.db	9
      00245E 0C                    3659 	.db	12
      00245F 08                    3660 	.uleb128	8
      002460 02                    3661 	.uleb128	2
      002461 89                    3662 	.db	137
      002462 01                    3663 	.uleb128	1
      002463                       3664 Ldebug_CIE4_end:
      002463 00 00 00 13           3665 	.dw	0,19
      002467 00 00 24 51           3666 	.dw	0,(Ldebug_CIE4_start-4)
      00246B 00 00 96 43           3667 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)	;initial loc
      00246F 00 00 00 04           3668 	.dw	0,Sstm8s_tim4$TIM4_GetPrescaler$236-Sstm8s_tim4$TIM4_GetPrescaler$232
      002473 01                    3669 	.db	1
      002474 00 00 96 43           3670 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)
      002478 0E                    3671 	.db	14
      002479 02                    3672 	.uleb128	2
                                   3673 
                                   3674 	.area .debug_frame (NOLOAD)
      00247A 00 00                 3675 	.dw	0
      00247C 00 0E                 3676 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00247E                       3677 Ldebug_CIE5_start:
      00247E FF FF                 3678 	.dw	0xffff
      002480 FF FF                 3679 	.dw	0xffff
      002482 01                    3680 	.db	1
      002483 00                    3681 	.db	0
      002484 01                    3682 	.uleb128	1
      002485 7F                    3683 	.sleb128	-1
      002486 09                    3684 	.db	9
      002487 0C                    3685 	.db	12
      002488 08                    3686 	.uleb128	8
      002489 02                    3687 	.uleb128	2
      00248A 89                    3688 	.db	137
      00248B 01                    3689 	.uleb128	1
      00248C                       3690 Ldebug_CIE5_end:
      00248C 00 00 00 13           3691 	.dw	0,19
      002490 00 00 24 7A           3692 	.dw	0,(Ldebug_CIE5_start-4)
      002494 00 00 96 3F           3693 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)	;initial loc
      002498 00 00 00 04           3694 	.dw	0,Sstm8s_tim4$TIM4_GetCounter$230-Sstm8s_tim4$TIM4_GetCounter$226
      00249C 01                    3695 	.db	1
      00249D 00 00 96 3F           3696 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)
      0024A1 0E                    3697 	.db	14
      0024A2 02                    3698 	.uleb128	2
                                   3699 
                                   3700 	.area .debug_frame (NOLOAD)
      0024A3 00 00                 3701 	.dw	0
      0024A5 00 0E                 3702 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0024A7                       3703 Ldebug_CIE6_start:
      0024A7 FF FF                 3704 	.dw	0xffff
      0024A9 FF FF                 3705 	.dw	0xffff
      0024AB 01                    3706 	.db	1
      0024AC 00                    3707 	.db	0
      0024AD 01                    3708 	.uleb128	1
      0024AE 7F                    3709 	.sleb128	-1
      0024AF 09                    3710 	.db	9
      0024B0 0C                    3711 	.db	12
      0024B1 08                    3712 	.uleb128	8
      0024B2 02                    3713 	.uleb128	2
      0024B3 89                    3714 	.db	137
      0024B4 01                    3715 	.uleb128	1
      0024B5                       3716 Ldebug_CIE6_end:
      0024B5 00 00 00 13           3717 	.dw	0,19
      0024B9 00 00 24 A3           3718 	.dw	0,(Ldebug_CIE6_start-4)
      0024BD 00 00 96 38           3719 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)	;initial loc
      0024C1 00 00 00 07           3720 	.dw	0,Sstm8s_tim4$TIM4_SetAutoreload$224-Sstm8s_tim4$TIM4_SetAutoreload$220
      0024C5 01                    3721 	.db	1
      0024C6 00 00 96 38           3722 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)
      0024CA 0E                    3723 	.db	14
      0024CB 02                    3724 	.uleb128	2
                                   3725 
                                   3726 	.area .debug_frame (NOLOAD)
      0024CC 00 00                 3727 	.dw	0
      0024CE 00 0E                 3728 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0024D0                       3729 Ldebug_CIE7_start:
      0024D0 FF FF                 3730 	.dw	0xffff
      0024D2 FF FF                 3731 	.dw	0xffff
      0024D4 01                    3732 	.db	1
      0024D5 00                    3733 	.db	0
      0024D6 01                    3734 	.uleb128	1
      0024D7 7F                    3735 	.sleb128	-1
      0024D8 09                    3736 	.db	9
      0024D9 0C                    3737 	.db	12
      0024DA 08                    3738 	.uleb128	8
      0024DB 02                    3739 	.uleb128	2
      0024DC 89                    3740 	.db	137
      0024DD 01                    3741 	.uleb128	1
      0024DE                       3742 Ldebug_CIE7_end:
      0024DE 00 00 00 13           3743 	.dw	0,19
      0024E2 00 00 24 CC           3744 	.dw	0,(Ldebug_CIE7_start-4)
      0024E6 00 00 96 31           3745 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)	;initial loc
      0024EA 00 00 00 07           3746 	.dw	0,Sstm8s_tim4$TIM4_SetCounter$218-Sstm8s_tim4$TIM4_SetCounter$214
      0024EE 01                    3747 	.db	1
      0024EF 00 00 96 31           3748 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)
      0024F3 0E                    3749 	.db	14
      0024F4 02                    3750 	.uleb128	2
                                   3751 
                                   3752 	.area .debug_frame (NOLOAD)
      0024F5 00 00                 3753 	.dw	0
      0024F7 00 0E                 3754 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0024F9                       3755 Ldebug_CIE8_start:
      0024F9 FF FF                 3756 	.dw	0xffff
      0024FB FF FF                 3757 	.dw	0xffff
      0024FD 01                    3758 	.db	1
      0024FE 00                    3759 	.db	0
      0024FF 01                    3760 	.uleb128	1
      002500 7F                    3761 	.sleb128	-1
      002501 09                    3762 	.db	9
      002502 0C                    3763 	.db	12
      002503 08                    3764 	.uleb128	8
      002504 02                    3765 	.uleb128	2
      002505 89                    3766 	.db	137
      002506 01                    3767 	.uleb128	1
      002507                       3768 Ldebug_CIE8_end:
      002507 00 00 00 44           3769 	.dw	0,68
      00250B 00 00 24 F5           3770 	.dw	0,(Ldebug_CIE8_start-4)
      00250F 00 00 96 13           3771 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)	;initial loc
      002513 00 00 00 1E           3772 	.dw	0,Sstm8s_tim4$TIM4_GenerateEvent$212-Sstm8s_tim4$TIM4_GenerateEvent$200
      002517 01                    3773 	.db	1
      002518 00 00 96 13           3774 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)
      00251C 0E                    3775 	.db	14
      00251D 02                    3776 	.uleb128	2
      00251E 01                    3777 	.db	1
      00251F 00 00 96 1B           3778 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      002523 0E                    3779 	.db	14
      002524 02                    3780 	.uleb128	2
      002525 01                    3781 	.db	1
      002526 00 00 96 1D           3782 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      00252A 0E                    3783 	.db	14
      00252B 03                    3784 	.uleb128	3
      00252C 01                    3785 	.db	1
      00252D 00 00 96 1F           3786 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002531 0E                    3787 	.db	14
      002532 04                    3788 	.uleb128	4
      002533 01                    3789 	.db	1
      002534 00 00 96 21           3790 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      002538 0E                    3791 	.db	14
      002539 06                    3792 	.uleb128	6
      00253A 01                    3793 	.db	1
      00253B 00 00 96 23           3794 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      00253F 0E                    3795 	.db	14
      002540 07                    3796 	.uleb128	7
      002541 01                    3797 	.db	1
      002542 00 00 96 25           3798 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      002546 0E                    3799 	.db	14
      002547 08                    3800 	.uleb128	8
      002548 01                    3801 	.db	1
      002549 00 00 96 2A           3802 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      00254D 0E                    3803 	.db	14
      00254E 02                    3804 	.uleb128	2
                                   3805 
                                   3806 	.area .debug_frame (NOLOAD)
      00254F 00 00                 3807 	.dw	0
      002551 00 0E                 3808 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002553                       3809 Ldebug_CIE9_start:
      002553 FF FF                 3810 	.dw	0xffff
      002555 FF FF                 3811 	.dw	0xffff
      002557 01                    3812 	.db	1
      002558 00                    3813 	.db	0
      002559 01                    3814 	.uleb128	1
      00255A 7F                    3815 	.sleb128	-1
      00255B 09                    3816 	.db	9
      00255C 0C                    3817 	.db	12
      00255D 08                    3818 	.uleb128	8
      00255E 02                    3819 	.uleb128	2
      00255F 89                    3820 	.db	137
      002560 01                    3821 	.uleb128	1
      002561                       3822 Ldebug_CIE9_end:
      002561 00 00 00 44           3823 	.dw	0,68
      002565 00 00 25 4F           3824 	.dw	0,(Ldebug_CIE9_start-4)
      002569 00 00 95 DD           3825 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)	;initial loc
      00256D 00 00 00 36           3826 	.dw	0,Sstm8s_tim4$TIM4_ARRPreloadConfig$198-Sstm8s_tim4$TIM4_ARRPreloadConfig$179
      002571 01                    3827 	.db	1
      002572 00 00 95 DD           3828 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)
      002576 0E                    3829 	.db	14
      002577 02                    3830 	.uleb128	2
      002578 01                    3831 	.db	1
      002579 00 00 95 EC           3832 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      00257D 0E                    3833 	.db	14
      00257E 02                    3834 	.uleb128	2
      00257F 01                    3835 	.db	1
      002580 00 00 95 EE           3836 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      002584 0E                    3837 	.db	14
      002585 03                    3838 	.uleb128	3
      002586 01                    3839 	.db	1
      002587 00 00 95 F0           3840 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      00258B 0E                    3841 	.db	14
      00258C 05                    3842 	.uleb128	5
      00258D 01                    3843 	.db	1
      00258E 00 00 95 F2           3844 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      002592 0E                    3845 	.db	14
      002593 06                    3846 	.uleb128	6
      002594 01                    3847 	.db	1
      002595 00 00 95 F4           3848 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002599 0E                    3849 	.db	14
      00259A 07                    3850 	.uleb128	7
      00259B 01                    3851 	.db	1
      00259C 00 00 95 F6           3852 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      0025A0 0E                    3853 	.db	14
      0025A1 08                    3854 	.uleb128	8
      0025A2 01                    3855 	.db	1
      0025A3 00 00 95 FB           3856 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      0025A7 0E                    3857 	.db	14
      0025A8 02                    3858 	.uleb128	2
                                   3859 
                                   3860 	.area .debug_frame (NOLOAD)
      0025A9 00 00                 3861 	.dw	0
      0025AB 00 0E                 3862 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      0025AD                       3863 Ldebug_CIE10_start:
      0025AD FF FF                 3864 	.dw	0xffff
      0025AF FF FF                 3865 	.dw	0xffff
      0025B1 01                    3866 	.db	1
      0025B2 00                    3867 	.db	0
      0025B3 01                    3868 	.uleb128	1
      0025B4 7F                    3869 	.sleb128	-1
      0025B5 09                    3870 	.db	9
      0025B6 0C                    3871 	.db	12
      0025B7 08                    3872 	.uleb128	8
      0025B8 02                    3873 	.uleb128	2
      0025B9 89                    3874 	.db	137
      0025BA 01                    3875 	.uleb128	1
      0025BB                       3876 Ldebug_CIE10_end:
      0025BB 00 00 00 9F           3877 	.dw	0,159
      0025BF 00 00 25 A9           3878 	.dw	0,(Ldebug_CIE10_start-4)
      0025C3 00 00 95 5E           3879 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)	;initial loc
      0025C7 00 00 00 7F           3880 	.dw	0,Sstm8s_tim4$TIM4_PrescalerConfig$177-Sstm8s_tim4$TIM4_PrescalerConfig$150
      0025CB 01                    3881 	.db	1
      0025CC 00 00 95 5E           3882 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)
      0025D0 0E                    3883 	.db	14
      0025D1 02                    3884 	.uleb128	2
      0025D2 01                    3885 	.db	1
      0025D3 00 00 95 6D           3886 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      0025D7 0E                    3887 	.db	14
      0025D8 02                    3888 	.uleb128	2
      0025D9 01                    3889 	.db	1
      0025DA 00 00 95 6F           3890 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      0025DE 0E                    3891 	.db	14
      0025DF 03                    3892 	.uleb128	3
      0025E0 01                    3893 	.db	1
      0025E1 00 00 95 71           3894 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      0025E5 0E                    3895 	.db	14
      0025E6 05                    3896 	.uleb128	5
      0025E7 01                    3897 	.db	1
      0025E8 00 00 95 73           3898 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      0025EC 0E                    3899 	.db	14
      0025ED 06                    3900 	.uleb128	6
      0025EE 01                    3901 	.db	1
      0025EF 00 00 95 75           3902 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      0025F3 0E                    3903 	.db	14
      0025F4 07                    3904 	.uleb128	7
      0025F5 01                    3905 	.db	1
      0025F6 00 00 95 77           3906 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      0025FA 0E                    3907 	.db	14
      0025FB 08                    3908 	.uleb128	8
      0025FC 01                    3909 	.db	1
      0025FD 00 00 95 7C           3910 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002601 0E                    3911 	.db	14
      002602 02                    3912 	.uleb128	2
      002603 01                    3913 	.db	1
      002604 00 00 95 8B           3914 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002608 0E                    3915 	.db	14
      002609 02                    3916 	.uleb128	2
      00260A 01                    3917 	.db	1
      00260B 00 00 95 94           3918 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      00260F 0E                    3919 	.db	14
      002610 02                    3920 	.uleb128	2
      002611 01                    3921 	.db	1
      002612 00 00 95 9D           3922 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      002616 0E                    3923 	.db	14
      002617 02                    3924 	.uleb128	2
      002618 01                    3925 	.db	1
      002619 00 00 95 A6           3926 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      00261D 0E                    3927 	.db	14
      00261E 02                    3928 	.uleb128	2
      00261F 01                    3929 	.db	1
      002620 00 00 95 AF           3930 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      002624 0E                    3931 	.db	14
      002625 02                    3932 	.uleb128	2
      002626 01                    3933 	.db	1
      002627 00 00 95 B8           3934 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      00262B 0E                    3935 	.db	14
      00262C 02                    3936 	.uleb128	2
      00262D 01                    3937 	.db	1
      00262E 00 00 95 C1           3938 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      002632 0E                    3939 	.db	14
      002633 02                    3940 	.uleb128	2
      002634 01                    3941 	.db	1
      002635 00 00 95 C3           3942 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      002639 0E                    3943 	.db	14
      00263A 03                    3944 	.uleb128	3
      00263B 01                    3945 	.db	1
      00263C 00 00 95 C5           3946 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      002640 0E                    3947 	.db	14
      002641 05                    3948 	.uleb128	5
      002642 01                    3949 	.db	1
      002643 00 00 95 C7           3950 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      002647 0E                    3951 	.db	14
      002648 06                    3952 	.uleb128	6
      002649 01                    3953 	.db	1
      00264A 00 00 95 C9           3954 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      00264E 0E                    3955 	.db	14
      00264F 07                    3956 	.uleb128	7
      002650 01                    3957 	.db	1
      002651 00 00 95 CB           3958 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      002655 0E                    3959 	.db	14
      002656 08                    3960 	.uleb128	8
      002657 01                    3961 	.db	1
      002658 00 00 95 D0           3962 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      00265C 0E                    3963 	.db	14
      00265D 02                    3964 	.uleb128	2
                                   3965 
                                   3966 	.area .debug_frame (NOLOAD)
      00265E 00 00                 3967 	.dw	0
      002660 00 0E                 3968 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      002662                       3969 Ldebug_CIE11_start:
      002662 FF FF                 3970 	.dw	0xffff
      002664 FF FF                 3971 	.dw	0xffff
      002666 01                    3972 	.db	1
      002667 00                    3973 	.db	0
      002668 01                    3974 	.uleb128	1
      002669 7F                    3975 	.sleb128	-1
      00266A 09                    3976 	.db	9
      00266B 0C                    3977 	.db	12
      00266C 08                    3978 	.uleb128	8
      00266D 02                    3979 	.uleb128	2
      00266E 89                    3980 	.db	137
      00266F 01                    3981 	.uleb128	1
      002670                       3982 Ldebug_CIE11_end:
      002670 00 00 00 44           3983 	.dw	0,68
      002674 00 00 26 5E           3984 	.dw	0,(Ldebug_CIE11_start-4)
      002678 00 00 95 28           3985 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)	;initial loc
      00267C 00 00 00 36           3986 	.dw	0,Sstm8s_tim4$TIM4_SelectOnePulseMode$148-Sstm8s_tim4$TIM4_SelectOnePulseMode$129
      002680 01                    3987 	.db	1
      002681 00 00 95 28           3988 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)
      002685 0E                    3989 	.db	14
      002686 02                    3990 	.uleb128	2
      002687 01                    3991 	.db	1
      002688 00 00 95 30           3992 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      00268C 0E                    3993 	.db	14
      00268D 02                    3994 	.uleb128	2
      00268E 01                    3995 	.db	1
      00268F 00 00 95 39           3996 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      002693 0E                    3997 	.db	14
      002694 03                    3998 	.uleb128	3
      002695 01                    3999 	.db	1
      002696 00 00 95 3B           4000 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      00269A 0E                    4001 	.db	14
      00269B 05                    4002 	.uleb128	5
      00269C 01                    4003 	.db	1
      00269D 00 00 95 3D           4004 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      0026A1 0E                    4005 	.db	14
      0026A2 06                    4006 	.uleb128	6
      0026A3 01                    4007 	.db	1
      0026A4 00 00 95 3F           4008 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      0026A8 0E                    4009 	.db	14
      0026A9 07                    4010 	.uleb128	7
      0026AA 01                    4011 	.db	1
      0026AB 00 00 95 41           4012 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      0026AF 0E                    4013 	.db	14
      0026B0 08                    4014 	.uleb128	8
      0026B1 01                    4015 	.db	1
      0026B2 00 00 95 46           4016 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      0026B6 0E                    4017 	.db	14
      0026B7 02                    4018 	.uleb128	2
                                   4019 
                                   4020 	.area .debug_frame (NOLOAD)
      0026B8 00 00                 4021 	.dw	0
      0026BA 00 0E                 4022 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      0026BC                       4023 Ldebug_CIE12_start:
      0026BC FF FF                 4024 	.dw	0xffff
      0026BE FF FF                 4025 	.dw	0xffff
      0026C0 01                    4026 	.db	1
      0026C1 00                    4027 	.db	0
      0026C2 01                    4028 	.uleb128	1
      0026C3 7F                    4029 	.sleb128	-1
      0026C4 09                    4030 	.db	9
      0026C5 0C                    4031 	.db	12
      0026C6 08                    4032 	.uleb128	8
      0026C7 02                    4033 	.uleb128	2
      0026C8 89                    4034 	.db	137
      0026C9 01                    4035 	.uleb128	1
      0026CA                       4036 Ldebug_CIE12_end:
      0026CA 00 00 00 44           4037 	.dw	0,68
      0026CE 00 00 26 B8           4038 	.dw	0,(Ldebug_CIE12_start-4)
      0026D2 00 00 94 F2           4039 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)	;initial loc
      0026D6 00 00 00 36           4040 	.dw	0,Sstm8s_tim4$TIM4_UpdateRequestConfig$127-Sstm8s_tim4$TIM4_UpdateRequestConfig$108
      0026DA 01                    4041 	.db	1
      0026DB 00 00 94 F2           4042 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)
      0026DF 0E                    4043 	.db	14
      0026E0 02                    4044 	.uleb128	2
      0026E1 01                    4045 	.db	1
      0026E2 00 00 95 01           4046 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      0026E6 0E                    4047 	.db	14
      0026E7 02                    4048 	.uleb128	2
      0026E8 01                    4049 	.db	1
      0026E9 00 00 95 03           4050 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      0026ED 0E                    4051 	.db	14
      0026EE 03                    4052 	.uleb128	3
      0026EF 01                    4053 	.db	1
      0026F0 00 00 95 05           4054 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      0026F4 0E                    4055 	.db	14
      0026F5 05                    4056 	.uleb128	5
      0026F6 01                    4057 	.db	1
      0026F7 00 00 95 07           4058 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      0026FB 0E                    4059 	.db	14
      0026FC 06                    4060 	.uleb128	6
      0026FD 01                    4061 	.db	1
      0026FE 00 00 95 09           4062 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      002702 0E                    4063 	.db	14
      002703 07                    4064 	.uleb128	7
      002704 01                    4065 	.db	1
      002705 00 00 95 0B           4066 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002709 0E                    4067 	.db	14
      00270A 08                    4068 	.uleb128	8
      00270B 01                    4069 	.db	1
      00270C 00 00 95 10           4070 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002710 0E                    4071 	.db	14
      002711 02                    4072 	.uleb128	2
                                   4073 
                                   4074 	.area .debug_frame (NOLOAD)
      002712 00 00                 4075 	.dw	0
      002714 00 0E                 4076 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      002716                       4077 Ldebug_CIE13_start:
      002716 FF FF                 4078 	.dw	0xffff
      002718 FF FF                 4079 	.dw	0xffff
      00271A 01                    4080 	.db	1
      00271B 00                    4081 	.db	0
      00271C 01                    4082 	.uleb128	1
      00271D 7F                    4083 	.sleb128	-1
      00271E 09                    4084 	.db	9
      00271F 0C                    4085 	.db	12
      002720 08                    4086 	.uleb128	8
      002721 02                    4087 	.uleb128	2
      002722 89                    4088 	.db	137
      002723 01                    4089 	.uleb128	1
      002724                       4090 Ldebug_CIE13_end:
      002724 00 00 00 44           4091 	.dw	0,68
      002728 00 00 27 12           4092 	.dw	0,(Ldebug_CIE13_start-4)
      00272C 00 00 94 BC           4093 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)	;initial loc
      002730 00 00 00 36           4094 	.dw	0,Sstm8s_tim4$TIM4_UpdateDisableConfig$106-Sstm8s_tim4$TIM4_UpdateDisableConfig$87
      002734 01                    4095 	.db	1
      002735 00 00 94 BC           4096 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)
      002739 0E                    4097 	.db	14
      00273A 02                    4098 	.uleb128	2
      00273B 01                    4099 	.db	1
      00273C 00 00 94 CB           4100 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      002740 0E                    4101 	.db	14
      002741 02                    4102 	.uleb128	2
      002742 01                    4103 	.db	1
      002743 00 00 94 CD           4104 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      002747 0E                    4105 	.db	14
      002748 03                    4106 	.uleb128	3
      002749 01                    4107 	.db	1
      00274A 00 00 94 CF           4108 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      00274E 0E                    4109 	.db	14
      00274F 05                    4110 	.uleb128	5
      002750 01                    4111 	.db	1
      002751 00 00 94 D1           4112 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      002755 0E                    4113 	.db	14
      002756 06                    4114 	.uleb128	6
      002757 01                    4115 	.db	1
      002758 00 00 94 D3           4116 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      00275C 0E                    4117 	.db	14
      00275D 07                    4118 	.uleb128	7
      00275E 01                    4119 	.db	1
      00275F 00 00 94 D5           4120 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      002763 0E                    4121 	.db	14
      002764 08                    4122 	.uleb128	8
      002765 01                    4123 	.db	1
      002766 00 00 94 DA           4124 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      00276A 0E                    4125 	.db	14
      00276B 02                    4126 	.uleb128	2
                                   4127 
                                   4128 	.area .debug_frame (NOLOAD)
      00276C 00 00                 4129 	.dw	0
      00276E 00 0E                 4130 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      002770                       4131 Ldebug_CIE14_start:
      002770 FF FF                 4132 	.dw	0xffff
      002772 FF FF                 4133 	.dw	0xffff
      002774 01                    4134 	.db	1
      002775 00                    4135 	.db	0
      002776 01                    4136 	.uleb128	1
      002777 7F                    4137 	.sleb128	-1
      002778 09                    4138 	.db	9
      002779 0C                    4139 	.db	12
      00277A 08                    4140 	.uleb128	8
      00277B 02                    4141 	.uleb128	2
      00277C 89                    4142 	.db	137
      00277D 01                    4143 	.uleb128	1
      00277E                       4144 Ldebug_CIE14_end:
      00277E 00 00 00 91           4145 	.dw	0,145
      002782 00 00 27 6C           4146 	.dw	0,(Ldebug_CIE14_start-4)
      002786 00 00 94 66           4147 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)	;initial loc
      00278A 00 00 00 56           4148 	.dw	0,Sstm8s_tim4$TIM4_ITConfig$85-Sstm8s_tim4$TIM4_ITConfig$54
      00278E 01                    4149 	.db	1
      00278F 00 00 94 66           4150 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)
      002793 0E                    4151 	.db	14
      002794 02                    4152 	.uleb128	2
      002795 01                    4153 	.db	1
      002796 00 00 94 67           4154 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      00279A 0E                    4155 	.db	14
      00279B 03                    4156 	.uleb128	3
      00279C 01                    4157 	.db	1
      00279D 00 00 94 6F           4158 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      0027A1 0E                    4159 	.db	14
      0027A2 03                    4160 	.uleb128	3
      0027A3 01                    4161 	.db	1
      0027A4 00 00 94 71           4162 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      0027A8 0E                    4163 	.db	14
      0027A9 04                    4164 	.uleb128	4
      0027AA 01                    4165 	.db	1
      0027AB 00 00 94 73           4166 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      0027AF 0E                    4167 	.db	14
      0027B0 06                    4168 	.uleb128	6
      0027B1 01                    4169 	.db	1
      0027B2 00 00 94 75           4170 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      0027B6 0E                    4171 	.db	14
      0027B7 07                    4172 	.uleb128	7
      0027B8 01                    4173 	.db	1
      0027B9 00 00 94 77           4174 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      0027BD 0E                    4175 	.db	14
      0027BE 08                    4176 	.uleb128	8
      0027BF 01                    4177 	.db	1
      0027C0 00 00 94 79           4178 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      0027C4 0E                    4179 	.db	14
      0027C5 09                    4180 	.uleb128	9
      0027C6 01                    4181 	.db	1
      0027C7 00 00 94 7E           4182 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      0027CB 0E                    4183 	.db	14
      0027CC 03                    4184 	.uleb128	3
      0027CD 01                    4185 	.db	1
      0027CE 00 00 94 8D           4186 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      0027D2 0E                    4187 	.db	14
      0027D3 03                    4188 	.uleb128	3
      0027D4 01                    4189 	.db	1
      0027D5 00 00 94 8F           4190 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      0027D9 0E                    4191 	.db	14
      0027DA 04                    4192 	.uleb128	4
      0027DB 01                    4193 	.db	1
      0027DC 00 00 94 91           4194 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      0027E0 0E                    4195 	.db	14
      0027E1 06                    4196 	.uleb128	6
      0027E2 01                    4197 	.db	1
      0027E3 00 00 94 93           4198 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      0027E7 0E                    4199 	.db	14
      0027E8 07                    4200 	.uleb128	7
      0027E9 01                    4201 	.db	1
      0027EA 00 00 94 95           4202 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      0027EE 0E                    4203 	.db	14
      0027EF 08                    4204 	.uleb128	8
      0027F0 01                    4205 	.db	1
      0027F1 00 00 94 97           4206 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      0027F5 0E                    4207 	.db	14
      0027F6 09                    4208 	.uleb128	9
      0027F7 01                    4209 	.db	1
      0027F8 00 00 94 9C           4210 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      0027FC 0E                    4211 	.db	14
      0027FD 03                    4212 	.uleb128	3
      0027FE 01                    4213 	.db	1
      0027FF 00 00 94 AF           4214 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      002803 0E                    4215 	.db	14
      002804 04                    4216 	.uleb128	4
      002805 01                    4217 	.db	1
      002806 00 00 94 B5           4218 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      00280A 0E                    4219 	.db	14
      00280B 03                    4220 	.uleb128	3
      00280C 01                    4221 	.db	1
      00280D 00 00 94 BB           4222 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002811 0E                    4223 	.db	14
      002812 02                    4224 	.uleb128	2
                                   4225 
                                   4226 	.area .debug_frame (NOLOAD)
      002813 00 00                 4227 	.dw	0
      002815 00 0E                 4228 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      002817                       4229 Ldebug_CIE15_start:
      002817 FF FF                 4230 	.dw	0xffff
      002819 FF FF                 4231 	.dw	0xffff
      00281B 01                    4232 	.db	1
      00281C 00                    4233 	.db	0
      00281D 01                    4234 	.uleb128	1
      00281E 7F                    4235 	.sleb128	-1
      00281F 09                    4236 	.db	9
      002820 0C                    4237 	.db	12
      002821 08                    4238 	.uleb128	8
      002822 02                    4239 	.uleb128	2
      002823 89                    4240 	.db	137
      002824 01                    4241 	.uleb128	1
      002825                       4242 Ldebug_CIE15_end:
      002825 00 00 00 44           4243 	.dw	0,68
      002829 00 00 28 13           4244 	.dw	0,(Ldebug_CIE15_start-4)
      00282D 00 00 94 30           4245 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)	;initial loc
      002831 00 00 00 36           4246 	.dw	0,Sstm8s_tim4$TIM4_Cmd$52-Sstm8s_tim4$TIM4_Cmd$33
      002835 01                    4247 	.db	1
      002836 00 00 94 30           4248 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)
      00283A 0E                    4249 	.db	14
      00283B 02                    4250 	.uleb128	2
      00283C 01                    4251 	.db	1
      00283D 00 00 94 3F           4252 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      002841 0E                    4253 	.db	14
      002842 02                    4254 	.uleb128	2
      002843 01                    4255 	.db	1
      002844 00 00 94 41           4256 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      002848 0E                    4257 	.db	14
      002849 03                    4258 	.uleb128	3
      00284A 01                    4259 	.db	1
      00284B 00 00 94 43           4260 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      00284F 0E                    4261 	.db	14
      002850 05                    4262 	.uleb128	5
      002851 01                    4263 	.db	1
      002852 00 00 94 45           4264 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      002856 0E                    4265 	.db	14
      002857 06                    4266 	.uleb128	6
      002858 01                    4267 	.db	1
      002859 00 00 94 47           4268 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      00285D 0E                    4269 	.db	14
      00285E 07                    4270 	.uleb128	7
      00285F 01                    4271 	.db	1
      002860 00 00 94 49           4272 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      002864 0E                    4273 	.db	14
      002865 08                    4274 	.uleb128	8
      002866 01                    4275 	.db	1
      002867 00 00 94 4E           4276 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      00286B 0E                    4277 	.db	14
      00286C 02                    4278 	.uleb128	2
                                   4279 
                                   4280 	.area .debug_frame (NOLOAD)
      00286D 00 00                 4281 	.dw	0
      00286F 00 0E                 4282 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      002871                       4283 Ldebug_CIE16_start:
      002871 FF FF                 4284 	.dw	0xffff
      002873 FF FF                 4285 	.dw	0xffff
      002875 01                    4286 	.db	1
      002876 00                    4287 	.db	0
      002877 01                    4288 	.uleb128	1
      002878 7F                    4289 	.sleb128	-1
      002879 09                    4290 	.db	9
      00287A 0C                    4291 	.db	12
      00287B 08                    4292 	.uleb128	8
      00287C 02                    4293 	.uleb128	2
      00287D 89                    4294 	.db	137
      00287E 01                    4295 	.uleb128	1
      00287F                       4296 Ldebug_CIE16_end:
      00287F 00 00 00 6E           4297 	.dw	0,110
      002883 00 00 28 6D           4298 	.dw	0,(Ldebug_CIE16_start-4)
      002887 00 00 93 CF           4299 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)	;initial loc
      00288B 00 00 00 61           4300 	.dw	0,Sstm8s_tim4$TIM4_TimeBaseInit$31-Sstm8s_tim4$TIM4_TimeBaseInit$12
      00288F 01                    4301 	.db	1
      002890 00 00 93 CF           4302 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      002894 0E                    4303 	.db	14
      002895 02                    4304 	.uleb128	2
      002896 01                    4305 	.db	1
      002897 00 00 93 DE           4306 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      00289B 0E                    4307 	.db	14
      00289C 02                    4308 	.uleb128	2
      00289D 01                    4309 	.db	1
      00289E 00 00 93 E7           4310 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      0028A2 0E                    4311 	.db	14
      0028A3 02                    4312 	.uleb128	2
      0028A4 01                    4313 	.db	1
      0028A5 00 00 93 F0           4314 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      0028A9 0E                    4315 	.db	14
      0028AA 02                    4316 	.uleb128	2
      0028AB 01                    4317 	.db	1
      0028AC 00 00 93 F9           4318 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      0028B0 0E                    4319 	.db	14
      0028B1 02                    4320 	.uleb128	2
      0028B2 01                    4321 	.db	1
      0028B3 00 00 94 02           4322 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      0028B7 0E                    4323 	.db	14
      0028B8 02                    4324 	.uleb128	2
      0028B9 01                    4325 	.db	1
      0028BA 00 00 94 0B           4326 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      0028BE 0E                    4327 	.db	14
      0028BF 02                    4328 	.uleb128	2
      0028C0 01                    4329 	.db	1
      0028C1 00 00 94 14           4330 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      0028C5 0E                    4331 	.db	14
      0028C6 02                    4332 	.uleb128	2
      0028C7 01                    4333 	.db	1
      0028C8 00 00 94 16           4334 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      0028CC 0E                    4335 	.db	14
      0028CD 03                    4336 	.uleb128	3
      0028CE 01                    4337 	.db	1
      0028CF 00 00 94 18           4338 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      0028D3 0E                    4339 	.db	14
      0028D4 05                    4340 	.uleb128	5
      0028D5 01                    4341 	.db	1
      0028D6 00 00 94 1A           4342 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      0028DA 0E                    4343 	.db	14
      0028DB 06                    4344 	.uleb128	6
      0028DC 01                    4345 	.db	1
      0028DD 00 00 94 1C           4346 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      0028E1 0E                    4347 	.db	14
      0028E2 07                    4348 	.uleb128	7
      0028E3 01                    4349 	.db	1
      0028E4 00 00 94 1E           4350 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      0028E8 0E                    4351 	.db	14
      0028E9 08                    4352 	.uleb128	8
      0028EA 01                    4353 	.db	1
      0028EB 00 00 94 23           4354 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      0028EF 0E                    4355 	.db	14
      0028F0 02                    4356 	.uleb128	2
                                   4357 
                                   4358 	.area .debug_frame (NOLOAD)
      0028F1 00 00                 4359 	.dw	0
      0028F3 00 0E                 4360 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      0028F5                       4361 Ldebug_CIE17_start:
      0028F5 FF FF                 4362 	.dw	0xffff
      0028F7 FF FF                 4363 	.dw	0xffff
      0028F9 01                    4364 	.db	1
      0028FA 00                    4365 	.db	0
      0028FB 01                    4366 	.uleb128	1
      0028FC 7F                    4367 	.sleb128	-1
      0028FD 09                    4368 	.db	9
      0028FE 0C                    4369 	.db	12
      0028FF 08                    4370 	.uleb128	8
      002900 02                    4371 	.uleb128	2
      002901 89                    4372 	.db	137
      002902 01                    4373 	.uleb128	1
      002903                       4374 Ldebug_CIE17_end:
      002903 00 00 00 13           4375 	.dw	0,19
      002907 00 00 28 F1           4376 	.dw	0,(Ldebug_CIE17_start-4)
      00290B 00 00 93 B6           4377 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)	;initial loc
      00290F 00 00 00 19           4378 	.dw	0,Sstm8s_tim4$TIM4_DeInit$10-Sstm8s_tim4$TIM4_DeInit$1
      002913 01                    4379 	.db	1
      002914 00 00 93 B6           4380 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      002918 0E                    4381 	.db	14
      002919 02                    4382 	.uleb128	2
