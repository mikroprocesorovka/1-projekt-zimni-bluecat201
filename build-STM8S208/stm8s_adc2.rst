                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _ADC2_DeInit
                                     13 	.globl _ADC2_Init
                                     14 	.globl _ADC2_Cmd
                                     15 	.globl _ADC2_ITConfig
                                     16 	.globl _ADC2_PrescalerConfig
                                     17 	.globl _ADC2_SchmittTriggerConfig
                                     18 	.globl _ADC2_ConversionConfig
                                     19 	.globl _ADC2_ExternalTriggerConfig
                                     20 	.globl _ADC2_StartConversion
                                     21 	.globl _ADC2_GetConversionValue
                                     22 	.globl _ADC2_GetFlagStatus
                                     23 	.globl _ADC2_ClearFlag
                                     24 	.globl _ADC2_GetITStatus
                                     25 	.globl _ADC2_ClearITPendingBit
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area DATA
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area INITIALIZED
                                     34 ;--------------------------------------------------------
                                     35 ; absolute external ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DABS (ABS)
                                     38 
                                     39 ; default segment ordering for linker
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area CONST
                                     44 	.area INITIALIZER
                                     45 	.area CODE
                                     46 
                                     47 ;--------------------------------------------------------
                                     48 ; global & static initialisations
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area GSINIT
                                     54 ;--------------------------------------------------------
                                     55 ; Home
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area HOME
                                     59 ;--------------------------------------------------------
                                     60 ; code
                                     61 ;--------------------------------------------------------
                                     62 	.area CODE
                           000000    63 	Sstm8s_adc2$ADC2_DeInit$0 ==.
                                     64 ;	../SPL/src/stm8s_adc2.c: 54: void ADC2_DeInit(void)
                                     65 ; genLabel
                                     66 ;	-----------------------------------------
                                     67 ;	 function ADC2_DeInit
                                     68 ;	-----------------------------------------
                                     69 ;	Register assignment is optimal.
                                     70 ;	Stack space usage: 0 bytes.
      00993E                         71 _ADC2_DeInit:
                           000000    72 	Sstm8s_adc2$ADC2_DeInit$1 ==.
                           000000    73 	Sstm8s_adc2$ADC2_DeInit$2 ==.
                                     74 ;	../SPL/src/stm8s_adc2.c: 56: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
                                     75 ; genPointerSet
      00993E 35 00 54 00      [ 1]   76 	mov	0x5400+0, #0x00
                           000004    77 	Sstm8s_adc2$ADC2_DeInit$3 ==.
                                     78 ;	../SPL/src/stm8s_adc2.c: 57: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
                                     79 ; genPointerSet
      009942 35 00 54 01      [ 1]   80 	mov	0x5401+0, #0x00
                           000008    81 	Sstm8s_adc2$ADC2_DeInit$4 ==.
                                     82 ;	../SPL/src/stm8s_adc2.c: 58: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
                                     83 ; genPointerSet
      009946 35 00 54 02      [ 1]   84 	mov	0x5402+0, #0x00
                           00000C    85 	Sstm8s_adc2$ADC2_DeInit$5 ==.
                                     86 ;	../SPL/src/stm8s_adc2.c: 59: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
                                     87 ; genPointerSet
      00994A 35 00 54 06      [ 1]   88 	mov	0x5406+0, #0x00
                           000010    89 	Sstm8s_adc2$ADC2_DeInit$6 ==.
                                     90 ;	../SPL/src/stm8s_adc2.c: 60: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
                                     91 ; genPointerSet
      00994E 35 00 54 07      [ 1]   92 	mov	0x5407+0, #0x00
                                     93 ; genLabel
      009952                         94 00101$:
                           000014    95 	Sstm8s_adc2$ADC2_DeInit$7 ==.
                                     96 ;	../SPL/src/stm8s_adc2.c: 61: }
                                     97 ; genEndFunction
                           000014    98 	Sstm8s_adc2$ADC2_DeInit$8 ==.
                           000014    99 	XG$ADC2_DeInit$0$0 ==.
      009952 81               [ 4]  100 	ret
                           000015   101 	Sstm8s_adc2$ADC2_DeInit$9 ==.
                           000015   102 	Sstm8s_adc2$ADC2_Init$10 ==.
                                    103 ;	../SPL/src/stm8s_adc2.c: 83: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
                                    104 ; genLabel
                                    105 ;	-----------------------------------------
                                    106 ;	 function ADC2_Init
                                    107 ;	-----------------------------------------
                                    108 ;	Register assignment is optimal.
                                    109 ;	Stack space usage: 0 bytes.
      009953                        110 _ADC2_Init:
                           000015   111 	Sstm8s_adc2$ADC2_Init$11 ==.
                           000015   112 	Sstm8s_adc2$ADC2_Init$12 ==.
                                    113 ;	../SPL/src/stm8s_adc2.c: 86: assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
                                    114 ; genIfx
      009953 0D 03            [ 1]  115 	tnz	(0x03, sp)
      009955 26 03            [ 1]  116 	jrne	00503$
      009957 CC 99 71         [ 2]  117 	jp	00104$
      00995A                        118 00503$:
                                    119 ; genCmpEQorNE
      00995A 7B 03            [ 1]  120 	ld	a, (0x03, sp)
      00995C 4A               [ 1]  121 	dec	a
      00995D 26 03            [ 1]  122 	jrne	00505$
      00995F CC 99 71         [ 2]  123 	jp	00104$
      009962                        124 00505$:
                           000024   125 	Sstm8s_adc2$ADC2_Init$13 ==.
                                    126 ; skipping generated iCode
                                    127 ; skipping iCode since result will be rematerialized
                                    128 ; skipping iCode since result will be rematerialized
                                    129 ; genIPush
      009962 4B 56            [ 1]  130 	push	#0x56
                           000026   131 	Sstm8s_adc2$ADC2_Init$14 ==.
      009964 5F               [ 1]  132 	clrw	x
      009965 89               [ 2]  133 	pushw	x
                           000028   134 	Sstm8s_adc2$ADC2_Init$15 ==.
      009966 4B 00            [ 1]  135 	push	#0x00
                           00002A   136 	Sstm8s_adc2$ADC2_Init$16 ==.
                                    137 ; genIPush
      009968 4B 02            [ 1]  138 	push	#<(___str_0+0)
                           00002C   139 	Sstm8s_adc2$ADC2_Init$17 ==.
      00996A 4B 81            [ 1]  140 	push	#((___str_0+0) >> 8)
                           00002E   141 	Sstm8s_adc2$ADC2_Init$18 ==.
                                    142 ; genCall
      00996C CD 82 65         [ 4]  143 	call	_assert_failed
      00996F 5B 06            [ 2]  144 	addw	sp, #6
                           000033   145 	Sstm8s_adc2$ADC2_Init$19 ==.
                                    146 ; genLabel
      009971                        147 00104$:
                           000033   148 	Sstm8s_adc2$ADC2_Init$20 ==.
                                    149 ;	../SPL/src/stm8s_adc2.c: 87: assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
                                    150 ; genIfx
      009971 0D 04            [ 1]  151 	tnz	(0x04, sp)
      009973 26 03            [ 1]  152 	jrne	00507$
      009975 CC 9A 0D         [ 2]  153 	jp	00109$
      009978                        154 00507$:
                                    155 ; genCmpEQorNE
      009978 7B 04            [ 1]  156 	ld	a, (0x04, sp)
      00997A 4A               [ 1]  157 	dec	a
      00997B 26 03            [ 1]  158 	jrne	00509$
      00997D CC 9A 0D         [ 2]  159 	jp	00109$
      009980                        160 00509$:
                           000042   161 	Sstm8s_adc2$ADC2_Init$21 ==.
                                    162 ; skipping generated iCode
                                    163 ; genCmpEQorNE
      009980 7B 04            [ 1]  164 	ld	a, (0x04, sp)
      009982 A1 02            [ 1]  165 	cp	a, #0x02
      009984 26 03            [ 1]  166 	jrne	00512$
      009986 CC 9A 0D         [ 2]  167 	jp	00109$
      009989                        168 00512$:
                           00004B   169 	Sstm8s_adc2$ADC2_Init$22 ==.
                                    170 ; skipping generated iCode
                                    171 ; genCmpEQorNE
      009989 7B 04            [ 1]  172 	ld	a, (0x04, sp)
      00998B A1 03            [ 1]  173 	cp	a, #0x03
      00998D 26 03            [ 1]  174 	jrne	00515$
      00998F CC 9A 0D         [ 2]  175 	jp	00109$
      009992                        176 00515$:
                           000054   177 	Sstm8s_adc2$ADC2_Init$23 ==.
                                    178 ; skipping generated iCode
                                    179 ; genCmpEQorNE
      009992 7B 04            [ 1]  180 	ld	a, (0x04, sp)
      009994 A1 04            [ 1]  181 	cp	a, #0x04
      009996 26 03            [ 1]  182 	jrne	00518$
      009998 CC 9A 0D         [ 2]  183 	jp	00109$
      00999B                        184 00518$:
                           00005D   185 	Sstm8s_adc2$ADC2_Init$24 ==.
                                    186 ; skipping generated iCode
                                    187 ; genCmpEQorNE
      00999B 7B 04            [ 1]  188 	ld	a, (0x04, sp)
      00999D A1 05            [ 1]  189 	cp	a, #0x05
      00999F 26 03            [ 1]  190 	jrne	00521$
      0099A1 CC 9A 0D         [ 2]  191 	jp	00109$
      0099A4                        192 00521$:
                           000066   193 	Sstm8s_adc2$ADC2_Init$25 ==.
                                    194 ; skipping generated iCode
                                    195 ; genCmpEQorNE
      0099A4 7B 04            [ 1]  196 	ld	a, (0x04, sp)
      0099A6 A1 06            [ 1]  197 	cp	a, #0x06
      0099A8 26 03            [ 1]  198 	jrne	00524$
      0099AA CC 9A 0D         [ 2]  199 	jp	00109$
      0099AD                        200 00524$:
                           00006F   201 	Sstm8s_adc2$ADC2_Init$26 ==.
                                    202 ; skipping generated iCode
                                    203 ; genCmpEQorNE
      0099AD 7B 04            [ 1]  204 	ld	a, (0x04, sp)
      0099AF A1 07            [ 1]  205 	cp	a, #0x07
      0099B1 26 03            [ 1]  206 	jrne	00527$
      0099B3 CC 9A 0D         [ 2]  207 	jp	00109$
      0099B6                        208 00527$:
                           000078   209 	Sstm8s_adc2$ADC2_Init$27 ==.
                                    210 ; skipping generated iCode
                                    211 ; genCmpEQorNE
      0099B6 7B 04            [ 1]  212 	ld	a, (0x04, sp)
      0099B8 A1 08            [ 1]  213 	cp	a, #0x08
      0099BA 26 03            [ 1]  214 	jrne	00530$
      0099BC CC 9A 0D         [ 2]  215 	jp	00109$
      0099BF                        216 00530$:
                           000081   217 	Sstm8s_adc2$ADC2_Init$28 ==.
                                    218 ; skipping generated iCode
                                    219 ; genCmpEQorNE
      0099BF 7B 04            [ 1]  220 	ld	a, (0x04, sp)
      0099C1 A1 09            [ 1]  221 	cp	a, #0x09
      0099C3 26 03            [ 1]  222 	jrne	00533$
      0099C5 CC 9A 0D         [ 2]  223 	jp	00109$
      0099C8                        224 00533$:
                           00008A   225 	Sstm8s_adc2$ADC2_Init$29 ==.
                                    226 ; skipping generated iCode
                                    227 ; genCmpEQorNE
      0099C8 7B 04            [ 1]  228 	ld	a, (0x04, sp)
      0099CA A1 0A            [ 1]  229 	cp	a, #0x0a
      0099CC 26 03            [ 1]  230 	jrne	00536$
      0099CE CC 9A 0D         [ 2]  231 	jp	00109$
      0099D1                        232 00536$:
                           000093   233 	Sstm8s_adc2$ADC2_Init$30 ==.
                                    234 ; skipping generated iCode
                                    235 ; genCmpEQorNE
      0099D1 7B 04            [ 1]  236 	ld	a, (0x04, sp)
      0099D3 A1 0B            [ 1]  237 	cp	a, #0x0b
      0099D5 26 03            [ 1]  238 	jrne	00539$
      0099D7 CC 9A 0D         [ 2]  239 	jp	00109$
      0099DA                        240 00539$:
                           00009C   241 	Sstm8s_adc2$ADC2_Init$31 ==.
                                    242 ; skipping generated iCode
                                    243 ; genCmpEQorNE
      0099DA 7B 04            [ 1]  244 	ld	a, (0x04, sp)
      0099DC A1 0C            [ 1]  245 	cp	a, #0x0c
      0099DE 26 03            [ 1]  246 	jrne	00542$
      0099E0 CC 9A 0D         [ 2]  247 	jp	00109$
      0099E3                        248 00542$:
                           0000A5   249 	Sstm8s_adc2$ADC2_Init$32 ==.
                                    250 ; skipping generated iCode
                                    251 ; genCmpEQorNE
      0099E3 7B 04            [ 1]  252 	ld	a, (0x04, sp)
      0099E5 A1 0D            [ 1]  253 	cp	a, #0x0d
      0099E7 26 03            [ 1]  254 	jrne	00545$
      0099E9 CC 9A 0D         [ 2]  255 	jp	00109$
      0099EC                        256 00545$:
                           0000AE   257 	Sstm8s_adc2$ADC2_Init$33 ==.
                                    258 ; skipping generated iCode
                                    259 ; genCmpEQorNE
      0099EC 7B 04            [ 1]  260 	ld	a, (0x04, sp)
      0099EE A1 0E            [ 1]  261 	cp	a, #0x0e
      0099F0 26 03            [ 1]  262 	jrne	00548$
      0099F2 CC 9A 0D         [ 2]  263 	jp	00109$
      0099F5                        264 00548$:
                           0000B7   265 	Sstm8s_adc2$ADC2_Init$34 ==.
                                    266 ; skipping generated iCode
                                    267 ; genCmpEQorNE
      0099F5 7B 04            [ 1]  268 	ld	a, (0x04, sp)
      0099F7 A1 0F            [ 1]  269 	cp	a, #0x0f
      0099F9 26 03            [ 1]  270 	jrne	00551$
      0099FB CC 9A 0D         [ 2]  271 	jp	00109$
      0099FE                        272 00551$:
                           0000C0   273 	Sstm8s_adc2$ADC2_Init$35 ==.
                                    274 ; skipping generated iCode
                                    275 ; skipping iCode since result will be rematerialized
                                    276 ; skipping iCode since result will be rematerialized
                                    277 ; genIPush
      0099FE 4B 57            [ 1]  278 	push	#0x57
                           0000C2   279 	Sstm8s_adc2$ADC2_Init$36 ==.
      009A00 5F               [ 1]  280 	clrw	x
      009A01 89               [ 2]  281 	pushw	x
                           0000C4   282 	Sstm8s_adc2$ADC2_Init$37 ==.
      009A02 4B 00            [ 1]  283 	push	#0x00
                           0000C6   284 	Sstm8s_adc2$ADC2_Init$38 ==.
                                    285 ; genIPush
      009A04 4B 02            [ 1]  286 	push	#<(___str_0+0)
                           0000C8   287 	Sstm8s_adc2$ADC2_Init$39 ==.
      009A06 4B 81            [ 1]  288 	push	#((___str_0+0) >> 8)
                           0000CA   289 	Sstm8s_adc2$ADC2_Init$40 ==.
                                    290 ; genCall
      009A08 CD 82 65         [ 4]  291 	call	_assert_failed
      009A0B 5B 06            [ 2]  292 	addw	sp, #6
                           0000CF   293 	Sstm8s_adc2$ADC2_Init$41 ==.
                                    294 ; genLabel
      009A0D                        295 00109$:
                           0000CF   296 	Sstm8s_adc2$ADC2_Init$42 ==.
                                    297 ;	../SPL/src/stm8s_adc2.c: 88: assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
                                    298 ; genIfx
      009A0D 0D 05            [ 1]  299 	tnz	(0x05, sp)
      009A0F 26 03            [ 1]  300 	jrne	00553$
      009A11 CC 9A 62         [ 2]  301 	jp	00156$
      009A14                        302 00553$:
                                    303 ; genCmpEQorNE
      009A14 7B 05            [ 1]  304 	ld	a, (0x05, sp)
      009A16 A1 10            [ 1]  305 	cp	a, #0x10
      009A18 26 03            [ 1]  306 	jrne	00555$
      009A1A CC 9A 62         [ 2]  307 	jp	00156$
      009A1D                        308 00555$:
                           0000DF   309 	Sstm8s_adc2$ADC2_Init$43 ==.
                                    310 ; skipping generated iCode
                                    311 ; genCmpEQorNE
      009A1D 7B 05            [ 1]  312 	ld	a, (0x05, sp)
      009A1F A1 20            [ 1]  313 	cp	a, #0x20
      009A21 26 03            [ 1]  314 	jrne	00558$
      009A23 CC 9A 62         [ 2]  315 	jp	00156$
      009A26                        316 00558$:
                           0000E8   317 	Sstm8s_adc2$ADC2_Init$44 ==.
                                    318 ; skipping generated iCode
                                    319 ; genCmpEQorNE
      009A26 7B 05            [ 1]  320 	ld	a, (0x05, sp)
      009A28 A1 30            [ 1]  321 	cp	a, #0x30
      009A2A 26 03            [ 1]  322 	jrne	00561$
      009A2C CC 9A 62         [ 2]  323 	jp	00156$
      009A2F                        324 00561$:
                           0000F1   325 	Sstm8s_adc2$ADC2_Init$45 ==.
                                    326 ; skipping generated iCode
                                    327 ; genCmpEQorNE
      009A2F 7B 05            [ 1]  328 	ld	a, (0x05, sp)
      009A31 A1 40            [ 1]  329 	cp	a, #0x40
      009A33 26 03            [ 1]  330 	jrne	00564$
      009A35 CC 9A 62         [ 2]  331 	jp	00156$
      009A38                        332 00564$:
                           0000FA   333 	Sstm8s_adc2$ADC2_Init$46 ==.
                                    334 ; skipping generated iCode
                                    335 ; genCmpEQorNE
      009A38 7B 05            [ 1]  336 	ld	a, (0x05, sp)
      009A3A A1 50            [ 1]  337 	cp	a, #0x50
      009A3C 26 03            [ 1]  338 	jrne	00567$
      009A3E CC 9A 62         [ 2]  339 	jp	00156$
      009A41                        340 00567$:
                           000103   341 	Sstm8s_adc2$ADC2_Init$47 ==.
                                    342 ; skipping generated iCode
                                    343 ; genCmpEQorNE
      009A41 7B 05            [ 1]  344 	ld	a, (0x05, sp)
      009A43 A1 60            [ 1]  345 	cp	a, #0x60
      009A45 26 03            [ 1]  346 	jrne	00570$
      009A47 CC 9A 62         [ 2]  347 	jp	00156$
      009A4A                        348 00570$:
                           00010C   349 	Sstm8s_adc2$ADC2_Init$48 ==.
                                    350 ; skipping generated iCode
                                    351 ; genCmpEQorNE
      009A4A 7B 05            [ 1]  352 	ld	a, (0x05, sp)
      009A4C A1 70            [ 1]  353 	cp	a, #0x70
      009A4E 26 03            [ 1]  354 	jrne	00573$
      009A50 CC 9A 62         [ 2]  355 	jp	00156$
      009A53                        356 00573$:
                           000115   357 	Sstm8s_adc2$ADC2_Init$49 ==.
                                    358 ; skipping generated iCode
                                    359 ; skipping iCode since result will be rematerialized
                                    360 ; skipping iCode since result will be rematerialized
                                    361 ; genIPush
      009A53 4B 58            [ 1]  362 	push	#0x58
                           000117   363 	Sstm8s_adc2$ADC2_Init$50 ==.
      009A55 5F               [ 1]  364 	clrw	x
      009A56 89               [ 2]  365 	pushw	x
                           000119   366 	Sstm8s_adc2$ADC2_Init$51 ==.
      009A57 4B 00            [ 1]  367 	push	#0x00
                           00011B   368 	Sstm8s_adc2$ADC2_Init$52 ==.
                                    369 ; genIPush
      009A59 4B 02            [ 1]  370 	push	#<(___str_0+0)
                           00011D   371 	Sstm8s_adc2$ADC2_Init$53 ==.
      009A5B 4B 81            [ 1]  372 	push	#((___str_0+0) >> 8)
                           00011F   373 	Sstm8s_adc2$ADC2_Init$54 ==.
                                    374 ; genCall
      009A5D CD 82 65         [ 4]  375 	call	_assert_failed
      009A60 5B 06            [ 2]  376 	addw	sp, #6
                           000124   377 	Sstm8s_adc2$ADC2_Init$55 ==.
                                    378 ; genLabel
      009A62                        379 00156$:
                           000124   380 	Sstm8s_adc2$ADC2_Init$56 ==.
                                    381 ;	../SPL/src/stm8s_adc2.c: 89: assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
                                    382 ; genIfx
      009A62 0D 06            [ 1]  383 	tnz	(0x06, sp)
      009A64 26 03            [ 1]  384 	jrne	00575$
      009A66 CC 9A 80         [ 2]  385 	jp	00179$
      009A69                        386 00575$:
                                    387 ; genCmpEQorNE
      009A69 7B 06            [ 1]  388 	ld	a, (0x06, sp)
      009A6B 4A               [ 1]  389 	dec	a
      009A6C 26 03            [ 1]  390 	jrne	00577$
      009A6E CC 9A 80         [ 2]  391 	jp	00179$
      009A71                        392 00577$:
                           000133   393 	Sstm8s_adc2$ADC2_Init$57 ==.
                                    394 ; skipping generated iCode
                                    395 ; skipping iCode since result will be rematerialized
                                    396 ; skipping iCode since result will be rematerialized
                                    397 ; genIPush
      009A71 4B 59            [ 1]  398 	push	#0x59
                           000135   399 	Sstm8s_adc2$ADC2_Init$58 ==.
      009A73 5F               [ 1]  400 	clrw	x
      009A74 89               [ 2]  401 	pushw	x
                           000137   402 	Sstm8s_adc2$ADC2_Init$59 ==.
      009A75 4B 00            [ 1]  403 	push	#0x00
                           000139   404 	Sstm8s_adc2$ADC2_Init$60 ==.
                                    405 ; genIPush
      009A77 4B 02            [ 1]  406 	push	#<(___str_0+0)
                           00013B   407 	Sstm8s_adc2$ADC2_Init$61 ==.
      009A79 4B 81            [ 1]  408 	push	#((___str_0+0) >> 8)
                           00013D   409 	Sstm8s_adc2$ADC2_Init$62 ==.
                                    410 ; genCall
      009A7B CD 82 65         [ 4]  411 	call	_assert_failed
      009A7E 5B 06            [ 2]  412 	addw	sp, #6
                           000142   413 	Sstm8s_adc2$ADC2_Init$63 ==.
                                    414 ; genLabel
      009A80                        415 00179$:
                           000142   416 	Sstm8s_adc2$ADC2_Init$64 ==.
                                    417 ;	../SPL/src/stm8s_adc2.c: 90: assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
                                    418 ; genIfx
      009A80 0D 07            [ 1]  419 	tnz	(0x07, sp)
      009A82 26 03            [ 1]  420 	jrne	00579$
      009A84 CC 9A 9E         [ 2]  421 	jp	00184$
      009A87                        422 00579$:
                                    423 ; genCmpEQorNE
      009A87 7B 07            [ 1]  424 	ld	a, (0x07, sp)
      009A89 4A               [ 1]  425 	dec	a
      009A8A 26 03            [ 1]  426 	jrne	00581$
      009A8C CC 9A 9E         [ 2]  427 	jp	00184$
      009A8F                        428 00581$:
                           000151   429 	Sstm8s_adc2$ADC2_Init$65 ==.
                                    430 ; skipping generated iCode
                                    431 ; skipping iCode since result will be rematerialized
                                    432 ; skipping iCode since result will be rematerialized
                                    433 ; genIPush
      009A8F 4B 5A            [ 1]  434 	push	#0x5a
                           000153   435 	Sstm8s_adc2$ADC2_Init$66 ==.
      009A91 5F               [ 1]  436 	clrw	x
      009A92 89               [ 2]  437 	pushw	x
                           000155   438 	Sstm8s_adc2$ADC2_Init$67 ==.
      009A93 4B 00            [ 1]  439 	push	#0x00
                           000157   440 	Sstm8s_adc2$ADC2_Init$68 ==.
                                    441 ; genIPush
      009A95 4B 02            [ 1]  442 	push	#<(___str_0+0)
                           000159   443 	Sstm8s_adc2$ADC2_Init$69 ==.
      009A97 4B 81            [ 1]  444 	push	#((___str_0+0) >> 8)
                           00015B   445 	Sstm8s_adc2$ADC2_Init$70 ==.
                                    446 ; genCall
      009A99 CD 82 65         [ 4]  447 	call	_assert_failed
      009A9C 5B 06            [ 2]  448 	addw	sp, #6
                           000160   449 	Sstm8s_adc2$ADC2_Init$71 ==.
                                    450 ; genLabel
      009A9E                        451 00184$:
                           000160   452 	Sstm8s_adc2$ADC2_Init$72 ==.
                                    453 ;	../SPL/src/stm8s_adc2.c: 91: assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
                                    454 ; genIfx
      009A9E 0D 08            [ 1]  455 	tnz	(0x08, sp)
      009AA0 26 03            [ 1]  456 	jrne	00583$
      009AA2 CC 9A BD         [ 2]  457 	jp	00189$
      009AA5                        458 00583$:
                                    459 ; genCmpEQorNE
      009AA5 7B 08            [ 1]  460 	ld	a, (0x08, sp)
      009AA7 A1 08            [ 1]  461 	cp	a, #0x08
      009AA9 26 03            [ 1]  462 	jrne	00585$
      009AAB CC 9A BD         [ 2]  463 	jp	00189$
      009AAE                        464 00585$:
                           000170   465 	Sstm8s_adc2$ADC2_Init$73 ==.
                                    466 ; skipping generated iCode
                                    467 ; skipping iCode since result will be rematerialized
                                    468 ; skipping iCode since result will be rematerialized
                                    469 ; genIPush
      009AAE 4B 5B            [ 1]  470 	push	#0x5b
                           000172   471 	Sstm8s_adc2$ADC2_Init$74 ==.
      009AB0 5F               [ 1]  472 	clrw	x
      009AB1 89               [ 2]  473 	pushw	x
                           000174   474 	Sstm8s_adc2$ADC2_Init$75 ==.
      009AB2 4B 00            [ 1]  475 	push	#0x00
                           000176   476 	Sstm8s_adc2$ADC2_Init$76 ==.
                                    477 ; genIPush
      009AB4 4B 02            [ 1]  478 	push	#<(___str_0+0)
                           000178   479 	Sstm8s_adc2$ADC2_Init$77 ==.
      009AB6 4B 81            [ 1]  480 	push	#((___str_0+0) >> 8)
                           00017A   481 	Sstm8s_adc2$ADC2_Init$78 ==.
                                    482 ; genCall
      009AB8 CD 82 65         [ 4]  483 	call	_assert_failed
      009ABB 5B 06            [ 2]  484 	addw	sp, #6
                           00017F   485 	Sstm8s_adc2$ADC2_Init$79 ==.
                                    486 ; genLabel
      009ABD                        487 00189$:
                           00017F   488 	Sstm8s_adc2$ADC2_Init$80 ==.
                                    489 ;	../SPL/src/stm8s_adc2.c: 92: assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
                                    490 ; genIfx
      009ABD 0D 09            [ 1]  491 	tnz	(0x09, sp)
      009ABF 26 03            [ 1]  492 	jrne	00587$
      009AC1 CC 9B 62         [ 2]  493 	jp	00194$
      009AC4                        494 00587$:
                                    495 ; genCmpEQorNE
      009AC4 7B 09            [ 1]  496 	ld	a, (0x09, sp)
      009AC6 4A               [ 1]  497 	dec	a
      009AC7 26 03            [ 1]  498 	jrne	00589$
      009AC9 CC 9B 62         [ 2]  499 	jp	00194$
      009ACC                        500 00589$:
                           00018E   501 	Sstm8s_adc2$ADC2_Init$81 ==.
                                    502 ; skipping generated iCode
                                    503 ; genCmpEQorNE
      009ACC 7B 09            [ 1]  504 	ld	a, (0x09, sp)
      009ACE A1 02            [ 1]  505 	cp	a, #0x02
      009AD0 26 03            [ 1]  506 	jrne	00592$
      009AD2 CC 9B 62         [ 2]  507 	jp	00194$
      009AD5                        508 00592$:
                           000197   509 	Sstm8s_adc2$ADC2_Init$82 ==.
                                    510 ; skipping generated iCode
                                    511 ; genCmpEQorNE
      009AD5 7B 09            [ 1]  512 	ld	a, (0x09, sp)
      009AD7 A1 03            [ 1]  513 	cp	a, #0x03
      009AD9 26 03            [ 1]  514 	jrne	00595$
      009ADB CC 9B 62         [ 2]  515 	jp	00194$
      009ADE                        516 00595$:
                           0001A0   517 	Sstm8s_adc2$ADC2_Init$83 ==.
                                    518 ; skipping generated iCode
                                    519 ; genCmpEQorNE
      009ADE 7B 09            [ 1]  520 	ld	a, (0x09, sp)
      009AE0 A1 04            [ 1]  521 	cp	a, #0x04
      009AE2 26 03            [ 1]  522 	jrne	00598$
      009AE4 CC 9B 62         [ 2]  523 	jp	00194$
      009AE7                        524 00598$:
                           0001A9   525 	Sstm8s_adc2$ADC2_Init$84 ==.
                                    526 ; skipping generated iCode
                                    527 ; genCmpEQorNE
      009AE7 7B 09            [ 1]  528 	ld	a, (0x09, sp)
      009AE9 A1 05            [ 1]  529 	cp	a, #0x05
      009AEB 26 03            [ 1]  530 	jrne	00601$
      009AED CC 9B 62         [ 2]  531 	jp	00194$
      009AF0                        532 00601$:
                           0001B2   533 	Sstm8s_adc2$ADC2_Init$85 ==.
                                    534 ; skipping generated iCode
                                    535 ; genCmpEQorNE
      009AF0 7B 09            [ 1]  536 	ld	a, (0x09, sp)
      009AF2 A1 06            [ 1]  537 	cp	a, #0x06
      009AF4 26 03            [ 1]  538 	jrne	00604$
      009AF6 CC 9B 62         [ 2]  539 	jp	00194$
      009AF9                        540 00604$:
                           0001BB   541 	Sstm8s_adc2$ADC2_Init$86 ==.
                                    542 ; skipping generated iCode
                                    543 ; genCmpEQorNE
      009AF9 7B 09            [ 1]  544 	ld	a, (0x09, sp)
      009AFB A1 07            [ 1]  545 	cp	a, #0x07
      009AFD 26 03            [ 1]  546 	jrne	00607$
      009AFF CC 9B 62         [ 2]  547 	jp	00194$
      009B02                        548 00607$:
                           0001C4   549 	Sstm8s_adc2$ADC2_Init$87 ==.
                                    550 ; skipping generated iCode
                                    551 ; genCmpEQorNE
      009B02 7B 09            [ 1]  552 	ld	a, (0x09, sp)
      009B04 A1 08            [ 1]  553 	cp	a, #0x08
      009B06 26 03            [ 1]  554 	jrne	00610$
      009B08 CC 9B 62         [ 2]  555 	jp	00194$
      009B0B                        556 00610$:
                           0001CD   557 	Sstm8s_adc2$ADC2_Init$88 ==.
                                    558 ; skipping generated iCode
                                    559 ; genCmpEQorNE
      009B0B 7B 09            [ 1]  560 	ld	a, (0x09, sp)
      009B0D A1 09            [ 1]  561 	cp	a, #0x09
      009B0F 26 03            [ 1]  562 	jrne	00613$
      009B11 CC 9B 62         [ 2]  563 	jp	00194$
      009B14                        564 00613$:
                           0001D6   565 	Sstm8s_adc2$ADC2_Init$89 ==.
                                    566 ; skipping generated iCode
                                    567 ; genCmpEQorNE
      009B14 7B 09            [ 1]  568 	ld	a, (0x09, sp)
      009B16 A1 0A            [ 1]  569 	cp	a, #0x0a
      009B18 26 03            [ 1]  570 	jrne	00616$
      009B1A CC 9B 62         [ 2]  571 	jp	00194$
      009B1D                        572 00616$:
                           0001DF   573 	Sstm8s_adc2$ADC2_Init$90 ==.
                                    574 ; skipping generated iCode
                                    575 ; genCmpEQorNE
      009B1D 7B 09            [ 1]  576 	ld	a, (0x09, sp)
      009B1F A1 0B            [ 1]  577 	cp	a, #0x0b
      009B21 26 03            [ 1]  578 	jrne	00619$
      009B23 CC 9B 62         [ 2]  579 	jp	00194$
      009B26                        580 00619$:
                           0001E8   581 	Sstm8s_adc2$ADC2_Init$91 ==.
                                    582 ; skipping generated iCode
                                    583 ; genCmpEQorNE
      009B26 7B 09            [ 1]  584 	ld	a, (0x09, sp)
      009B28 A1 0C            [ 1]  585 	cp	a, #0x0c
      009B2A 26 03            [ 1]  586 	jrne	00622$
      009B2C CC 9B 62         [ 2]  587 	jp	00194$
      009B2F                        588 00622$:
                           0001F1   589 	Sstm8s_adc2$ADC2_Init$92 ==.
                                    590 ; skipping generated iCode
                                    591 ; genCmpEQorNE
      009B2F 7B 09            [ 1]  592 	ld	a, (0x09, sp)
      009B31 A1 0D            [ 1]  593 	cp	a, #0x0d
      009B33 26 03            [ 1]  594 	jrne	00625$
      009B35 CC 9B 62         [ 2]  595 	jp	00194$
      009B38                        596 00625$:
                           0001FA   597 	Sstm8s_adc2$ADC2_Init$93 ==.
                                    598 ; skipping generated iCode
                                    599 ; genCmpEQorNE
      009B38 7B 09            [ 1]  600 	ld	a, (0x09, sp)
      009B3A A1 0E            [ 1]  601 	cp	a, #0x0e
      009B3C 26 03            [ 1]  602 	jrne	00628$
      009B3E CC 9B 62         [ 2]  603 	jp	00194$
      009B41                        604 00628$:
                           000203   605 	Sstm8s_adc2$ADC2_Init$94 ==.
                                    606 ; skipping generated iCode
                                    607 ; genCmpEQorNE
      009B41 7B 09            [ 1]  608 	ld	a, (0x09, sp)
      009B43 A1 0F            [ 1]  609 	cp	a, #0x0f
      009B45 26 03            [ 1]  610 	jrne	00631$
      009B47 CC 9B 62         [ 2]  611 	jp	00194$
      009B4A                        612 00631$:
                           00020C   613 	Sstm8s_adc2$ADC2_Init$95 ==.
                                    614 ; skipping generated iCode
                                    615 ; genCmpEQorNE
      009B4A 7B 09            [ 1]  616 	ld	a, (0x09, sp)
      009B4C A1 1F            [ 1]  617 	cp	a, #0x1f
      009B4E 26 03            [ 1]  618 	jrne	00634$
      009B50 CC 9B 62         [ 2]  619 	jp	00194$
      009B53                        620 00634$:
                           000215   621 	Sstm8s_adc2$ADC2_Init$96 ==.
                                    622 ; skipping generated iCode
                                    623 ; skipping iCode since result will be rematerialized
                                    624 ; skipping iCode since result will be rematerialized
                                    625 ; genIPush
      009B53 4B 5C            [ 1]  626 	push	#0x5c
                           000217   627 	Sstm8s_adc2$ADC2_Init$97 ==.
      009B55 5F               [ 1]  628 	clrw	x
      009B56 89               [ 2]  629 	pushw	x
                           000219   630 	Sstm8s_adc2$ADC2_Init$98 ==.
      009B57 4B 00            [ 1]  631 	push	#0x00
                           00021B   632 	Sstm8s_adc2$ADC2_Init$99 ==.
                                    633 ; genIPush
      009B59 4B 02            [ 1]  634 	push	#<(___str_0+0)
                           00021D   635 	Sstm8s_adc2$ADC2_Init$100 ==.
      009B5B 4B 81            [ 1]  636 	push	#((___str_0+0) >> 8)
                           00021F   637 	Sstm8s_adc2$ADC2_Init$101 ==.
                                    638 ; genCall
      009B5D CD 82 65         [ 4]  639 	call	_assert_failed
      009B60 5B 06            [ 2]  640 	addw	sp, #6
                           000224   641 	Sstm8s_adc2$ADC2_Init$102 ==.
                                    642 ; genLabel
      009B62                        643 00194$:
                           000224   644 	Sstm8s_adc2$ADC2_Init$103 ==.
                                    645 ;	../SPL/src/stm8s_adc2.c: 93: assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
                                    646 ; genIfx
      009B62 0D 0A            [ 1]  647 	tnz	(0x0a, sp)
      009B64 26 03            [ 1]  648 	jrne	00636$
      009B66 CC 9B 80         [ 2]  649 	jp	00244$
      009B69                        650 00636$:
                                    651 ; genCmpEQorNE
      009B69 7B 0A            [ 1]  652 	ld	a, (0x0a, sp)
      009B6B 4A               [ 1]  653 	dec	a
      009B6C 26 03            [ 1]  654 	jrne	00638$
      009B6E CC 9B 80         [ 2]  655 	jp	00244$
      009B71                        656 00638$:
                           000233   657 	Sstm8s_adc2$ADC2_Init$104 ==.
                                    658 ; skipping generated iCode
                                    659 ; skipping iCode since result will be rematerialized
                                    660 ; skipping iCode since result will be rematerialized
                                    661 ; genIPush
      009B71 4B 5D            [ 1]  662 	push	#0x5d
                           000235   663 	Sstm8s_adc2$ADC2_Init$105 ==.
      009B73 5F               [ 1]  664 	clrw	x
      009B74 89               [ 2]  665 	pushw	x
                           000237   666 	Sstm8s_adc2$ADC2_Init$106 ==.
      009B75 4B 00            [ 1]  667 	push	#0x00
                           000239   668 	Sstm8s_adc2$ADC2_Init$107 ==.
                                    669 ; genIPush
      009B77 4B 02            [ 1]  670 	push	#<(___str_0+0)
                           00023B   671 	Sstm8s_adc2$ADC2_Init$108 ==.
      009B79 4B 81            [ 1]  672 	push	#((___str_0+0) >> 8)
                           00023D   673 	Sstm8s_adc2$ADC2_Init$109 ==.
                                    674 ; genCall
      009B7B CD 82 65         [ 4]  675 	call	_assert_failed
      009B7E 5B 06            [ 2]  676 	addw	sp, #6
                           000242   677 	Sstm8s_adc2$ADC2_Init$110 ==.
                                    678 ; genLabel
      009B80                        679 00244$:
                           000242   680 	Sstm8s_adc2$ADC2_Init$111 ==.
                                    681 ;	../SPL/src/stm8s_adc2.c: 98: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
                                    682 ; genIPush
      009B80 7B 08            [ 1]  683 	ld	a, (0x08, sp)
      009B82 88               [ 1]  684 	push	a
                           000245   685 	Sstm8s_adc2$ADC2_Init$112 ==.
                                    686 ; genIPush
      009B83 7B 05            [ 1]  687 	ld	a, (0x05, sp)
      009B85 88               [ 1]  688 	push	a
                           000248   689 	Sstm8s_adc2$ADC2_Init$113 ==.
                                    690 ; genIPush
      009B86 7B 05            [ 1]  691 	ld	a, (0x05, sp)
      009B88 88               [ 1]  692 	push	a
                           00024B   693 	Sstm8s_adc2$ADC2_Init$114 ==.
                                    694 ; genCall
      009B89 CD 9D E4         [ 4]  695 	call	_ADC2_ConversionConfig
      009B8C 5B 03            [ 2]  696 	addw	sp, #3
                           000250   697 	Sstm8s_adc2$ADC2_Init$115 ==.
                           000250   698 	Sstm8s_adc2$ADC2_Init$116 ==.
                                    699 ;	../SPL/src/stm8s_adc2.c: 100: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
                                    700 ; genIPush
      009B8E 7B 05            [ 1]  701 	ld	a, (0x05, sp)
      009B90 88               [ 1]  702 	push	a
                           000253   703 	Sstm8s_adc2$ADC2_Init$117 ==.
                                    704 ; genCall
      009B91 CD 9C 1E         [ 4]  705 	call	_ADC2_PrescalerConfig
      009B94 84               [ 1]  706 	pop	a
                           000257   707 	Sstm8s_adc2$ADC2_Init$118 ==.
                           000257   708 	Sstm8s_adc2$ADC2_Init$119 ==.
                                    709 ;	../SPL/src/stm8s_adc2.c: 105: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
                                    710 ; genIPush
      009B95 7B 07            [ 1]  711 	ld	a, (0x07, sp)
      009B97 88               [ 1]  712 	push	a
                           00025A   713 	Sstm8s_adc2$ADC2_Init$120 ==.
                                    714 ; genIPush
      009B98 7B 07            [ 1]  715 	ld	a, (0x07, sp)
      009B9A 88               [ 1]  716 	push	a
                           00025D   717 	Sstm8s_adc2$ADC2_Init$121 ==.
                                    718 ; genCall
      009B9B CD 9F 08         [ 4]  719 	call	_ADC2_ExternalTriggerConfig
      009B9E 85               [ 2]  720 	popw	x
                           000261   721 	Sstm8s_adc2$ADC2_Init$122 ==.
                           000261   722 	Sstm8s_adc2$ADC2_Init$123 ==.
                                    723 ;	../SPL/src/stm8s_adc2.c: 110: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
                                    724 ; genIPush
      009B9F 7B 0A            [ 1]  725 	ld	a, (0x0a, sp)
      009BA1 88               [ 1]  726 	push	a
                           000264   727 	Sstm8s_adc2$ADC2_Init$124 ==.
                                    728 ; genIPush
      009BA2 7B 0A            [ 1]  729 	ld	a, (0x0a, sp)
      009BA4 88               [ 1]  730 	push	a
                           000267   731 	Sstm8s_adc2$ADC2_Init$125 ==.
                                    732 ; genCall
      009BA5 CD 9C 84         [ 4]  733 	call	_ADC2_SchmittTriggerConfig
      009BA8 85               [ 2]  734 	popw	x
                           00026B   735 	Sstm8s_adc2$ADC2_Init$126 ==.
                           00026B   736 	Sstm8s_adc2$ADC2_Init$127 ==.
                                    737 ;	../SPL/src/stm8s_adc2.c: 113: ADC2->CR1 |= ADC2_CR1_ADON;
                                    738 ; genPointerGet
      009BA9 C6 54 01         [ 1]  739 	ld	a, 0x5401
                                    740 ; genOr
      009BAC AA 01            [ 1]  741 	or	a, #0x01
                                    742 ; genPointerSet
      009BAE C7 54 01         [ 1]  743 	ld	0x5401, a
                                    744 ; genLabel
      009BB1                        745 00101$:
                           000273   746 	Sstm8s_adc2$ADC2_Init$128 ==.
                                    747 ;	../SPL/src/stm8s_adc2.c: 114: }
                                    748 ; genEndFunction
                           000273   749 	Sstm8s_adc2$ADC2_Init$129 ==.
                           000273   750 	XG$ADC2_Init$0$0 ==.
      009BB1 81               [ 4]  751 	ret
                           000274   752 	Sstm8s_adc2$ADC2_Init$130 ==.
                           000274   753 	Sstm8s_adc2$ADC2_Cmd$131 ==.
                                    754 ;	../SPL/src/stm8s_adc2.c: 121: void ADC2_Cmd(FunctionalState NewState)
                                    755 ; genLabel
                                    756 ;	-----------------------------------------
                                    757 ;	 function ADC2_Cmd
                                    758 ;	-----------------------------------------
                                    759 ;	Register assignment is optimal.
                                    760 ;	Stack space usage: 0 bytes.
      009BB2                        761 _ADC2_Cmd:
                           000274   762 	Sstm8s_adc2$ADC2_Cmd$132 ==.
                           000274   763 	Sstm8s_adc2$ADC2_Cmd$133 ==.
                                    764 ;	../SPL/src/stm8s_adc2.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    765 ; genIfx
      009BB2 0D 03            [ 1]  766 	tnz	(0x03, sp)
      009BB4 26 03            [ 1]  767 	jrne	00126$
      009BB6 CC 9B D0         [ 2]  768 	jp	00107$
      009BB9                        769 00126$:
                                    770 ; genCmpEQorNE
      009BB9 7B 03            [ 1]  771 	ld	a, (0x03, sp)
      009BBB 4A               [ 1]  772 	dec	a
      009BBC 26 03            [ 1]  773 	jrne	00128$
      009BBE CC 9B D0         [ 2]  774 	jp	00107$
      009BC1                        775 00128$:
                           000283   776 	Sstm8s_adc2$ADC2_Cmd$134 ==.
                                    777 ; skipping generated iCode
                                    778 ; skipping iCode since result will be rematerialized
                                    779 ; skipping iCode since result will be rematerialized
                                    780 ; genIPush
      009BC1 4B 7C            [ 1]  781 	push	#0x7c
                           000285   782 	Sstm8s_adc2$ADC2_Cmd$135 ==.
      009BC3 5F               [ 1]  783 	clrw	x
      009BC4 89               [ 2]  784 	pushw	x
                           000287   785 	Sstm8s_adc2$ADC2_Cmd$136 ==.
      009BC5 4B 00            [ 1]  786 	push	#0x00
                           000289   787 	Sstm8s_adc2$ADC2_Cmd$137 ==.
                                    788 ; genIPush
      009BC7 4B 02            [ 1]  789 	push	#<(___str_0+0)
                           00028B   790 	Sstm8s_adc2$ADC2_Cmd$138 ==.
      009BC9 4B 81            [ 1]  791 	push	#((___str_0+0) >> 8)
                           00028D   792 	Sstm8s_adc2$ADC2_Cmd$139 ==.
                                    793 ; genCall
      009BCB CD 82 65         [ 4]  794 	call	_assert_failed
      009BCE 5B 06            [ 2]  795 	addw	sp, #6
                           000292   796 	Sstm8s_adc2$ADC2_Cmd$140 ==.
                                    797 ; genLabel
      009BD0                        798 00107$:
                           000292   799 	Sstm8s_adc2$ADC2_Cmd$141 ==.
                                    800 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    801 ; genPointerGet
      009BD0 C6 54 01         [ 1]  802 	ld	a, 0x5401
                           000295   803 	Sstm8s_adc2$ADC2_Cmd$142 ==.
                                    804 ;	../SPL/src/stm8s_adc2.c: 126: if (NewState != DISABLE)
                                    805 ; genIfx
      009BD3 0D 03            [ 1]  806 	tnz	(0x03, sp)
      009BD5 26 03            [ 1]  807 	jrne	00130$
      009BD7 CC 9B E2         [ 2]  808 	jp	00102$
      009BDA                        809 00130$:
                           00029C   810 	Sstm8s_adc2$ADC2_Cmd$143 ==.
                           00029C   811 	Sstm8s_adc2$ADC2_Cmd$144 ==.
                                    812 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    813 ; genOr
      009BDA AA 01            [ 1]  814 	or	a, #0x01
                                    815 ; genPointerSet
      009BDC C7 54 01         [ 1]  816 	ld	0x5401, a
                           0002A1   817 	Sstm8s_adc2$ADC2_Cmd$145 ==.
                                    818 ; genGoto
      009BDF CC 9B E7         [ 2]  819 	jp	00104$
                                    820 ; genLabel
      009BE2                        821 00102$:
                           0002A4   822 	Sstm8s_adc2$ADC2_Cmd$146 ==.
                           0002A4   823 	Sstm8s_adc2$ADC2_Cmd$147 ==.
                                    824 ;	../SPL/src/stm8s_adc2.c: 132: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
                                    825 ; genAnd
      009BE2 A4 FE            [ 1]  826 	and	a, #0xfe
                                    827 ; genPointerSet
      009BE4 C7 54 01         [ 1]  828 	ld	0x5401, a
                           0002A9   829 	Sstm8s_adc2$ADC2_Cmd$148 ==.
                                    830 ; genLabel
      009BE7                        831 00104$:
                           0002A9   832 	Sstm8s_adc2$ADC2_Cmd$149 ==.
                                    833 ;	../SPL/src/stm8s_adc2.c: 134: }
                                    834 ; genEndFunction
                           0002A9   835 	Sstm8s_adc2$ADC2_Cmd$150 ==.
                           0002A9   836 	XG$ADC2_Cmd$0$0 ==.
      009BE7 81               [ 4]  837 	ret
                           0002AA   838 	Sstm8s_adc2$ADC2_Cmd$151 ==.
                           0002AA   839 	Sstm8s_adc2$ADC2_ITConfig$152 ==.
                                    840 ;	../SPL/src/stm8s_adc2.c: 141: void ADC2_ITConfig(FunctionalState NewState)
                                    841 ; genLabel
                                    842 ;	-----------------------------------------
                                    843 ;	 function ADC2_ITConfig
                                    844 ;	-----------------------------------------
                                    845 ;	Register assignment is optimal.
                                    846 ;	Stack space usage: 0 bytes.
      009BE8                        847 _ADC2_ITConfig:
                           0002AA   848 	Sstm8s_adc2$ADC2_ITConfig$153 ==.
                           0002AA   849 	Sstm8s_adc2$ADC2_ITConfig$154 ==.
                                    850 ;	../SPL/src/stm8s_adc2.c: 144: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    851 ; genIfx
      009BE8 0D 03            [ 1]  852 	tnz	(0x03, sp)
      009BEA 26 03            [ 1]  853 	jrne	00126$
      009BEC CC 9C 06         [ 2]  854 	jp	00107$
      009BEF                        855 00126$:
                                    856 ; genCmpEQorNE
      009BEF 7B 03            [ 1]  857 	ld	a, (0x03, sp)
      009BF1 4A               [ 1]  858 	dec	a
      009BF2 26 03            [ 1]  859 	jrne	00128$
      009BF4 CC 9C 06         [ 2]  860 	jp	00107$
      009BF7                        861 00128$:
                           0002B9   862 	Sstm8s_adc2$ADC2_ITConfig$155 ==.
                                    863 ; skipping generated iCode
                                    864 ; skipping iCode since result will be rematerialized
                                    865 ; skipping iCode since result will be rematerialized
                                    866 ; genIPush
      009BF7 4B 90            [ 1]  867 	push	#0x90
                           0002BB   868 	Sstm8s_adc2$ADC2_ITConfig$156 ==.
      009BF9 5F               [ 1]  869 	clrw	x
      009BFA 89               [ 2]  870 	pushw	x
                           0002BD   871 	Sstm8s_adc2$ADC2_ITConfig$157 ==.
      009BFB 4B 00            [ 1]  872 	push	#0x00
                           0002BF   873 	Sstm8s_adc2$ADC2_ITConfig$158 ==.
                                    874 ; genIPush
      009BFD 4B 02            [ 1]  875 	push	#<(___str_0+0)
                           0002C1   876 	Sstm8s_adc2$ADC2_ITConfig$159 ==.
      009BFF 4B 81            [ 1]  877 	push	#((___str_0+0) >> 8)
                           0002C3   878 	Sstm8s_adc2$ADC2_ITConfig$160 ==.
                                    879 ; genCall
      009C01 CD 82 65         [ 4]  880 	call	_assert_failed
      009C04 5B 06            [ 2]  881 	addw	sp, #6
                           0002C8   882 	Sstm8s_adc2$ADC2_ITConfig$161 ==.
                                    883 ; genLabel
      009C06                        884 00107$:
                           0002C8   885 	Sstm8s_adc2$ADC2_ITConfig$162 ==.
                                    886 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    887 ; genPointerGet
      009C06 C6 54 00         [ 1]  888 	ld	a, 0x5400
                           0002CB   889 	Sstm8s_adc2$ADC2_ITConfig$163 ==.
                                    890 ;	../SPL/src/stm8s_adc2.c: 146: if (NewState != DISABLE)
                                    891 ; genIfx
      009C09 0D 03            [ 1]  892 	tnz	(0x03, sp)
      009C0B 26 03            [ 1]  893 	jrne	00130$
      009C0D CC 9C 18         [ 2]  894 	jp	00102$
      009C10                        895 00130$:
                           0002D2   896 	Sstm8s_adc2$ADC2_ITConfig$164 ==.
                           0002D2   897 	Sstm8s_adc2$ADC2_ITConfig$165 ==.
                                    898 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    899 ; genOr
      009C10 AA 20            [ 1]  900 	or	a, #0x20
                                    901 ; genPointerSet
      009C12 C7 54 00         [ 1]  902 	ld	0x5400, a
                           0002D7   903 	Sstm8s_adc2$ADC2_ITConfig$166 ==.
                                    904 ; genGoto
      009C15 CC 9C 1D         [ 2]  905 	jp	00104$
                                    906 ; genLabel
      009C18                        907 00102$:
                           0002DA   908 	Sstm8s_adc2$ADC2_ITConfig$167 ==.
                           0002DA   909 	Sstm8s_adc2$ADC2_ITConfig$168 ==.
                                    910 ;	../SPL/src/stm8s_adc2.c: 154: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
                                    911 ; genAnd
      009C18 A4 DF            [ 1]  912 	and	a, #0xdf
                                    913 ; genPointerSet
      009C1A C7 54 00         [ 1]  914 	ld	0x5400, a
                           0002DF   915 	Sstm8s_adc2$ADC2_ITConfig$169 ==.
                                    916 ; genLabel
      009C1D                        917 00104$:
                           0002DF   918 	Sstm8s_adc2$ADC2_ITConfig$170 ==.
                                    919 ;	../SPL/src/stm8s_adc2.c: 156: }
                                    920 ; genEndFunction
                           0002DF   921 	Sstm8s_adc2$ADC2_ITConfig$171 ==.
                           0002DF   922 	XG$ADC2_ITConfig$0$0 ==.
      009C1D 81               [ 4]  923 	ret
                           0002E0   924 	Sstm8s_adc2$ADC2_ITConfig$172 ==.
                           0002E0   925 	Sstm8s_adc2$ADC2_PrescalerConfig$173 ==.
                                    926 ;	../SPL/src/stm8s_adc2.c: 164: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
                                    927 ; genLabel
                                    928 ;	-----------------------------------------
                                    929 ;	 function ADC2_PrescalerConfig
                                    930 ;	-----------------------------------------
                                    931 ;	Register assignment is optimal.
                                    932 ;	Stack space usage: 0 bytes.
      009C1E                        933 _ADC2_PrescalerConfig:
                           0002E0   934 	Sstm8s_adc2$ADC2_PrescalerConfig$174 ==.
                           0002E0   935 	Sstm8s_adc2$ADC2_PrescalerConfig$175 ==.
                                    936 ;	../SPL/src/stm8s_adc2.c: 167: assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
                                    937 ; genIfx
      009C1E 0D 03            [ 1]  938 	tnz	(0x03, sp)
      009C20 26 03            [ 1]  939 	jrne	00166$
      009C22 CC 9C 73         [ 2]  940 	jp	00104$
      009C25                        941 00166$:
                                    942 ; genCmpEQorNE
      009C25 7B 03            [ 1]  943 	ld	a, (0x03, sp)
      009C27 A1 10            [ 1]  944 	cp	a, #0x10
      009C29 26 03            [ 1]  945 	jrne	00168$
      009C2B CC 9C 73         [ 2]  946 	jp	00104$
      009C2E                        947 00168$:
                           0002F0   948 	Sstm8s_adc2$ADC2_PrescalerConfig$176 ==.
                                    949 ; skipping generated iCode
                                    950 ; genCmpEQorNE
      009C2E 7B 03            [ 1]  951 	ld	a, (0x03, sp)
      009C30 A1 20            [ 1]  952 	cp	a, #0x20
      009C32 26 03            [ 1]  953 	jrne	00171$
      009C34 CC 9C 73         [ 2]  954 	jp	00104$
      009C37                        955 00171$:
                           0002F9   956 	Sstm8s_adc2$ADC2_PrescalerConfig$177 ==.
                                    957 ; skipping generated iCode
                                    958 ; genCmpEQorNE
      009C37 7B 03            [ 1]  959 	ld	a, (0x03, sp)
      009C39 A1 30            [ 1]  960 	cp	a, #0x30
      009C3B 26 03            [ 1]  961 	jrne	00174$
      009C3D CC 9C 73         [ 2]  962 	jp	00104$
      009C40                        963 00174$:
                           000302   964 	Sstm8s_adc2$ADC2_PrescalerConfig$178 ==.
                                    965 ; skipping generated iCode
                                    966 ; genCmpEQorNE
      009C40 7B 03            [ 1]  967 	ld	a, (0x03, sp)
      009C42 A1 40            [ 1]  968 	cp	a, #0x40
      009C44 26 03            [ 1]  969 	jrne	00177$
      009C46 CC 9C 73         [ 2]  970 	jp	00104$
      009C49                        971 00177$:
                           00030B   972 	Sstm8s_adc2$ADC2_PrescalerConfig$179 ==.
                                    973 ; skipping generated iCode
                                    974 ; genCmpEQorNE
      009C49 7B 03            [ 1]  975 	ld	a, (0x03, sp)
      009C4B A1 50            [ 1]  976 	cp	a, #0x50
      009C4D 26 03            [ 1]  977 	jrne	00180$
      009C4F CC 9C 73         [ 2]  978 	jp	00104$
      009C52                        979 00180$:
                           000314   980 	Sstm8s_adc2$ADC2_PrescalerConfig$180 ==.
                                    981 ; skipping generated iCode
                                    982 ; genCmpEQorNE
      009C52 7B 03            [ 1]  983 	ld	a, (0x03, sp)
      009C54 A1 60            [ 1]  984 	cp	a, #0x60
      009C56 26 03            [ 1]  985 	jrne	00183$
      009C58 CC 9C 73         [ 2]  986 	jp	00104$
      009C5B                        987 00183$:
                           00031D   988 	Sstm8s_adc2$ADC2_PrescalerConfig$181 ==.
                                    989 ; skipping generated iCode
                                    990 ; genCmpEQorNE
      009C5B 7B 03            [ 1]  991 	ld	a, (0x03, sp)
      009C5D A1 70            [ 1]  992 	cp	a, #0x70
      009C5F 26 03            [ 1]  993 	jrne	00186$
      009C61 CC 9C 73         [ 2]  994 	jp	00104$
      009C64                        995 00186$:
                           000326   996 	Sstm8s_adc2$ADC2_PrescalerConfig$182 ==.
                                    997 ; skipping generated iCode
                                    998 ; skipping iCode since result will be rematerialized
                                    999 ; skipping iCode since result will be rematerialized
                                   1000 ; genIPush
      009C64 4B A7            [ 1] 1001 	push	#0xa7
                           000328  1002 	Sstm8s_adc2$ADC2_PrescalerConfig$183 ==.
      009C66 5F               [ 1] 1003 	clrw	x
      009C67 89               [ 2] 1004 	pushw	x
                           00032A  1005 	Sstm8s_adc2$ADC2_PrescalerConfig$184 ==.
      009C68 4B 00            [ 1] 1006 	push	#0x00
                           00032C  1007 	Sstm8s_adc2$ADC2_PrescalerConfig$185 ==.
                                   1008 ; genIPush
      009C6A 4B 02            [ 1] 1009 	push	#<(___str_0+0)
                           00032E  1010 	Sstm8s_adc2$ADC2_PrescalerConfig$186 ==.
      009C6C 4B 81            [ 1] 1011 	push	#((___str_0+0) >> 8)
                           000330  1012 	Sstm8s_adc2$ADC2_PrescalerConfig$187 ==.
                                   1013 ; genCall
      009C6E CD 82 65         [ 4] 1014 	call	_assert_failed
      009C71 5B 06            [ 2] 1015 	addw	sp, #6
                           000335  1016 	Sstm8s_adc2$ADC2_PrescalerConfig$188 ==.
                                   1017 ; genLabel
      009C73                       1018 00104$:
                           000335  1019 	Sstm8s_adc2$ADC2_PrescalerConfig$189 ==.
                                   1020 ;	../SPL/src/stm8s_adc2.c: 170: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
                                   1021 ; genPointerGet
      009C73 C6 54 01         [ 1] 1022 	ld	a, 0x5401
                                   1023 ; genAnd
      009C76 A4 8F            [ 1] 1024 	and	a, #0x8f
                                   1025 ; genPointerSet
      009C78 C7 54 01         [ 1] 1026 	ld	0x5401, a
                           00033D  1027 	Sstm8s_adc2$ADC2_PrescalerConfig$190 ==.
                                   1028 ;	../SPL/src/stm8s_adc2.c: 172: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
                                   1029 ; genPointerGet
      009C7B C6 54 01         [ 1] 1030 	ld	a, 0x5401
                                   1031 ; genOr
      009C7E 1A 03            [ 1] 1032 	or	a, (0x03, sp)
                                   1033 ; genPointerSet
      009C80 C7 54 01         [ 1] 1034 	ld	0x5401, a
                                   1035 ; genLabel
      009C83                       1036 00101$:
                           000345  1037 	Sstm8s_adc2$ADC2_PrescalerConfig$191 ==.
                                   1038 ;	../SPL/src/stm8s_adc2.c: 173: }
                                   1039 ; genEndFunction
                           000345  1040 	Sstm8s_adc2$ADC2_PrescalerConfig$192 ==.
                           000345  1041 	XG$ADC2_PrescalerConfig$0$0 ==.
      009C83 81               [ 4] 1042 	ret
                           000346  1043 	Sstm8s_adc2$ADC2_PrescalerConfig$193 ==.
                           000346  1044 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$194 ==.
                                   1045 ;	../SPL/src/stm8s_adc2.c: 183: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
                                   1046 ; genLabel
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function ADC2_SchmittTriggerConfig
                                   1049 ;	-----------------------------------------
                                   1050 ;	Register assignment might be sub-optimal.
                                   1051 ;	Stack space usage: 1 bytes.
      009C84                       1052 _ADC2_SchmittTriggerConfig:
                           000346  1053 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$195 ==.
      009C84 88               [ 1] 1054 	push	a
                           000347  1055 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$196 ==.
                           000347  1056 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$197 ==.
                                   1057 ;	../SPL/src/stm8s_adc2.c: 186: assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
                                   1058 ; genCmpEQorNE
      009C85 7B 04            [ 1] 1059 	ld	a, (0x04, sp)
      009C87 A1 1F            [ 1] 1060 	cp	a, #0x1f
      009C89 26 07            [ 1] 1061 	jrne	00294$
      009C8B A6 01            [ 1] 1062 	ld	a, #0x01
      009C8D 6B 01            [ 1] 1063 	ld	(0x01, sp), a
      009C8F CC 9C 94         [ 2] 1064 	jp	00295$
      009C92                       1065 00294$:
      009C92 0F 01            [ 1] 1066 	clr	(0x01, sp)
      009C94                       1067 00295$:
                           000356  1068 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$198 ==.
                                   1069 ; genIfx
      009C94 0D 04            [ 1] 1070 	tnz	(0x04, sp)
      009C96 26 03            [ 1] 1071 	jrne	00296$
      009C98 CC 9D 37         [ 2] 1072 	jp	00119$
      009C9B                       1073 00296$:
                                   1074 ; genCmpEQorNE
      009C9B 7B 04            [ 1] 1075 	ld	a, (0x04, sp)
      009C9D 4A               [ 1] 1076 	dec	a
      009C9E 26 03            [ 1] 1077 	jrne	00298$
      009CA0 CC 9D 37         [ 2] 1078 	jp	00119$
      009CA3                       1079 00298$:
                           000365  1080 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$199 ==.
                                   1081 ; skipping generated iCode
                                   1082 ; genCmpEQorNE
      009CA3 7B 04            [ 1] 1083 	ld	a, (0x04, sp)
      009CA5 A1 02            [ 1] 1084 	cp	a, #0x02
      009CA7 26 03            [ 1] 1085 	jrne	00301$
      009CA9 CC 9D 37         [ 2] 1086 	jp	00119$
      009CAC                       1087 00301$:
                           00036E  1088 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$200 ==.
                                   1089 ; skipping generated iCode
                                   1090 ; genCmpEQorNE
      009CAC 7B 04            [ 1] 1091 	ld	a, (0x04, sp)
      009CAE A1 03            [ 1] 1092 	cp	a, #0x03
      009CB0 26 03            [ 1] 1093 	jrne	00304$
      009CB2 CC 9D 37         [ 2] 1094 	jp	00119$
      009CB5                       1095 00304$:
                           000377  1096 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$201 ==.
                                   1097 ; skipping generated iCode
                                   1098 ; genCmpEQorNE
      009CB5 7B 04            [ 1] 1099 	ld	a, (0x04, sp)
      009CB7 A1 04            [ 1] 1100 	cp	a, #0x04
      009CB9 26 03            [ 1] 1101 	jrne	00307$
      009CBB CC 9D 37         [ 2] 1102 	jp	00119$
      009CBE                       1103 00307$:
                           000380  1104 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$202 ==.
                                   1105 ; skipping generated iCode
                                   1106 ; genCmpEQorNE
      009CBE 7B 04            [ 1] 1107 	ld	a, (0x04, sp)
      009CC0 A1 05            [ 1] 1108 	cp	a, #0x05
      009CC2 26 03            [ 1] 1109 	jrne	00310$
      009CC4 CC 9D 37         [ 2] 1110 	jp	00119$
      009CC7                       1111 00310$:
                           000389  1112 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$203 ==.
                                   1113 ; skipping generated iCode
                                   1114 ; genCmpEQorNE
      009CC7 7B 04            [ 1] 1115 	ld	a, (0x04, sp)
      009CC9 A1 06            [ 1] 1116 	cp	a, #0x06
      009CCB 26 03            [ 1] 1117 	jrne	00313$
      009CCD CC 9D 37         [ 2] 1118 	jp	00119$
      009CD0                       1119 00313$:
                           000392  1120 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$204 ==.
                                   1121 ; skipping generated iCode
                                   1122 ; genCmpEQorNE
      009CD0 7B 04            [ 1] 1123 	ld	a, (0x04, sp)
      009CD2 A1 07            [ 1] 1124 	cp	a, #0x07
      009CD4 26 03            [ 1] 1125 	jrne	00316$
      009CD6 CC 9D 37         [ 2] 1126 	jp	00119$
      009CD9                       1127 00316$:
                           00039B  1128 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$205 ==.
                                   1129 ; skipping generated iCode
                                   1130 ; genCmpEQorNE
      009CD9 7B 04            [ 1] 1131 	ld	a, (0x04, sp)
      009CDB A1 08            [ 1] 1132 	cp	a, #0x08
      009CDD 26 03            [ 1] 1133 	jrne	00319$
      009CDF CC 9D 37         [ 2] 1134 	jp	00119$
      009CE2                       1135 00319$:
                           0003A4  1136 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$206 ==.
                                   1137 ; skipping generated iCode
                                   1138 ; genCmpEQorNE
      009CE2 7B 04            [ 1] 1139 	ld	a, (0x04, sp)
      009CE4 A1 09            [ 1] 1140 	cp	a, #0x09
      009CE6 26 03            [ 1] 1141 	jrne	00322$
      009CE8 CC 9D 37         [ 2] 1142 	jp	00119$
      009CEB                       1143 00322$:
                           0003AD  1144 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$207 ==.
                                   1145 ; skipping generated iCode
                                   1146 ; genCmpEQorNE
      009CEB 7B 04            [ 1] 1147 	ld	a, (0x04, sp)
      009CED A1 0A            [ 1] 1148 	cp	a, #0x0a
      009CEF 26 03            [ 1] 1149 	jrne	00325$
      009CF1 CC 9D 37         [ 2] 1150 	jp	00119$
      009CF4                       1151 00325$:
                           0003B6  1152 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$208 ==.
                                   1153 ; skipping generated iCode
                                   1154 ; genCmpEQorNE
      009CF4 7B 04            [ 1] 1155 	ld	a, (0x04, sp)
      009CF6 A1 0B            [ 1] 1156 	cp	a, #0x0b
      009CF8 26 03            [ 1] 1157 	jrne	00328$
      009CFA CC 9D 37         [ 2] 1158 	jp	00119$
      009CFD                       1159 00328$:
                           0003BF  1160 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$209 ==.
                                   1161 ; skipping generated iCode
                                   1162 ; genCmpEQorNE
      009CFD 7B 04            [ 1] 1163 	ld	a, (0x04, sp)
      009CFF A1 0C            [ 1] 1164 	cp	a, #0x0c
      009D01 26 03            [ 1] 1165 	jrne	00331$
      009D03 CC 9D 37         [ 2] 1166 	jp	00119$
      009D06                       1167 00331$:
                           0003C8  1168 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$210 ==.
                                   1169 ; skipping generated iCode
                                   1170 ; genCmpEQorNE
      009D06 7B 04            [ 1] 1171 	ld	a, (0x04, sp)
      009D08 A1 0D            [ 1] 1172 	cp	a, #0x0d
      009D0A 26 03            [ 1] 1173 	jrne	00334$
      009D0C CC 9D 37         [ 2] 1174 	jp	00119$
      009D0F                       1175 00334$:
                           0003D1  1176 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$211 ==.
                                   1177 ; skipping generated iCode
                                   1178 ; genCmpEQorNE
      009D0F 7B 04            [ 1] 1179 	ld	a, (0x04, sp)
      009D11 A1 0E            [ 1] 1180 	cp	a, #0x0e
      009D13 26 03            [ 1] 1181 	jrne	00337$
      009D15 CC 9D 37         [ 2] 1182 	jp	00119$
      009D18                       1183 00337$:
                           0003DA  1184 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$212 ==.
                                   1185 ; skipping generated iCode
                                   1186 ; genCmpEQorNE
      009D18 7B 04            [ 1] 1187 	ld	a, (0x04, sp)
      009D1A A1 0F            [ 1] 1188 	cp	a, #0x0f
      009D1C 26 03            [ 1] 1189 	jrne	00340$
      009D1E CC 9D 37         [ 2] 1190 	jp	00119$
      009D21                       1191 00340$:
                           0003E3  1192 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$213 ==.
                                   1193 ; skipping generated iCode
                                   1194 ; genIfx
      009D21 0D 01            [ 1] 1195 	tnz	(0x01, sp)
      009D23 27 03            [ 1] 1196 	jreq	00342$
      009D25 CC 9D 37         [ 2] 1197 	jp	00119$
      009D28                       1198 00342$:
                                   1199 ; skipping iCode since result will be rematerialized
                                   1200 ; skipping iCode since result will be rematerialized
                                   1201 ; genIPush
      009D28 4B BA            [ 1] 1202 	push	#0xba
                           0003EC  1203 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$214 ==.
      009D2A 5F               [ 1] 1204 	clrw	x
      009D2B 89               [ 2] 1205 	pushw	x
                           0003EE  1206 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$215 ==.
      009D2C 4B 00            [ 1] 1207 	push	#0x00
                           0003F0  1208 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$216 ==.
                                   1209 ; genIPush
      009D2E 4B 02            [ 1] 1210 	push	#<(___str_0+0)
                           0003F2  1211 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$217 ==.
      009D30 4B 81            [ 1] 1212 	push	#((___str_0+0) >> 8)
                           0003F4  1213 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$218 ==.
                                   1214 ; genCall
      009D32 CD 82 65         [ 4] 1215 	call	_assert_failed
      009D35 5B 06            [ 2] 1216 	addw	sp, #6
                           0003F9  1217 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$219 ==.
                                   1218 ; genLabel
      009D37                       1219 00119$:
                           0003F9  1220 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$220 ==.
                                   1221 ;	../SPL/src/stm8s_adc2.c: 187: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                   1222 ; genIfx
      009D37 0D 05            [ 1] 1223 	tnz	(0x05, sp)
      009D39 26 03            [ 1] 1224 	jrne	00343$
      009D3B CC 9D 55         [ 2] 1225 	jp	00169$
      009D3E                       1226 00343$:
                                   1227 ; genCmpEQorNE
      009D3E 7B 05            [ 1] 1228 	ld	a, (0x05, sp)
      009D40 4A               [ 1] 1229 	dec	a
      009D41 26 03            [ 1] 1230 	jrne	00345$
      009D43 CC 9D 55         [ 2] 1231 	jp	00169$
      009D46                       1232 00345$:
                           000408  1233 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$221 ==.
                                   1234 ; skipping generated iCode
                                   1235 ; skipping iCode since result will be rematerialized
                                   1236 ; skipping iCode since result will be rematerialized
                                   1237 ; genIPush
      009D46 4B BB            [ 1] 1238 	push	#0xbb
                           00040A  1239 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$222 ==.
      009D48 5F               [ 1] 1240 	clrw	x
      009D49 89               [ 2] 1241 	pushw	x
                           00040C  1242 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$223 ==.
      009D4A 4B 00            [ 1] 1243 	push	#0x00
                           00040E  1244 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$224 ==.
                                   1245 ; genIPush
      009D4C 4B 02            [ 1] 1246 	push	#<(___str_0+0)
                           000410  1247 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$225 ==.
      009D4E 4B 81            [ 1] 1248 	push	#((___str_0+0) >> 8)
                           000412  1249 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$226 ==.
                                   1250 ; genCall
      009D50 CD 82 65         [ 4] 1251 	call	_assert_failed
      009D53 5B 06            [ 2] 1252 	addw	sp, #6
                           000417  1253 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$227 ==.
                                   1254 ; genLabel
      009D55                       1255 00169$:
                           000417  1256 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$228 ==.
                                   1257 ;	../SPL/src/stm8s_adc2.c: 189: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
                                   1258 ; genAssign
      009D55 7B 01            [ 1] 1259 	ld	a, (0x01, sp)
                                   1260 ; genIfx
      009D57 4D               [ 1] 1261 	tnz	a
      009D58 26 03            [ 1] 1262 	jrne	00347$
      009D5A CC 9D 83         [ 2] 1263 	jp	00114$
      009D5D                       1264 00347$:
                           00041F  1265 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$229 ==.
                                   1266 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                   1267 ; genPointerGet
                                   1268 ; Dummy read
      009D5D C6 54 07         [ 1] 1269 	ld	a, 0x5407
                           000422  1270 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$230 ==.
                           000422  1271 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$231 ==.
                                   1272 ;	../SPL/src/stm8s_adc2.c: 191: if (NewState != DISABLE)
                                   1273 ; genIfx
      009D60 0D 05            [ 1] 1274 	tnz	(0x05, sp)
      009D62 26 03            [ 1] 1275 	jrne	00348$
      009D64 CC 9D 75         [ 2] 1276 	jp	00102$
      009D67                       1277 00348$:
                           000429  1278 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$232 ==.
                           000429  1279 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$233 ==.
                                   1280 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                   1281 ; genPointerSet
      009D67 35 00 54 07      [ 1] 1282 	mov	0x5407+0, #0x00
                           00042D  1283 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$234 ==.
                                   1284 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                   1285 ; genPointerGet
                                   1286 ; Dummy read
      009D6B C6 54 06         [ 1] 1287 	ld	a, 0x5406
                                   1288 ; genPointerSet
      009D6E 35 00 54 06      [ 1] 1289 	mov	0x5406+0, #0x00
                           000434  1290 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$235 ==.
                                   1291 ; genGoto
      009D72 CC 9D E2         [ 2] 1292 	jp	00116$
                                   1293 ; genLabel
      009D75                       1294 00102$:
                           000437  1295 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$236 ==.
                           000437  1296 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$237 ==.
                                   1297 ;	../SPL/src/stm8s_adc2.c: 198: ADC2->TDRL |= (uint8_t)0xFF;
                                   1298 ; genPointerSet
      009D75 35 FF 54 07      [ 1] 1299 	mov	0x5407+0, #0xff
                           00043B  1300 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$238 ==.
                                   1301 ;	../SPL/src/stm8s_adc2.c: 199: ADC2->TDRH |= (uint8_t)0xFF;
                                   1302 ; genPointerGet
                                   1303 ; Dummy read
      009D79 C6 54 06         [ 1] 1304 	ld	a, 0x5406
                                   1305 ; genPointerSet
      009D7C 35 FF 54 06      [ 1] 1306 	mov	0x5406+0, #0xff
                           000442  1307 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$239 ==.
                                   1308 ; genGoto
      009D80 CC 9D E2         [ 2] 1309 	jp	00116$
                                   1310 ; genLabel
      009D83                       1311 00114$:
                           000445  1312 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$240 ==.
                                   1313 ;	../SPL/src/stm8s_adc2.c: 202: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
                                   1314 ; genCmp
                                   1315 ; genCmpTop
      009D83 7B 04            [ 1] 1316 	ld	a, (0x04, sp)
      009D85 A1 08            [ 1] 1317 	cp	a, #0x08
      009D87 25 03            [ 1] 1318 	jrc	00349$
      009D89 CC 9D B6         [ 2] 1319 	jp	00111$
      009D8C                       1320 00349$:
                                   1321 ; skipping generated iCode
                           00044E  1322 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$241 ==.
                                   1323 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                   1324 ; genPointerGet
      009D8C C6 54 07         [ 1] 1325 	ld	a, 0x5407
      009D8F 6B 01            [ 1] 1326 	ld	(0x01, sp), a
                           000453  1327 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$242 ==.
                                   1328 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                   1329 ; genLeftShift
      009D91 A6 01            [ 1] 1330 	ld	a, #0x01
      009D93 88               [ 1] 1331 	push	a
                           000456  1332 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$243 ==.
      009D94 7B 05            [ 1] 1333 	ld	a, (0x05, sp)
      009D96 27 05            [ 1] 1334 	jreq	00351$
      009D98                       1335 00350$:
      009D98 08 01            [ 1] 1336 	sll	(1, sp)
      009D9A 4A               [ 1] 1337 	dec	a
      009D9B 26 FB            [ 1] 1338 	jrne	00350$
      009D9D                       1339 00351$:
      009D9D 84               [ 1] 1340 	pop	a
                           000460  1341 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$244 ==.
                           000460  1342 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$245 ==.
                           000460  1343 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$246 ==.
                                   1344 ;	../SPL/src/stm8s_adc2.c: 204: if (NewState != DISABLE)
                                   1345 ; genIfx
      009D9E 0D 05            [ 1] 1346 	tnz	(0x05, sp)
      009DA0 26 03            [ 1] 1347 	jrne	00352$
      009DA2 CC 9D AE         [ 2] 1348 	jp	00105$
      009DA5                       1349 00352$:
                           000467  1350 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$247 ==.
                           000467  1351 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$248 ==.
                                   1352 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                   1353 ; genCpl
      009DA5 43               [ 1] 1354 	cpl	a
                                   1355 ; genAnd
      009DA6 14 01            [ 1] 1356 	and	a, (0x01, sp)
                                   1357 ; genPointerSet
      009DA8 C7 54 07         [ 1] 1358 	ld	0x5407, a
                           00046D  1359 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$249 ==.
                                   1360 ; genGoto
      009DAB CC 9D E2         [ 2] 1361 	jp	00116$
                                   1362 ; genLabel
      009DAE                       1363 00105$:
                           000470  1364 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$250 ==.
                           000470  1365 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$251 ==.
                                   1366 ;	../SPL/src/stm8s_adc2.c: 210: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
                                   1367 ; genOr
      009DAE 1A 01            [ 1] 1368 	or	a, (0x01, sp)
                                   1369 ; genPointerSet
      009DB0 C7 54 07         [ 1] 1370 	ld	0x5407, a
                           000475  1371 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$252 ==.
                                   1372 ; genGoto
      009DB3 CC 9D E2         [ 2] 1373 	jp	00116$
                                   1374 ; genLabel
      009DB6                       1375 00111$:
                           000478  1376 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$253 ==.
                                   1377 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                   1378 ; genPointerGet
      009DB6 C6 54 06         [ 1] 1379 	ld	a, 0x5406
      009DB9 6B 01            [ 1] 1380 	ld	(0x01, sp), a
                           00047D  1381 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$254 ==.
                                   1382 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                   1383 ; genMinus
      009DBB 7B 04            [ 1] 1384 	ld	a, (0x04, sp)
      009DBD A0 08            [ 1] 1385 	sub	a, #0x08
      009DBF 97               [ 1] 1386 	ld	xl, a
                                   1387 ; genLeftShift
      009DC0 A6 01            [ 1] 1388 	ld	a, #0x01
      009DC2 88               [ 1] 1389 	push	a
                           000485  1390 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$255 ==.
      009DC3 9F               [ 1] 1391 	ld	a, xl
      009DC4 4D               [ 1] 1392 	tnz	a
      009DC5 27 05            [ 1] 1393 	jreq	00354$
      009DC7                       1394 00353$:
      009DC7 08 01            [ 1] 1395 	sll	(1, sp)
      009DC9 4A               [ 1] 1396 	dec	a
      009DCA 26 FB            [ 1] 1397 	jrne	00353$
      009DCC                       1398 00354$:
      009DCC 84               [ 1] 1399 	pop	a
                           00048F  1400 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$256 ==.
                           00048F  1401 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$257 ==.
                           00048F  1402 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$258 ==.
                                   1403 ;	../SPL/src/stm8s_adc2.c: 215: if (NewState != DISABLE)
                                   1404 ; genIfx
      009DCD 0D 05            [ 1] 1405 	tnz	(0x05, sp)
      009DCF 26 03            [ 1] 1406 	jrne	00355$
      009DD1 CC 9D DD         [ 2] 1407 	jp	00108$
      009DD4                       1408 00355$:
                           000496  1409 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$259 ==.
                           000496  1410 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$260 ==.
                                   1411 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                   1412 ; genCpl
      009DD4 43               [ 1] 1413 	cpl	a
                                   1414 ; genAnd
      009DD5 14 01            [ 1] 1415 	and	a, (0x01, sp)
                                   1416 ; genPointerSet
      009DD7 C7 54 06         [ 1] 1417 	ld	0x5406, a
                           00049C  1418 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$261 ==.
                                   1419 ; genGoto
      009DDA CC 9D E2         [ 2] 1420 	jp	00116$
                                   1421 ; genLabel
      009DDD                       1422 00108$:
                           00049F  1423 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$262 ==.
                           00049F  1424 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$263 ==.
                                   1425 ;	../SPL/src/stm8s_adc2.c: 221: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
                                   1426 ; genOr
      009DDD 1A 01            [ 1] 1427 	or	a, (0x01, sp)
                                   1428 ; genPointerSet
      009DDF C7 54 06         [ 1] 1429 	ld	0x5406, a
                           0004A4  1430 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$264 ==.
                                   1431 ; genLabel
      009DE2                       1432 00116$:
                           0004A4  1433 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$265 ==.
                                   1434 ;	../SPL/src/stm8s_adc2.c: 224: }
                                   1435 ; genEndFunction
      009DE2 84               [ 1] 1436 	pop	a
                           0004A5  1437 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$266 ==.
                           0004A5  1438 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$267 ==.
                           0004A5  1439 	XG$ADC2_SchmittTriggerConfig$0$0 ==.
      009DE3 81               [ 4] 1440 	ret
                           0004A6  1441 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$268 ==.
                           0004A6  1442 	Sstm8s_adc2$ADC2_ConversionConfig$269 ==.
                                   1443 ;	../SPL/src/stm8s_adc2.c: 236: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
                                   1444 ; genLabel
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function ADC2_ConversionConfig
                                   1447 ;	-----------------------------------------
                                   1448 ;	Register assignment might be sub-optimal.
                                   1449 ;	Stack space usage: 1 bytes.
      009DE4                       1450 _ADC2_ConversionConfig:
                           0004A6  1451 	Sstm8s_adc2$ADC2_ConversionConfig$270 ==.
      009DE4 88               [ 1] 1452 	push	a
                           0004A7  1453 	Sstm8s_adc2$ADC2_ConversionConfig$271 ==.
                           0004A7  1454 	Sstm8s_adc2$ADC2_ConversionConfig$272 ==.
                                   1455 ;	../SPL/src/stm8s_adc2.c: 239: assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
                                   1456 ; genCmpEQorNE
      009DE5 7B 04            [ 1] 1457 	ld	a, (0x04, sp)
      009DE7 4A               [ 1] 1458 	dec	a
      009DE8 26 07            [ 1] 1459 	jrne	00269$
      009DEA A6 01            [ 1] 1460 	ld	a, #0x01
      009DEC 6B 01            [ 1] 1461 	ld	(0x01, sp), a
      009DEE CC 9D F3         [ 2] 1462 	jp	00270$
      009DF1                       1463 00269$:
      009DF1 0F 01            [ 1] 1464 	clr	(0x01, sp)
      009DF3                       1465 00270$:
                           0004B5  1466 	Sstm8s_adc2$ADC2_ConversionConfig$273 ==.
                                   1467 ; genIfx
      009DF3 0D 04            [ 1] 1468 	tnz	(0x04, sp)
      009DF5 26 03            [ 1] 1469 	jrne	00271$
      009DF7 CC 9E 10         [ 2] 1470 	jp	00107$
      009DFA                       1471 00271$:
                                   1472 ; genIfx
      009DFA 0D 01            [ 1] 1473 	tnz	(0x01, sp)
      009DFC 27 03            [ 1] 1474 	jreq	00272$
      009DFE CC 9E 10         [ 2] 1475 	jp	00107$
      009E01                       1476 00272$:
                                   1477 ; skipping iCode since result will be rematerialized
                                   1478 ; skipping iCode since result will be rematerialized
                                   1479 ; genIPush
      009E01 4B EF            [ 1] 1480 	push	#0xef
                           0004C5  1481 	Sstm8s_adc2$ADC2_ConversionConfig$274 ==.
      009E03 5F               [ 1] 1482 	clrw	x
      009E04 89               [ 2] 1483 	pushw	x
                           0004C7  1484 	Sstm8s_adc2$ADC2_ConversionConfig$275 ==.
      009E05 4B 00            [ 1] 1485 	push	#0x00
                           0004C9  1486 	Sstm8s_adc2$ADC2_ConversionConfig$276 ==.
                                   1487 ; genIPush
      009E07 4B 02            [ 1] 1488 	push	#<(___str_0+0)
                           0004CB  1489 	Sstm8s_adc2$ADC2_ConversionConfig$277 ==.
      009E09 4B 81            [ 1] 1490 	push	#((___str_0+0) >> 8)
                           0004CD  1491 	Sstm8s_adc2$ADC2_ConversionConfig$278 ==.
                                   1492 ; genCall
      009E0B CD 82 65         [ 4] 1493 	call	_assert_failed
      009E0E 5B 06            [ 2] 1494 	addw	sp, #6
                           0004D2  1495 	Sstm8s_adc2$ADC2_ConversionConfig$279 ==.
                                   1496 ; genLabel
      009E10                       1497 00107$:
                           0004D2  1498 	Sstm8s_adc2$ADC2_ConversionConfig$280 ==.
                                   1499 ;	../SPL/src/stm8s_adc2.c: 240: assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
                                   1500 ; genIfx
      009E10 0D 05            [ 1] 1501 	tnz	(0x05, sp)
      009E12 26 03            [ 1] 1502 	jrne	00273$
      009E14 CC 9E AC         [ 2] 1503 	jp	00112$
      009E17                       1504 00273$:
                                   1505 ; genCmpEQorNE
      009E17 7B 05            [ 1] 1506 	ld	a, (0x05, sp)
      009E19 4A               [ 1] 1507 	dec	a
      009E1A 26 03            [ 1] 1508 	jrne	00275$
      009E1C CC 9E AC         [ 2] 1509 	jp	00112$
      009E1F                       1510 00275$:
                           0004E1  1511 	Sstm8s_adc2$ADC2_ConversionConfig$281 ==.
                                   1512 ; skipping generated iCode
                                   1513 ; genCmpEQorNE
      009E1F 7B 05            [ 1] 1514 	ld	a, (0x05, sp)
      009E21 A1 02            [ 1] 1515 	cp	a, #0x02
      009E23 26 03            [ 1] 1516 	jrne	00278$
      009E25 CC 9E AC         [ 2] 1517 	jp	00112$
      009E28                       1518 00278$:
                           0004EA  1519 	Sstm8s_adc2$ADC2_ConversionConfig$282 ==.
                                   1520 ; skipping generated iCode
                                   1521 ; genCmpEQorNE
      009E28 7B 05            [ 1] 1522 	ld	a, (0x05, sp)
      009E2A A1 03            [ 1] 1523 	cp	a, #0x03
      009E2C 26 03            [ 1] 1524 	jrne	00281$
      009E2E CC 9E AC         [ 2] 1525 	jp	00112$
      009E31                       1526 00281$:
                           0004F3  1527 	Sstm8s_adc2$ADC2_ConversionConfig$283 ==.
                                   1528 ; skipping generated iCode
                                   1529 ; genCmpEQorNE
      009E31 7B 05            [ 1] 1530 	ld	a, (0x05, sp)
      009E33 A1 04            [ 1] 1531 	cp	a, #0x04
      009E35 26 03            [ 1] 1532 	jrne	00284$
      009E37 CC 9E AC         [ 2] 1533 	jp	00112$
      009E3A                       1534 00284$:
                           0004FC  1535 	Sstm8s_adc2$ADC2_ConversionConfig$284 ==.
                                   1536 ; skipping generated iCode
                                   1537 ; genCmpEQorNE
      009E3A 7B 05            [ 1] 1538 	ld	a, (0x05, sp)
      009E3C A1 05            [ 1] 1539 	cp	a, #0x05
      009E3E 26 03            [ 1] 1540 	jrne	00287$
      009E40 CC 9E AC         [ 2] 1541 	jp	00112$
      009E43                       1542 00287$:
                           000505  1543 	Sstm8s_adc2$ADC2_ConversionConfig$285 ==.
                                   1544 ; skipping generated iCode
                                   1545 ; genCmpEQorNE
      009E43 7B 05            [ 1] 1546 	ld	a, (0x05, sp)
      009E45 A1 06            [ 1] 1547 	cp	a, #0x06
      009E47 26 03            [ 1] 1548 	jrne	00290$
      009E49 CC 9E AC         [ 2] 1549 	jp	00112$
      009E4C                       1550 00290$:
                           00050E  1551 	Sstm8s_adc2$ADC2_ConversionConfig$286 ==.
                                   1552 ; skipping generated iCode
                                   1553 ; genCmpEQorNE
      009E4C 7B 05            [ 1] 1554 	ld	a, (0x05, sp)
      009E4E A1 07            [ 1] 1555 	cp	a, #0x07
      009E50 26 03            [ 1] 1556 	jrne	00293$
      009E52 CC 9E AC         [ 2] 1557 	jp	00112$
      009E55                       1558 00293$:
                           000517  1559 	Sstm8s_adc2$ADC2_ConversionConfig$287 ==.
                                   1560 ; skipping generated iCode
                                   1561 ; genCmpEQorNE
      009E55 7B 05            [ 1] 1562 	ld	a, (0x05, sp)
      009E57 A1 08            [ 1] 1563 	cp	a, #0x08
      009E59 26 03            [ 1] 1564 	jrne	00296$
      009E5B CC 9E AC         [ 2] 1565 	jp	00112$
      009E5E                       1566 00296$:
                           000520  1567 	Sstm8s_adc2$ADC2_ConversionConfig$288 ==.
                                   1568 ; skipping generated iCode
                                   1569 ; genCmpEQorNE
      009E5E 7B 05            [ 1] 1570 	ld	a, (0x05, sp)
      009E60 A1 09            [ 1] 1571 	cp	a, #0x09
      009E62 26 03            [ 1] 1572 	jrne	00299$
      009E64 CC 9E AC         [ 2] 1573 	jp	00112$
      009E67                       1574 00299$:
                           000529  1575 	Sstm8s_adc2$ADC2_ConversionConfig$289 ==.
                                   1576 ; skipping generated iCode
                                   1577 ; genCmpEQorNE
      009E67 7B 05            [ 1] 1578 	ld	a, (0x05, sp)
      009E69 A1 0A            [ 1] 1579 	cp	a, #0x0a
      009E6B 26 03            [ 1] 1580 	jrne	00302$
      009E6D CC 9E AC         [ 2] 1581 	jp	00112$
      009E70                       1582 00302$:
                           000532  1583 	Sstm8s_adc2$ADC2_ConversionConfig$290 ==.
                                   1584 ; skipping generated iCode
                                   1585 ; genCmpEQorNE
      009E70 7B 05            [ 1] 1586 	ld	a, (0x05, sp)
      009E72 A1 0B            [ 1] 1587 	cp	a, #0x0b
      009E74 26 03            [ 1] 1588 	jrne	00305$
      009E76 CC 9E AC         [ 2] 1589 	jp	00112$
      009E79                       1590 00305$:
                           00053B  1591 	Sstm8s_adc2$ADC2_ConversionConfig$291 ==.
                                   1592 ; skipping generated iCode
                                   1593 ; genCmpEQorNE
      009E79 7B 05            [ 1] 1594 	ld	a, (0x05, sp)
      009E7B A1 0C            [ 1] 1595 	cp	a, #0x0c
      009E7D 26 03            [ 1] 1596 	jrne	00308$
      009E7F CC 9E AC         [ 2] 1597 	jp	00112$
      009E82                       1598 00308$:
                           000544  1599 	Sstm8s_adc2$ADC2_ConversionConfig$292 ==.
                                   1600 ; skipping generated iCode
                                   1601 ; genCmpEQorNE
      009E82 7B 05            [ 1] 1602 	ld	a, (0x05, sp)
      009E84 A1 0D            [ 1] 1603 	cp	a, #0x0d
      009E86 26 03            [ 1] 1604 	jrne	00311$
      009E88 CC 9E AC         [ 2] 1605 	jp	00112$
      009E8B                       1606 00311$:
                           00054D  1607 	Sstm8s_adc2$ADC2_ConversionConfig$293 ==.
                                   1608 ; skipping generated iCode
                                   1609 ; genCmpEQorNE
      009E8B 7B 05            [ 1] 1610 	ld	a, (0x05, sp)
      009E8D A1 0E            [ 1] 1611 	cp	a, #0x0e
      009E8F 26 03            [ 1] 1612 	jrne	00314$
      009E91 CC 9E AC         [ 2] 1613 	jp	00112$
      009E94                       1614 00314$:
                           000556  1615 	Sstm8s_adc2$ADC2_ConversionConfig$294 ==.
                                   1616 ; skipping generated iCode
                                   1617 ; genCmpEQorNE
      009E94 7B 05            [ 1] 1618 	ld	a, (0x05, sp)
      009E96 A1 0F            [ 1] 1619 	cp	a, #0x0f
      009E98 26 03            [ 1] 1620 	jrne	00317$
      009E9A CC 9E AC         [ 2] 1621 	jp	00112$
      009E9D                       1622 00317$:
                           00055F  1623 	Sstm8s_adc2$ADC2_ConversionConfig$295 ==.
                                   1624 ; skipping generated iCode
                                   1625 ; skipping iCode since result will be rematerialized
                                   1626 ; skipping iCode since result will be rematerialized
                                   1627 ; genIPush
      009E9D 4B F0            [ 1] 1628 	push	#0xf0
                           000561  1629 	Sstm8s_adc2$ADC2_ConversionConfig$296 ==.
      009E9F 5F               [ 1] 1630 	clrw	x
      009EA0 89               [ 2] 1631 	pushw	x
                           000563  1632 	Sstm8s_adc2$ADC2_ConversionConfig$297 ==.
      009EA1 4B 00            [ 1] 1633 	push	#0x00
                           000565  1634 	Sstm8s_adc2$ADC2_ConversionConfig$298 ==.
                                   1635 ; genIPush
      009EA3 4B 02            [ 1] 1636 	push	#<(___str_0+0)
                           000567  1637 	Sstm8s_adc2$ADC2_ConversionConfig$299 ==.
      009EA5 4B 81            [ 1] 1638 	push	#((___str_0+0) >> 8)
                           000569  1639 	Sstm8s_adc2$ADC2_ConversionConfig$300 ==.
                                   1640 ; genCall
      009EA7 CD 82 65         [ 4] 1641 	call	_assert_failed
      009EAA 5B 06            [ 2] 1642 	addw	sp, #6
                           00056E  1643 	Sstm8s_adc2$ADC2_ConversionConfig$301 ==.
                                   1644 ; genLabel
      009EAC                       1645 00112$:
                           00056E  1646 	Sstm8s_adc2$ADC2_ConversionConfig$302 ==.
                                   1647 ;	../SPL/src/stm8s_adc2.c: 241: assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
                                   1648 ; genIfx
      009EAC 0D 06            [ 1] 1649 	tnz	(0x06, sp)
      009EAE 26 03            [ 1] 1650 	jrne	00319$
      009EB0 CC 9E CB         [ 2] 1651 	jp	00159$
      009EB3                       1652 00319$:
                                   1653 ; genCmpEQorNE
      009EB3 7B 06            [ 1] 1654 	ld	a, (0x06, sp)
      009EB5 A1 08            [ 1] 1655 	cp	a, #0x08
      009EB7 26 03            [ 1] 1656 	jrne	00321$
      009EB9 CC 9E CB         [ 2] 1657 	jp	00159$
      009EBC                       1658 00321$:
                           00057E  1659 	Sstm8s_adc2$ADC2_ConversionConfig$303 ==.
                                   1660 ; skipping generated iCode
                                   1661 ; skipping iCode since result will be rematerialized
                                   1662 ; skipping iCode since result will be rematerialized
                                   1663 ; genIPush
      009EBC 4B F1            [ 1] 1664 	push	#0xf1
                           000580  1665 	Sstm8s_adc2$ADC2_ConversionConfig$304 ==.
      009EBE 5F               [ 1] 1666 	clrw	x
      009EBF 89               [ 2] 1667 	pushw	x
                           000582  1668 	Sstm8s_adc2$ADC2_ConversionConfig$305 ==.
      009EC0 4B 00            [ 1] 1669 	push	#0x00
                           000584  1670 	Sstm8s_adc2$ADC2_ConversionConfig$306 ==.
                                   1671 ; genIPush
      009EC2 4B 02            [ 1] 1672 	push	#<(___str_0+0)
                           000586  1673 	Sstm8s_adc2$ADC2_ConversionConfig$307 ==.
      009EC4 4B 81            [ 1] 1674 	push	#((___str_0+0) >> 8)
                           000588  1675 	Sstm8s_adc2$ADC2_ConversionConfig$308 ==.
                                   1676 ; genCall
      009EC6 CD 82 65         [ 4] 1677 	call	_assert_failed
      009EC9 5B 06            [ 2] 1678 	addw	sp, #6
                           00058D  1679 	Sstm8s_adc2$ADC2_ConversionConfig$309 ==.
                                   1680 ; genLabel
      009ECB                       1681 00159$:
                           00058D  1682 	Sstm8s_adc2$ADC2_ConversionConfig$310 ==.
                                   1683 ;	../SPL/src/stm8s_adc2.c: 244: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                   1684 ; genPointerGet
      009ECB C6 54 02         [ 1] 1685 	ld	a, 0x5402
                                   1686 ; genAnd
      009ECE A4 F7            [ 1] 1687 	and	a, #0xf7
                                   1688 ; genPointerSet
      009ED0 C7 54 02         [ 1] 1689 	ld	0x5402, a
                           000595  1690 	Sstm8s_adc2$ADC2_ConversionConfig$311 ==.
                                   1691 ;	../SPL/src/stm8s_adc2.c: 246: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                   1692 ; genPointerGet
      009ED3 C6 54 02         [ 1] 1693 	ld	a, 0x5402
                                   1694 ; genOr
      009ED6 1A 06            [ 1] 1695 	or	a, (0x06, sp)
                                   1696 ; genPointerSet
      009ED8 C7 54 02         [ 1] 1697 	ld	0x5402, a
                           00059D  1698 	Sstm8s_adc2$ADC2_ConversionConfig$312 ==.
                                   1699 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                   1700 ; genPointerGet
      009EDB C6 54 01         [ 1] 1701 	ld	a, 0x5401
      009EDE 97               [ 1] 1702 	ld	xl, a
                           0005A1  1703 	Sstm8s_adc2$ADC2_ConversionConfig$313 ==.
                                   1704 ;	../SPL/src/stm8s_adc2.c: 248: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
                                   1705 ; genAssign
      009EDF 7B 01            [ 1] 1706 	ld	a, (0x01, sp)
                                   1707 ; genIfx
      009EE1 4D               [ 1] 1708 	tnz	a
      009EE2 26 03            [ 1] 1709 	jrne	00323$
      009EE4 CC 9E F0         [ 2] 1710 	jp	00102$
      009EE7                       1711 00323$:
                           0005A9  1712 	Sstm8s_adc2$ADC2_ConversionConfig$314 ==.
                           0005A9  1713 	Sstm8s_adc2$ADC2_ConversionConfig$315 ==.
                                   1714 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                   1715 ; genOr
      009EE7 9F               [ 1] 1716 	ld	a, xl
      009EE8 AA 02            [ 1] 1717 	or	a, #0x02
                                   1718 ; genPointerSet
      009EEA C7 54 01         [ 1] 1719 	ld	0x5401, a
                           0005AF  1720 	Sstm8s_adc2$ADC2_ConversionConfig$316 ==.
                                   1721 ; genGoto
      009EED CC 9E F6         [ 2] 1722 	jp	00103$
                                   1723 ; genLabel
      009EF0                       1724 00102$:
                           0005B2  1725 	Sstm8s_adc2$ADC2_ConversionConfig$317 ==.
                           0005B2  1726 	Sstm8s_adc2$ADC2_ConversionConfig$318 ==.
                                   1727 ;	../SPL/src/stm8s_adc2.c: 256: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
                                   1728 ; genAnd
      009EF0 9F               [ 1] 1729 	ld	a, xl
      009EF1 A4 FD            [ 1] 1730 	and	a, #0xfd
                                   1731 ; genPointerSet
      009EF3 C7 54 01         [ 1] 1732 	ld	0x5401, a
                           0005B8  1733 	Sstm8s_adc2$ADC2_ConversionConfig$319 ==.
                                   1734 ; genLabel
      009EF6                       1735 00103$:
                           0005B8  1736 	Sstm8s_adc2$ADC2_ConversionConfig$320 ==.
                                   1737 ;	../SPL/src/stm8s_adc2.c: 260: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
                                   1738 ; genPointerGet
      009EF6 C6 54 00         [ 1] 1739 	ld	a, 0x5400
                                   1740 ; genAnd
      009EF9 A4 F0            [ 1] 1741 	and	a, #0xf0
                                   1742 ; genPointerSet
      009EFB C7 54 00         [ 1] 1743 	ld	0x5400, a
                           0005C0  1744 	Sstm8s_adc2$ADC2_ConversionConfig$321 ==.
                                   1745 ;	../SPL/src/stm8s_adc2.c: 262: ADC2->CSR |= (uint8_t)(ADC2_Channel);
                                   1746 ; genPointerGet
      009EFE C6 54 00         [ 1] 1747 	ld	a, 0x5400
                                   1748 ; genOr
      009F01 1A 05            [ 1] 1749 	or	a, (0x05, sp)
                                   1750 ; genPointerSet
      009F03 C7 54 00         [ 1] 1751 	ld	0x5400, a
                                   1752 ; genLabel
      009F06                       1753 00104$:
                           0005C8  1754 	Sstm8s_adc2$ADC2_ConversionConfig$322 ==.
                                   1755 ;	../SPL/src/stm8s_adc2.c: 263: }
                                   1756 ; genEndFunction
      009F06 84               [ 1] 1757 	pop	a
                           0005C9  1758 	Sstm8s_adc2$ADC2_ConversionConfig$323 ==.
                           0005C9  1759 	Sstm8s_adc2$ADC2_ConversionConfig$324 ==.
                           0005C9  1760 	XG$ADC2_ConversionConfig$0$0 ==.
      009F07 81               [ 4] 1761 	ret
                           0005CA  1762 	Sstm8s_adc2$ADC2_ConversionConfig$325 ==.
                           0005CA  1763 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$326 ==.
                                   1764 ;	../SPL/src/stm8s_adc2.c: 275: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
                                   1765 ; genLabel
                                   1766 ;	-----------------------------------------
                                   1767 ;	 function ADC2_ExternalTriggerConfig
                                   1768 ;	-----------------------------------------
                                   1769 ;	Register assignment is optimal.
                                   1770 ;	Stack space usage: 0 bytes.
      009F08                       1771 _ADC2_ExternalTriggerConfig:
                           0005CA  1772 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$327 ==.
                           0005CA  1773 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$328 ==.
                                   1774 ;	../SPL/src/stm8s_adc2.c: 278: assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
                                   1775 ; genIfx
      009F08 0D 03            [ 1] 1776 	tnz	(0x03, sp)
      009F0A 26 03            [ 1] 1777 	jrne	00141$
      009F0C CC 9F 26         [ 2] 1778 	jp	00107$
      009F0F                       1779 00141$:
                                   1780 ; genCmpEQorNE
      009F0F 7B 03            [ 1] 1781 	ld	a, (0x03, sp)
      009F11 4A               [ 1] 1782 	dec	a
      009F12 26 03            [ 1] 1783 	jrne	00143$
      009F14 CC 9F 26         [ 2] 1784 	jp	00107$
      009F17                       1785 00143$:
                           0005D9  1786 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$329 ==.
                                   1787 ; skipping generated iCode
                                   1788 ; skipping iCode since result will be rematerialized
                                   1789 ; skipping iCode since result will be rematerialized
                                   1790 ; genIPush
      009F17 4B 16            [ 1] 1791 	push	#0x16
                           0005DB  1792 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$330 ==.
      009F19 4B 01            [ 1] 1793 	push	#0x01
                           0005DD  1794 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$331 ==.
      009F1B 5F               [ 1] 1795 	clrw	x
      009F1C 89               [ 2] 1796 	pushw	x
                           0005DF  1797 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$332 ==.
                                   1798 ; genIPush
      009F1D 4B 02            [ 1] 1799 	push	#<(___str_0+0)
                           0005E1  1800 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$333 ==.
      009F1F 4B 81            [ 1] 1801 	push	#((___str_0+0) >> 8)
                           0005E3  1802 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$334 ==.
                                   1803 ; genCall
      009F21 CD 82 65         [ 4] 1804 	call	_assert_failed
      009F24 5B 06            [ 2] 1805 	addw	sp, #6
                           0005E8  1806 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$335 ==.
                                   1807 ; genLabel
      009F26                       1808 00107$:
                           0005E8  1809 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$336 ==.
                                   1810 ;	../SPL/src/stm8s_adc2.c: 279: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                   1811 ; genIfx
      009F26 0D 04            [ 1] 1812 	tnz	(0x04, sp)
      009F28 26 03            [ 1] 1813 	jrne	00145$
      009F2A CC 9F 44         [ 2] 1814 	jp	00112$
      009F2D                       1815 00145$:
                                   1816 ; genCmpEQorNE
      009F2D 7B 04            [ 1] 1817 	ld	a, (0x04, sp)
      009F2F 4A               [ 1] 1818 	dec	a
      009F30 26 03            [ 1] 1819 	jrne	00147$
      009F32 CC 9F 44         [ 2] 1820 	jp	00112$
      009F35                       1821 00147$:
                           0005F7  1822 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$337 ==.
                                   1823 ; skipping generated iCode
                                   1824 ; skipping iCode since result will be rematerialized
                                   1825 ; skipping iCode since result will be rematerialized
                                   1826 ; genIPush
      009F35 4B 17            [ 1] 1827 	push	#0x17
                           0005F9  1828 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$338 ==.
      009F37 4B 01            [ 1] 1829 	push	#0x01
                           0005FB  1830 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$339 ==.
      009F39 5F               [ 1] 1831 	clrw	x
      009F3A 89               [ 2] 1832 	pushw	x
                           0005FD  1833 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$340 ==.
                                   1834 ; genIPush
      009F3B 4B 02            [ 1] 1835 	push	#<(___str_0+0)
                           0005FF  1836 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$341 ==.
      009F3D 4B 81            [ 1] 1837 	push	#((___str_0+0) >> 8)
                           000601  1838 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$342 ==.
                                   1839 ; genCall
      009F3F CD 82 65         [ 4] 1840 	call	_assert_failed
      009F42 5B 06            [ 2] 1841 	addw	sp, #6
                           000606  1842 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$343 ==.
                                   1843 ; genLabel
      009F44                       1844 00112$:
                           000606  1845 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$344 ==.
                                   1846 ;	../SPL/src/stm8s_adc2.c: 282: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
                                   1847 ; genPointerGet
      009F44 C6 54 02         [ 1] 1848 	ld	a, 0x5402
                                   1849 ; genAnd
      009F47 A4 CF            [ 1] 1850 	and	a, #0xcf
                                   1851 ; genPointerSet
      009F49 C7 54 02         [ 1] 1852 	ld	0x5402, a
                                   1853 ; genPointerGet
      009F4C C6 54 02         [ 1] 1854 	ld	a, 0x5402
                           000611  1855 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$345 ==.
                                   1856 ;	../SPL/src/stm8s_adc2.c: 284: if (NewState != DISABLE)
                                   1857 ; genIfx
      009F4F 0D 04            [ 1] 1858 	tnz	(0x04, sp)
      009F51 26 03            [ 1] 1859 	jrne	00149$
      009F53 CC 9F 5E         [ 2] 1860 	jp	00102$
      009F56                       1861 00149$:
                           000618  1862 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$346 ==.
                           000618  1863 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$347 ==.
                                   1864 ;	../SPL/src/stm8s_adc2.c: 287: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
                                   1865 ; genOr
      009F56 AA 40            [ 1] 1866 	or	a, #0x40
                                   1867 ; genPointerSet
      009F58 C7 54 02         [ 1] 1868 	ld	0x5402, a
                           00061D  1869 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$348 ==.
                                   1870 ; genGoto
      009F5B CC 9F 63         [ 2] 1871 	jp	00103$
                                   1872 ; genLabel
      009F5E                       1873 00102$:
                           000620  1874 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$349 ==.
                           000620  1875 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$350 ==.
                                   1876 ;	../SPL/src/stm8s_adc2.c: 292: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
                                   1877 ; genAnd
      009F5E A4 BF            [ 1] 1878 	and	a, #0xbf
                                   1879 ; genPointerSet
      009F60 C7 54 02         [ 1] 1880 	ld	0x5402, a
                           000625  1881 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$351 ==.
                                   1882 ; genLabel
      009F63                       1883 00103$:
                           000625  1884 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$352 ==.
                                   1885 ;	../SPL/src/stm8s_adc2.c: 296: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
                                   1886 ; genPointerGet
      009F63 C6 54 02         [ 1] 1887 	ld	a, 0x5402
                                   1888 ; genOr
      009F66 1A 03            [ 1] 1889 	or	a, (0x03, sp)
                                   1890 ; genPointerSet
      009F68 C7 54 02         [ 1] 1891 	ld	0x5402, a
                                   1892 ; genLabel
      009F6B                       1893 00104$:
                           00062D  1894 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$353 ==.
                                   1895 ;	../SPL/src/stm8s_adc2.c: 297: }
                                   1896 ; genEndFunction
                           00062D  1897 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$354 ==.
                           00062D  1898 	XG$ADC2_ExternalTriggerConfig$0$0 ==.
      009F6B 81               [ 4] 1899 	ret
                           00062E  1900 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$355 ==.
                           00062E  1901 	Sstm8s_adc2$ADC2_StartConversion$356 ==.
                                   1902 ;	../SPL/src/stm8s_adc2.c: 308: void ADC2_StartConversion(void)
                                   1903 ; genLabel
                                   1904 ;	-----------------------------------------
                                   1905 ;	 function ADC2_StartConversion
                                   1906 ;	-----------------------------------------
                                   1907 ;	Register assignment is optimal.
                                   1908 ;	Stack space usage: 0 bytes.
      009F6C                       1909 _ADC2_StartConversion:
                           00062E  1910 	Sstm8s_adc2$ADC2_StartConversion$357 ==.
                           00062E  1911 	Sstm8s_adc2$ADC2_StartConversion$358 ==.
                                   1912 ;	../SPL/src/stm8s_adc2.c: 310: ADC2->CR1 |= ADC2_CR1_ADON;
                                   1913 ; genPointerGet
      009F6C C6 54 01         [ 1] 1914 	ld	a, 0x5401
                                   1915 ; genOr
      009F6F AA 01            [ 1] 1916 	or	a, #0x01
                                   1917 ; genPointerSet
      009F71 C7 54 01         [ 1] 1918 	ld	0x5401, a
                                   1919 ; genLabel
      009F74                       1920 00101$:
                           000636  1921 	Sstm8s_adc2$ADC2_StartConversion$359 ==.
                                   1922 ;	../SPL/src/stm8s_adc2.c: 311: }
                                   1923 ; genEndFunction
                           000636  1924 	Sstm8s_adc2$ADC2_StartConversion$360 ==.
                           000636  1925 	XG$ADC2_StartConversion$0$0 ==.
      009F74 81               [ 4] 1926 	ret
                           000637  1927 	Sstm8s_adc2$ADC2_StartConversion$361 ==.
                           000637  1928 	Sstm8s_adc2$ADC2_GetConversionValue$362 ==.
                                   1929 ;	../SPL/src/stm8s_adc2.c: 320: uint16_t ADC2_GetConversionValue(void)
                                   1930 ; genLabel
                                   1931 ;	-----------------------------------------
                                   1932 ;	 function ADC2_GetConversionValue
                                   1933 ;	-----------------------------------------
                                   1934 ;	Register assignment might be sub-optimal.
                                   1935 ;	Stack space usage: 4 bytes.
      009F75                       1936 _ADC2_GetConversionValue:
                           000637  1937 	Sstm8s_adc2$ADC2_GetConversionValue$363 ==.
      009F75 52 04            [ 2] 1938 	sub	sp, #4
                           000639  1939 	Sstm8s_adc2$ADC2_GetConversionValue$364 ==.
                           000639  1940 	Sstm8s_adc2$ADC2_GetConversionValue$365 ==.
                                   1941 ;	../SPL/src/stm8s_adc2.c: 325: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
                                   1942 ; genPointerGet
      009F77 C6 54 02         [ 1] 1943 	ld	a, 0x5402
                                   1944 ; genAnd
      009F7A A5 08            [ 1] 1945 	bcp	a, #0x08
      009F7C 26 03            [ 1] 1946 	jrne	00111$
      009F7E CC 9F 9A         [ 2] 1947 	jp	00102$
      009F81                       1948 00111$:
                                   1949 ; skipping generated iCode
                           000643  1950 	Sstm8s_adc2$ADC2_GetConversionValue$366 ==.
                           000643  1951 	Sstm8s_adc2$ADC2_GetConversionValue$367 ==.
                                   1952 ;	../SPL/src/stm8s_adc2.c: 328: templ = ADC2->DRL;
                                   1953 ; genPointerGet
      009F81 C6 54 05         [ 1] 1954 	ld	a, 0x5405
      009F84 97               [ 1] 1955 	ld	xl, a
                           000647  1956 	Sstm8s_adc2$ADC2_GetConversionValue$368 ==.
                                   1957 ;	../SPL/src/stm8s_adc2.c: 330: temph = ADC2->DRH;
                                   1958 ; genPointerGet
      009F85 C6 54 04         [ 1] 1959 	ld	a, 0x5404
                                   1960 ; genCast
                                   1961 ; genAssign
      009F88 90 5F            [ 1] 1962 	clrw	y
                                   1963 ; genAssign
                           00064C  1964 	Sstm8s_adc2$ADC2_GetConversionValue$369 ==.
                                   1965 ;	../SPL/src/stm8s_adc2.c: 332: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
                                   1966 ; genLeftShiftLiteral
      009F8A 0F 02            [ 1] 1967 	clr	(0x02, sp)
                                   1968 ; genCast
                                   1969 ; genAssign
      009F8C 0F 03            [ 1] 1970 	clr	(0x03, sp)
                                   1971 ; genOr
      009F8E 1A 03            [ 1] 1972 	or	a, (0x03, sp)
      009F90 95               [ 1] 1973 	ld	xh, a
      009F91 9F               [ 1] 1974 	ld	a, xl
      009F92 1A 02            [ 1] 1975 	or	a, (0x02, sp)
      009F94 97               [ 1] 1976 	ld	xl, a
                                   1977 ; genAssign
      009F95 1F 03            [ 2] 1978 	ldw	(0x03, sp), x
                           000659  1979 	Sstm8s_adc2$ADC2_GetConversionValue$370 ==.
                                   1980 ; genGoto
      009F97 CC 9F B8         [ 2] 1981 	jp	00103$
                                   1982 ; genLabel
      009F9A                       1983 00102$:
                           00065C  1984 	Sstm8s_adc2$ADC2_GetConversionValue$371 ==.
                           00065C  1985 	Sstm8s_adc2$ADC2_GetConversionValue$372 ==.
                                   1986 ;	../SPL/src/stm8s_adc2.c: 337: temph = ADC2->DRH;
                                   1987 ; genPointerGet
      009F9A C6 54 04         [ 1] 1988 	ld	a, 0x5404
                                   1989 ; genCast
                                   1990 ; genAssign
      009F9D 5F               [ 1] 1991 	clrw	x
      009F9E 97               [ 1] 1992 	ld	xl, a
                                   1993 ; genAssign
      009F9F 51               [ 1] 1994 	exgw	x, y
                           000662  1995 	Sstm8s_adc2$ADC2_GetConversionValue$373 ==.
                                   1996 ;	../SPL/src/stm8s_adc2.c: 339: templ = ADC2->DRL;
                                   1997 ; genPointerGet
      009FA0 C6 54 05         [ 1] 1998 	ld	a, 0x5405
                           000665  1999 	Sstm8s_adc2$ADC2_GetConversionValue$374 ==.
                                   2000 ;	../SPL/src/stm8s_adc2.c: 341: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
                                   2001 ; genCast
                                   2002 ; genAssign
      009FA3 5F               [ 1] 2003 	clrw	x
      009FA4 97               [ 1] 2004 	ld	xl, a
                                   2005 ; genLeftShiftLiteral
      009FA5 58               [ 2] 2006 	sllw	x
      009FA6 58               [ 2] 2007 	sllw	x
      009FA7 58               [ 2] 2008 	sllw	x
      009FA8 58               [ 2] 2009 	sllw	x
      009FA9 58               [ 2] 2010 	sllw	x
      009FAA 58               [ 2] 2011 	sllw	x
      009FAB 1F 03            [ 2] 2012 	ldw	(0x03, sp), x
                                   2013 ; genLeftShiftLiteral
      009FAD 4F               [ 1] 2014 	clr	a
                                   2015 ; genOr
      009FAE 1A 04            [ 1] 2016 	or	a, (0x04, sp)
      009FB0 97               [ 1] 2017 	ld	xl, a
      009FB1 90 9F            [ 1] 2018 	ld	a, yl
      009FB3 1A 03            [ 1] 2019 	or	a, (0x03, sp)
      009FB5 95               [ 1] 2020 	ld	xh, a
                                   2021 ; genAssign
      009FB6 1F 03            [ 2] 2022 	ldw	(0x03, sp), x
                           00067A  2023 	Sstm8s_adc2$ADC2_GetConversionValue$375 ==.
                                   2024 ; genLabel
      009FB8                       2025 00103$:
                           00067A  2026 	Sstm8s_adc2$ADC2_GetConversionValue$376 ==.
                                   2027 ;	../SPL/src/stm8s_adc2.c: 344: return ((uint16_t)temph);
                                   2028 ; genReturn
      009FB8 1E 03            [ 2] 2029 	ldw	x, (0x03, sp)
                                   2030 ; genLabel
      009FBA                       2031 00104$:
                           00067C  2032 	Sstm8s_adc2$ADC2_GetConversionValue$377 ==.
                                   2033 ;	../SPL/src/stm8s_adc2.c: 345: }
                                   2034 ; genEndFunction
      009FBA 5B 04            [ 2] 2035 	addw	sp, #4
                           00067E  2036 	Sstm8s_adc2$ADC2_GetConversionValue$378 ==.
                           00067E  2037 	Sstm8s_adc2$ADC2_GetConversionValue$379 ==.
                           00067E  2038 	XG$ADC2_GetConversionValue$0$0 ==.
      009FBC 81               [ 4] 2039 	ret
                           00067F  2040 	Sstm8s_adc2$ADC2_GetConversionValue$380 ==.
                           00067F  2041 	Sstm8s_adc2$ADC2_GetFlagStatus$381 ==.
                                   2042 ;	../SPL/src/stm8s_adc2.c: 352: FlagStatus ADC2_GetFlagStatus(void)
                                   2043 ; genLabel
                                   2044 ;	-----------------------------------------
                                   2045 ;	 function ADC2_GetFlagStatus
                                   2046 ;	-----------------------------------------
                                   2047 ;	Register assignment is optimal.
                                   2048 ;	Stack space usage: 0 bytes.
      009FBD                       2049 _ADC2_GetFlagStatus:
                           00067F  2050 	Sstm8s_adc2$ADC2_GetFlagStatus$382 ==.
                           00067F  2051 	Sstm8s_adc2$ADC2_GetFlagStatus$383 ==.
                                   2052 ;	../SPL/src/stm8s_adc2.c: 355: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                   2053 ; genPointerGet
      009FBD C6 54 00         [ 1] 2054 	ld	a, 0x5400
                                   2055 ; genAnd
      009FC0 A4 80            [ 1] 2056 	and	a, #0x80
                                   2057 ; genReturn
                                   2058 ; genLabel
      009FC2                       2059 00101$:
                           000684  2060 	Sstm8s_adc2$ADC2_GetFlagStatus$384 ==.
                                   2061 ;	../SPL/src/stm8s_adc2.c: 356: }
                                   2062 ; genEndFunction
                           000684  2063 	Sstm8s_adc2$ADC2_GetFlagStatus$385 ==.
                           000684  2064 	XG$ADC2_GetFlagStatus$0$0 ==.
      009FC2 81               [ 4] 2065 	ret
                           000685  2066 	Sstm8s_adc2$ADC2_GetFlagStatus$386 ==.
                           000685  2067 	Sstm8s_adc2$ADC2_ClearFlag$387 ==.
                                   2068 ;	../SPL/src/stm8s_adc2.c: 363: void ADC2_ClearFlag(void)
                                   2069 ; genLabel
                                   2070 ;	-----------------------------------------
                                   2071 ;	 function ADC2_ClearFlag
                                   2072 ;	-----------------------------------------
                                   2073 ;	Register assignment is optimal.
                                   2074 ;	Stack space usage: 0 bytes.
      009FC3                       2075 _ADC2_ClearFlag:
                           000685  2076 	Sstm8s_adc2$ADC2_ClearFlag$388 ==.
                           000685  2077 	Sstm8s_adc2$ADC2_ClearFlag$389 ==.
                                   2078 ;	../SPL/src/stm8s_adc2.c: 365: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                   2079 ; genPointerGet
      009FC3 C6 54 00         [ 1] 2080 	ld	a, 0x5400
                                   2081 ; genAnd
      009FC6 A4 7F            [ 1] 2082 	and	a, #0x7f
                                   2083 ; genPointerSet
      009FC8 C7 54 00         [ 1] 2084 	ld	0x5400, a
                                   2085 ; genLabel
      009FCB                       2086 00101$:
                           00068D  2087 	Sstm8s_adc2$ADC2_ClearFlag$390 ==.
                                   2088 ;	../SPL/src/stm8s_adc2.c: 366: }
                                   2089 ; genEndFunction
                           00068D  2090 	Sstm8s_adc2$ADC2_ClearFlag$391 ==.
                           00068D  2091 	XG$ADC2_ClearFlag$0$0 ==.
      009FCB 81               [ 4] 2092 	ret
                           00068E  2093 	Sstm8s_adc2$ADC2_ClearFlag$392 ==.
                           00068E  2094 	Sstm8s_adc2$ADC2_GetITStatus$393 ==.
                                   2095 ;	../SPL/src/stm8s_adc2.c: 374: ITStatus ADC2_GetITStatus(void)
                                   2096 ; genLabel
                                   2097 ;	-----------------------------------------
                                   2098 ;	 function ADC2_GetITStatus
                                   2099 ;	-----------------------------------------
                                   2100 ;	Register assignment is optimal.
                                   2101 ;	Stack space usage: 0 bytes.
      009FCC                       2102 _ADC2_GetITStatus:
                           00068E  2103 	Sstm8s_adc2$ADC2_GetITStatus$394 ==.
                           00068E  2104 	Sstm8s_adc2$ADC2_GetITStatus$395 ==.
                                   2105 ;	../SPL/src/stm8s_adc2.c: 376: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                   2106 ; genPointerGet
      009FCC C6 54 00         [ 1] 2107 	ld	a, 0x5400
                                   2108 ; genAnd
      009FCF A4 80            [ 1] 2109 	and	a, #0x80
                                   2110 ; genReturn
                                   2111 ; genLabel
      009FD1                       2112 00101$:
                           000693  2113 	Sstm8s_adc2$ADC2_GetITStatus$396 ==.
                                   2114 ;	../SPL/src/stm8s_adc2.c: 377: }
                                   2115 ; genEndFunction
                           000693  2116 	Sstm8s_adc2$ADC2_GetITStatus$397 ==.
                           000693  2117 	XG$ADC2_GetITStatus$0$0 ==.
      009FD1 81               [ 4] 2118 	ret
                           000694  2119 	Sstm8s_adc2$ADC2_GetITStatus$398 ==.
                           000694  2120 	Sstm8s_adc2$ADC2_ClearITPendingBit$399 ==.
                                   2121 ;	../SPL/src/stm8s_adc2.c: 384: void ADC2_ClearITPendingBit(void)
                                   2122 ; genLabel
                                   2123 ;	-----------------------------------------
                                   2124 ;	 function ADC2_ClearITPendingBit
                                   2125 ;	-----------------------------------------
                                   2126 ;	Register assignment is optimal.
                                   2127 ;	Stack space usage: 0 bytes.
      009FD2                       2128 _ADC2_ClearITPendingBit:
                           000694  2129 	Sstm8s_adc2$ADC2_ClearITPendingBit$400 ==.
                           000694  2130 	Sstm8s_adc2$ADC2_ClearITPendingBit$401 ==.
                                   2131 ;	../SPL/src/stm8s_adc2.c: 386: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                   2132 ; genPointerGet
      009FD2 C6 54 00         [ 1] 2133 	ld	a, 0x5400
                                   2134 ; genAnd
      009FD5 A4 7F            [ 1] 2135 	and	a, #0x7f
                                   2136 ; genPointerSet
      009FD7 C7 54 00         [ 1] 2137 	ld	0x5400, a
                                   2138 ; genLabel
      009FDA                       2139 00101$:
                           00069C  2140 	Sstm8s_adc2$ADC2_ClearITPendingBit$402 ==.
                                   2141 ;	../SPL/src/stm8s_adc2.c: 387: }
                                   2142 ; genEndFunction
                           00069C  2143 	Sstm8s_adc2$ADC2_ClearITPendingBit$403 ==.
                           00069C  2144 	XG$ADC2_ClearITPendingBit$0$0 ==.
      009FDA 81               [ 4] 2145 	ret
                           00069D  2146 	Sstm8s_adc2$ADC2_ClearITPendingBit$404 ==.
                                   2147 	.area CODE
                                   2148 	.area CONST
                           000000  2149 Fstm8s_adc2$__str_0$0_0$0 == .
                                   2150 	.area CONST
      008102                       2151 ___str_0:
      008102 2E 2E 2F 53 50 4C 2F  2152 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      008119 00                    2153 	.db 0x00
                                   2154 	.area CODE
                                   2155 	.area INITIALIZER
                                   2156 	.area CABS (ABS)
                                   2157 
                                   2158 	.area .debug_line (NOLOAD)
      001CDA 00 00 03 AB           2159 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001CDE                       2160 Ldebug_line_start:
      001CDE 00 02                 2161 	.dw	2
      001CE0 00 00 00 78           2162 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001CE4 01                    2163 	.db	1
      001CE5 01                    2164 	.db	1
      001CE6 FB                    2165 	.db	-5
      001CE7 0F                    2166 	.db	15
      001CE8 0A                    2167 	.db	10
      001CE9 00                    2168 	.db	0
      001CEA 01                    2169 	.db	1
      001CEB 01                    2170 	.db	1
      001CEC 01                    2171 	.db	1
      001CED 01                    2172 	.db	1
      001CEE 00                    2173 	.db	0
      001CEF 00                    2174 	.db	0
      001CF0 00                    2175 	.db	0
      001CF1 01                    2176 	.db	1
      001CF2 43 3A 5C 50 72 6F 67  2177 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001D1A 00                    2178 	.db	0
      001D1B 43 3A 5C 50 72 6F 67  2179 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001D3E 00                    2180 	.db	0
      001D3F 00                    2181 	.db	0
      001D40 2E 2E 2F 53 50 4C 2F  2182 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      001D57 00                    2183 	.db	0
      001D58 00                    2184 	.uleb128	0
      001D59 00                    2185 	.uleb128	0
      001D5A 00                    2186 	.uleb128	0
      001D5B 00                    2187 	.db	0
      001D5C                       2188 Ldebug_line_stmt:
      001D5C 00                    2189 	.db	0
      001D5D 05                    2190 	.uleb128	5
      001D5E 02                    2191 	.db	2
      001D5F 00 00 99 3E           2192 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$0)
      001D63 03                    2193 	.db	3
      001D64 35                    2194 	.sleb128	53
      001D65 01                    2195 	.db	1
      001D66 09                    2196 	.db	9
      001D67 00 00                 2197 	.dw	Sstm8s_adc2$ADC2_DeInit$2-Sstm8s_adc2$ADC2_DeInit$0
      001D69 03                    2198 	.db	3
      001D6A 02                    2199 	.sleb128	2
      001D6B 01                    2200 	.db	1
      001D6C 09                    2201 	.db	9
      001D6D 00 04                 2202 	.dw	Sstm8s_adc2$ADC2_DeInit$3-Sstm8s_adc2$ADC2_DeInit$2
      001D6F 03                    2203 	.db	3
      001D70 01                    2204 	.sleb128	1
      001D71 01                    2205 	.db	1
      001D72 09                    2206 	.db	9
      001D73 00 04                 2207 	.dw	Sstm8s_adc2$ADC2_DeInit$4-Sstm8s_adc2$ADC2_DeInit$3
      001D75 03                    2208 	.db	3
      001D76 01                    2209 	.sleb128	1
      001D77 01                    2210 	.db	1
      001D78 09                    2211 	.db	9
      001D79 00 04                 2212 	.dw	Sstm8s_adc2$ADC2_DeInit$5-Sstm8s_adc2$ADC2_DeInit$4
      001D7B 03                    2213 	.db	3
      001D7C 01                    2214 	.sleb128	1
      001D7D 01                    2215 	.db	1
      001D7E 09                    2216 	.db	9
      001D7F 00 04                 2217 	.dw	Sstm8s_adc2$ADC2_DeInit$6-Sstm8s_adc2$ADC2_DeInit$5
      001D81 03                    2218 	.db	3
      001D82 01                    2219 	.sleb128	1
      001D83 01                    2220 	.db	1
      001D84 09                    2221 	.db	9
      001D85 00 04                 2222 	.dw	Sstm8s_adc2$ADC2_DeInit$7-Sstm8s_adc2$ADC2_DeInit$6
      001D87 03                    2223 	.db	3
      001D88 01                    2224 	.sleb128	1
      001D89 01                    2225 	.db	1
      001D8A 09                    2226 	.db	9
      001D8B 00 01                 2227 	.dw	1+Sstm8s_adc2$ADC2_DeInit$8-Sstm8s_adc2$ADC2_DeInit$7
      001D8D 00                    2228 	.db	0
      001D8E 01                    2229 	.uleb128	1
      001D8F 01                    2230 	.db	1
      001D90 00                    2231 	.db	0
      001D91 05                    2232 	.uleb128	5
      001D92 02                    2233 	.db	2
      001D93 00 00 99 53           2234 	.dw	0,(Sstm8s_adc2$ADC2_Init$10)
      001D97 03                    2235 	.db	3
      001D98 D2 00                 2236 	.sleb128	82
      001D9A 01                    2237 	.db	1
      001D9B 09                    2238 	.db	9
      001D9C 00 00                 2239 	.dw	Sstm8s_adc2$ADC2_Init$12-Sstm8s_adc2$ADC2_Init$10
      001D9E 03                    2240 	.db	3
      001D9F 03                    2241 	.sleb128	3
      001DA0 01                    2242 	.db	1
      001DA1 09                    2243 	.db	9
      001DA2 00 1E                 2244 	.dw	Sstm8s_adc2$ADC2_Init$20-Sstm8s_adc2$ADC2_Init$12
      001DA4 03                    2245 	.db	3
      001DA5 01                    2246 	.sleb128	1
      001DA6 01                    2247 	.db	1
      001DA7 09                    2248 	.db	9
      001DA8 00 9C                 2249 	.dw	Sstm8s_adc2$ADC2_Init$42-Sstm8s_adc2$ADC2_Init$20
      001DAA 03                    2250 	.db	3
      001DAB 01                    2251 	.sleb128	1
      001DAC 01                    2252 	.db	1
      001DAD 09                    2253 	.db	9
      001DAE 00 55                 2254 	.dw	Sstm8s_adc2$ADC2_Init$56-Sstm8s_adc2$ADC2_Init$42
      001DB0 03                    2255 	.db	3
      001DB1 01                    2256 	.sleb128	1
      001DB2 01                    2257 	.db	1
      001DB3 09                    2258 	.db	9
      001DB4 00 1E                 2259 	.dw	Sstm8s_adc2$ADC2_Init$64-Sstm8s_adc2$ADC2_Init$56
      001DB6 03                    2260 	.db	3
      001DB7 01                    2261 	.sleb128	1
      001DB8 01                    2262 	.db	1
      001DB9 09                    2263 	.db	9
      001DBA 00 1E                 2264 	.dw	Sstm8s_adc2$ADC2_Init$72-Sstm8s_adc2$ADC2_Init$64
      001DBC 03                    2265 	.db	3
      001DBD 01                    2266 	.sleb128	1
      001DBE 01                    2267 	.db	1
      001DBF 09                    2268 	.db	9
      001DC0 00 1F                 2269 	.dw	Sstm8s_adc2$ADC2_Init$80-Sstm8s_adc2$ADC2_Init$72
      001DC2 03                    2270 	.db	3
      001DC3 01                    2271 	.sleb128	1
      001DC4 01                    2272 	.db	1
      001DC5 09                    2273 	.db	9
      001DC6 00 A5                 2274 	.dw	Sstm8s_adc2$ADC2_Init$103-Sstm8s_adc2$ADC2_Init$80
      001DC8 03                    2275 	.db	3
      001DC9 01                    2276 	.sleb128	1
      001DCA 01                    2277 	.db	1
      001DCB 09                    2278 	.db	9
      001DCC 00 1E                 2279 	.dw	Sstm8s_adc2$ADC2_Init$111-Sstm8s_adc2$ADC2_Init$103
      001DCE 03                    2280 	.db	3
      001DCF 05                    2281 	.sleb128	5
      001DD0 01                    2282 	.db	1
      001DD1 09                    2283 	.db	9
      001DD2 00 0E                 2284 	.dw	Sstm8s_adc2$ADC2_Init$116-Sstm8s_adc2$ADC2_Init$111
      001DD4 03                    2285 	.db	3
      001DD5 02                    2286 	.sleb128	2
      001DD6 01                    2287 	.db	1
      001DD7 09                    2288 	.db	9
      001DD8 00 07                 2289 	.dw	Sstm8s_adc2$ADC2_Init$119-Sstm8s_adc2$ADC2_Init$116
      001DDA 03                    2290 	.db	3
      001DDB 05                    2291 	.sleb128	5
      001DDC 01                    2292 	.db	1
      001DDD 09                    2293 	.db	9
      001DDE 00 0A                 2294 	.dw	Sstm8s_adc2$ADC2_Init$123-Sstm8s_adc2$ADC2_Init$119
      001DE0 03                    2295 	.db	3
      001DE1 05                    2296 	.sleb128	5
      001DE2 01                    2297 	.db	1
      001DE3 09                    2298 	.db	9
      001DE4 00 0A                 2299 	.dw	Sstm8s_adc2$ADC2_Init$127-Sstm8s_adc2$ADC2_Init$123
      001DE6 03                    2300 	.db	3
      001DE7 03                    2301 	.sleb128	3
      001DE8 01                    2302 	.db	1
      001DE9 09                    2303 	.db	9
      001DEA 00 08                 2304 	.dw	Sstm8s_adc2$ADC2_Init$128-Sstm8s_adc2$ADC2_Init$127
      001DEC 03                    2305 	.db	3
      001DED 01                    2306 	.sleb128	1
      001DEE 01                    2307 	.db	1
      001DEF 09                    2308 	.db	9
      001DF0 00 01                 2309 	.dw	1+Sstm8s_adc2$ADC2_Init$129-Sstm8s_adc2$ADC2_Init$128
      001DF2 00                    2310 	.db	0
      001DF3 01                    2311 	.uleb128	1
      001DF4 01                    2312 	.db	1
      001DF5 00                    2313 	.db	0
      001DF6 05                    2314 	.uleb128	5
      001DF7 02                    2315 	.db	2
      001DF8 00 00 9B B2           2316 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$131)
      001DFC 03                    2317 	.db	3
      001DFD F8 00                 2318 	.sleb128	120
      001DFF 01                    2319 	.db	1
      001E00 09                    2320 	.db	9
      001E01 00 00                 2321 	.dw	Sstm8s_adc2$ADC2_Cmd$133-Sstm8s_adc2$ADC2_Cmd$131
      001E03 03                    2322 	.db	3
      001E04 03                    2323 	.sleb128	3
      001E05 01                    2324 	.db	1
      001E06 09                    2325 	.db	9
      001E07 00 1E                 2326 	.dw	Sstm8s_adc2$ADC2_Cmd$141-Sstm8s_adc2$ADC2_Cmd$133
      001E09 03                    2327 	.db	3
      001E0A 04                    2328 	.sleb128	4
      001E0B 01                    2329 	.db	1
      001E0C 09                    2330 	.db	9
      001E0D 00 03                 2331 	.dw	Sstm8s_adc2$ADC2_Cmd$142-Sstm8s_adc2$ADC2_Cmd$141
      001E0F 03                    2332 	.db	3
      001E10 7E                    2333 	.sleb128	-2
      001E11 01                    2334 	.db	1
      001E12 09                    2335 	.db	9
      001E13 00 07                 2336 	.dw	Sstm8s_adc2$ADC2_Cmd$144-Sstm8s_adc2$ADC2_Cmd$142
      001E15 03                    2337 	.db	3
      001E16 02                    2338 	.sleb128	2
      001E17 01                    2339 	.db	1
      001E18 09                    2340 	.db	9
      001E19 00 08                 2341 	.dw	Sstm8s_adc2$ADC2_Cmd$147-Sstm8s_adc2$ADC2_Cmd$144
      001E1B 03                    2342 	.db	3
      001E1C 04                    2343 	.sleb128	4
      001E1D 01                    2344 	.db	1
      001E1E 09                    2345 	.db	9
      001E1F 00 05                 2346 	.dw	Sstm8s_adc2$ADC2_Cmd$149-Sstm8s_adc2$ADC2_Cmd$147
      001E21 03                    2347 	.db	3
      001E22 02                    2348 	.sleb128	2
      001E23 01                    2349 	.db	1
      001E24 09                    2350 	.db	9
      001E25 00 01                 2351 	.dw	1+Sstm8s_adc2$ADC2_Cmd$150-Sstm8s_adc2$ADC2_Cmd$149
      001E27 00                    2352 	.db	0
      001E28 01                    2353 	.uleb128	1
      001E29 01                    2354 	.db	1
      001E2A 00                    2355 	.db	0
      001E2B 05                    2356 	.uleb128	5
      001E2C 02                    2357 	.db	2
      001E2D 00 00 9B E8           2358 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$152)
      001E31 03                    2359 	.db	3
      001E32 8C 01                 2360 	.sleb128	140
      001E34 01                    2361 	.db	1
      001E35 09                    2362 	.db	9
      001E36 00 00                 2363 	.dw	Sstm8s_adc2$ADC2_ITConfig$154-Sstm8s_adc2$ADC2_ITConfig$152
      001E38 03                    2364 	.db	3
      001E39 03                    2365 	.sleb128	3
      001E3A 01                    2366 	.db	1
      001E3B 09                    2367 	.db	9
      001E3C 00 1E                 2368 	.dw	Sstm8s_adc2$ADC2_ITConfig$162-Sstm8s_adc2$ADC2_ITConfig$154
      001E3E 03                    2369 	.db	3
      001E3F 05                    2370 	.sleb128	5
      001E40 01                    2371 	.db	1
      001E41 09                    2372 	.db	9
      001E42 00 03                 2373 	.dw	Sstm8s_adc2$ADC2_ITConfig$163-Sstm8s_adc2$ADC2_ITConfig$162
      001E44 03                    2374 	.db	3
      001E45 7D                    2375 	.sleb128	-3
      001E46 01                    2376 	.db	1
      001E47 09                    2377 	.db	9
      001E48 00 07                 2378 	.dw	Sstm8s_adc2$ADC2_ITConfig$165-Sstm8s_adc2$ADC2_ITConfig$163
      001E4A 03                    2379 	.db	3
      001E4B 03                    2380 	.sleb128	3
      001E4C 01                    2381 	.db	1
      001E4D 09                    2382 	.db	9
      001E4E 00 08                 2383 	.dw	Sstm8s_adc2$ADC2_ITConfig$168-Sstm8s_adc2$ADC2_ITConfig$165
      001E50 03                    2384 	.db	3
      001E51 05                    2385 	.sleb128	5
      001E52 01                    2386 	.db	1
      001E53 09                    2387 	.db	9
      001E54 00 05                 2388 	.dw	Sstm8s_adc2$ADC2_ITConfig$170-Sstm8s_adc2$ADC2_ITConfig$168
      001E56 03                    2389 	.db	3
      001E57 02                    2390 	.sleb128	2
      001E58 01                    2391 	.db	1
      001E59 09                    2392 	.db	9
      001E5A 00 01                 2393 	.dw	1+Sstm8s_adc2$ADC2_ITConfig$171-Sstm8s_adc2$ADC2_ITConfig$170
      001E5C 00                    2394 	.db	0
      001E5D 01                    2395 	.uleb128	1
      001E5E 01                    2396 	.db	1
      001E5F 00                    2397 	.db	0
      001E60 05                    2398 	.uleb128	5
      001E61 02                    2399 	.db	2
      001E62 00 00 9C 1E           2400 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$173)
      001E66 03                    2401 	.db	3
      001E67 A3 01                 2402 	.sleb128	163
      001E69 01                    2403 	.db	1
      001E6A 09                    2404 	.db	9
      001E6B 00 00                 2405 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$175-Sstm8s_adc2$ADC2_PrescalerConfig$173
      001E6D 03                    2406 	.db	3
      001E6E 03                    2407 	.sleb128	3
      001E6F 01                    2408 	.db	1
      001E70 09                    2409 	.db	9
      001E71 00 55                 2410 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$189-Sstm8s_adc2$ADC2_PrescalerConfig$175
      001E73 03                    2411 	.db	3
      001E74 03                    2412 	.sleb128	3
      001E75 01                    2413 	.db	1
      001E76 09                    2414 	.db	9
      001E77 00 08                 2415 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$190-Sstm8s_adc2$ADC2_PrescalerConfig$189
      001E79 03                    2416 	.db	3
      001E7A 02                    2417 	.sleb128	2
      001E7B 01                    2418 	.db	1
      001E7C 09                    2419 	.db	9
      001E7D 00 08                 2420 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$191-Sstm8s_adc2$ADC2_PrescalerConfig$190
      001E7F 03                    2421 	.db	3
      001E80 01                    2422 	.sleb128	1
      001E81 01                    2423 	.db	1
      001E82 09                    2424 	.db	9
      001E83 00 01                 2425 	.dw	1+Sstm8s_adc2$ADC2_PrescalerConfig$192-Sstm8s_adc2$ADC2_PrescalerConfig$191
      001E85 00                    2426 	.db	0
      001E86 01                    2427 	.uleb128	1
      001E87 01                    2428 	.db	1
      001E88 00                    2429 	.db	0
      001E89 05                    2430 	.uleb128	5
      001E8A 02                    2431 	.db	2
      001E8B 00 00 9C 84           2432 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$194)
      001E8F 03                    2433 	.db	3
      001E90 B6 01                 2434 	.sleb128	182
      001E92 01                    2435 	.db	1
      001E93 09                    2436 	.db	9
      001E94 00 01                 2437 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$197-Sstm8s_adc2$ADC2_SchmittTriggerConfig$194
      001E96 03                    2438 	.db	3
      001E97 03                    2439 	.sleb128	3
      001E98 01                    2440 	.db	1
      001E99 09                    2441 	.db	9
      001E9A 00 B2                 2442 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$220-Sstm8s_adc2$ADC2_SchmittTriggerConfig$197
      001E9C 03                    2443 	.db	3
      001E9D 01                    2444 	.sleb128	1
      001E9E 01                    2445 	.db	1
      001E9F 09                    2446 	.db	9
      001EA0 00 1E                 2447 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$228-Sstm8s_adc2$ADC2_SchmittTriggerConfig$220
      001EA2 03                    2448 	.db	3
      001EA3 02                    2449 	.sleb128	2
      001EA4 01                    2450 	.db	1
      001EA5 09                    2451 	.db	9
      001EA6 00 08                 2452 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$229-Sstm8s_adc2$ADC2_SchmittTriggerConfig$228
      001EA8 03                    2453 	.db	3
      001EA9 04                    2454 	.sleb128	4
      001EAA 01                    2455 	.db	1
      001EAB 09                    2456 	.db	9
      001EAC 00 03                 2457 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$231-Sstm8s_adc2$ADC2_SchmittTriggerConfig$229
      001EAE 03                    2458 	.db	3
      001EAF 7E                    2459 	.sleb128	-2
      001EB0 01                    2460 	.db	1
      001EB1 09                    2461 	.db	9
      001EB2 00 07                 2462 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$233-Sstm8s_adc2$ADC2_SchmittTriggerConfig$231
      001EB4 03                    2463 	.db	3
      001EB5 02                    2464 	.sleb128	2
      001EB6 01                    2465 	.db	1
      001EB7 09                    2466 	.db	9
      001EB8 00 04                 2467 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$234-Sstm8s_adc2$ADC2_SchmittTriggerConfig$233
      001EBA 03                    2468 	.db	3
      001EBB 01                    2469 	.sleb128	1
      001EBC 01                    2470 	.db	1
      001EBD 09                    2471 	.db	9
      001EBE 00 0A                 2472 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$237-Sstm8s_adc2$ADC2_SchmittTriggerConfig$234
      001EC0 03                    2473 	.db	3
      001EC1 04                    2474 	.sleb128	4
      001EC2 01                    2475 	.db	1
      001EC3 09                    2476 	.db	9
      001EC4 00 04                 2477 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$238-Sstm8s_adc2$ADC2_SchmittTriggerConfig$237
      001EC6 03                    2478 	.db	3
      001EC7 01                    2479 	.sleb128	1
      001EC8 01                    2480 	.db	1
      001EC9 09                    2481 	.db	9
      001ECA 00 0A                 2482 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$240-Sstm8s_adc2$ADC2_SchmittTriggerConfig$238
      001ECC 03                    2483 	.db	3
      001ECD 03                    2484 	.sleb128	3
      001ECE 01                    2485 	.db	1
      001ECF 09                    2486 	.db	9
      001ED0 00 09                 2487 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$241-Sstm8s_adc2$ADC2_SchmittTriggerConfig$240
      001ED2 03                    2488 	.db	3
      001ED3 77                    2489 	.sleb128	-9
      001ED4 01                    2490 	.db	1
      001ED5 09                    2491 	.db	9
      001ED6 00 05                 2492 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$242-Sstm8s_adc2$ADC2_SchmittTriggerConfig$241
      001ED8 03                    2493 	.db	3
      001ED9 0D                    2494 	.sleb128	13
      001EDA 01                    2495 	.db	1
      001EDB 09                    2496 	.db	9
      001EDC 00 0D                 2497 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$246-Sstm8s_adc2$ADC2_SchmittTriggerConfig$242
      001EDE 03                    2498 	.db	3
      001EDF 7E                    2499 	.sleb128	-2
      001EE0 01                    2500 	.db	1
      001EE1 09                    2501 	.db	9
      001EE2 00 07                 2502 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$248-Sstm8s_adc2$ADC2_SchmittTriggerConfig$246
      001EE4 03                    2503 	.db	3
      001EE5 02                    2504 	.sleb128	2
      001EE6 01                    2505 	.db	1
      001EE7 09                    2506 	.db	9
      001EE8 00 09                 2507 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$251-Sstm8s_adc2$ADC2_SchmittTriggerConfig$248
      001EEA 03                    2508 	.db	3
      001EEB 04                    2509 	.sleb128	4
      001EEC 01                    2510 	.db	1
      001EED 09                    2511 	.db	9
      001EEE 00 08                 2512 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$253-Sstm8s_adc2$ADC2_SchmittTriggerConfig$251
      001EF0 03                    2513 	.db	3
      001EF1 70                    2514 	.sleb128	-16
      001EF2 01                    2515 	.db	1
      001EF3 09                    2516 	.db	9
      001EF4 00 05                 2517 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$254-Sstm8s_adc2$ADC2_SchmittTriggerConfig$253
      001EF6 03                    2518 	.db	3
      001EF7 17                    2519 	.sleb128	23
      001EF8 01                    2520 	.db	1
      001EF9 09                    2521 	.db	9
      001EFA 00 12                 2522 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$258-Sstm8s_adc2$ADC2_SchmittTriggerConfig$254
      001EFC 03                    2523 	.db	3
      001EFD 7E                    2524 	.sleb128	-2
      001EFE 01                    2525 	.db	1
      001EFF 09                    2526 	.db	9
      001F00 00 07                 2527 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$260-Sstm8s_adc2$ADC2_SchmittTriggerConfig$258
      001F02 03                    2528 	.db	3
      001F03 02                    2529 	.sleb128	2
      001F04 01                    2530 	.db	1
      001F05 09                    2531 	.db	9
      001F06 00 09                 2532 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$263-Sstm8s_adc2$ADC2_SchmittTriggerConfig$260
      001F08 03                    2533 	.db	3
      001F09 04                    2534 	.sleb128	4
      001F0A 01                    2535 	.db	1
      001F0B 09                    2536 	.db	9
      001F0C 00 05                 2537 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$265-Sstm8s_adc2$ADC2_SchmittTriggerConfig$263
      001F0E 03                    2538 	.db	3
      001F0F 03                    2539 	.sleb128	3
      001F10 01                    2540 	.db	1
      001F11 09                    2541 	.db	9
      001F12 00 02                 2542 	.dw	1+Sstm8s_adc2$ADC2_SchmittTriggerConfig$267-Sstm8s_adc2$ADC2_SchmittTriggerConfig$265
      001F14 00                    2543 	.db	0
      001F15 01                    2544 	.uleb128	1
      001F16 01                    2545 	.db	1
      001F17 00                    2546 	.db	0
      001F18 05                    2547 	.uleb128	5
      001F19 02                    2548 	.db	2
      001F1A 00 00 9D E4           2549 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$269)
      001F1E 03                    2550 	.db	3
      001F1F EB 01                 2551 	.sleb128	235
      001F21 01                    2552 	.db	1
      001F22 09                    2553 	.db	9
      001F23 00 01                 2554 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$272-Sstm8s_adc2$ADC2_ConversionConfig$269
      001F25 03                    2555 	.db	3
      001F26 03                    2556 	.sleb128	3
      001F27 01                    2557 	.db	1
      001F28 09                    2558 	.db	9
      001F29 00 2B                 2559 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$280-Sstm8s_adc2$ADC2_ConversionConfig$272
      001F2B 03                    2560 	.db	3
      001F2C 01                    2561 	.sleb128	1
      001F2D 01                    2562 	.db	1
      001F2E 09                    2563 	.db	9
      001F2F 00 9C                 2564 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$302-Sstm8s_adc2$ADC2_ConversionConfig$280
      001F31 03                    2565 	.db	3
      001F32 01                    2566 	.sleb128	1
      001F33 01                    2567 	.db	1
      001F34 09                    2568 	.db	9
      001F35 00 1F                 2569 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$310-Sstm8s_adc2$ADC2_ConversionConfig$302
      001F37 03                    2570 	.db	3
      001F38 03                    2571 	.sleb128	3
      001F39 01                    2572 	.db	1
      001F3A 09                    2573 	.db	9
      001F3B 00 08                 2574 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$311-Sstm8s_adc2$ADC2_ConversionConfig$310
      001F3D 03                    2575 	.db	3
      001F3E 02                    2576 	.sleb128	2
      001F3F 01                    2577 	.db	1
      001F40 09                    2578 	.db	9
      001F41 00 08                 2579 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$312-Sstm8s_adc2$ADC2_ConversionConfig$311
      001F43 03                    2580 	.db	3
      001F44 05                    2581 	.sleb128	5
      001F45 01                    2582 	.db	1
      001F46 09                    2583 	.db	9
      001F47 00 04                 2584 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$313-Sstm8s_adc2$ADC2_ConversionConfig$312
      001F49 03                    2585 	.db	3
      001F4A 7D                    2586 	.sleb128	-3
      001F4B 01                    2587 	.db	1
      001F4C 09                    2588 	.db	9
      001F4D 00 08                 2589 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$315-Sstm8s_adc2$ADC2_ConversionConfig$313
      001F4F 03                    2590 	.db	3
      001F50 03                    2591 	.sleb128	3
      001F51 01                    2592 	.db	1
      001F52 09                    2593 	.db	9
      001F53 00 09                 2594 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$318-Sstm8s_adc2$ADC2_ConversionConfig$315
      001F55 03                    2595 	.db	3
      001F56 05                    2596 	.sleb128	5
      001F57 01                    2597 	.db	1
      001F58 09                    2598 	.db	9
      001F59 00 06                 2599 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$320-Sstm8s_adc2$ADC2_ConversionConfig$318
      001F5B 03                    2600 	.db	3
      001F5C 04                    2601 	.sleb128	4
      001F5D 01                    2602 	.db	1
      001F5E 09                    2603 	.db	9
      001F5F 00 08                 2604 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$321-Sstm8s_adc2$ADC2_ConversionConfig$320
      001F61 03                    2605 	.db	3
      001F62 02                    2606 	.sleb128	2
      001F63 01                    2607 	.db	1
      001F64 09                    2608 	.db	9
      001F65 00 08                 2609 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$322-Sstm8s_adc2$ADC2_ConversionConfig$321
      001F67 03                    2610 	.db	3
      001F68 01                    2611 	.sleb128	1
      001F69 01                    2612 	.db	1
      001F6A 09                    2613 	.db	9
      001F6B 00 02                 2614 	.dw	1+Sstm8s_adc2$ADC2_ConversionConfig$324-Sstm8s_adc2$ADC2_ConversionConfig$322
      001F6D 00                    2615 	.db	0
      001F6E 01                    2616 	.uleb128	1
      001F6F 01                    2617 	.db	1
      001F70 00                    2618 	.db	0
      001F71 05                    2619 	.uleb128	5
      001F72 02                    2620 	.db	2
      001F73 00 00 9F 08           2621 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$326)
      001F77 03                    2622 	.db	3
      001F78 92 02                 2623 	.sleb128	274
      001F7A 01                    2624 	.db	1
      001F7B 09                    2625 	.db	9
      001F7C 00 00                 2626 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$328-Sstm8s_adc2$ADC2_ExternalTriggerConfig$326
      001F7E 03                    2627 	.db	3
      001F7F 03                    2628 	.sleb128	3
      001F80 01                    2629 	.db	1
      001F81 09                    2630 	.db	9
      001F82 00 1E                 2631 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$336-Sstm8s_adc2$ADC2_ExternalTriggerConfig$328
      001F84 03                    2632 	.db	3
      001F85 01                    2633 	.sleb128	1
      001F86 01                    2634 	.db	1
      001F87 09                    2635 	.db	9
      001F88 00 1E                 2636 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$344-Sstm8s_adc2$ADC2_ExternalTriggerConfig$336
      001F8A 03                    2637 	.db	3
      001F8B 03                    2638 	.sleb128	3
      001F8C 01                    2639 	.db	1
      001F8D 09                    2640 	.db	9
      001F8E 00 0B                 2641 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$345-Sstm8s_adc2$ADC2_ExternalTriggerConfig$344
      001F90 03                    2642 	.db	3
      001F91 02                    2643 	.sleb128	2
      001F92 01                    2644 	.db	1
      001F93 09                    2645 	.db	9
      001F94 00 07                 2646 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$347-Sstm8s_adc2$ADC2_ExternalTriggerConfig$345
      001F96 03                    2647 	.db	3
      001F97 03                    2648 	.sleb128	3
      001F98 01                    2649 	.db	1
      001F99 09                    2650 	.db	9
      001F9A 00 08                 2651 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$350-Sstm8s_adc2$ADC2_ExternalTriggerConfig$347
      001F9C 03                    2652 	.db	3
      001F9D 05                    2653 	.sleb128	5
      001F9E 01                    2654 	.db	1
      001F9F 09                    2655 	.db	9
      001FA0 00 05                 2656 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$352-Sstm8s_adc2$ADC2_ExternalTriggerConfig$350
      001FA2 03                    2657 	.db	3
      001FA3 04                    2658 	.sleb128	4
      001FA4 01                    2659 	.db	1
      001FA5 09                    2660 	.db	9
      001FA6 00 08                 2661 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$353-Sstm8s_adc2$ADC2_ExternalTriggerConfig$352
      001FA8 03                    2662 	.db	3
      001FA9 01                    2663 	.sleb128	1
      001FAA 01                    2664 	.db	1
      001FAB 09                    2665 	.db	9
      001FAC 00 01                 2666 	.dw	1+Sstm8s_adc2$ADC2_ExternalTriggerConfig$354-Sstm8s_adc2$ADC2_ExternalTriggerConfig$353
      001FAE 00                    2667 	.db	0
      001FAF 01                    2668 	.uleb128	1
      001FB0 01                    2669 	.db	1
      001FB1 00                    2670 	.db	0
      001FB2 05                    2671 	.uleb128	5
      001FB3 02                    2672 	.db	2
      001FB4 00 00 9F 6C           2673 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$356)
      001FB8 03                    2674 	.db	3
      001FB9 B3 02                 2675 	.sleb128	307
      001FBB 01                    2676 	.db	1
      001FBC 09                    2677 	.db	9
      001FBD 00 00                 2678 	.dw	Sstm8s_adc2$ADC2_StartConversion$358-Sstm8s_adc2$ADC2_StartConversion$356
      001FBF 03                    2679 	.db	3
      001FC0 02                    2680 	.sleb128	2
      001FC1 01                    2681 	.db	1
      001FC2 09                    2682 	.db	9
      001FC3 00 08                 2683 	.dw	Sstm8s_adc2$ADC2_StartConversion$359-Sstm8s_adc2$ADC2_StartConversion$358
      001FC5 03                    2684 	.db	3
      001FC6 01                    2685 	.sleb128	1
      001FC7 01                    2686 	.db	1
      001FC8 09                    2687 	.db	9
      001FC9 00 01                 2688 	.dw	1+Sstm8s_adc2$ADC2_StartConversion$360-Sstm8s_adc2$ADC2_StartConversion$359
      001FCB 00                    2689 	.db	0
      001FCC 01                    2690 	.uleb128	1
      001FCD 01                    2691 	.db	1
      001FCE 00                    2692 	.db	0
      001FCF 05                    2693 	.uleb128	5
      001FD0 02                    2694 	.db	2
      001FD1 00 00 9F 75           2695 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$362)
      001FD5 03                    2696 	.db	3
      001FD6 BF 02                 2697 	.sleb128	319
      001FD8 01                    2698 	.db	1
      001FD9 09                    2699 	.db	9
      001FDA 00 02                 2700 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$365-Sstm8s_adc2$ADC2_GetConversionValue$362
      001FDC 03                    2701 	.db	3
      001FDD 05                    2702 	.sleb128	5
      001FDE 01                    2703 	.db	1
      001FDF 09                    2704 	.db	9
      001FE0 00 0A                 2705 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$367-Sstm8s_adc2$ADC2_GetConversionValue$365
      001FE2 03                    2706 	.db	3
      001FE3 03                    2707 	.sleb128	3
      001FE4 01                    2708 	.db	1
      001FE5 09                    2709 	.db	9
      001FE6 00 04                 2710 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$368-Sstm8s_adc2$ADC2_GetConversionValue$367
      001FE8 03                    2711 	.db	3
      001FE9 02                    2712 	.sleb128	2
      001FEA 01                    2713 	.db	1
      001FEB 09                    2714 	.db	9
      001FEC 00 05                 2715 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$369-Sstm8s_adc2$ADC2_GetConversionValue$368
      001FEE 03                    2716 	.db	3
      001FEF 02                    2717 	.sleb128	2
      001FF0 01                    2718 	.db	1
      001FF1 09                    2719 	.db	9
      001FF2 00 10                 2720 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$372-Sstm8s_adc2$ADC2_GetConversionValue$369
      001FF4 03                    2721 	.db	3
      001FF5 05                    2722 	.sleb128	5
      001FF6 01                    2723 	.db	1
      001FF7 09                    2724 	.db	9
      001FF8 00 06                 2725 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$373-Sstm8s_adc2$ADC2_GetConversionValue$372
      001FFA 03                    2726 	.db	3
      001FFB 02                    2727 	.sleb128	2
      001FFC 01                    2728 	.db	1
      001FFD 09                    2729 	.db	9
      001FFE 00 03                 2730 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$374-Sstm8s_adc2$ADC2_GetConversionValue$373
      002000 03                    2731 	.db	3
      002001 02                    2732 	.sleb128	2
      002002 01                    2733 	.db	1
      002003 09                    2734 	.db	9
      002004 00 15                 2735 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$376-Sstm8s_adc2$ADC2_GetConversionValue$374
      002006 03                    2736 	.db	3
      002007 03                    2737 	.sleb128	3
      002008 01                    2738 	.db	1
      002009 09                    2739 	.db	9
      00200A 00 02                 2740 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$377-Sstm8s_adc2$ADC2_GetConversionValue$376
      00200C 03                    2741 	.db	3
      00200D 01                    2742 	.sleb128	1
      00200E 01                    2743 	.db	1
      00200F 09                    2744 	.db	9
      002010 00 03                 2745 	.dw	1+Sstm8s_adc2$ADC2_GetConversionValue$379-Sstm8s_adc2$ADC2_GetConversionValue$377
      002012 00                    2746 	.db	0
      002013 01                    2747 	.uleb128	1
      002014 01                    2748 	.db	1
      002015 00                    2749 	.db	0
      002016 05                    2750 	.uleb128	5
      002017 02                    2751 	.db	2
      002018 00 00 9F BD           2752 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$381)
      00201C 03                    2753 	.db	3
      00201D DF 02                 2754 	.sleb128	351
      00201F 01                    2755 	.db	1
      002020 09                    2756 	.db	9
      002021 00 00                 2757 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$383-Sstm8s_adc2$ADC2_GetFlagStatus$381
      002023 03                    2758 	.db	3
      002024 03                    2759 	.sleb128	3
      002025 01                    2760 	.db	1
      002026 09                    2761 	.db	9
      002027 00 05                 2762 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$384-Sstm8s_adc2$ADC2_GetFlagStatus$383
      002029 03                    2763 	.db	3
      00202A 01                    2764 	.sleb128	1
      00202B 01                    2765 	.db	1
      00202C 09                    2766 	.db	9
      00202D 00 01                 2767 	.dw	1+Sstm8s_adc2$ADC2_GetFlagStatus$385-Sstm8s_adc2$ADC2_GetFlagStatus$384
      00202F 00                    2768 	.db	0
      002030 01                    2769 	.uleb128	1
      002031 01                    2770 	.db	1
      002032 00                    2771 	.db	0
      002033 05                    2772 	.uleb128	5
      002034 02                    2773 	.db	2
      002035 00 00 9F C3           2774 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$387)
      002039 03                    2775 	.db	3
      00203A EA 02                 2776 	.sleb128	362
      00203C 01                    2777 	.db	1
      00203D 09                    2778 	.db	9
      00203E 00 00                 2779 	.dw	Sstm8s_adc2$ADC2_ClearFlag$389-Sstm8s_adc2$ADC2_ClearFlag$387
      002040 03                    2780 	.db	3
      002041 02                    2781 	.sleb128	2
      002042 01                    2782 	.db	1
      002043 09                    2783 	.db	9
      002044 00 08                 2784 	.dw	Sstm8s_adc2$ADC2_ClearFlag$390-Sstm8s_adc2$ADC2_ClearFlag$389
      002046 03                    2785 	.db	3
      002047 01                    2786 	.sleb128	1
      002048 01                    2787 	.db	1
      002049 09                    2788 	.db	9
      00204A 00 01                 2789 	.dw	1+Sstm8s_adc2$ADC2_ClearFlag$391-Sstm8s_adc2$ADC2_ClearFlag$390
      00204C 00                    2790 	.db	0
      00204D 01                    2791 	.uleb128	1
      00204E 01                    2792 	.db	1
      00204F 00                    2793 	.db	0
      002050 05                    2794 	.uleb128	5
      002051 02                    2795 	.db	2
      002052 00 00 9F CC           2796 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$393)
      002056 03                    2797 	.db	3
      002057 F5 02                 2798 	.sleb128	373
      002059 01                    2799 	.db	1
      00205A 09                    2800 	.db	9
      00205B 00 00                 2801 	.dw	Sstm8s_adc2$ADC2_GetITStatus$395-Sstm8s_adc2$ADC2_GetITStatus$393
      00205D 03                    2802 	.db	3
      00205E 02                    2803 	.sleb128	2
      00205F 01                    2804 	.db	1
      002060 09                    2805 	.db	9
      002061 00 05                 2806 	.dw	Sstm8s_adc2$ADC2_GetITStatus$396-Sstm8s_adc2$ADC2_GetITStatus$395
      002063 03                    2807 	.db	3
      002064 01                    2808 	.sleb128	1
      002065 01                    2809 	.db	1
      002066 09                    2810 	.db	9
      002067 00 01                 2811 	.dw	1+Sstm8s_adc2$ADC2_GetITStatus$397-Sstm8s_adc2$ADC2_GetITStatus$396
      002069 00                    2812 	.db	0
      00206A 01                    2813 	.uleb128	1
      00206B 01                    2814 	.db	1
      00206C 00                    2815 	.db	0
      00206D 05                    2816 	.uleb128	5
      00206E 02                    2817 	.db	2
      00206F 00 00 9F D2           2818 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$399)
      002073 03                    2819 	.db	3
      002074 FF 02                 2820 	.sleb128	383
      002076 01                    2821 	.db	1
      002077 09                    2822 	.db	9
      002078 00 00                 2823 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$401-Sstm8s_adc2$ADC2_ClearITPendingBit$399
      00207A 03                    2824 	.db	3
      00207B 02                    2825 	.sleb128	2
      00207C 01                    2826 	.db	1
      00207D 09                    2827 	.db	9
      00207E 00 08                 2828 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$402-Sstm8s_adc2$ADC2_ClearITPendingBit$401
      002080 03                    2829 	.db	3
      002081 01                    2830 	.sleb128	1
      002082 01                    2831 	.db	1
      002083 09                    2832 	.db	9
      002084 00 01                 2833 	.dw	1+Sstm8s_adc2$ADC2_ClearITPendingBit$403-Sstm8s_adc2$ADC2_ClearITPendingBit$402
      002086 00                    2834 	.db	0
      002087 01                    2835 	.uleb128	1
      002088 01                    2836 	.db	1
      002089                       2837 Ldebug_line_end:
                                   2838 
                                   2839 	.area .debug_loc (NOLOAD)
      0032F8                       2840 Ldebug_loc_start:
      0032F8 00 00 9F D2           2841 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)
      0032FC 00 00 9F DB           2842 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$404)
      003300 00 02                 2843 	.dw	2
      003302 78                    2844 	.db	120
      003303 01                    2845 	.sleb128	1
      003304 00 00 00 00           2846 	.dw	0,0
      003308 00 00 00 00           2847 	.dw	0,0
      00330C 00 00 9F CC           2848 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)
      003310 00 00 9F D2           2849 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$398)
      003314 00 02                 2850 	.dw	2
      003316 78                    2851 	.db	120
      003317 01                    2852 	.sleb128	1
      003318 00 00 00 00           2853 	.dw	0,0
      00331C 00 00 00 00           2854 	.dw	0,0
      003320 00 00 9F C3           2855 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)
      003324 00 00 9F CC           2856 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$392)
      003328 00 02                 2857 	.dw	2
      00332A 78                    2858 	.db	120
      00332B 01                    2859 	.sleb128	1
      00332C 00 00 00 00           2860 	.dw	0,0
      003330 00 00 00 00           2861 	.dw	0,0
      003334 00 00 9F BD           2862 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)
      003338 00 00 9F C3           2863 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$386)
      00333C 00 02                 2864 	.dw	2
      00333E 78                    2865 	.db	120
      00333F 01                    2866 	.sleb128	1
      003340 00 00 00 00           2867 	.dw	0,0
      003344 00 00 00 00           2868 	.dw	0,0
      003348 00 00 9F BC           2869 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
      00334C 00 00 9F BD           2870 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$380)
      003350 00 02                 2871 	.dw	2
      003352 78                    2872 	.db	120
      003353 01                    2873 	.sleb128	1
      003354 00 00 9F 77           2874 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
      003358 00 00 9F BC           2875 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
      00335C 00 02                 2876 	.dw	2
      00335E 78                    2877 	.db	120
      00335F 05                    2878 	.sleb128	5
      003360 00 00 9F 75           2879 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)
      003364 00 00 9F 77           2880 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
      003368 00 02                 2881 	.dw	2
      00336A 78                    2882 	.db	120
      00336B 01                    2883 	.sleb128	1
      00336C 00 00 00 00           2884 	.dw	0,0
      003370 00 00 00 00           2885 	.dw	0,0
      003374 00 00 9F 6C           2886 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)
      003378 00 00 9F 75           2887 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$361)
      00337C 00 02                 2888 	.dw	2
      00337E 78                    2889 	.db	120
      00337F 01                    2890 	.sleb128	1
      003380 00 00 00 00           2891 	.dw	0,0
      003384 00 00 00 00           2892 	.dw	0,0
      003388 00 00 9F 44           2893 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
      00338C 00 00 9F 6C           2894 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$355)
      003390 00 02                 2895 	.dw	2
      003392 78                    2896 	.db	120
      003393 01                    2897 	.sleb128	1
      003394 00 00 9F 3F           2898 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
      003398 00 00 9F 44           2899 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
      00339C 00 02                 2900 	.dw	2
      00339E 78                    2901 	.db	120
      00339F 07                    2902 	.sleb128	7
      0033A0 00 00 9F 3D           2903 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
      0033A4 00 00 9F 3F           2904 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
      0033A8 00 02                 2905 	.dw	2
      0033AA 78                    2906 	.db	120
      0033AB 06                    2907 	.sleb128	6
      0033AC 00 00 9F 3B           2908 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
      0033B0 00 00 9F 3D           2909 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
      0033B4 00 02                 2910 	.dw	2
      0033B6 78                    2911 	.db	120
      0033B7 05                    2912 	.sleb128	5
      0033B8 00 00 9F 39           2913 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
      0033BC 00 00 9F 3B           2914 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
      0033C0 00 02                 2915 	.dw	2
      0033C2 78                    2916 	.db	120
      0033C3 03                    2917 	.sleb128	3
      0033C4 00 00 9F 37           2918 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
      0033C8 00 00 9F 39           2919 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
      0033CC 00 02                 2920 	.dw	2
      0033CE 78                    2921 	.db	120
      0033CF 02                    2922 	.sleb128	2
      0033D0 00 00 9F 35           2923 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
      0033D4 00 00 9F 37           2924 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
      0033D8 00 02                 2925 	.dw	2
      0033DA 78                    2926 	.db	120
      0033DB 01                    2927 	.sleb128	1
      0033DC 00 00 9F 26           2928 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
      0033E0 00 00 9F 35           2929 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
      0033E4 00 02                 2930 	.dw	2
      0033E6 78                    2931 	.db	120
      0033E7 01                    2932 	.sleb128	1
      0033E8 00 00 9F 21           2933 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
      0033EC 00 00 9F 26           2934 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
      0033F0 00 02                 2935 	.dw	2
      0033F2 78                    2936 	.db	120
      0033F3 07                    2937 	.sleb128	7
      0033F4 00 00 9F 1F           2938 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
      0033F8 00 00 9F 21           2939 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
      0033FC 00 02                 2940 	.dw	2
      0033FE 78                    2941 	.db	120
      0033FF 06                    2942 	.sleb128	6
      003400 00 00 9F 1D           2943 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
      003404 00 00 9F 1F           2944 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
      003408 00 02                 2945 	.dw	2
      00340A 78                    2946 	.db	120
      00340B 05                    2947 	.sleb128	5
      00340C 00 00 9F 1B           2948 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
      003410 00 00 9F 1D           2949 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
      003414 00 02                 2950 	.dw	2
      003416 78                    2951 	.db	120
      003417 03                    2952 	.sleb128	3
      003418 00 00 9F 19           2953 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
      00341C 00 00 9F 1B           2954 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
      003420 00 02                 2955 	.dw	2
      003422 78                    2956 	.db	120
      003423 02                    2957 	.sleb128	2
      003424 00 00 9F 17           2958 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
      003428 00 00 9F 19           2959 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
      00342C 00 02                 2960 	.dw	2
      00342E 78                    2961 	.db	120
      00342F 01                    2962 	.sleb128	1
      003430 00 00 9F 08           2963 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)
      003434 00 00 9F 17           2964 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
      003438 00 02                 2965 	.dw	2
      00343A 78                    2966 	.db	120
      00343B 01                    2967 	.sleb128	1
      00343C 00 00 00 00           2968 	.dw	0,0
      003440 00 00 00 00           2969 	.dw	0,0
      003444 00 00 9F 07           2970 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
      003448 00 00 9F 08           2971 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$325)
      00344C 00 02                 2972 	.dw	2
      00344E 78                    2973 	.db	120
      00344F 01                    2974 	.sleb128	1
      003450 00 00 9E CB           2975 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
      003454 00 00 9F 07           2976 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
      003458 00 02                 2977 	.dw	2
      00345A 78                    2978 	.db	120
      00345B 02                    2979 	.sleb128	2
      00345C 00 00 9E C6           2980 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
      003460 00 00 9E CB           2981 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
      003464 00 02                 2982 	.dw	2
      003466 78                    2983 	.db	120
      003467 08                    2984 	.sleb128	8
      003468 00 00 9E C4           2985 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
      00346C 00 00 9E C6           2986 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
      003470 00 02                 2987 	.dw	2
      003472 78                    2988 	.db	120
      003473 07                    2989 	.sleb128	7
      003474 00 00 9E C2           2990 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
      003478 00 00 9E C4           2991 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
      00347C 00 02                 2992 	.dw	2
      00347E 78                    2993 	.db	120
      00347F 06                    2994 	.sleb128	6
      003480 00 00 9E C0           2995 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
      003484 00 00 9E C2           2996 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
      003488 00 02                 2997 	.dw	2
      00348A 78                    2998 	.db	120
      00348B 05                    2999 	.sleb128	5
      00348C 00 00 9E BE           3000 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
      003490 00 00 9E C0           3001 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
      003494 00 02                 3002 	.dw	2
      003496 78                    3003 	.db	120
      003497 03                    3004 	.sleb128	3
      003498 00 00 9E BC           3005 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
      00349C 00 00 9E BE           3006 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
      0034A0 00 02                 3007 	.dw	2
      0034A2 78                    3008 	.db	120
      0034A3 02                    3009 	.sleb128	2
      0034A4 00 00 9E AC           3010 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
      0034A8 00 00 9E BC           3011 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
      0034AC 00 02                 3012 	.dw	2
      0034AE 78                    3013 	.db	120
      0034AF 02                    3014 	.sleb128	2
      0034B0 00 00 9E A7           3015 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
      0034B4 00 00 9E AC           3016 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
      0034B8 00 02                 3017 	.dw	2
      0034BA 78                    3018 	.db	120
      0034BB 08                    3019 	.sleb128	8
      0034BC 00 00 9E A5           3020 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
      0034C0 00 00 9E A7           3021 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
      0034C4 00 02                 3022 	.dw	2
      0034C6 78                    3023 	.db	120
      0034C7 07                    3024 	.sleb128	7
      0034C8 00 00 9E A3           3025 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
      0034CC 00 00 9E A5           3026 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
      0034D0 00 02                 3027 	.dw	2
      0034D2 78                    3028 	.db	120
      0034D3 06                    3029 	.sleb128	6
      0034D4 00 00 9E A1           3030 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
      0034D8 00 00 9E A3           3031 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
      0034DC 00 02                 3032 	.dw	2
      0034DE 78                    3033 	.db	120
      0034DF 05                    3034 	.sleb128	5
      0034E0 00 00 9E 9F           3035 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
      0034E4 00 00 9E A1           3036 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
      0034E8 00 02                 3037 	.dw	2
      0034EA 78                    3038 	.db	120
      0034EB 03                    3039 	.sleb128	3
      0034EC 00 00 9E 9D           3040 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
      0034F0 00 00 9E 9F           3041 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
      0034F4 00 02                 3042 	.dw	2
      0034F6 78                    3043 	.db	120
      0034F7 02                    3044 	.sleb128	2
      0034F8 00 00 9E 94           3045 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
      0034FC 00 00 9E 9D           3046 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
      003500 00 02                 3047 	.dw	2
      003502 78                    3048 	.db	120
      003503 02                    3049 	.sleb128	2
      003504 00 00 9E 8B           3050 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
      003508 00 00 9E 94           3051 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
      00350C 00 02                 3052 	.dw	2
      00350E 78                    3053 	.db	120
      00350F 02                    3054 	.sleb128	2
      003510 00 00 9E 82           3055 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
      003514 00 00 9E 8B           3056 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
      003518 00 02                 3057 	.dw	2
      00351A 78                    3058 	.db	120
      00351B 02                    3059 	.sleb128	2
      00351C 00 00 9E 79           3060 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
      003520 00 00 9E 82           3061 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
      003524 00 02                 3062 	.dw	2
      003526 78                    3063 	.db	120
      003527 02                    3064 	.sleb128	2
      003528 00 00 9E 70           3065 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
      00352C 00 00 9E 79           3066 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
      003530 00 02                 3067 	.dw	2
      003532 78                    3068 	.db	120
      003533 02                    3069 	.sleb128	2
      003534 00 00 9E 67           3070 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
      003538 00 00 9E 70           3071 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
      00353C 00 02                 3072 	.dw	2
      00353E 78                    3073 	.db	120
      00353F 02                    3074 	.sleb128	2
      003540 00 00 9E 5E           3075 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
      003544 00 00 9E 67           3076 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
      003548 00 02                 3077 	.dw	2
      00354A 78                    3078 	.db	120
      00354B 02                    3079 	.sleb128	2
      00354C 00 00 9E 55           3080 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
      003550 00 00 9E 5E           3081 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
      003554 00 02                 3082 	.dw	2
      003556 78                    3083 	.db	120
      003557 02                    3084 	.sleb128	2
      003558 00 00 9E 4C           3085 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
      00355C 00 00 9E 55           3086 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
      003560 00 02                 3087 	.dw	2
      003562 78                    3088 	.db	120
      003563 02                    3089 	.sleb128	2
      003564 00 00 9E 43           3090 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
      003568 00 00 9E 4C           3091 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
      00356C 00 02                 3092 	.dw	2
      00356E 78                    3093 	.db	120
      00356F 02                    3094 	.sleb128	2
      003570 00 00 9E 3A           3095 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
      003574 00 00 9E 43           3096 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
      003578 00 02                 3097 	.dw	2
      00357A 78                    3098 	.db	120
      00357B 02                    3099 	.sleb128	2
      00357C 00 00 9E 31           3100 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
      003580 00 00 9E 3A           3101 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
      003584 00 02                 3102 	.dw	2
      003586 78                    3103 	.db	120
      003587 02                    3104 	.sleb128	2
      003588 00 00 9E 28           3105 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
      00358C 00 00 9E 31           3106 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
      003590 00 02                 3107 	.dw	2
      003592 78                    3108 	.db	120
      003593 02                    3109 	.sleb128	2
      003594 00 00 9E 1F           3110 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
      003598 00 00 9E 28           3111 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
      00359C 00 02                 3112 	.dw	2
      00359E 78                    3113 	.db	120
      00359F 02                    3114 	.sleb128	2
      0035A0 00 00 9E 10           3115 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
      0035A4 00 00 9E 1F           3116 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
      0035A8 00 02                 3117 	.dw	2
      0035AA 78                    3118 	.db	120
      0035AB 02                    3119 	.sleb128	2
      0035AC 00 00 9E 0B           3120 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
      0035B0 00 00 9E 10           3121 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
      0035B4 00 02                 3122 	.dw	2
      0035B6 78                    3123 	.db	120
      0035B7 08                    3124 	.sleb128	8
      0035B8 00 00 9E 09           3125 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
      0035BC 00 00 9E 0B           3126 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
      0035C0 00 02                 3127 	.dw	2
      0035C2 78                    3128 	.db	120
      0035C3 07                    3129 	.sleb128	7
      0035C4 00 00 9E 07           3130 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
      0035C8 00 00 9E 09           3131 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
      0035CC 00 02                 3132 	.dw	2
      0035CE 78                    3133 	.db	120
      0035CF 06                    3134 	.sleb128	6
      0035D0 00 00 9E 05           3135 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
      0035D4 00 00 9E 07           3136 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
      0035D8 00 02                 3137 	.dw	2
      0035DA 78                    3138 	.db	120
      0035DB 05                    3139 	.sleb128	5
      0035DC 00 00 9E 03           3140 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
      0035E0 00 00 9E 05           3141 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
      0035E4 00 02                 3142 	.dw	2
      0035E6 78                    3143 	.db	120
      0035E7 03                    3144 	.sleb128	3
      0035E8 00 00 9D F3           3145 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
      0035EC 00 00 9E 03           3146 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
      0035F0 00 02                 3147 	.dw	2
      0035F2 78                    3148 	.db	120
      0035F3 02                    3149 	.sleb128	2
      0035F4 00 00 9D E5           3150 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
      0035F8 00 00 9D F3           3151 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
      0035FC 00 02                 3152 	.dw	2
      0035FE 78                    3153 	.db	120
      0035FF 02                    3154 	.sleb128	2
      003600 00 00 9D E4           3155 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)
      003604 00 00 9D E5           3156 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
      003608 00 02                 3157 	.dw	2
      00360A 78                    3158 	.db	120
      00360B 01                    3159 	.sleb128	1
      00360C 00 00 00 00           3160 	.dw	0,0
      003610 00 00 00 00           3161 	.dw	0,0
      003614 00 00 9D E3           3162 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
      003618 00 00 9D E4           3163 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$268)
      00361C 00 02                 3164 	.dw	2
      00361E 78                    3165 	.db	120
      00361F 01                    3166 	.sleb128	1
      003620 00 00 9D CD           3167 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
      003624 00 00 9D E3           3168 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
      003628 00 02                 3169 	.dw	2
      00362A 78                    3170 	.db	120
      00362B 02                    3171 	.sleb128	2
      00362C 00 00 9D C3           3172 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
      003630 00 00 9D CD           3173 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
      003634 00 02                 3174 	.dw	2
      003636 78                    3175 	.db	120
      003637 03                    3176 	.sleb128	3
      003638 00 00 9D 9E           3177 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
      00363C 00 00 9D C3           3178 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
      003640 00 02                 3179 	.dw	2
      003642 78                    3180 	.db	120
      003643 02                    3181 	.sleb128	2
      003644 00 00 9D 94           3182 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
      003648 00 00 9D 9E           3183 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
      00364C 00 02                 3184 	.dw	2
      00364E 78                    3185 	.db	120
      00364F 03                    3186 	.sleb128	3
      003650 00 00 9D 55           3187 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
      003654 00 00 9D 94           3188 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
      003658 00 02                 3189 	.dw	2
      00365A 78                    3190 	.db	120
      00365B 02                    3191 	.sleb128	2
      00365C 00 00 9D 50           3192 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
      003660 00 00 9D 55           3193 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
      003664 00 02                 3194 	.dw	2
      003666 78                    3195 	.db	120
      003667 08                    3196 	.sleb128	8
      003668 00 00 9D 4E           3197 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
      00366C 00 00 9D 50           3198 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
      003670 00 02                 3199 	.dw	2
      003672 78                    3200 	.db	120
      003673 07                    3201 	.sleb128	7
      003674 00 00 9D 4C           3202 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
      003678 00 00 9D 4E           3203 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
      00367C 00 02                 3204 	.dw	2
      00367E 78                    3205 	.db	120
      00367F 06                    3206 	.sleb128	6
      003680 00 00 9D 4A           3207 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
      003684 00 00 9D 4C           3208 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
      003688 00 02                 3209 	.dw	2
      00368A 78                    3210 	.db	120
      00368B 05                    3211 	.sleb128	5
      00368C 00 00 9D 48           3212 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
      003690 00 00 9D 4A           3213 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
      003694 00 02                 3214 	.dw	2
      003696 78                    3215 	.db	120
      003697 03                    3216 	.sleb128	3
      003698 00 00 9D 46           3217 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
      00369C 00 00 9D 48           3218 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
      0036A0 00 02                 3219 	.dw	2
      0036A2 78                    3220 	.db	120
      0036A3 02                    3221 	.sleb128	2
      0036A4 00 00 9D 37           3222 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
      0036A8 00 00 9D 46           3223 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
      0036AC 00 02                 3224 	.dw	2
      0036AE 78                    3225 	.db	120
      0036AF 02                    3226 	.sleb128	2
      0036B0 00 00 9D 32           3227 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
      0036B4 00 00 9D 37           3228 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
      0036B8 00 02                 3229 	.dw	2
      0036BA 78                    3230 	.db	120
      0036BB 08                    3231 	.sleb128	8
      0036BC 00 00 9D 30           3232 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
      0036C0 00 00 9D 32           3233 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
      0036C4 00 02                 3234 	.dw	2
      0036C6 78                    3235 	.db	120
      0036C7 07                    3236 	.sleb128	7
      0036C8 00 00 9D 2E           3237 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
      0036CC 00 00 9D 30           3238 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
      0036D0 00 02                 3239 	.dw	2
      0036D2 78                    3240 	.db	120
      0036D3 06                    3241 	.sleb128	6
      0036D4 00 00 9D 2C           3242 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
      0036D8 00 00 9D 2E           3243 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
      0036DC 00 02                 3244 	.dw	2
      0036DE 78                    3245 	.db	120
      0036DF 05                    3246 	.sleb128	5
      0036E0 00 00 9D 2A           3247 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
      0036E4 00 00 9D 2C           3248 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
      0036E8 00 02                 3249 	.dw	2
      0036EA 78                    3250 	.db	120
      0036EB 03                    3251 	.sleb128	3
      0036EC 00 00 9D 21           3252 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
      0036F0 00 00 9D 2A           3253 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
      0036F4 00 02                 3254 	.dw	2
      0036F6 78                    3255 	.db	120
      0036F7 02                    3256 	.sleb128	2
      0036F8 00 00 9D 18           3257 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
      0036FC 00 00 9D 21           3258 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
      003700 00 02                 3259 	.dw	2
      003702 78                    3260 	.db	120
      003703 02                    3261 	.sleb128	2
      003704 00 00 9D 0F           3262 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
      003708 00 00 9D 18           3263 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
      00370C 00 02                 3264 	.dw	2
      00370E 78                    3265 	.db	120
      00370F 02                    3266 	.sleb128	2
      003710 00 00 9D 06           3267 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
      003714 00 00 9D 0F           3268 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
      003718 00 02                 3269 	.dw	2
      00371A 78                    3270 	.db	120
      00371B 02                    3271 	.sleb128	2
      00371C 00 00 9C FD           3272 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
      003720 00 00 9D 06           3273 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
      003724 00 02                 3274 	.dw	2
      003726 78                    3275 	.db	120
      003727 02                    3276 	.sleb128	2
      003728 00 00 9C F4           3277 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
      00372C 00 00 9C FD           3278 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
      003730 00 02                 3279 	.dw	2
      003732 78                    3280 	.db	120
      003733 02                    3281 	.sleb128	2
      003734 00 00 9C EB           3282 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
      003738 00 00 9C F4           3283 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
      00373C 00 02                 3284 	.dw	2
      00373E 78                    3285 	.db	120
      00373F 02                    3286 	.sleb128	2
      003740 00 00 9C E2           3287 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
      003744 00 00 9C EB           3288 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
      003748 00 02                 3289 	.dw	2
      00374A 78                    3290 	.db	120
      00374B 02                    3291 	.sleb128	2
      00374C 00 00 9C D9           3292 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
      003750 00 00 9C E2           3293 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
      003754 00 02                 3294 	.dw	2
      003756 78                    3295 	.db	120
      003757 02                    3296 	.sleb128	2
      003758 00 00 9C D0           3297 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
      00375C 00 00 9C D9           3298 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
      003760 00 02                 3299 	.dw	2
      003762 78                    3300 	.db	120
      003763 02                    3301 	.sleb128	2
      003764 00 00 9C C7           3302 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
      003768 00 00 9C D0           3303 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
      00376C 00 02                 3304 	.dw	2
      00376E 78                    3305 	.db	120
      00376F 02                    3306 	.sleb128	2
      003770 00 00 9C BE           3307 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
      003774 00 00 9C C7           3308 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
      003778 00 02                 3309 	.dw	2
      00377A 78                    3310 	.db	120
      00377B 02                    3311 	.sleb128	2
      00377C 00 00 9C B5           3312 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
      003780 00 00 9C BE           3313 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
      003784 00 02                 3314 	.dw	2
      003786 78                    3315 	.db	120
      003787 02                    3316 	.sleb128	2
      003788 00 00 9C AC           3317 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
      00378C 00 00 9C B5           3318 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
      003790 00 02                 3319 	.dw	2
      003792 78                    3320 	.db	120
      003793 02                    3321 	.sleb128	2
      003794 00 00 9C A3           3322 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
      003798 00 00 9C AC           3323 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
      00379C 00 02                 3324 	.dw	2
      00379E 78                    3325 	.db	120
      00379F 02                    3326 	.sleb128	2
      0037A0 00 00 9C 94           3327 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
      0037A4 00 00 9C A3           3328 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
      0037A8 00 02                 3329 	.dw	2
      0037AA 78                    3330 	.db	120
      0037AB 02                    3331 	.sleb128	2
      0037AC 00 00 9C 85           3332 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
      0037B0 00 00 9C 94           3333 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
      0037B4 00 02                 3334 	.dw	2
      0037B6 78                    3335 	.db	120
      0037B7 02                    3336 	.sleb128	2
      0037B8 00 00 9C 84           3337 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)
      0037BC 00 00 9C 85           3338 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
      0037C0 00 02                 3339 	.dw	2
      0037C2 78                    3340 	.db	120
      0037C3 01                    3341 	.sleb128	1
      0037C4 00 00 00 00           3342 	.dw	0,0
      0037C8 00 00 00 00           3343 	.dw	0,0
      0037CC 00 00 9C 73           3344 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
      0037D0 00 00 9C 84           3345 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$193)
      0037D4 00 02                 3346 	.dw	2
      0037D6 78                    3347 	.db	120
      0037D7 01                    3348 	.sleb128	1
      0037D8 00 00 9C 6E           3349 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
      0037DC 00 00 9C 73           3350 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
      0037E0 00 02                 3351 	.dw	2
      0037E2 78                    3352 	.db	120
      0037E3 07                    3353 	.sleb128	7
      0037E4 00 00 9C 6C           3354 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
      0037E8 00 00 9C 6E           3355 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
      0037EC 00 02                 3356 	.dw	2
      0037EE 78                    3357 	.db	120
      0037EF 06                    3358 	.sleb128	6
      0037F0 00 00 9C 6A           3359 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
      0037F4 00 00 9C 6C           3360 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
      0037F8 00 02                 3361 	.dw	2
      0037FA 78                    3362 	.db	120
      0037FB 05                    3363 	.sleb128	5
      0037FC 00 00 9C 68           3364 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
      003800 00 00 9C 6A           3365 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
      003804 00 02                 3366 	.dw	2
      003806 78                    3367 	.db	120
      003807 04                    3368 	.sleb128	4
      003808 00 00 9C 66           3369 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
      00380C 00 00 9C 68           3370 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
      003810 00 02                 3371 	.dw	2
      003812 78                    3372 	.db	120
      003813 02                    3373 	.sleb128	2
      003814 00 00 9C 64           3374 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
      003818 00 00 9C 66           3375 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
      00381C 00 02                 3376 	.dw	2
      00381E 78                    3377 	.db	120
      00381F 01                    3378 	.sleb128	1
      003820 00 00 9C 5B           3379 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
      003824 00 00 9C 64           3380 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
      003828 00 02                 3381 	.dw	2
      00382A 78                    3382 	.db	120
      00382B 01                    3383 	.sleb128	1
      00382C 00 00 9C 52           3384 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
      003830 00 00 9C 5B           3385 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
      003834 00 02                 3386 	.dw	2
      003836 78                    3387 	.db	120
      003837 01                    3388 	.sleb128	1
      003838 00 00 9C 49           3389 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
      00383C 00 00 9C 52           3390 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
      003840 00 02                 3391 	.dw	2
      003842 78                    3392 	.db	120
      003843 01                    3393 	.sleb128	1
      003844 00 00 9C 40           3394 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
      003848 00 00 9C 49           3395 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
      00384C 00 02                 3396 	.dw	2
      00384E 78                    3397 	.db	120
      00384F 01                    3398 	.sleb128	1
      003850 00 00 9C 37           3399 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
      003854 00 00 9C 40           3400 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
      003858 00 02                 3401 	.dw	2
      00385A 78                    3402 	.db	120
      00385B 01                    3403 	.sleb128	1
      00385C 00 00 9C 2E           3404 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
      003860 00 00 9C 37           3405 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
      003864 00 02                 3406 	.dw	2
      003866 78                    3407 	.db	120
      003867 01                    3408 	.sleb128	1
      003868 00 00 9C 1E           3409 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)
      00386C 00 00 9C 2E           3410 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
      003870 00 02                 3411 	.dw	2
      003872 78                    3412 	.db	120
      003873 01                    3413 	.sleb128	1
      003874 00 00 00 00           3414 	.dw	0,0
      003878 00 00 00 00           3415 	.dw	0,0
      00387C 00 00 9C 06           3416 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
      003880 00 00 9C 1E           3417 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$172)
      003884 00 02                 3418 	.dw	2
      003886 78                    3419 	.db	120
      003887 01                    3420 	.sleb128	1
      003888 00 00 9C 01           3421 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
      00388C 00 00 9C 06           3422 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
      003890 00 02                 3423 	.dw	2
      003892 78                    3424 	.db	120
      003893 07                    3425 	.sleb128	7
      003894 00 00 9B FF           3426 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
      003898 00 00 9C 01           3427 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
      00389C 00 02                 3428 	.dw	2
      00389E 78                    3429 	.db	120
      00389F 06                    3430 	.sleb128	6
      0038A0 00 00 9B FD           3431 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
      0038A4 00 00 9B FF           3432 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
      0038A8 00 02                 3433 	.dw	2
      0038AA 78                    3434 	.db	120
      0038AB 05                    3435 	.sleb128	5
      0038AC 00 00 9B FB           3436 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
      0038B0 00 00 9B FD           3437 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
      0038B4 00 02                 3438 	.dw	2
      0038B6 78                    3439 	.db	120
      0038B7 04                    3440 	.sleb128	4
      0038B8 00 00 9B F9           3441 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
      0038BC 00 00 9B FB           3442 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
      0038C0 00 02                 3443 	.dw	2
      0038C2 78                    3444 	.db	120
      0038C3 02                    3445 	.sleb128	2
      0038C4 00 00 9B F7           3446 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
      0038C8 00 00 9B F9           3447 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
      0038CC 00 02                 3448 	.dw	2
      0038CE 78                    3449 	.db	120
      0038CF 01                    3450 	.sleb128	1
      0038D0 00 00 9B E8           3451 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)
      0038D4 00 00 9B F7           3452 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
      0038D8 00 02                 3453 	.dw	2
      0038DA 78                    3454 	.db	120
      0038DB 01                    3455 	.sleb128	1
      0038DC 00 00 00 00           3456 	.dw	0,0
      0038E0 00 00 00 00           3457 	.dw	0,0
      0038E4 00 00 9B D0           3458 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
      0038E8 00 00 9B E8           3459 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$151)
      0038EC 00 02                 3460 	.dw	2
      0038EE 78                    3461 	.db	120
      0038EF 01                    3462 	.sleb128	1
      0038F0 00 00 9B CB           3463 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
      0038F4 00 00 9B D0           3464 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
      0038F8 00 02                 3465 	.dw	2
      0038FA 78                    3466 	.db	120
      0038FB 07                    3467 	.sleb128	7
      0038FC 00 00 9B C9           3468 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
      003900 00 00 9B CB           3469 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
      003904 00 02                 3470 	.dw	2
      003906 78                    3471 	.db	120
      003907 06                    3472 	.sleb128	6
      003908 00 00 9B C7           3473 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
      00390C 00 00 9B C9           3474 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
      003910 00 02                 3475 	.dw	2
      003912 78                    3476 	.db	120
      003913 05                    3477 	.sleb128	5
      003914 00 00 9B C5           3478 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
      003918 00 00 9B C7           3479 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
      00391C 00 02                 3480 	.dw	2
      00391E 78                    3481 	.db	120
      00391F 04                    3482 	.sleb128	4
      003920 00 00 9B C3           3483 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
      003924 00 00 9B C5           3484 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
      003928 00 02                 3485 	.dw	2
      00392A 78                    3486 	.db	120
      00392B 02                    3487 	.sleb128	2
      00392C 00 00 9B C1           3488 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
      003930 00 00 9B C3           3489 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
      003934 00 02                 3490 	.dw	2
      003936 78                    3491 	.db	120
      003937 01                    3492 	.sleb128	1
      003938 00 00 9B B2           3493 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)
      00393C 00 00 9B C1           3494 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
      003940 00 02                 3495 	.dw	2
      003942 78                    3496 	.db	120
      003943 01                    3497 	.sleb128	1
      003944 00 00 00 00           3498 	.dw	0,0
      003948 00 00 00 00           3499 	.dw	0,0
      00394C 00 00 9B A9           3500 	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
      003950 00 00 9B B2           3501 	.dw	0,(Sstm8s_adc2$ADC2_Init$130)
      003954 00 02                 3502 	.dw	2
      003956 78                    3503 	.db	120
      003957 01                    3504 	.sleb128	1
      003958 00 00 9B A5           3505 	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
      00395C 00 00 9B A9           3506 	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
      003960 00 02                 3507 	.dw	2
      003962 78                    3508 	.db	120
      003963 03                    3509 	.sleb128	3
      003964 00 00 9B A2           3510 	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
      003968 00 00 9B A5           3511 	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
      00396C 00 02                 3512 	.dw	2
      00396E 78                    3513 	.db	120
      00396F 02                    3514 	.sleb128	2
      003970 00 00 9B 9F           3515 	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
      003974 00 00 9B A2           3516 	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
      003978 00 02                 3517 	.dw	2
      00397A 78                    3518 	.db	120
      00397B 01                    3519 	.sleb128	1
      00397C 00 00 9B 9B           3520 	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
      003980 00 00 9B 9F           3521 	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
      003984 00 02                 3522 	.dw	2
      003986 78                    3523 	.db	120
      003987 03                    3524 	.sleb128	3
      003988 00 00 9B 98           3525 	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
      00398C 00 00 9B 9B           3526 	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
      003990 00 02                 3527 	.dw	2
      003992 78                    3528 	.db	120
      003993 02                    3529 	.sleb128	2
      003994 00 00 9B 95           3530 	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
      003998 00 00 9B 98           3531 	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
      00399C 00 02                 3532 	.dw	2
      00399E 78                    3533 	.db	120
      00399F 01                    3534 	.sleb128	1
      0039A0 00 00 9B 91           3535 	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
      0039A4 00 00 9B 95           3536 	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
      0039A8 00 02                 3537 	.dw	2
      0039AA 78                    3538 	.db	120
      0039AB 02                    3539 	.sleb128	2
      0039AC 00 00 9B 8E           3540 	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
      0039B0 00 00 9B 91           3541 	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
      0039B4 00 02                 3542 	.dw	2
      0039B6 78                    3543 	.db	120
      0039B7 01                    3544 	.sleb128	1
      0039B8 00 00 9B 89           3545 	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
      0039BC 00 00 9B 8E           3546 	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
      0039C0 00 02                 3547 	.dw	2
      0039C2 78                    3548 	.db	120
      0039C3 04                    3549 	.sleb128	4
      0039C4 00 00 9B 86           3550 	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
      0039C8 00 00 9B 89           3551 	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
      0039CC 00 02                 3552 	.dw	2
      0039CE 78                    3553 	.db	120
      0039CF 03                    3554 	.sleb128	3
      0039D0 00 00 9B 83           3555 	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
      0039D4 00 00 9B 86           3556 	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
      0039D8 00 02                 3557 	.dw	2
      0039DA 78                    3558 	.db	120
      0039DB 02                    3559 	.sleb128	2
      0039DC 00 00 9B 80           3560 	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
      0039E0 00 00 9B 83           3561 	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
      0039E4 00 02                 3562 	.dw	2
      0039E6 78                    3563 	.db	120
      0039E7 01                    3564 	.sleb128	1
      0039E8 00 00 9B 7B           3565 	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
      0039EC 00 00 9B 80           3566 	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
      0039F0 00 02                 3567 	.dw	2
      0039F2 78                    3568 	.db	120
      0039F3 07                    3569 	.sleb128	7
      0039F4 00 00 9B 79           3570 	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
      0039F8 00 00 9B 7B           3571 	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
      0039FC 00 02                 3572 	.dw	2
      0039FE 78                    3573 	.db	120
      0039FF 06                    3574 	.sleb128	6
      003A00 00 00 9B 77           3575 	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
      003A04 00 00 9B 79           3576 	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
      003A08 00 02                 3577 	.dw	2
      003A0A 78                    3578 	.db	120
      003A0B 05                    3579 	.sleb128	5
      003A0C 00 00 9B 75           3580 	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
      003A10 00 00 9B 77           3581 	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
      003A14 00 02                 3582 	.dw	2
      003A16 78                    3583 	.db	120
      003A17 04                    3584 	.sleb128	4
      003A18 00 00 9B 73           3585 	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
      003A1C 00 00 9B 75           3586 	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
      003A20 00 02                 3587 	.dw	2
      003A22 78                    3588 	.db	120
      003A23 02                    3589 	.sleb128	2
      003A24 00 00 9B 71           3590 	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
      003A28 00 00 9B 73           3591 	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
      003A2C 00 02                 3592 	.dw	2
      003A2E 78                    3593 	.db	120
      003A2F 01                    3594 	.sleb128	1
      003A30 00 00 9B 62           3595 	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
      003A34 00 00 9B 71           3596 	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
      003A38 00 02                 3597 	.dw	2
      003A3A 78                    3598 	.db	120
      003A3B 01                    3599 	.sleb128	1
      003A3C 00 00 9B 5D           3600 	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
      003A40 00 00 9B 62           3601 	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
      003A44 00 02                 3602 	.dw	2
      003A46 78                    3603 	.db	120
      003A47 07                    3604 	.sleb128	7
      003A48 00 00 9B 5B           3605 	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
      003A4C 00 00 9B 5D           3606 	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
      003A50 00 02                 3607 	.dw	2
      003A52 78                    3608 	.db	120
      003A53 06                    3609 	.sleb128	6
      003A54 00 00 9B 59           3610 	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
      003A58 00 00 9B 5B           3611 	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
      003A5C 00 02                 3612 	.dw	2
      003A5E 78                    3613 	.db	120
      003A5F 05                    3614 	.sleb128	5
      003A60 00 00 9B 57           3615 	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
      003A64 00 00 9B 59           3616 	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
      003A68 00 02                 3617 	.dw	2
      003A6A 78                    3618 	.db	120
      003A6B 04                    3619 	.sleb128	4
      003A6C 00 00 9B 55           3620 	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
      003A70 00 00 9B 57           3621 	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
      003A74 00 02                 3622 	.dw	2
      003A76 78                    3623 	.db	120
      003A77 02                    3624 	.sleb128	2
      003A78 00 00 9B 53           3625 	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
      003A7C 00 00 9B 55           3626 	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
      003A80 00 02                 3627 	.dw	2
      003A82 78                    3628 	.db	120
      003A83 01                    3629 	.sleb128	1
      003A84 00 00 9B 4A           3630 	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
      003A88 00 00 9B 53           3631 	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
      003A8C 00 02                 3632 	.dw	2
      003A8E 78                    3633 	.db	120
      003A8F 01                    3634 	.sleb128	1
      003A90 00 00 9B 41           3635 	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
      003A94 00 00 9B 4A           3636 	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
      003A98 00 02                 3637 	.dw	2
      003A9A 78                    3638 	.db	120
      003A9B 01                    3639 	.sleb128	1
      003A9C 00 00 9B 38           3640 	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
      003AA0 00 00 9B 41           3641 	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
      003AA4 00 02                 3642 	.dw	2
      003AA6 78                    3643 	.db	120
      003AA7 01                    3644 	.sleb128	1
      003AA8 00 00 9B 2F           3645 	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
      003AAC 00 00 9B 38           3646 	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
      003AB0 00 02                 3647 	.dw	2
      003AB2 78                    3648 	.db	120
      003AB3 01                    3649 	.sleb128	1
      003AB4 00 00 9B 26           3650 	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
      003AB8 00 00 9B 2F           3651 	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
      003ABC 00 02                 3652 	.dw	2
      003ABE 78                    3653 	.db	120
      003ABF 01                    3654 	.sleb128	1
      003AC0 00 00 9B 1D           3655 	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
      003AC4 00 00 9B 26           3656 	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
      003AC8 00 02                 3657 	.dw	2
      003ACA 78                    3658 	.db	120
      003ACB 01                    3659 	.sleb128	1
      003ACC 00 00 9B 14           3660 	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
      003AD0 00 00 9B 1D           3661 	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
      003AD4 00 02                 3662 	.dw	2
      003AD6 78                    3663 	.db	120
      003AD7 01                    3664 	.sleb128	1
      003AD8 00 00 9B 0B           3665 	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
      003ADC 00 00 9B 14           3666 	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
      003AE0 00 02                 3667 	.dw	2
      003AE2 78                    3668 	.db	120
      003AE3 01                    3669 	.sleb128	1
      003AE4 00 00 9B 02           3670 	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
      003AE8 00 00 9B 0B           3671 	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
      003AEC 00 02                 3672 	.dw	2
      003AEE 78                    3673 	.db	120
      003AEF 01                    3674 	.sleb128	1
      003AF0 00 00 9A F9           3675 	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
      003AF4 00 00 9B 02           3676 	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
      003AF8 00 02                 3677 	.dw	2
      003AFA 78                    3678 	.db	120
      003AFB 01                    3679 	.sleb128	1
      003AFC 00 00 9A F0           3680 	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
      003B00 00 00 9A F9           3681 	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
      003B04 00 02                 3682 	.dw	2
      003B06 78                    3683 	.db	120
      003B07 01                    3684 	.sleb128	1
      003B08 00 00 9A E7           3685 	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
      003B0C 00 00 9A F0           3686 	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
      003B10 00 02                 3687 	.dw	2
      003B12 78                    3688 	.db	120
      003B13 01                    3689 	.sleb128	1
      003B14 00 00 9A DE           3690 	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
      003B18 00 00 9A E7           3691 	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
      003B1C 00 02                 3692 	.dw	2
      003B1E 78                    3693 	.db	120
      003B1F 01                    3694 	.sleb128	1
      003B20 00 00 9A D5           3695 	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
      003B24 00 00 9A DE           3696 	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
      003B28 00 02                 3697 	.dw	2
      003B2A 78                    3698 	.db	120
      003B2B 01                    3699 	.sleb128	1
      003B2C 00 00 9A CC           3700 	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
      003B30 00 00 9A D5           3701 	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
      003B34 00 02                 3702 	.dw	2
      003B36 78                    3703 	.db	120
      003B37 01                    3704 	.sleb128	1
      003B38 00 00 9A BD           3705 	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
      003B3C 00 00 9A CC           3706 	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
      003B40 00 02                 3707 	.dw	2
      003B42 78                    3708 	.db	120
      003B43 01                    3709 	.sleb128	1
      003B44 00 00 9A B8           3710 	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
      003B48 00 00 9A BD           3711 	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
      003B4C 00 02                 3712 	.dw	2
      003B4E 78                    3713 	.db	120
      003B4F 07                    3714 	.sleb128	7
      003B50 00 00 9A B6           3715 	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
      003B54 00 00 9A B8           3716 	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
      003B58 00 02                 3717 	.dw	2
      003B5A 78                    3718 	.db	120
      003B5B 06                    3719 	.sleb128	6
      003B5C 00 00 9A B4           3720 	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
      003B60 00 00 9A B6           3721 	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
      003B64 00 02                 3722 	.dw	2
      003B66 78                    3723 	.db	120
      003B67 05                    3724 	.sleb128	5
      003B68 00 00 9A B2           3725 	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
      003B6C 00 00 9A B4           3726 	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
      003B70 00 02                 3727 	.dw	2
      003B72 78                    3728 	.db	120
      003B73 04                    3729 	.sleb128	4
      003B74 00 00 9A B0           3730 	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
      003B78 00 00 9A B2           3731 	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
      003B7C 00 02                 3732 	.dw	2
      003B7E 78                    3733 	.db	120
      003B7F 02                    3734 	.sleb128	2
      003B80 00 00 9A AE           3735 	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
      003B84 00 00 9A B0           3736 	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
      003B88 00 02                 3737 	.dw	2
      003B8A 78                    3738 	.db	120
      003B8B 01                    3739 	.sleb128	1
      003B8C 00 00 9A 9E           3740 	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
      003B90 00 00 9A AE           3741 	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
      003B94 00 02                 3742 	.dw	2
      003B96 78                    3743 	.db	120
      003B97 01                    3744 	.sleb128	1
      003B98 00 00 9A 99           3745 	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
      003B9C 00 00 9A 9E           3746 	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
      003BA0 00 02                 3747 	.dw	2
      003BA2 78                    3748 	.db	120
      003BA3 07                    3749 	.sleb128	7
      003BA4 00 00 9A 97           3750 	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
      003BA8 00 00 9A 99           3751 	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
      003BAC 00 02                 3752 	.dw	2
      003BAE 78                    3753 	.db	120
      003BAF 06                    3754 	.sleb128	6
      003BB0 00 00 9A 95           3755 	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
      003BB4 00 00 9A 97           3756 	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
      003BB8 00 02                 3757 	.dw	2
      003BBA 78                    3758 	.db	120
      003BBB 05                    3759 	.sleb128	5
      003BBC 00 00 9A 93           3760 	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
      003BC0 00 00 9A 95           3761 	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
      003BC4 00 02                 3762 	.dw	2
      003BC6 78                    3763 	.db	120
      003BC7 04                    3764 	.sleb128	4
      003BC8 00 00 9A 91           3765 	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
      003BCC 00 00 9A 93           3766 	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
      003BD0 00 02                 3767 	.dw	2
      003BD2 78                    3768 	.db	120
      003BD3 02                    3769 	.sleb128	2
      003BD4 00 00 9A 8F           3770 	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
      003BD8 00 00 9A 91           3771 	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
      003BDC 00 02                 3772 	.dw	2
      003BDE 78                    3773 	.db	120
      003BDF 01                    3774 	.sleb128	1
      003BE0 00 00 9A 80           3775 	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
      003BE4 00 00 9A 8F           3776 	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
      003BE8 00 02                 3777 	.dw	2
      003BEA 78                    3778 	.db	120
      003BEB 01                    3779 	.sleb128	1
      003BEC 00 00 9A 7B           3780 	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
      003BF0 00 00 9A 80           3781 	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
      003BF4 00 02                 3782 	.dw	2
      003BF6 78                    3783 	.db	120
      003BF7 07                    3784 	.sleb128	7
      003BF8 00 00 9A 79           3785 	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
      003BFC 00 00 9A 7B           3786 	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
      003C00 00 02                 3787 	.dw	2
      003C02 78                    3788 	.db	120
      003C03 06                    3789 	.sleb128	6
      003C04 00 00 9A 77           3790 	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
      003C08 00 00 9A 79           3791 	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
      003C0C 00 02                 3792 	.dw	2
      003C0E 78                    3793 	.db	120
      003C0F 05                    3794 	.sleb128	5
      003C10 00 00 9A 75           3795 	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
      003C14 00 00 9A 77           3796 	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
      003C18 00 02                 3797 	.dw	2
      003C1A 78                    3798 	.db	120
      003C1B 04                    3799 	.sleb128	4
      003C1C 00 00 9A 73           3800 	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
      003C20 00 00 9A 75           3801 	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
      003C24 00 02                 3802 	.dw	2
      003C26 78                    3803 	.db	120
      003C27 02                    3804 	.sleb128	2
      003C28 00 00 9A 71           3805 	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
      003C2C 00 00 9A 73           3806 	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
      003C30 00 02                 3807 	.dw	2
      003C32 78                    3808 	.db	120
      003C33 01                    3809 	.sleb128	1
      003C34 00 00 9A 62           3810 	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
      003C38 00 00 9A 71           3811 	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
      003C3C 00 02                 3812 	.dw	2
      003C3E 78                    3813 	.db	120
      003C3F 01                    3814 	.sleb128	1
      003C40 00 00 9A 5D           3815 	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
      003C44 00 00 9A 62           3816 	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
      003C48 00 02                 3817 	.dw	2
      003C4A 78                    3818 	.db	120
      003C4B 07                    3819 	.sleb128	7
      003C4C 00 00 9A 5B           3820 	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
      003C50 00 00 9A 5D           3821 	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
      003C54 00 02                 3822 	.dw	2
      003C56 78                    3823 	.db	120
      003C57 06                    3824 	.sleb128	6
      003C58 00 00 9A 59           3825 	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
      003C5C 00 00 9A 5B           3826 	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
      003C60 00 02                 3827 	.dw	2
      003C62 78                    3828 	.db	120
      003C63 05                    3829 	.sleb128	5
      003C64 00 00 9A 57           3830 	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
      003C68 00 00 9A 59           3831 	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
      003C6C 00 02                 3832 	.dw	2
      003C6E 78                    3833 	.db	120
      003C6F 04                    3834 	.sleb128	4
      003C70 00 00 9A 55           3835 	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
      003C74 00 00 9A 57           3836 	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
      003C78 00 02                 3837 	.dw	2
      003C7A 78                    3838 	.db	120
      003C7B 02                    3839 	.sleb128	2
      003C7C 00 00 9A 53           3840 	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
      003C80 00 00 9A 55           3841 	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
      003C84 00 02                 3842 	.dw	2
      003C86 78                    3843 	.db	120
      003C87 01                    3844 	.sleb128	1
      003C88 00 00 9A 4A           3845 	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
      003C8C 00 00 9A 53           3846 	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
      003C90 00 02                 3847 	.dw	2
      003C92 78                    3848 	.db	120
      003C93 01                    3849 	.sleb128	1
      003C94 00 00 9A 41           3850 	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
      003C98 00 00 9A 4A           3851 	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
      003C9C 00 02                 3852 	.dw	2
      003C9E 78                    3853 	.db	120
      003C9F 01                    3854 	.sleb128	1
      003CA0 00 00 9A 38           3855 	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
      003CA4 00 00 9A 41           3856 	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
      003CA8 00 02                 3857 	.dw	2
      003CAA 78                    3858 	.db	120
      003CAB 01                    3859 	.sleb128	1
      003CAC 00 00 9A 2F           3860 	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
      003CB0 00 00 9A 38           3861 	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
      003CB4 00 02                 3862 	.dw	2
      003CB6 78                    3863 	.db	120
      003CB7 01                    3864 	.sleb128	1
      003CB8 00 00 9A 26           3865 	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
      003CBC 00 00 9A 2F           3866 	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
      003CC0 00 02                 3867 	.dw	2
      003CC2 78                    3868 	.db	120
      003CC3 01                    3869 	.sleb128	1
      003CC4 00 00 9A 1D           3870 	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
      003CC8 00 00 9A 26           3871 	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
      003CCC 00 02                 3872 	.dw	2
      003CCE 78                    3873 	.db	120
      003CCF 01                    3874 	.sleb128	1
      003CD0 00 00 9A 0D           3875 	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
      003CD4 00 00 9A 1D           3876 	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
      003CD8 00 02                 3877 	.dw	2
      003CDA 78                    3878 	.db	120
      003CDB 01                    3879 	.sleb128	1
      003CDC 00 00 9A 08           3880 	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
      003CE0 00 00 9A 0D           3881 	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
      003CE4 00 02                 3882 	.dw	2
      003CE6 78                    3883 	.db	120
      003CE7 07                    3884 	.sleb128	7
      003CE8 00 00 9A 06           3885 	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
      003CEC 00 00 9A 08           3886 	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
      003CF0 00 02                 3887 	.dw	2
      003CF2 78                    3888 	.db	120
      003CF3 06                    3889 	.sleb128	6
      003CF4 00 00 9A 04           3890 	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
      003CF8 00 00 9A 06           3891 	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
      003CFC 00 02                 3892 	.dw	2
      003CFE 78                    3893 	.db	120
      003CFF 05                    3894 	.sleb128	5
      003D00 00 00 9A 02           3895 	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
      003D04 00 00 9A 04           3896 	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
      003D08 00 02                 3897 	.dw	2
      003D0A 78                    3898 	.db	120
      003D0B 04                    3899 	.sleb128	4
      003D0C 00 00 9A 00           3900 	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
      003D10 00 00 9A 02           3901 	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
      003D14 00 02                 3902 	.dw	2
      003D16 78                    3903 	.db	120
      003D17 02                    3904 	.sleb128	2
      003D18 00 00 99 FE           3905 	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
      003D1C 00 00 9A 00           3906 	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
      003D20 00 02                 3907 	.dw	2
      003D22 78                    3908 	.db	120
      003D23 01                    3909 	.sleb128	1
      003D24 00 00 99 F5           3910 	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
      003D28 00 00 99 FE           3911 	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
      003D2C 00 02                 3912 	.dw	2
      003D2E 78                    3913 	.db	120
      003D2F 01                    3914 	.sleb128	1
      003D30 00 00 99 EC           3915 	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
      003D34 00 00 99 F5           3916 	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
      003D38 00 02                 3917 	.dw	2
      003D3A 78                    3918 	.db	120
      003D3B 01                    3919 	.sleb128	1
      003D3C 00 00 99 E3           3920 	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
      003D40 00 00 99 EC           3921 	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
      003D44 00 02                 3922 	.dw	2
      003D46 78                    3923 	.db	120
      003D47 01                    3924 	.sleb128	1
      003D48 00 00 99 DA           3925 	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
      003D4C 00 00 99 E3           3926 	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
      003D50 00 02                 3927 	.dw	2
      003D52 78                    3928 	.db	120
      003D53 01                    3929 	.sleb128	1
      003D54 00 00 99 D1           3930 	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
      003D58 00 00 99 DA           3931 	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
      003D5C 00 02                 3932 	.dw	2
      003D5E 78                    3933 	.db	120
      003D5F 01                    3934 	.sleb128	1
      003D60 00 00 99 C8           3935 	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
      003D64 00 00 99 D1           3936 	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
      003D68 00 02                 3937 	.dw	2
      003D6A 78                    3938 	.db	120
      003D6B 01                    3939 	.sleb128	1
      003D6C 00 00 99 BF           3940 	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
      003D70 00 00 99 C8           3941 	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
      003D74 00 02                 3942 	.dw	2
      003D76 78                    3943 	.db	120
      003D77 01                    3944 	.sleb128	1
      003D78 00 00 99 B6           3945 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      003D7C 00 00 99 BF           3946 	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
      003D80 00 02                 3947 	.dw	2
      003D82 78                    3948 	.db	120
      003D83 01                    3949 	.sleb128	1
      003D84 00 00 99 AD           3950 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003D88 00 00 99 B6           3951 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      003D8C 00 02                 3952 	.dw	2
      003D8E 78                    3953 	.db	120
      003D8F 01                    3954 	.sleb128	1
      003D90 00 00 99 A4           3955 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003D94 00 00 99 AD           3956 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003D98 00 02                 3957 	.dw	2
      003D9A 78                    3958 	.db	120
      003D9B 01                    3959 	.sleb128	1
      003D9C 00 00 99 9B           3960 	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
      003DA0 00 00 99 A4           3961 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003DA4 00 02                 3962 	.dw	2
      003DA6 78                    3963 	.db	120
      003DA7 01                    3964 	.sleb128	1
      003DA8 00 00 99 92           3965 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      003DAC 00 00 99 9B           3966 	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
      003DB0 00 02                 3967 	.dw	2
      003DB2 78                    3968 	.db	120
      003DB3 01                    3969 	.sleb128	1
      003DB4 00 00 99 89           3970 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003DB8 00 00 99 92           3971 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      003DBC 00 02                 3972 	.dw	2
      003DBE 78                    3973 	.db	120
      003DBF 01                    3974 	.sleb128	1
      003DC0 00 00 99 80           3975 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003DC4 00 00 99 89           3976 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003DC8 00 02                 3977 	.dw	2
      003DCA 78                    3978 	.db	120
      003DCB 01                    3979 	.sleb128	1
      003DCC 00 00 99 71           3980 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003DD0 00 00 99 80           3981 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003DD4 00 02                 3982 	.dw	2
      003DD6 78                    3983 	.db	120
      003DD7 01                    3984 	.sleb128	1
      003DD8 00 00 99 6C           3985 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      003DDC 00 00 99 71           3986 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003DE0 00 02                 3987 	.dw	2
      003DE2 78                    3988 	.db	120
      003DE3 07                    3989 	.sleb128	7
      003DE4 00 00 99 6A           3990 	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
      003DE8 00 00 99 6C           3991 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      003DEC 00 02                 3992 	.dw	2
      003DEE 78                    3993 	.db	120
      003DEF 06                    3994 	.sleb128	6
      003DF0 00 00 99 68           3995 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      003DF4 00 00 99 6A           3996 	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
      003DF8 00 02                 3997 	.dw	2
      003DFA 78                    3998 	.db	120
      003DFB 05                    3999 	.sleb128	5
      003DFC 00 00 99 66           4000 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      003E00 00 00 99 68           4001 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      003E04 00 02                 4002 	.dw	2
      003E06 78                    4003 	.db	120
      003E07 04                    4004 	.sleb128	4
      003E08 00 00 99 64           4005 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      003E0C 00 00 99 66           4006 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      003E10 00 02                 4007 	.dw	2
      003E12 78                    4008 	.db	120
      003E13 02                    4009 	.sleb128	2
      003E14 00 00 99 62           4010 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      003E18 00 00 99 64           4011 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      003E1C 00 02                 4012 	.dw	2
      003E1E 78                    4013 	.db	120
      003E1F 01                    4014 	.sleb128	1
      003E20 00 00 99 53           4015 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      003E24 00 00 99 62           4016 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      003E28 00 02                 4017 	.dw	2
      003E2A 78                    4018 	.db	120
      003E2B 01                    4019 	.sleb128	1
      003E2C 00 00 00 00           4020 	.dw	0,0
      003E30 00 00 00 00           4021 	.dw	0,0
      003E34 00 00 99 3E           4022 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      003E38 00 00 99 53           4023 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$9)
      003E3C 00 02                 4024 	.dw	2
      003E3E 78                    4025 	.db	120
      003E3F 01                    4026 	.sleb128	1
      003E40 00 00 00 00           4027 	.dw	0,0
      003E44 00 00 00 00           4028 	.dw	0,0
                                   4029 
                                   4030 	.area .debug_abbrev (NOLOAD)
      000574                       4031 Ldebug_abbrev:
      000574 0B                    4032 	.uleb128	11
      000575 2E                    4033 	.uleb128	46
      000576 00                    4034 	.db	0
      000577 03                    4035 	.uleb128	3
      000578 08                    4036 	.uleb128	8
      000579 11                    4037 	.uleb128	17
      00057A 01                    4038 	.uleb128	1
      00057B 12                    4039 	.uleb128	18
      00057C 01                    4040 	.uleb128	1
      00057D 3F                    4041 	.uleb128	63
      00057E 0C                    4042 	.uleb128	12
      00057F 40                    4043 	.uleb128	64
      000580 06                    4044 	.uleb128	6
      000581 49                    4045 	.uleb128	73
      000582 13                    4046 	.uleb128	19
      000583 00                    4047 	.uleb128	0
      000584 00                    4048 	.uleb128	0
      000585 04                    4049 	.uleb128	4
      000586 05                    4050 	.uleb128	5
      000587 00                    4051 	.db	0
      000588 02                    4052 	.uleb128	2
      000589 0A                    4053 	.uleb128	10
      00058A 03                    4054 	.uleb128	3
      00058B 08                    4055 	.uleb128	8
      00058C 49                    4056 	.uleb128	73
      00058D 13                    4057 	.uleb128	19
      00058E 00                    4058 	.uleb128	0
      00058F 00                    4059 	.uleb128	0
      000590 0D                    4060 	.uleb128	13
      000591 01                    4061 	.uleb128	1
      000592 01                    4062 	.db	1
      000593 01                    4063 	.uleb128	1
      000594 13                    4064 	.uleb128	19
      000595 0B                    4065 	.uleb128	11
      000596 0B                    4066 	.uleb128	11
      000597 49                    4067 	.uleb128	73
      000598 13                    4068 	.uleb128	19
      000599 00                    4069 	.uleb128	0
      00059A 00                    4070 	.uleb128	0
      00059B 03                    4071 	.uleb128	3
      00059C 2E                    4072 	.uleb128	46
      00059D 01                    4073 	.db	1
      00059E 01                    4074 	.uleb128	1
      00059F 13                    4075 	.uleb128	19
      0005A0 03                    4076 	.uleb128	3
      0005A1 08                    4077 	.uleb128	8
      0005A2 11                    4078 	.uleb128	17
      0005A3 01                    4079 	.uleb128	1
      0005A4 12                    4080 	.uleb128	18
      0005A5 01                    4081 	.uleb128	1
      0005A6 3F                    4082 	.uleb128	63
      0005A7 0C                    4083 	.uleb128	12
      0005A8 40                    4084 	.uleb128	64
      0005A9 06                    4085 	.uleb128	6
      0005AA 00                    4086 	.uleb128	0
      0005AB 00                    4087 	.uleb128	0
      0005AC 0A                    4088 	.uleb128	10
      0005AD 34                    4089 	.uleb128	52
      0005AE 00                    4090 	.db	0
      0005AF 02                    4091 	.uleb128	2
      0005B0 0A                    4092 	.uleb128	10
      0005B1 03                    4093 	.uleb128	3
      0005B2 08                    4094 	.uleb128	8
      0005B3 49                    4095 	.uleb128	73
      0005B4 13                    4096 	.uleb128	19
      0005B5 00                    4097 	.uleb128	0
      0005B6 00                    4098 	.uleb128	0
      0005B7 09                    4099 	.uleb128	9
      0005B8 2E                    4100 	.uleb128	46
      0005B9 01                    4101 	.db	1
      0005BA 01                    4102 	.uleb128	1
      0005BB 13                    4103 	.uleb128	19
      0005BC 03                    4104 	.uleb128	3
      0005BD 08                    4105 	.uleb128	8
      0005BE 11                    4106 	.uleb128	17
      0005BF 01                    4107 	.uleb128	1
      0005C0 12                    4108 	.uleb128	18
      0005C1 01                    4109 	.uleb128	1
      0005C2 3F                    4110 	.uleb128	63
      0005C3 0C                    4111 	.uleb128	12
      0005C4 40                    4112 	.uleb128	64
      0005C5 06                    4113 	.uleb128	6
      0005C6 49                    4114 	.uleb128	73
      0005C7 13                    4115 	.uleb128	19
      0005C8 00                    4116 	.uleb128	0
      0005C9 00                    4117 	.uleb128	0
      0005CA 0C                    4118 	.uleb128	12
      0005CB 26                    4119 	.uleb128	38
      0005CC 00                    4120 	.db	0
      0005CD 49                    4121 	.uleb128	73
      0005CE 13                    4122 	.uleb128	19
      0005CF 00                    4123 	.uleb128	0
      0005D0 00                    4124 	.uleb128	0
      0005D1 08                    4125 	.uleb128	8
      0005D2 0B                    4126 	.uleb128	11
      0005D3 01                    4127 	.db	1
      0005D4 11                    4128 	.uleb128	17
      0005D5 01                    4129 	.uleb128	1
      0005D6 00                    4130 	.uleb128	0
      0005D7 00                    4131 	.uleb128	0
      0005D8 01                    4132 	.uleb128	1
      0005D9 11                    4133 	.uleb128	17
      0005DA 01                    4134 	.db	1
      0005DB 03                    4135 	.uleb128	3
      0005DC 08                    4136 	.uleb128	8
      0005DD 10                    4137 	.uleb128	16
      0005DE 06                    4138 	.uleb128	6
      0005DF 13                    4139 	.uleb128	19
      0005E0 0B                    4140 	.uleb128	11
      0005E1 25                    4141 	.uleb128	37
      0005E2 08                    4142 	.uleb128	8
      0005E3 00                    4143 	.uleb128	0
      0005E4 00                    4144 	.uleb128	0
      0005E5 06                    4145 	.uleb128	6
      0005E6 0B                    4146 	.uleb128	11
      0005E7 00                    4147 	.db	0
      0005E8 11                    4148 	.uleb128	17
      0005E9 01                    4149 	.uleb128	1
      0005EA 12                    4150 	.uleb128	18
      0005EB 01                    4151 	.uleb128	1
      0005EC 00                    4152 	.uleb128	0
      0005ED 00                    4153 	.uleb128	0
      0005EE 07                    4154 	.uleb128	7
      0005EF 0B                    4155 	.uleb128	11
      0005F0 01                    4156 	.db	1
      0005F1 01                    4157 	.uleb128	1
      0005F2 13                    4158 	.uleb128	19
      0005F3 11                    4159 	.uleb128	17
      0005F4 01                    4160 	.uleb128	1
      0005F5 00                    4161 	.uleb128	0
      0005F6 00                    4162 	.uleb128	0
      0005F7 02                    4163 	.uleb128	2
      0005F8 2E                    4164 	.uleb128	46
      0005F9 00                    4165 	.db	0
      0005FA 03                    4166 	.uleb128	3
      0005FB 08                    4167 	.uleb128	8
      0005FC 11                    4168 	.uleb128	17
      0005FD 01                    4169 	.uleb128	1
      0005FE 12                    4170 	.uleb128	18
      0005FF 01                    4171 	.uleb128	1
      000600 3F                    4172 	.uleb128	63
      000601 0C                    4173 	.uleb128	12
      000602 40                    4174 	.uleb128	64
      000603 06                    4175 	.uleb128	6
      000604 00                    4176 	.uleb128	0
      000605 00                    4177 	.uleb128	0
      000606 0E                    4178 	.uleb128	14
      000607 21                    4179 	.uleb128	33
      000608 00                    4180 	.db	0
      000609 2F                    4181 	.uleb128	47
      00060A 0B                    4182 	.uleb128	11
      00060B 00                    4183 	.uleb128	0
      00060C 00                    4184 	.uleb128	0
      00060D 05                    4185 	.uleb128	5
      00060E 24                    4186 	.uleb128	36
      00060F 00                    4187 	.db	0
      000610 03                    4188 	.uleb128	3
      000611 08                    4189 	.uleb128	8
      000612 0B                    4190 	.uleb128	11
      000613 0B                    4191 	.uleb128	11
      000614 3E                    4192 	.uleb128	62
      000615 0B                    4193 	.uleb128	11
      000616 00                    4194 	.uleb128	0
      000617 00                    4195 	.uleb128	0
      000618 00                    4196 	.uleb128	0
                                   4197 
                                   4198 	.area .debug_info (NOLOAD)
      00294B 00 00 05 04           4199 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00294F                       4200 Ldebug_info_start:
      00294F 00 02                 4201 	.dw	2
      002951 00 00 05 74           4202 	.dw	0,(Ldebug_abbrev)
      002955 04                    4203 	.db	4
      002956 01                    4204 	.uleb128	1
      002957 2E 2E 2F 53 50 4C 2F  4205 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      00296E 00                    4206 	.db	0
      00296F 00 00 1C DA           4207 	.dw	0,(Ldebug_line_start+-4)
      002973 01                    4208 	.db	1
      002974 53 44 43 43 20 76 65  4209 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00298D 00                    4210 	.db	0
      00298E 02                    4211 	.uleb128	2
      00298F 41 44 43 32 5F 44 65  4212 	.ascii "ADC2_DeInit"
             49 6E 69 74
      00299A 00                    4213 	.db	0
      00299B 00 00 99 3E           4214 	.dw	0,(_ADC2_DeInit)
      00299F 00 00 99 53           4215 	.dw	0,(XG$ADC2_DeInit$0$0+1)
      0029A3 01                    4216 	.db	1
      0029A4 00 00 3E 34           4217 	.dw	0,(Ldebug_loc_start+2876)
      0029A8 03                    4218 	.uleb128	3
      0029A9 00 00 01 57           4219 	.dw	0,343
      0029AD 41 44 43 32 5F 49 6E  4220 	.ascii "ADC2_Init"
             69 74
      0029B6 00                    4221 	.db	0
      0029B7 00 00 99 53           4222 	.dw	0,(_ADC2_Init)
      0029BB 00 00 9B B2           4223 	.dw	0,(XG$ADC2_Init$0$0+1)
      0029BF 01                    4224 	.db	1
      0029C0 00 00 39 4C           4225 	.dw	0,(Ldebug_loc_start+1620)
      0029C4 04                    4226 	.uleb128	4
      0029C5 02                    4227 	.db	2
      0029C6 91                    4228 	.db	145
      0029C7 02                    4229 	.sleb128	2
      0029C8 41 44 43 32 5F 43 6F  4230 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      0029DB 00                    4231 	.db	0
      0029DC 00 00 01 57           4232 	.dw	0,343
      0029E0 04                    4233 	.uleb128	4
      0029E1 02                    4234 	.db	2
      0029E2 91                    4235 	.db	145
      0029E3 03                    4236 	.sleb128	3
      0029E4 41 44 43 32 5F 43 68  4237 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      0029F0 00                    4238 	.db	0
      0029F1 00 00 01 57           4239 	.dw	0,343
      0029F5 04                    4240 	.uleb128	4
      0029F6 02                    4241 	.db	2
      0029F7 91                    4242 	.db	145
      0029F8 04                    4243 	.sleb128	4
      0029F9 41 44 43 32 5F 50 72  4244 	.ascii "ADC2_PrescalerSelection"
             65 73 63 61 6C 65 72
             53 65 6C 65 63 74 69
             6F 6E
      002A10 00                    4245 	.db	0
      002A11 00 00 01 57           4246 	.dw	0,343
      002A15 04                    4247 	.uleb128	4
      002A16 02                    4248 	.db	2
      002A17 91                    4249 	.db	145
      002A18 05                    4250 	.sleb128	5
      002A19 41 44 43 32 5F 45 78  4251 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      002A28 00                    4252 	.db	0
      002A29 00 00 01 57           4253 	.dw	0,343
      002A2D 04                    4254 	.uleb128	4
      002A2E 02                    4255 	.db	2
      002A2F 91                    4256 	.db	145
      002A30 06                    4257 	.sleb128	6
      002A31 41 44 43 32 5F 45 78  4258 	.ascii "ADC2_ExtTriggerState"
             74 54 72 69 67 67 65
             72 53 74 61 74 65
      002A45 00                    4259 	.db	0
      002A46 00 00 01 57           4260 	.dw	0,343
      002A4A 04                    4261 	.uleb128	4
      002A4B 02                    4262 	.db	2
      002A4C 91                    4263 	.db	145
      002A4D 07                    4264 	.sleb128	7
      002A4E 41 44 43 32 5F 41 6C  4265 	.ascii "ADC2_Align"
             69 67 6E
      002A58 00                    4266 	.db	0
      002A59 00 00 01 57           4267 	.dw	0,343
      002A5D 04                    4268 	.uleb128	4
      002A5E 02                    4269 	.db	2
      002A5F 91                    4270 	.db	145
      002A60 08                    4271 	.sleb128	8
      002A61 41 44 43 32 5F 53 63  4272 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      002A7B 00                    4273 	.db	0
      002A7C 00 00 01 57           4274 	.dw	0,343
      002A80 04                    4275 	.uleb128	4
      002A81 02                    4276 	.db	2
      002A82 91                    4277 	.db	145
      002A83 09                    4278 	.sleb128	9
      002A84 41 44 43 32 5F 53 63  4279 	.ascii "ADC2_SchmittTriggerState"
             68 6D 69 74 74 54 72
             69 67 67 65 72 53 74
             61 74 65
      002A9C 00                    4280 	.db	0
      002A9D 00 00 01 57           4281 	.dw	0,343
      002AA1 00                    4282 	.uleb128	0
      002AA2 05                    4283 	.uleb128	5
      002AA3 75 6E 73 69 67 6E 65  4284 	.ascii "unsigned char"
             64 20 63 68 61 72
      002AB0 00                    4285 	.db	0
      002AB1 01                    4286 	.db	1
      002AB2 08                    4287 	.db	8
      002AB3 03                    4288 	.uleb128	3
      002AB4 00 00 01 A7           4289 	.dw	0,423
      002AB8 41 44 43 32 5F 43 6D  4290 	.ascii "ADC2_Cmd"
             64
      002AC0 00                    4291 	.db	0
      002AC1 00 00 9B B2           4292 	.dw	0,(_ADC2_Cmd)
      002AC5 00 00 9B E8           4293 	.dw	0,(XG$ADC2_Cmd$0$0+1)
      002AC9 01                    4294 	.db	1
      002ACA 00 00 38 E4           4295 	.dw	0,(Ldebug_loc_start+1516)
      002ACE 04                    4296 	.uleb128	4
      002ACF 02                    4297 	.db	2
      002AD0 91                    4298 	.db	145
      002AD1 02                    4299 	.sleb128	2
      002AD2 4E 65 77 53 74 61 74  4300 	.ascii "NewState"
             65
      002ADA 00                    4301 	.db	0
      002ADB 00 00 01 57           4302 	.dw	0,343
      002ADF 06                    4303 	.uleb128	6
      002AE0 00 00 9B DA           4304 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$143)
      002AE4 00 00 9B DF           4305 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$145)
      002AE8 06                    4306 	.uleb128	6
      002AE9 00 00 9B E2           4307 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$146)
      002AED 00 00 9B E7           4308 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$148)
      002AF1 00                    4309 	.uleb128	0
      002AF2 03                    4310 	.uleb128	3
      002AF3 00 00 01 EB           4311 	.dw	0,491
      002AF7 41 44 43 32 5F 49 54  4312 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      002B04 00                    4313 	.db	0
      002B05 00 00 9B E8           4314 	.dw	0,(_ADC2_ITConfig)
      002B09 00 00 9C 1E           4315 	.dw	0,(XG$ADC2_ITConfig$0$0+1)
      002B0D 01                    4316 	.db	1
      002B0E 00 00 38 7C           4317 	.dw	0,(Ldebug_loc_start+1412)
      002B12 04                    4318 	.uleb128	4
      002B13 02                    4319 	.db	2
      002B14 91                    4320 	.db	145
      002B15 02                    4321 	.sleb128	2
      002B16 4E 65 77 53 74 61 74  4322 	.ascii "NewState"
             65
      002B1E 00                    4323 	.db	0
      002B1F 00 00 01 57           4324 	.dw	0,343
      002B23 06                    4325 	.uleb128	6
      002B24 00 00 9C 10           4326 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$164)
      002B28 00 00 9C 15           4327 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$166)
      002B2C 06                    4328 	.uleb128	6
      002B2D 00 00 9C 18           4329 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$167)
      002B31 00 00 9C 1D           4330 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$169)
      002B35 00                    4331 	.uleb128	0
      002B36 03                    4332 	.uleb128	3
      002B37 00 00 02 2A           4333 	.dw	0,554
      002B3B 41 44 43 32 5F 50 72  4334 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      002B4F 00                    4335 	.db	0
      002B50 00 00 9C 1E           4336 	.dw	0,(_ADC2_PrescalerConfig)
      002B54 00 00 9C 84           4337 	.dw	0,(XG$ADC2_PrescalerConfig$0$0+1)
      002B58 01                    4338 	.db	1
      002B59 00 00 37 CC           4339 	.dw	0,(Ldebug_loc_start+1236)
      002B5D 04                    4340 	.uleb128	4
      002B5E 02                    4341 	.db	2
      002B5F 91                    4342 	.db	145
      002B60 02                    4343 	.sleb128	2
      002B61 41 44 43 32 5F 50 72  4344 	.ascii "ADC2_Prescaler"
             65 73 63 61 6C 65 72
      002B6F 00                    4345 	.db	0
      002B70 00 00 01 57           4346 	.dw	0,343
      002B74 00                    4347 	.uleb128	0
      002B75 03                    4348 	.uleb128	3
      002B76 00 00 02 DB           4349 	.dw	0,731
      002B7A 41 44 43 32 5F 53 63  4350 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      002B93 00                    4351 	.db	0
      002B94 00 00 9C 84           4352 	.dw	0,(_ADC2_SchmittTriggerConfig)
      002B98 00 00 9D E4           4353 	.dw	0,(XG$ADC2_SchmittTriggerConfig$0$0+1)
      002B9C 01                    4354 	.db	1
      002B9D 00 00 36 14           4355 	.dw	0,(Ldebug_loc_start+796)
      002BA1 04                    4356 	.uleb128	4
      002BA2 02                    4357 	.db	2
      002BA3 91                    4358 	.db	145
      002BA4 02                    4359 	.sleb128	2
      002BA5 41 44 43 32 5F 53 63  4360 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      002BBF 00                    4361 	.db	0
      002BC0 00 00 01 57           4362 	.dw	0,343
      002BC4 04                    4363 	.uleb128	4
      002BC5 02                    4364 	.db	2
      002BC6 91                    4365 	.db	145
      002BC7 03                    4366 	.sleb128	3
      002BC8 4E 65 77 53 74 61 74  4367 	.ascii "NewState"
             65
      002BD0 00                    4368 	.db	0
      002BD1 00 00 01 57           4369 	.dw	0,343
      002BD5 07                    4370 	.uleb128	7
      002BD6 00 00 02 A6           4371 	.dw	0,678
      002BDA 00 00 9D 60           4372 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$230)
      002BDE 06                    4373 	.uleb128	6
      002BDF 00 00 9D 67           4374 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$232)
      002BE3 00 00 9D 72           4375 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$235)
      002BE7 06                    4376 	.uleb128	6
      002BE8 00 00 9D 75           4377 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$236)
      002BEC 00 00 9D 80           4378 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$239)
      002BF0 00                    4379 	.uleb128	0
      002BF1 07                    4380 	.uleb128	7
      002BF2 00 00 02 C2           4381 	.dw	0,706
      002BF6 00 00 9D 9E           4382 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$245)
      002BFA 06                    4383 	.uleb128	6
      002BFB 00 00 9D A5           4384 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$247)
      002BFF 00 00 9D AB           4385 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$249)
      002C03 06                    4386 	.uleb128	6
      002C04 00 00 9D AE           4387 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$250)
      002C08 00 00 9D B3           4388 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$252)
      002C0C 00                    4389 	.uleb128	0
      002C0D 08                    4390 	.uleb128	8
      002C0E 00 00 9D CD           4391 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$257)
      002C12 06                    4392 	.uleb128	6
      002C13 00 00 9D D4           4393 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$259)
      002C17 00 00 9D DA           4394 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$261)
      002C1B 06                    4395 	.uleb128	6
      002C1C 00 00 9D DD           4396 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$262)
      002C20 00 00 9D E2           4397 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$264)
      002C24 00                    4398 	.uleb128	0
      002C25 00                    4399 	.uleb128	0
      002C26 03                    4400 	.uleb128	3
      002C27 00 00 03 5A           4401 	.dw	0,858
      002C2B 41 44 43 32 5F 43 6F  4402 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      002C40 00                    4403 	.db	0
      002C41 00 00 9D E4           4404 	.dw	0,(_ADC2_ConversionConfig)
      002C45 00 00 9F 08           4405 	.dw	0,(XG$ADC2_ConversionConfig$0$0+1)
      002C49 01                    4406 	.db	1
      002C4A 00 00 34 44           4407 	.dw	0,(Ldebug_loc_start+332)
      002C4E 04                    4408 	.uleb128	4
      002C4F 02                    4409 	.db	2
      002C50 91                    4410 	.db	145
      002C51 02                    4411 	.sleb128	2
      002C52 41 44 43 32 5F 43 6F  4412 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      002C65 00                    4413 	.db	0
      002C66 00 00 01 57           4414 	.dw	0,343
      002C6A 04                    4415 	.uleb128	4
      002C6B 02                    4416 	.db	2
      002C6C 91                    4417 	.db	145
      002C6D 03                    4418 	.sleb128	3
      002C6E 41 44 43 32 5F 43 68  4419 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      002C7A 00                    4420 	.db	0
      002C7B 00 00 01 57           4421 	.dw	0,343
      002C7F 04                    4422 	.uleb128	4
      002C80 02                    4423 	.db	2
      002C81 91                    4424 	.db	145
      002C82 04                    4425 	.sleb128	4
      002C83 41 44 43 32 5F 41 6C  4426 	.ascii "ADC2_Align"
             69 67 6E
      002C8D 00                    4427 	.db	0
      002C8E 00 00 01 57           4428 	.dw	0,343
      002C92 06                    4429 	.uleb128	6
      002C93 00 00 9E E7           4430 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$314)
      002C97 00 00 9E ED           4431 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$316)
      002C9B 06                    4432 	.uleb128	6
      002C9C 00 00 9E F0           4433 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$317)
      002CA0 00 00 9E F6           4434 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$319)
      002CA4 00                    4435 	.uleb128	0
      002CA5 03                    4436 	.uleb128	3
      002CA6 00 00 03 C3           4437 	.dw	0,963
      002CAA 41 44 43 32 5F 45 78  4438 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      002CC4 00                    4439 	.db	0
      002CC5 00 00 9F 08           4440 	.dw	0,(_ADC2_ExternalTriggerConfig)
      002CC9 00 00 9F 6C           4441 	.dw	0,(XG$ADC2_ExternalTriggerConfig$0$0+1)
      002CCD 01                    4442 	.db	1
      002CCE 00 00 33 88           4443 	.dw	0,(Ldebug_loc_start+144)
      002CD2 04                    4444 	.uleb128	4
      002CD3 02                    4445 	.db	2
      002CD4 91                    4446 	.db	145
      002CD5 02                    4447 	.sleb128	2
      002CD6 41 44 43 32 5F 45 78  4448 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      002CE5 00                    4449 	.db	0
      002CE6 00 00 01 57           4450 	.dw	0,343
      002CEA 04                    4451 	.uleb128	4
      002CEB 02                    4452 	.db	2
      002CEC 91                    4453 	.db	145
      002CED 03                    4454 	.sleb128	3
      002CEE 4E 65 77 53 74 61 74  4455 	.ascii "NewState"
             65
      002CF6 00                    4456 	.db	0
      002CF7 00 00 01 57           4457 	.dw	0,343
      002CFB 06                    4458 	.uleb128	6
      002CFC 00 00 9F 56           4459 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$346)
      002D00 00 00 9F 5B           4460 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$348)
      002D04 06                    4461 	.uleb128	6
      002D05 00 00 9F 5E           4462 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$349)
      002D09 00 00 9F 63           4463 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$351)
      002D0D 00                    4464 	.uleb128	0
      002D0E 02                    4465 	.uleb128	2
      002D0F 41 44 43 32 5F 53 74  4466 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      002D23 00                    4467 	.db	0
      002D24 00 00 9F 6C           4468 	.dw	0,(_ADC2_StartConversion)
      002D28 00 00 9F 75           4469 	.dw	0,(XG$ADC2_StartConversion$0$0+1)
      002D2C 01                    4470 	.db	1
      002D2D 00 00 33 74           4471 	.dw	0,(Ldebug_loc_start+124)
      002D31 05                    4472 	.uleb128	5
      002D32 75 6E 73 69 67 6E 65  4473 	.ascii "unsigned int"
             64 20 69 6E 74
      002D3E 00                    4474 	.db	0
      002D3F 02                    4475 	.db	2
      002D40 07                    4476 	.db	7
      002D41 09                    4477 	.uleb128	9
      002D42 00 00 04 56           4478 	.dw	0,1110
      002D46 41 44 43 32 5F 47 65  4479 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      002D5D 00                    4480 	.db	0
      002D5E 00 00 9F 75           4481 	.dw	0,(_ADC2_GetConversionValue)
      002D62 00 00 9F BD           4482 	.dw	0,(XG$ADC2_GetConversionValue$0$0+1)
      002D66 01                    4483 	.db	1
      002D67 00 00 33 48           4484 	.dw	0,(Ldebug_loc_start+80)
      002D6B 00 00 03 E6           4485 	.dw	0,998
      002D6F 06                    4486 	.uleb128	6
      002D70 00 00 9F 81           4487 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$366)
      002D74 00 00 9F 97           4488 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$370)
      002D78 06                    4489 	.uleb128	6
      002D79 00 00 9F 9A           4490 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$371)
      002D7D 00 00 9F B8           4491 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$375)
      002D81 0A                    4492 	.uleb128	10
      002D82 06                    4493 	.db	6
      002D83 54                    4494 	.db	84
      002D84 93                    4495 	.db	147
      002D85 01                    4496 	.uleb128	1
      002D86 53                    4497 	.db	83
      002D87 93                    4498 	.db	147
      002D88 01                    4499 	.uleb128	1
      002D89 74 65 6D 70 68        4500 	.ascii "temph"
      002D8E 00                    4501 	.db	0
      002D8F 00 00 03 E6           4502 	.dw	0,998
      002D93 0A                    4503 	.uleb128	10
      002D94 01                    4504 	.db	1
      002D95 50                    4505 	.db	80
      002D96 74 65 6D 70 6C        4506 	.ascii "templ"
      002D9B 00                    4507 	.db	0
      002D9C 00 00 01 57           4508 	.dw	0,343
      002DA0 00                    4509 	.uleb128	0
      002DA1 0B                    4510 	.uleb128	11
      002DA2 41 44 43 32 5F 47 65  4511 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      002DB4 00                    4512 	.db	0
      002DB5 00 00 9F BD           4513 	.dw	0,(_ADC2_GetFlagStatus)
      002DB9 00 00 9F C3           4514 	.dw	0,(XG$ADC2_GetFlagStatus$0$0+1)
      002DBD 01                    4515 	.db	1
      002DBE 00 00 33 34           4516 	.dw	0,(Ldebug_loc_start+60)
      002DC2 00 00 01 57           4517 	.dw	0,343
      002DC6 02                    4518 	.uleb128	2
      002DC7 41 44 43 32 5F 43 6C  4519 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      002DD5 00                    4520 	.db	0
      002DD6 00 00 9F C3           4521 	.dw	0,(_ADC2_ClearFlag)
      002DDA 00 00 9F CC           4522 	.dw	0,(XG$ADC2_ClearFlag$0$0+1)
      002DDE 01                    4523 	.db	1
      002DDF 00 00 33 20           4524 	.dw	0,(Ldebug_loc_start+40)
      002DE3 0B                    4525 	.uleb128	11
      002DE4 41 44 43 32 5F 47 65  4526 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      002DF4 00                    4527 	.db	0
      002DF5 00 00 9F CC           4528 	.dw	0,(_ADC2_GetITStatus)
      002DF9 00 00 9F D2           4529 	.dw	0,(XG$ADC2_GetITStatus$0$0+1)
      002DFD 01                    4530 	.db	1
      002DFE 00 00 33 0C           4531 	.dw	0,(Ldebug_loc_start+20)
      002E02 00 00 01 57           4532 	.dw	0,343
      002E06 02                    4533 	.uleb128	2
      002E07 41 44 43 32 5F 43 6C  4534 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      002E1D 00                    4535 	.db	0
      002E1E 00 00 9F D2           4536 	.dw	0,(_ADC2_ClearITPendingBit)
      002E22 00 00 9F DB           4537 	.dw	0,(XG$ADC2_ClearITPendingBit$0$0+1)
      002E26 01                    4538 	.db	1
      002E27 00 00 32 F8           4539 	.dw	0,(Ldebug_loc_start)
      002E2B 0C                    4540 	.uleb128	12
      002E2C 00 00 01 57           4541 	.dw	0,343
      002E30 0D                    4542 	.uleb128	13
      002E31 00 00 04 F2           4543 	.dw	0,1266
      002E35 18                    4544 	.db	24
      002E36 00 00 04 E0           4545 	.dw	0,1248
      002E3A 0E                    4546 	.uleb128	14
      002E3B 17                    4547 	.db	23
      002E3C 00                    4548 	.uleb128	0
      002E3D 0A                    4549 	.uleb128	10
      002E3E 05                    4550 	.db	5
      002E3F 03                    4551 	.db	3
      002E40 00 00 81 02           4552 	.dw	0,(___str_0)
      002E44 5F 5F 73 74 72 5F 30  4553 	.ascii "__str_0"
      002E4B 00                    4554 	.db	0
      002E4C 00 00 04 E5           4555 	.dw	0,1253
      002E50 00                    4556 	.uleb128	0
      002E51 00                    4557 	.uleb128	0
      002E52 00                    4558 	.uleb128	0
      002E53                       4559 Ldebug_info_end:
                                   4560 
                                   4561 	.area .debug_pubnames (NOLOAD)
      000A09 00 00 01 4A           4562 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000A0D                       4563 Ldebug_pubnames_start:
      000A0D 00 02                 4564 	.dw	2
      000A0F 00 00 29 4B           4565 	.dw	0,(Ldebug_info_start-4)
      000A13 00 00 05 08           4566 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000A17 00 00 00 43           4567 	.dw	0,67
      000A1B 41 44 43 32 5F 44 65  4568 	.ascii "ADC2_DeInit"
             49 6E 69 74
      000A26 00                    4569 	.db	0
      000A27 00 00 00 5D           4570 	.dw	0,93
      000A2B 41 44 43 32 5F 49 6E  4571 	.ascii "ADC2_Init"
             69 74
      000A34 00                    4572 	.db	0
      000A35 00 00 01 68           4573 	.dw	0,360
      000A39 41 44 43 32 5F 43 6D  4574 	.ascii "ADC2_Cmd"
             64
      000A41 00                    4575 	.db	0
      000A42 00 00 01 A7           4576 	.dw	0,423
      000A46 41 44 43 32 5F 49 54  4577 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      000A53 00                    4578 	.db	0
      000A54 00 00 01 EB           4579 	.dw	0,491
      000A58 41 44 43 32 5F 50 72  4580 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000A6C 00                    4581 	.db	0
      000A6D 00 00 02 2A           4582 	.dw	0,554
      000A71 41 44 43 32 5F 53 63  4583 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      000A8A 00                    4584 	.db	0
      000A8B 00 00 02 DB           4585 	.dw	0,731
      000A8F 41 44 43 32 5F 43 6F  4586 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      000AA4 00                    4587 	.db	0
      000AA5 00 00 03 5A           4588 	.dw	0,858
      000AA9 41 44 43 32 5F 45 78  4589 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      000AC3 00                    4590 	.db	0
      000AC4 00 00 03 C3           4591 	.dw	0,963
      000AC8 41 44 43 32 5F 53 74  4592 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      000ADC 00                    4593 	.db	0
      000ADD 00 00 03 F6           4594 	.dw	0,1014
      000AE1 41 44 43 32 5F 47 65  4595 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      000AF8 00                    4596 	.db	0
      000AF9 00 00 04 56           4597 	.dw	0,1110
      000AFD 41 44 43 32 5F 47 65  4598 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      000B0F 00                    4599 	.db	0
      000B10 00 00 04 7B           4600 	.dw	0,1147
      000B14 41 44 43 32 5F 43 6C  4601 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      000B22 00                    4602 	.db	0
      000B23 00 00 04 98           4603 	.dw	0,1176
      000B27 41 44 43 32 5F 47 65  4604 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000B37 00                    4605 	.db	0
      000B38 00 00 04 BB           4606 	.dw	0,1211
      000B3C 41 44 43 32 5F 43 6C  4607 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000B52 00                    4608 	.db	0
      000B53 00 00 00 00           4609 	.dw	0,0
      000B57                       4610 Ldebug_pubnames_end:
                                   4611 
                                   4612 	.area .debug_frame (NOLOAD)
      002B06 00 00                 4613 	.dw	0
      002B08 00 0E                 4614 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002B0A                       4615 Ldebug_CIE0_start:
      002B0A FF FF                 4616 	.dw	0xffff
      002B0C FF FF                 4617 	.dw	0xffff
      002B0E 01                    4618 	.db	1
      002B0F 00                    4619 	.db	0
      002B10 01                    4620 	.uleb128	1
      002B11 7F                    4621 	.sleb128	-1
      002B12 09                    4622 	.db	9
      002B13 0C                    4623 	.db	12
      002B14 08                    4624 	.uleb128	8
      002B15 02                    4625 	.uleb128	2
      002B16 89                    4626 	.db	137
      002B17 01                    4627 	.uleb128	1
      002B18                       4628 Ldebug_CIE0_end:
      002B18 00 00 00 13           4629 	.dw	0,19
      002B1C 00 00 2B 06           4630 	.dw	0,(Ldebug_CIE0_start-4)
      002B20 00 00 9F D2           4631 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)	;initial loc
      002B24 00 00 00 09           4632 	.dw	0,Sstm8s_adc2$ADC2_ClearITPendingBit$404-Sstm8s_adc2$ADC2_ClearITPendingBit$400
      002B28 01                    4633 	.db	1
      002B29 00 00 9F D2           4634 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)
      002B2D 0E                    4635 	.db	14
      002B2E 02                    4636 	.uleb128	2
                                   4637 
                                   4638 	.area .debug_frame (NOLOAD)
      002B2F 00 00                 4639 	.dw	0
      002B31 00 0E                 4640 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002B33                       4641 Ldebug_CIE1_start:
      002B33 FF FF                 4642 	.dw	0xffff
      002B35 FF FF                 4643 	.dw	0xffff
      002B37 01                    4644 	.db	1
      002B38 00                    4645 	.db	0
      002B39 01                    4646 	.uleb128	1
      002B3A 7F                    4647 	.sleb128	-1
      002B3B 09                    4648 	.db	9
      002B3C 0C                    4649 	.db	12
      002B3D 08                    4650 	.uleb128	8
      002B3E 02                    4651 	.uleb128	2
      002B3F 89                    4652 	.db	137
      002B40 01                    4653 	.uleb128	1
      002B41                       4654 Ldebug_CIE1_end:
      002B41 00 00 00 13           4655 	.dw	0,19
      002B45 00 00 2B 2F           4656 	.dw	0,(Ldebug_CIE1_start-4)
      002B49 00 00 9F CC           4657 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)	;initial loc
      002B4D 00 00 00 06           4658 	.dw	0,Sstm8s_adc2$ADC2_GetITStatus$398-Sstm8s_adc2$ADC2_GetITStatus$394
      002B51 01                    4659 	.db	1
      002B52 00 00 9F CC           4660 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)
      002B56 0E                    4661 	.db	14
      002B57 02                    4662 	.uleb128	2
                                   4663 
                                   4664 	.area .debug_frame (NOLOAD)
      002B58 00 00                 4665 	.dw	0
      002B5A 00 0E                 4666 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002B5C                       4667 Ldebug_CIE2_start:
      002B5C FF FF                 4668 	.dw	0xffff
      002B5E FF FF                 4669 	.dw	0xffff
      002B60 01                    4670 	.db	1
      002B61 00                    4671 	.db	0
      002B62 01                    4672 	.uleb128	1
      002B63 7F                    4673 	.sleb128	-1
      002B64 09                    4674 	.db	9
      002B65 0C                    4675 	.db	12
      002B66 08                    4676 	.uleb128	8
      002B67 02                    4677 	.uleb128	2
      002B68 89                    4678 	.db	137
      002B69 01                    4679 	.uleb128	1
      002B6A                       4680 Ldebug_CIE2_end:
      002B6A 00 00 00 13           4681 	.dw	0,19
      002B6E 00 00 2B 58           4682 	.dw	0,(Ldebug_CIE2_start-4)
      002B72 00 00 9F C3           4683 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)	;initial loc
      002B76 00 00 00 09           4684 	.dw	0,Sstm8s_adc2$ADC2_ClearFlag$392-Sstm8s_adc2$ADC2_ClearFlag$388
      002B7A 01                    4685 	.db	1
      002B7B 00 00 9F C3           4686 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)
      002B7F 0E                    4687 	.db	14
      002B80 02                    4688 	.uleb128	2
                                   4689 
                                   4690 	.area .debug_frame (NOLOAD)
      002B81 00 00                 4691 	.dw	0
      002B83 00 0E                 4692 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002B85                       4693 Ldebug_CIE3_start:
      002B85 FF FF                 4694 	.dw	0xffff
      002B87 FF FF                 4695 	.dw	0xffff
      002B89 01                    4696 	.db	1
      002B8A 00                    4697 	.db	0
      002B8B 01                    4698 	.uleb128	1
      002B8C 7F                    4699 	.sleb128	-1
      002B8D 09                    4700 	.db	9
      002B8E 0C                    4701 	.db	12
      002B8F 08                    4702 	.uleb128	8
      002B90 02                    4703 	.uleb128	2
      002B91 89                    4704 	.db	137
      002B92 01                    4705 	.uleb128	1
      002B93                       4706 Ldebug_CIE3_end:
      002B93 00 00 00 13           4707 	.dw	0,19
      002B97 00 00 2B 81           4708 	.dw	0,(Ldebug_CIE3_start-4)
      002B9B 00 00 9F BD           4709 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)	;initial loc
      002B9F 00 00 00 06           4710 	.dw	0,Sstm8s_adc2$ADC2_GetFlagStatus$386-Sstm8s_adc2$ADC2_GetFlagStatus$382
      002BA3 01                    4711 	.db	1
      002BA4 00 00 9F BD           4712 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)
      002BA8 0E                    4713 	.db	14
      002BA9 02                    4714 	.uleb128	2
                                   4715 
                                   4716 	.area .debug_frame (NOLOAD)
      002BAA 00 00                 4717 	.dw	0
      002BAC 00 0E                 4718 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002BAE                       4719 Ldebug_CIE4_start:
      002BAE FF FF                 4720 	.dw	0xffff
      002BB0 FF FF                 4721 	.dw	0xffff
      002BB2 01                    4722 	.db	1
      002BB3 00                    4723 	.db	0
      002BB4 01                    4724 	.uleb128	1
      002BB5 7F                    4725 	.sleb128	-1
      002BB6 09                    4726 	.db	9
      002BB7 0C                    4727 	.db	12
      002BB8 08                    4728 	.uleb128	8
      002BB9 02                    4729 	.uleb128	2
      002BBA 89                    4730 	.db	137
      002BBB 01                    4731 	.uleb128	1
      002BBC                       4732 Ldebug_CIE4_end:
      002BBC 00 00 00 21           4733 	.dw	0,33
      002BC0 00 00 2B AA           4734 	.dw	0,(Ldebug_CIE4_start-4)
      002BC4 00 00 9F 75           4735 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)	;initial loc
      002BC8 00 00 00 48           4736 	.dw	0,Sstm8s_adc2$ADC2_GetConversionValue$380-Sstm8s_adc2$ADC2_GetConversionValue$363
      002BCC 01                    4737 	.db	1
      002BCD 00 00 9F 75           4738 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)
      002BD1 0E                    4739 	.db	14
      002BD2 02                    4740 	.uleb128	2
      002BD3 01                    4741 	.db	1
      002BD4 00 00 9F 77           4742 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
      002BD8 0E                    4743 	.db	14
      002BD9 06                    4744 	.uleb128	6
      002BDA 01                    4745 	.db	1
      002BDB 00 00 9F BC           4746 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
      002BDF 0E                    4747 	.db	14
      002BE0 02                    4748 	.uleb128	2
                                   4749 
                                   4750 	.area .debug_frame (NOLOAD)
      002BE1 00 00                 4751 	.dw	0
      002BE3 00 0E                 4752 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      002BE5                       4753 Ldebug_CIE5_start:
      002BE5 FF FF                 4754 	.dw	0xffff
      002BE7 FF FF                 4755 	.dw	0xffff
      002BE9 01                    4756 	.db	1
      002BEA 00                    4757 	.db	0
      002BEB 01                    4758 	.uleb128	1
      002BEC 7F                    4759 	.sleb128	-1
      002BED 09                    4760 	.db	9
      002BEE 0C                    4761 	.db	12
      002BEF 08                    4762 	.uleb128	8
      002BF0 02                    4763 	.uleb128	2
      002BF1 89                    4764 	.db	137
      002BF2 01                    4765 	.uleb128	1
      002BF3                       4766 Ldebug_CIE5_end:
      002BF3 00 00 00 13           4767 	.dw	0,19
      002BF7 00 00 2B E1           4768 	.dw	0,(Ldebug_CIE5_start-4)
      002BFB 00 00 9F 6C           4769 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)	;initial loc
      002BFF 00 00 00 09           4770 	.dw	0,Sstm8s_adc2$ADC2_StartConversion$361-Sstm8s_adc2$ADC2_StartConversion$357
      002C03 01                    4771 	.db	1
      002C04 00 00 9F 6C           4772 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)
      002C08 0E                    4773 	.db	14
      002C09 02                    4774 	.uleb128	2
                                   4775 
                                   4776 	.area .debug_frame (NOLOAD)
      002C0A 00 00                 4777 	.dw	0
      002C0C 00 0E                 4778 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      002C0E                       4779 Ldebug_CIE6_start:
      002C0E FF FF                 4780 	.dw	0xffff
      002C10 FF FF                 4781 	.dw	0xffff
      002C12 01                    4782 	.db	1
      002C13 00                    4783 	.db	0
      002C14 01                    4784 	.uleb128	1
      002C15 7F                    4785 	.sleb128	-1
      002C16 09                    4786 	.db	9
      002C17 0C                    4787 	.db	12
      002C18 08                    4788 	.uleb128	8
      002C19 02                    4789 	.uleb128	2
      002C1A 89                    4790 	.db	137
      002C1B 01                    4791 	.uleb128	1
      002C1C                       4792 Ldebug_CIE6_end:
      002C1C 00 00 00 75           4793 	.dw	0,117
      002C20 00 00 2C 0A           4794 	.dw	0,(Ldebug_CIE6_start-4)
      002C24 00 00 9F 08           4795 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)	;initial loc
      002C28 00 00 00 64           4796 	.dw	0,Sstm8s_adc2$ADC2_ExternalTriggerConfig$355-Sstm8s_adc2$ADC2_ExternalTriggerConfig$327
      002C2C 01                    4797 	.db	1
      002C2D 00 00 9F 08           4798 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)
      002C31 0E                    4799 	.db	14
      002C32 02                    4800 	.uleb128	2
      002C33 01                    4801 	.db	1
      002C34 00 00 9F 17           4802 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
      002C38 0E                    4803 	.db	14
      002C39 02                    4804 	.uleb128	2
      002C3A 01                    4805 	.db	1
      002C3B 00 00 9F 19           4806 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
      002C3F 0E                    4807 	.db	14
      002C40 03                    4808 	.uleb128	3
      002C41 01                    4809 	.db	1
      002C42 00 00 9F 1B           4810 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
      002C46 0E                    4811 	.db	14
      002C47 04                    4812 	.uleb128	4
      002C48 01                    4813 	.db	1
      002C49 00 00 9F 1D           4814 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
      002C4D 0E                    4815 	.db	14
      002C4E 06                    4816 	.uleb128	6
      002C4F 01                    4817 	.db	1
      002C50 00 00 9F 1F           4818 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
      002C54 0E                    4819 	.db	14
      002C55 07                    4820 	.uleb128	7
      002C56 01                    4821 	.db	1
      002C57 00 00 9F 21           4822 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
      002C5B 0E                    4823 	.db	14
      002C5C 08                    4824 	.uleb128	8
      002C5D 01                    4825 	.db	1
      002C5E 00 00 9F 26           4826 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
      002C62 0E                    4827 	.db	14
      002C63 02                    4828 	.uleb128	2
      002C64 01                    4829 	.db	1
      002C65 00 00 9F 35           4830 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
      002C69 0E                    4831 	.db	14
      002C6A 02                    4832 	.uleb128	2
      002C6B 01                    4833 	.db	1
      002C6C 00 00 9F 37           4834 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
      002C70 0E                    4835 	.db	14
      002C71 03                    4836 	.uleb128	3
      002C72 01                    4837 	.db	1
      002C73 00 00 9F 39           4838 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
      002C77 0E                    4839 	.db	14
      002C78 04                    4840 	.uleb128	4
      002C79 01                    4841 	.db	1
      002C7A 00 00 9F 3B           4842 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
      002C7E 0E                    4843 	.db	14
      002C7F 06                    4844 	.uleb128	6
      002C80 01                    4845 	.db	1
      002C81 00 00 9F 3D           4846 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
      002C85 0E                    4847 	.db	14
      002C86 07                    4848 	.uleb128	7
      002C87 01                    4849 	.db	1
      002C88 00 00 9F 3F           4850 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
      002C8C 0E                    4851 	.db	14
      002C8D 08                    4852 	.uleb128	8
      002C8E 01                    4853 	.db	1
      002C8F 00 00 9F 44           4854 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
      002C93 0E                    4855 	.db	14
      002C94 02                    4856 	.uleb128	2
                                   4857 
                                   4858 	.area .debug_frame (NOLOAD)
      002C95 00 00                 4859 	.dw	0
      002C97 00 0E                 4860 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      002C99                       4861 Ldebug_CIE7_start:
      002C99 FF FF                 4862 	.dw	0xffff
      002C9B FF FF                 4863 	.dw	0xffff
      002C9D 01                    4864 	.db	1
      002C9E 00                    4865 	.db	0
      002C9F 01                    4866 	.uleb128	1
      002CA0 7F                    4867 	.sleb128	-1
      002CA1 09                    4868 	.db	9
      002CA2 0C                    4869 	.db	12
      002CA3 08                    4870 	.uleb128	8
      002CA4 02                    4871 	.uleb128	2
      002CA5 89                    4872 	.db	137
      002CA6 01                    4873 	.uleb128	1
      002CA7                       4874 Ldebug_CIE7_end:
      002CA7 00 00 01 16           4875 	.dw	0,278
      002CAB 00 00 2C 95           4876 	.dw	0,(Ldebug_CIE7_start-4)
      002CAF 00 00 9D E4           4877 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)	;initial loc
      002CB3 00 00 01 24           4878 	.dw	0,Sstm8s_adc2$ADC2_ConversionConfig$325-Sstm8s_adc2$ADC2_ConversionConfig$270
      002CB7 01                    4879 	.db	1
      002CB8 00 00 9D E4           4880 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)
      002CBC 0E                    4881 	.db	14
      002CBD 02                    4882 	.uleb128	2
      002CBE 01                    4883 	.db	1
      002CBF 00 00 9D E5           4884 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
      002CC3 0E                    4885 	.db	14
      002CC4 03                    4886 	.uleb128	3
      002CC5 01                    4887 	.db	1
      002CC6 00 00 9D F3           4888 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
      002CCA 0E                    4889 	.db	14
      002CCB 03                    4890 	.uleb128	3
      002CCC 01                    4891 	.db	1
      002CCD 00 00 9E 03           4892 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
      002CD1 0E                    4893 	.db	14
      002CD2 04                    4894 	.uleb128	4
      002CD3 01                    4895 	.db	1
      002CD4 00 00 9E 05           4896 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
      002CD8 0E                    4897 	.db	14
      002CD9 06                    4898 	.uleb128	6
      002CDA 01                    4899 	.db	1
      002CDB 00 00 9E 07           4900 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
      002CDF 0E                    4901 	.db	14
      002CE0 07                    4902 	.uleb128	7
      002CE1 01                    4903 	.db	1
      002CE2 00 00 9E 09           4904 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
      002CE6 0E                    4905 	.db	14
      002CE7 08                    4906 	.uleb128	8
      002CE8 01                    4907 	.db	1
      002CE9 00 00 9E 0B           4908 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
      002CED 0E                    4909 	.db	14
      002CEE 09                    4910 	.uleb128	9
      002CEF 01                    4911 	.db	1
      002CF0 00 00 9E 10           4912 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
      002CF4 0E                    4913 	.db	14
      002CF5 03                    4914 	.uleb128	3
      002CF6 01                    4915 	.db	1
      002CF7 00 00 9E 1F           4916 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
      002CFB 0E                    4917 	.db	14
      002CFC 03                    4918 	.uleb128	3
      002CFD 01                    4919 	.db	1
      002CFE 00 00 9E 28           4920 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
      002D02 0E                    4921 	.db	14
      002D03 03                    4922 	.uleb128	3
      002D04 01                    4923 	.db	1
      002D05 00 00 9E 31           4924 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
      002D09 0E                    4925 	.db	14
      002D0A 03                    4926 	.uleb128	3
      002D0B 01                    4927 	.db	1
      002D0C 00 00 9E 3A           4928 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
      002D10 0E                    4929 	.db	14
      002D11 03                    4930 	.uleb128	3
      002D12 01                    4931 	.db	1
      002D13 00 00 9E 43           4932 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
      002D17 0E                    4933 	.db	14
      002D18 03                    4934 	.uleb128	3
      002D19 01                    4935 	.db	1
      002D1A 00 00 9E 4C           4936 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
      002D1E 0E                    4937 	.db	14
      002D1F 03                    4938 	.uleb128	3
      002D20 01                    4939 	.db	1
      002D21 00 00 9E 55           4940 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
      002D25 0E                    4941 	.db	14
      002D26 03                    4942 	.uleb128	3
      002D27 01                    4943 	.db	1
      002D28 00 00 9E 5E           4944 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
      002D2C 0E                    4945 	.db	14
      002D2D 03                    4946 	.uleb128	3
      002D2E 01                    4947 	.db	1
      002D2F 00 00 9E 67           4948 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
      002D33 0E                    4949 	.db	14
      002D34 03                    4950 	.uleb128	3
      002D35 01                    4951 	.db	1
      002D36 00 00 9E 70           4952 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
      002D3A 0E                    4953 	.db	14
      002D3B 03                    4954 	.uleb128	3
      002D3C 01                    4955 	.db	1
      002D3D 00 00 9E 79           4956 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
      002D41 0E                    4957 	.db	14
      002D42 03                    4958 	.uleb128	3
      002D43 01                    4959 	.db	1
      002D44 00 00 9E 82           4960 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
      002D48 0E                    4961 	.db	14
      002D49 03                    4962 	.uleb128	3
      002D4A 01                    4963 	.db	1
      002D4B 00 00 9E 8B           4964 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
      002D4F 0E                    4965 	.db	14
      002D50 03                    4966 	.uleb128	3
      002D51 01                    4967 	.db	1
      002D52 00 00 9E 94           4968 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
      002D56 0E                    4969 	.db	14
      002D57 03                    4970 	.uleb128	3
      002D58 01                    4971 	.db	1
      002D59 00 00 9E 9D           4972 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
      002D5D 0E                    4973 	.db	14
      002D5E 03                    4974 	.uleb128	3
      002D5F 01                    4975 	.db	1
      002D60 00 00 9E 9F           4976 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
      002D64 0E                    4977 	.db	14
      002D65 04                    4978 	.uleb128	4
      002D66 01                    4979 	.db	1
      002D67 00 00 9E A1           4980 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
      002D6B 0E                    4981 	.db	14
      002D6C 06                    4982 	.uleb128	6
      002D6D 01                    4983 	.db	1
      002D6E 00 00 9E A3           4984 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
      002D72 0E                    4985 	.db	14
      002D73 07                    4986 	.uleb128	7
      002D74 01                    4987 	.db	1
      002D75 00 00 9E A5           4988 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
      002D79 0E                    4989 	.db	14
      002D7A 08                    4990 	.uleb128	8
      002D7B 01                    4991 	.db	1
      002D7C 00 00 9E A7           4992 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
      002D80 0E                    4993 	.db	14
      002D81 09                    4994 	.uleb128	9
      002D82 01                    4995 	.db	1
      002D83 00 00 9E AC           4996 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
      002D87 0E                    4997 	.db	14
      002D88 03                    4998 	.uleb128	3
      002D89 01                    4999 	.db	1
      002D8A 00 00 9E BC           5000 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
      002D8E 0E                    5001 	.db	14
      002D8F 03                    5002 	.uleb128	3
      002D90 01                    5003 	.db	1
      002D91 00 00 9E BE           5004 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
      002D95 0E                    5005 	.db	14
      002D96 04                    5006 	.uleb128	4
      002D97 01                    5007 	.db	1
      002D98 00 00 9E C0           5008 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
      002D9C 0E                    5009 	.db	14
      002D9D 06                    5010 	.uleb128	6
      002D9E 01                    5011 	.db	1
      002D9F 00 00 9E C2           5012 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
      002DA3 0E                    5013 	.db	14
      002DA4 07                    5014 	.uleb128	7
      002DA5 01                    5015 	.db	1
      002DA6 00 00 9E C4           5016 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
      002DAA 0E                    5017 	.db	14
      002DAB 08                    5018 	.uleb128	8
      002DAC 01                    5019 	.db	1
      002DAD 00 00 9E C6           5020 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
      002DB1 0E                    5021 	.db	14
      002DB2 09                    5022 	.uleb128	9
      002DB3 01                    5023 	.db	1
      002DB4 00 00 9E CB           5024 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
      002DB8 0E                    5025 	.db	14
      002DB9 03                    5026 	.uleb128	3
      002DBA 01                    5027 	.db	1
      002DBB 00 00 9F 07           5028 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
      002DBF 0E                    5029 	.db	14
      002DC0 02                    5030 	.uleb128	2
                                   5031 
                                   5032 	.area .debug_frame (NOLOAD)
      002DC1 00 00                 5033 	.dw	0
      002DC3 00 0E                 5034 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002DC5                       5035 Ldebug_CIE8_start:
      002DC5 FF FF                 5036 	.dw	0xffff
      002DC7 FF FF                 5037 	.dw	0xffff
      002DC9 01                    5038 	.db	1
      002DCA 00                    5039 	.db	0
      002DCB 01                    5040 	.uleb128	1
      002DCC 7F                    5041 	.sleb128	-1
      002DCD 09                    5042 	.db	9
      002DCE 0C                    5043 	.db	12
      002DCF 08                    5044 	.uleb128	8
      002DD0 02                    5045 	.uleb128	2
      002DD1 89                    5046 	.db	137
      002DD2 01                    5047 	.uleb128	1
      002DD3                       5048 Ldebug_CIE8_end:
      002DD3 00 00 01 08           5049 	.dw	0,264
      002DD7 00 00 2D C1           5050 	.dw	0,(Ldebug_CIE8_start-4)
      002DDB 00 00 9C 84           5051 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)	;initial loc
      002DDF 00 00 01 60           5052 	.dw	0,Sstm8s_adc2$ADC2_SchmittTriggerConfig$268-Sstm8s_adc2$ADC2_SchmittTriggerConfig$195
      002DE3 01                    5053 	.db	1
      002DE4 00 00 9C 84           5054 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)
      002DE8 0E                    5055 	.db	14
      002DE9 02                    5056 	.uleb128	2
      002DEA 01                    5057 	.db	1
      002DEB 00 00 9C 85           5058 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
      002DEF 0E                    5059 	.db	14
      002DF0 03                    5060 	.uleb128	3
      002DF1 01                    5061 	.db	1
      002DF2 00 00 9C 94           5062 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
      002DF6 0E                    5063 	.db	14
      002DF7 03                    5064 	.uleb128	3
      002DF8 01                    5065 	.db	1
      002DF9 00 00 9C A3           5066 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
      002DFD 0E                    5067 	.db	14
      002DFE 03                    5068 	.uleb128	3
      002DFF 01                    5069 	.db	1
      002E00 00 00 9C AC           5070 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
      002E04 0E                    5071 	.db	14
      002E05 03                    5072 	.uleb128	3
      002E06 01                    5073 	.db	1
      002E07 00 00 9C B5           5074 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
      002E0B 0E                    5075 	.db	14
      002E0C 03                    5076 	.uleb128	3
      002E0D 01                    5077 	.db	1
      002E0E 00 00 9C BE           5078 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
      002E12 0E                    5079 	.db	14
      002E13 03                    5080 	.uleb128	3
      002E14 01                    5081 	.db	1
      002E15 00 00 9C C7           5082 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
      002E19 0E                    5083 	.db	14
      002E1A 03                    5084 	.uleb128	3
      002E1B 01                    5085 	.db	1
      002E1C 00 00 9C D0           5086 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
      002E20 0E                    5087 	.db	14
      002E21 03                    5088 	.uleb128	3
      002E22 01                    5089 	.db	1
      002E23 00 00 9C D9           5090 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
      002E27 0E                    5091 	.db	14
      002E28 03                    5092 	.uleb128	3
      002E29 01                    5093 	.db	1
      002E2A 00 00 9C E2           5094 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
      002E2E 0E                    5095 	.db	14
      002E2F 03                    5096 	.uleb128	3
      002E30 01                    5097 	.db	1
      002E31 00 00 9C EB           5098 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
      002E35 0E                    5099 	.db	14
      002E36 03                    5100 	.uleb128	3
      002E37 01                    5101 	.db	1
      002E38 00 00 9C F4           5102 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
      002E3C 0E                    5103 	.db	14
      002E3D 03                    5104 	.uleb128	3
      002E3E 01                    5105 	.db	1
      002E3F 00 00 9C FD           5106 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
      002E43 0E                    5107 	.db	14
      002E44 03                    5108 	.uleb128	3
      002E45 01                    5109 	.db	1
      002E46 00 00 9D 06           5110 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
      002E4A 0E                    5111 	.db	14
      002E4B 03                    5112 	.uleb128	3
      002E4C 01                    5113 	.db	1
      002E4D 00 00 9D 0F           5114 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
      002E51 0E                    5115 	.db	14
      002E52 03                    5116 	.uleb128	3
      002E53 01                    5117 	.db	1
      002E54 00 00 9D 18           5118 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
      002E58 0E                    5119 	.db	14
      002E59 03                    5120 	.uleb128	3
      002E5A 01                    5121 	.db	1
      002E5B 00 00 9D 21           5122 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
      002E5F 0E                    5123 	.db	14
      002E60 03                    5124 	.uleb128	3
      002E61 01                    5125 	.db	1
      002E62 00 00 9D 2A           5126 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
      002E66 0E                    5127 	.db	14
      002E67 04                    5128 	.uleb128	4
      002E68 01                    5129 	.db	1
      002E69 00 00 9D 2C           5130 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
      002E6D 0E                    5131 	.db	14
      002E6E 06                    5132 	.uleb128	6
      002E6F 01                    5133 	.db	1
      002E70 00 00 9D 2E           5134 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
      002E74 0E                    5135 	.db	14
      002E75 07                    5136 	.uleb128	7
      002E76 01                    5137 	.db	1
      002E77 00 00 9D 30           5138 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
      002E7B 0E                    5139 	.db	14
      002E7C 08                    5140 	.uleb128	8
      002E7D 01                    5141 	.db	1
      002E7E 00 00 9D 32           5142 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
      002E82 0E                    5143 	.db	14
      002E83 09                    5144 	.uleb128	9
      002E84 01                    5145 	.db	1
      002E85 00 00 9D 37           5146 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
      002E89 0E                    5147 	.db	14
      002E8A 03                    5148 	.uleb128	3
      002E8B 01                    5149 	.db	1
      002E8C 00 00 9D 46           5150 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
      002E90 0E                    5151 	.db	14
      002E91 03                    5152 	.uleb128	3
      002E92 01                    5153 	.db	1
      002E93 00 00 9D 48           5154 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
      002E97 0E                    5155 	.db	14
      002E98 04                    5156 	.uleb128	4
      002E99 01                    5157 	.db	1
      002E9A 00 00 9D 4A           5158 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
      002E9E 0E                    5159 	.db	14
      002E9F 06                    5160 	.uleb128	6
      002EA0 01                    5161 	.db	1
      002EA1 00 00 9D 4C           5162 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
      002EA5 0E                    5163 	.db	14
      002EA6 07                    5164 	.uleb128	7
      002EA7 01                    5165 	.db	1
      002EA8 00 00 9D 4E           5166 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
      002EAC 0E                    5167 	.db	14
      002EAD 08                    5168 	.uleb128	8
      002EAE 01                    5169 	.db	1
      002EAF 00 00 9D 50           5170 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
      002EB3 0E                    5171 	.db	14
      002EB4 09                    5172 	.uleb128	9
      002EB5 01                    5173 	.db	1
      002EB6 00 00 9D 55           5174 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
      002EBA 0E                    5175 	.db	14
      002EBB 03                    5176 	.uleb128	3
      002EBC 01                    5177 	.db	1
      002EBD 00 00 9D 94           5178 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
      002EC1 0E                    5179 	.db	14
      002EC2 04                    5180 	.uleb128	4
      002EC3 01                    5181 	.db	1
      002EC4 00 00 9D 9E           5182 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
      002EC8 0E                    5183 	.db	14
      002EC9 03                    5184 	.uleb128	3
      002ECA 01                    5185 	.db	1
      002ECB 00 00 9D C3           5186 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
      002ECF 0E                    5187 	.db	14
      002ED0 04                    5188 	.uleb128	4
      002ED1 01                    5189 	.db	1
      002ED2 00 00 9D CD           5190 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
      002ED6 0E                    5191 	.db	14
      002ED7 03                    5192 	.uleb128	3
      002ED8 01                    5193 	.db	1
      002ED9 00 00 9D E3           5194 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
      002EDD 0E                    5195 	.db	14
      002EDE 02                    5196 	.uleb128	2
                                   5197 
                                   5198 	.area .debug_frame (NOLOAD)
      002EDF 00 00                 5199 	.dw	0
      002EE1 00 0E                 5200 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002EE3                       5201 Ldebug_CIE9_start:
      002EE3 FF FF                 5202 	.dw	0xffff
      002EE5 FF FF                 5203 	.dw	0xffff
      002EE7 01                    5204 	.db	1
      002EE8 00                    5205 	.db	0
      002EE9 01                    5206 	.uleb128	1
      002EEA 7F                    5207 	.sleb128	-1
      002EEB 09                    5208 	.db	9
      002EEC 0C                    5209 	.db	12
      002EED 08                    5210 	.uleb128	8
      002EEE 02                    5211 	.uleb128	2
      002EEF 89                    5212 	.db	137
      002EF0 01                    5213 	.uleb128	1
      002EF1                       5214 Ldebug_CIE9_end:
      002EF1 00 00 00 6E           5215 	.dw	0,110
      002EF5 00 00 2E DF           5216 	.dw	0,(Ldebug_CIE9_start-4)
      002EF9 00 00 9C 1E           5217 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)	;initial loc
      002EFD 00 00 00 66           5218 	.dw	0,Sstm8s_adc2$ADC2_PrescalerConfig$193-Sstm8s_adc2$ADC2_PrescalerConfig$174
      002F01 01                    5219 	.db	1
      002F02 00 00 9C 1E           5220 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)
      002F06 0E                    5221 	.db	14
      002F07 02                    5222 	.uleb128	2
      002F08 01                    5223 	.db	1
      002F09 00 00 9C 2E           5224 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
      002F0D 0E                    5225 	.db	14
      002F0E 02                    5226 	.uleb128	2
      002F0F 01                    5227 	.db	1
      002F10 00 00 9C 37           5228 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
      002F14 0E                    5229 	.db	14
      002F15 02                    5230 	.uleb128	2
      002F16 01                    5231 	.db	1
      002F17 00 00 9C 40           5232 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
      002F1B 0E                    5233 	.db	14
      002F1C 02                    5234 	.uleb128	2
      002F1D 01                    5235 	.db	1
      002F1E 00 00 9C 49           5236 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
      002F22 0E                    5237 	.db	14
      002F23 02                    5238 	.uleb128	2
      002F24 01                    5239 	.db	1
      002F25 00 00 9C 52           5240 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
      002F29 0E                    5241 	.db	14
      002F2A 02                    5242 	.uleb128	2
      002F2B 01                    5243 	.db	1
      002F2C 00 00 9C 5B           5244 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
      002F30 0E                    5245 	.db	14
      002F31 02                    5246 	.uleb128	2
      002F32 01                    5247 	.db	1
      002F33 00 00 9C 64           5248 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
      002F37 0E                    5249 	.db	14
      002F38 02                    5250 	.uleb128	2
      002F39 01                    5251 	.db	1
      002F3A 00 00 9C 66           5252 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
      002F3E 0E                    5253 	.db	14
      002F3F 03                    5254 	.uleb128	3
      002F40 01                    5255 	.db	1
      002F41 00 00 9C 68           5256 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
      002F45 0E                    5257 	.db	14
      002F46 05                    5258 	.uleb128	5
      002F47 01                    5259 	.db	1
      002F48 00 00 9C 6A           5260 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
      002F4C 0E                    5261 	.db	14
      002F4D 06                    5262 	.uleb128	6
      002F4E 01                    5263 	.db	1
      002F4F 00 00 9C 6C           5264 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
      002F53 0E                    5265 	.db	14
      002F54 07                    5266 	.uleb128	7
      002F55 01                    5267 	.db	1
      002F56 00 00 9C 6E           5268 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
      002F5A 0E                    5269 	.db	14
      002F5B 08                    5270 	.uleb128	8
      002F5C 01                    5271 	.db	1
      002F5D 00 00 9C 73           5272 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
      002F61 0E                    5273 	.db	14
      002F62 02                    5274 	.uleb128	2
                                   5275 
                                   5276 	.area .debug_frame (NOLOAD)
      002F63 00 00                 5277 	.dw	0
      002F65 00 0E                 5278 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      002F67                       5279 Ldebug_CIE10_start:
      002F67 FF FF                 5280 	.dw	0xffff
      002F69 FF FF                 5281 	.dw	0xffff
      002F6B 01                    5282 	.db	1
      002F6C 00                    5283 	.db	0
      002F6D 01                    5284 	.uleb128	1
      002F6E 7F                    5285 	.sleb128	-1
      002F6F 09                    5286 	.db	9
      002F70 0C                    5287 	.db	12
      002F71 08                    5288 	.uleb128	8
      002F72 02                    5289 	.uleb128	2
      002F73 89                    5290 	.db	137
      002F74 01                    5291 	.uleb128	1
      002F75                       5292 Ldebug_CIE10_end:
      002F75 00 00 00 44           5293 	.dw	0,68
      002F79 00 00 2F 63           5294 	.dw	0,(Ldebug_CIE10_start-4)
      002F7D 00 00 9B E8           5295 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)	;initial loc
      002F81 00 00 00 36           5296 	.dw	0,Sstm8s_adc2$ADC2_ITConfig$172-Sstm8s_adc2$ADC2_ITConfig$153
      002F85 01                    5297 	.db	1
      002F86 00 00 9B E8           5298 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)
      002F8A 0E                    5299 	.db	14
      002F8B 02                    5300 	.uleb128	2
      002F8C 01                    5301 	.db	1
      002F8D 00 00 9B F7           5302 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
      002F91 0E                    5303 	.db	14
      002F92 02                    5304 	.uleb128	2
      002F93 01                    5305 	.db	1
      002F94 00 00 9B F9           5306 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
      002F98 0E                    5307 	.db	14
      002F99 03                    5308 	.uleb128	3
      002F9A 01                    5309 	.db	1
      002F9B 00 00 9B FB           5310 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
      002F9F 0E                    5311 	.db	14
      002FA0 05                    5312 	.uleb128	5
      002FA1 01                    5313 	.db	1
      002FA2 00 00 9B FD           5314 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
      002FA6 0E                    5315 	.db	14
      002FA7 06                    5316 	.uleb128	6
      002FA8 01                    5317 	.db	1
      002FA9 00 00 9B FF           5318 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
      002FAD 0E                    5319 	.db	14
      002FAE 07                    5320 	.uleb128	7
      002FAF 01                    5321 	.db	1
      002FB0 00 00 9C 01           5322 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
      002FB4 0E                    5323 	.db	14
      002FB5 08                    5324 	.uleb128	8
      002FB6 01                    5325 	.db	1
      002FB7 00 00 9C 06           5326 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
      002FBB 0E                    5327 	.db	14
      002FBC 02                    5328 	.uleb128	2
                                   5329 
                                   5330 	.area .debug_frame (NOLOAD)
      002FBD 00 00                 5331 	.dw	0
      002FBF 00 0E                 5332 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      002FC1                       5333 Ldebug_CIE11_start:
      002FC1 FF FF                 5334 	.dw	0xffff
      002FC3 FF FF                 5335 	.dw	0xffff
      002FC5 01                    5336 	.db	1
      002FC6 00                    5337 	.db	0
      002FC7 01                    5338 	.uleb128	1
      002FC8 7F                    5339 	.sleb128	-1
      002FC9 09                    5340 	.db	9
      002FCA 0C                    5341 	.db	12
      002FCB 08                    5342 	.uleb128	8
      002FCC 02                    5343 	.uleb128	2
      002FCD 89                    5344 	.db	137
      002FCE 01                    5345 	.uleb128	1
      002FCF                       5346 Ldebug_CIE11_end:
      002FCF 00 00 00 44           5347 	.dw	0,68
      002FD3 00 00 2F BD           5348 	.dw	0,(Ldebug_CIE11_start-4)
      002FD7 00 00 9B B2           5349 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)	;initial loc
      002FDB 00 00 00 36           5350 	.dw	0,Sstm8s_adc2$ADC2_Cmd$151-Sstm8s_adc2$ADC2_Cmd$132
      002FDF 01                    5351 	.db	1
      002FE0 00 00 9B B2           5352 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)
      002FE4 0E                    5353 	.db	14
      002FE5 02                    5354 	.uleb128	2
      002FE6 01                    5355 	.db	1
      002FE7 00 00 9B C1           5356 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
      002FEB 0E                    5357 	.db	14
      002FEC 02                    5358 	.uleb128	2
      002FED 01                    5359 	.db	1
      002FEE 00 00 9B C3           5360 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
      002FF2 0E                    5361 	.db	14
      002FF3 03                    5362 	.uleb128	3
      002FF4 01                    5363 	.db	1
      002FF5 00 00 9B C5           5364 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
      002FF9 0E                    5365 	.db	14
      002FFA 05                    5366 	.uleb128	5
      002FFB 01                    5367 	.db	1
      002FFC 00 00 9B C7           5368 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
      003000 0E                    5369 	.db	14
      003001 06                    5370 	.uleb128	6
      003002 01                    5371 	.db	1
      003003 00 00 9B C9           5372 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
      003007 0E                    5373 	.db	14
      003008 07                    5374 	.uleb128	7
      003009 01                    5375 	.db	1
      00300A 00 00 9B CB           5376 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
      00300E 0E                    5377 	.db	14
      00300F 08                    5378 	.uleb128	8
      003010 01                    5379 	.db	1
      003011 00 00 9B D0           5380 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
      003015 0E                    5381 	.db	14
      003016 02                    5382 	.uleb128	2
                                   5383 
                                   5384 	.area .debug_frame (NOLOAD)
      003017 00 00                 5385 	.dw	0
      003019 00 0E                 5386 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      00301B                       5387 Ldebug_CIE12_start:
      00301B FF FF                 5388 	.dw	0xffff
      00301D FF FF                 5389 	.dw	0xffff
      00301F 01                    5390 	.db	1
      003020 00                    5391 	.db	0
      003021 01                    5392 	.uleb128	1
      003022 7F                    5393 	.sleb128	-1
      003023 09                    5394 	.db	9
      003024 0C                    5395 	.db	12
      003025 08                    5396 	.uleb128	8
      003026 02                    5397 	.uleb128	2
      003027 89                    5398 	.db	137
      003028 01                    5399 	.uleb128	1
      003029                       5400 Ldebug_CIE12_end:
      003029 00 00 02 E4           5401 	.dw	0,740
      00302D 00 00 30 17           5402 	.dw	0,(Ldebug_CIE12_start-4)
      003031 00 00 99 53           5403 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)	;initial loc
      003035 00 00 02 5F           5404 	.dw	0,Sstm8s_adc2$ADC2_Init$130-Sstm8s_adc2$ADC2_Init$11
      003039 01                    5405 	.db	1
      00303A 00 00 99 53           5406 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      00303E 0E                    5407 	.db	14
      00303F 02                    5408 	.uleb128	2
      003040 01                    5409 	.db	1
      003041 00 00 99 62           5410 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      003045 0E                    5411 	.db	14
      003046 02                    5412 	.uleb128	2
      003047 01                    5413 	.db	1
      003048 00 00 99 64           5414 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      00304C 0E                    5415 	.db	14
      00304D 03                    5416 	.uleb128	3
      00304E 01                    5417 	.db	1
      00304F 00 00 99 66           5418 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      003053 0E                    5419 	.db	14
      003054 05                    5420 	.uleb128	5
      003055 01                    5421 	.db	1
      003056 00 00 99 68           5422 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      00305A 0E                    5423 	.db	14
      00305B 06                    5424 	.uleb128	6
      00305C 01                    5425 	.db	1
      00305D 00 00 99 6A           5426 	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
      003061 0E                    5427 	.db	14
      003062 07                    5428 	.uleb128	7
      003063 01                    5429 	.db	1
      003064 00 00 99 6C           5430 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      003068 0E                    5431 	.db	14
      003069 08                    5432 	.uleb128	8
      00306A 01                    5433 	.db	1
      00306B 00 00 99 71           5434 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      00306F 0E                    5435 	.db	14
      003070 02                    5436 	.uleb128	2
      003071 01                    5437 	.db	1
      003072 00 00 99 80           5438 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003076 0E                    5439 	.db	14
      003077 02                    5440 	.uleb128	2
      003078 01                    5441 	.db	1
      003079 00 00 99 89           5442 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      00307D 0E                    5443 	.db	14
      00307E 02                    5444 	.uleb128	2
      00307F 01                    5445 	.db	1
      003080 00 00 99 92           5446 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      003084 0E                    5447 	.db	14
      003085 02                    5448 	.uleb128	2
      003086 01                    5449 	.db	1
      003087 00 00 99 9B           5450 	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
      00308B 0E                    5451 	.db	14
      00308C 02                    5452 	.uleb128	2
      00308D 01                    5453 	.db	1
      00308E 00 00 99 A4           5454 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003092 0E                    5455 	.db	14
      003093 02                    5456 	.uleb128	2
      003094 01                    5457 	.db	1
      003095 00 00 99 AD           5458 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003099 0E                    5459 	.db	14
      00309A 02                    5460 	.uleb128	2
      00309B 01                    5461 	.db	1
      00309C 00 00 99 B6           5462 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      0030A0 0E                    5463 	.db	14
      0030A1 02                    5464 	.uleb128	2
      0030A2 01                    5465 	.db	1
      0030A3 00 00 99 BF           5466 	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
      0030A7 0E                    5467 	.db	14
      0030A8 02                    5468 	.uleb128	2
      0030A9 01                    5469 	.db	1
      0030AA 00 00 99 C8           5470 	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
      0030AE 0E                    5471 	.db	14
      0030AF 02                    5472 	.uleb128	2
      0030B0 01                    5473 	.db	1
      0030B1 00 00 99 D1           5474 	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
      0030B5 0E                    5475 	.db	14
      0030B6 02                    5476 	.uleb128	2
      0030B7 01                    5477 	.db	1
      0030B8 00 00 99 DA           5478 	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
      0030BC 0E                    5479 	.db	14
      0030BD 02                    5480 	.uleb128	2
      0030BE 01                    5481 	.db	1
      0030BF 00 00 99 E3           5482 	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
      0030C3 0E                    5483 	.db	14
      0030C4 02                    5484 	.uleb128	2
      0030C5 01                    5485 	.db	1
      0030C6 00 00 99 EC           5486 	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
      0030CA 0E                    5487 	.db	14
      0030CB 02                    5488 	.uleb128	2
      0030CC 01                    5489 	.db	1
      0030CD 00 00 99 F5           5490 	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
      0030D1 0E                    5491 	.db	14
      0030D2 02                    5492 	.uleb128	2
      0030D3 01                    5493 	.db	1
      0030D4 00 00 99 FE           5494 	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
      0030D8 0E                    5495 	.db	14
      0030D9 02                    5496 	.uleb128	2
      0030DA 01                    5497 	.db	1
      0030DB 00 00 9A 00           5498 	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
      0030DF 0E                    5499 	.db	14
      0030E0 03                    5500 	.uleb128	3
      0030E1 01                    5501 	.db	1
      0030E2 00 00 9A 02           5502 	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
      0030E6 0E                    5503 	.db	14
      0030E7 05                    5504 	.uleb128	5
      0030E8 01                    5505 	.db	1
      0030E9 00 00 9A 04           5506 	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
      0030ED 0E                    5507 	.db	14
      0030EE 06                    5508 	.uleb128	6
      0030EF 01                    5509 	.db	1
      0030F0 00 00 9A 06           5510 	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
      0030F4 0E                    5511 	.db	14
      0030F5 07                    5512 	.uleb128	7
      0030F6 01                    5513 	.db	1
      0030F7 00 00 9A 08           5514 	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
      0030FB 0E                    5515 	.db	14
      0030FC 08                    5516 	.uleb128	8
      0030FD 01                    5517 	.db	1
      0030FE 00 00 9A 0D           5518 	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
      003102 0E                    5519 	.db	14
      003103 02                    5520 	.uleb128	2
      003104 01                    5521 	.db	1
      003105 00 00 9A 1D           5522 	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
      003109 0E                    5523 	.db	14
      00310A 02                    5524 	.uleb128	2
      00310B 01                    5525 	.db	1
      00310C 00 00 9A 26           5526 	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
      003110 0E                    5527 	.db	14
      003111 02                    5528 	.uleb128	2
      003112 01                    5529 	.db	1
      003113 00 00 9A 2F           5530 	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
      003117 0E                    5531 	.db	14
      003118 02                    5532 	.uleb128	2
      003119 01                    5533 	.db	1
      00311A 00 00 9A 38           5534 	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
      00311E 0E                    5535 	.db	14
      00311F 02                    5536 	.uleb128	2
      003120 01                    5537 	.db	1
      003121 00 00 9A 41           5538 	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
      003125 0E                    5539 	.db	14
      003126 02                    5540 	.uleb128	2
      003127 01                    5541 	.db	1
      003128 00 00 9A 4A           5542 	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
      00312C 0E                    5543 	.db	14
      00312D 02                    5544 	.uleb128	2
      00312E 01                    5545 	.db	1
      00312F 00 00 9A 53           5546 	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
      003133 0E                    5547 	.db	14
      003134 02                    5548 	.uleb128	2
      003135 01                    5549 	.db	1
      003136 00 00 9A 55           5550 	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
      00313A 0E                    5551 	.db	14
      00313B 03                    5552 	.uleb128	3
      00313C 01                    5553 	.db	1
      00313D 00 00 9A 57           5554 	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
      003141 0E                    5555 	.db	14
      003142 05                    5556 	.uleb128	5
      003143 01                    5557 	.db	1
      003144 00 00 9A 59           5558 	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
      003148 0E                    5559 	.db	14
      003149 06                    5560 	.uleb128	6
      00314A 01                    5561 	.db	1
      00314B 00 00 9A 5B           5562 	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
      00314F 0E                    5563 	.db	14
      003150 07                    5564 	.uleb128	7
      003151 01                    5565 	.db	1
      003152 00 00 9A 5D           5566 	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
      003156 0E                    5567 	.db	14
      003157 08                    5568 	.uleb128	8
      003158 01                    5569 	.db	1
      003159 00 00 9A 62           5570 	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
      00315D 0E                    5571 	.db	14
      00315E 02                    5572 	.uleb128	2
      00315F 01                    5573 	.db	1
      003160 00 00 9A 71           5574 	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
      003164 0E                    5575 	.db	14
      003165 02                    5576 	.uleb128	2
      003166 01                    5577 	.db	1
      003167 00 00 9A 73           5578 	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
      00316B 0E                    5579 	.db	14
      00316C 03                    5580 	.uleb128	3
      00316D 01                    5581 	.db	1
      00316E 00 00 9A 75           5582 	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
      003172 0E                    5583 	.db	14
      003173 05                    5584 	.uleb128	5
      003174 01                    5585 	.db	1
      003175 00 00 9A 77           5586 	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
      003179 0E                    5587 	.db	14
      00317A 06                    5588 	.uleb128	6
      00317B 01                    5589 	.db	1
      00317C 00 00 9A 79           5590 	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
      003180 0E                    5591 	.db	14
      003181 07                    5592 	.uleb128	7
      003182 01                    5593 	.db	1
      003183 00 00 9A 7B           5594 	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
      003187 0E                    5595 	.db	14
      003188 08                    5596 	.uleb128	8
      003189 01                    5597 	.db	1
      00318A 00 00 9A 80           5598 	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
      00318E 0E                    5599 	.db	14
      00318F 02                    5600 	.uleb128	2
      003190 01                    5601 	.db	1
      003191 00 00 9A 8F           5602 	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
      003195 0E                    5603 	.db	14
      003196 02                    5604 	.uleb128	2
      003197 01                    5605 	.db	1
      003198 00 00 9A 91           5606 	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
      00319C 0E                    5607 	.db	14
      00319D 03                    5608 	.uleb128	3
      00319E 01                    5609 	.db	1
      00319F 00 00 9A 93           5610 	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
      0031A3 0E                    5611 	.db	14
      0031A4 05                    5612 	.uleb128	5
      0031A5 01                    5613 	.db	1
      0031A6 00 00 9A 95           5614 	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
      0031AA 0E                    5615 	.db	14
      0031AB 06                    5616 	.uleb128	6
      0031AC 01                    5617 	.db	1
      0031AD 00 00 9A 97           5618 	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
      0031B1 0E                    5619 	.db	14
      0031B2 07                    5620 	.uleb128	7
      0031B3 01                    5621 	.db	1
      0031B4 00 00 9A 99           5622 	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
      0031B8 0E                    5623 	.db	14
      0031B9 08                    5624 	.uleb128	8
      0031BA 01                    5625 	.db	1
      0031BB 00 00 9A 9E           5626 	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
      0031BF 0E                    5627 	.db	14
      0031C0 02                    5628 	.uleb128	2
      0031C1 01                    5629 	.db	1
      0031C2 00 00 9A AE           5630 	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
      0031C6 0E                    5631 	.db	14
      0031C7 02                    5632 	.uleb128	2
      0031C8 01                    5633 	.db	1
      0031C9 00 00 9A B0           5634 	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
      0031CD 0E                    5635 	.db	14
      0031CE 03                    5636 	.uleb128	3
      0031CF 01                    5637 	.db	1
      0031D0 00 00 9A B2           5638 	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
      0031D4 0E                    5639 	.db	14
      0031D5 05                    5640 	.uleb128	5
      0031D6 01                    5641 	.db	1
      0031D7 00 00 9A B4           5642 	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
      0031DB 0E                    5643 	.db	14
      0031DC 06                    5644 	.uleb128	6
      0031DD 01                    5645 	.db	1
      0031DE 00 00 9A B6           5646 	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
      0031E2 0E                    5647 	.db	14
      0031E3 07                    5648 	.uleb128	7
      0031E4 01                    5649 	.db	1
      0031E5 00 00 9A B8           5650 	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
      0031E9 0E                    5651 	.db	14
      0031EA 08                    5652 	.uleb128	8
      0031EB 01                    5653 	.db	1
      0031EC 00 00 9A BD           5654 	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
      0031F0 0E                    5655 	.db	14
      0031F1 02                    5656 	.uleb128	2
      0031F2 01                    5657 	.db	1
      0031F3 00 00 9A CC           5658 	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
      0031F7 0E                    5659 	.db	14
      0031F8 02                    5660 	.uleb128	2
      0031F9 01                    5661 	.db	1
      0031FA 00 00 9A D5           5662 	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
      0031FE 0E                    5663 	.db	14
      0031FF 02                    5664 	.uleb128	2
      003200 01                    5665 	.db	1
      003201 00 00 9A DE           5666 	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
      003205 0E                    5667 	.db	14
      003206 02                    5668 	.uleb128	2
      003207 01                    5669 	.db	1
      003208 00 00 9A E7           5670 	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
      00320C 0E                    5671 	.db	14
      00320D 02                    5672 	.uleb128	2
      00320E 01                    5673 	.db	1
      00320F 00 00 9A F0           5674 	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
      003213 0E                    5675 	.db	14
      003214 02                    5676 	.uleb128	2
      003215 01                    5677 	.db	1
      003216 00 00 9A F9           5678 	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
      00321A 0E                    5679 	.db	14
      00321B 02                    5680 	.uleb128	2
      00321C 01                    5681 	.db	1
      00321D 00 00 9B 02           5682 	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
      003221 0E                    5683 	.db	14
      003222 02                    5684 	.uleb128	2
      003223 01                    5685 	.db	1
      003224 00 00 9B 0B           5686 	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
      003228 0E                    5687 	.db	14
      003229 02                    5688 	.uleb128	2
      00322A 01                    5689 	.db	1
      00322B 00 00 9B 14           5690 	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
      00322F 0E                    5691 	.db	14
      003230 02                    5692 	.uleb128	2
      003231 01                    5693 	.db	1
      003232 00 00 9B 1D           5694 	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
      003236 0E                    5695 	.db	14
      003237 02                    5696 	.uleb128	2
      003238 01                    5697 	.db	1
      003239 00 00 9B 26           5698 	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
      00323D 0E                    5699 	.db	14
      00323E 02                    5700 	.uleb128	2
      00323F 01                    5701 	.db	1
      003240 00 00 9B 2F           5702 	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
      003244 0E                    5703 	.db	14
      003245 02                    5704 	.uleb128	2
      003246 01                    5705 	.db	1
      003247 00 00 9B 38           5706 	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
      00324B 0E                    5707 	.db	14
      00324C 02                    5708 	.uleb128	2
      00324D 01                    5709 	.db	1
      00324E 00 00 9B 41           5710 	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
      003252 0E                    5711 	.db	14
      003253 02                    5712 	.uleb128	2
      003254 01                    5713 	.db	1
      003255 00 00 9B 4A           5714 	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
      003259 0E                    5715 	.db	14
      00325A 02                    5716 	.uleb128	2
      00325B 01                    5717 	.db	1
      00325C 00 00 9B 53           5718 	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
      003260 0E                    5719 	.db	14
      003261 02                    5720 	.uleb128	2
      003262 01                    5721 	.db	1
      003263 00 00 9B 55           5722 	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
      003267 0E                    5723 	.db	14
      003268 03                    5724 	.uleb128	3
      003269 01                    5725 	.db	1
      00326A 00 00 9B 57           5726 	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
      00326E 0E                    5727 	.db	14
      00326F 05                    5728 	.uleb128	5
      003270 01                    5729 	.db	1
      003271 00 00 9B 59           5730 	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
      003275 0E                    5731 	.db	14
      003276 06                    5732 	.uleb128	6
      003277 01                    5733 	.db	1
      003278 00 00 9B 5B           5734 	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
      00327C 0E                    5735 	.db	14
      00327D 07                    5736 	.uleb128	7
      00327E 01                    5737 	.db	1
      00327F 00 00 9B 5D           5738 	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
      003283 0E                    5739 	.db	14
      003284 08                    5740 	.uleb128	8
      003285 01                    5741 	.db	1
      003286 00 00 9B 62           5742 	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
      00328A 0E                    5743 	.db	14
      00328B 02                    5744 	.uleb128	2
      00328C 01                    5745 	.db	1
      00328D 00 00 9B 71           5746 	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
      003291 0E                    5747 	.db	14
      003292 02                    5748 	.uleb128	2
      003293 01                    5749 	.db	1
      003294 00 00 9B 73           5750 	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
      003298 0E                    5751 	.db	14
      003299 03                    5752 	.uleb128	3
      00329A 01                    5753 	.db	1
      00329B 00 00 9B 75           5754 	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
      00329F 0E                    5755 	.db	14
      0032A0 05                    5756 	.uleb128	5
      0032A1 01                    5757 	.db	1
      0032A2 00 00 9B 77           5758 	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
      0032A6 0E                    5759 	.db	14
      0032A7 06                    5760 	.uleb128	6
      0032A8 01                    5761 	.db	1
      0032A9 00 00 9B 79           5762 	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
      0032AD 0E                    5763 	.db	14
      0032AE 07                    5764 	.uleb128	7
      0032AF 01                    5765 	.db	1
      0032B0 00 00 9B 7B           5766 	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
      0032B4 0E                    5767 	.db	14
      0032B5 08                    5768 	.uleb128	8
      0032B6 01                    5769 	.db	1
      0032B7 00 00 9B 80           5770 	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
      0032BB 0E                    5771 	.db	14
      0032BC 02                    5772 	.uleb128	2
      0032BD 01                    5773 	.db	1
      0032BE 00 00 9B 83           5774 	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
      0032C2 0E                    5775 	.db	14
      0032C3 03                    5776 	.uleb128	3
      0032C4 01                    5777 	.db	1
      0032C5 00 00 9B 86           5778 	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
      0032C9 0E                    5779 	.db	14
      0032CA 04                    5780 	.uleb128	4
      0032CB 01                    5781 	.db	1
      0032CC 00 00 9B 89           5782 	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
      0032D0 0E                    5783 	.db	14
      0032D1 05                    5784 	.uleb128	5
      0032D2 01                    5785 	.db	1
      0032D3 00 00 9B 8E           5786 	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
      0032D7 0E                    5787 	.db	14
      0032D8 02                    5788 	.uleb128	2
      0032D9 01                    5789 	.db	1
      0032DA 00 00 9B 91           5790 	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
      0032DE 0E                    5791 	.db	14
      0032DF 03                    5792 	.uleb128	3
      0032E0 01                    5793 	.db	1
      0032E1 00 00 9B 95           5794 	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
      0032E5 0E                    5795 	.db	14
      0032E6 02                    5796 	.uleb128	2
      0032E7 01                    5797 	.db	1
      0032E8 00 00 9B 98           5798 	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
      0032EC 0E                    5799 	.db	14
      0032ED 03                    5800 	.uleb128	3
      0032EE 01                    5801 	.db	1
      0032EF 00 00 9B 9B           5802 	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
      0032F3 0E                    5803 	.db	14
      0032F4 04                    5804 	.uleb128	4
      0032F5 01                    5805 	.db	1
      0032F6 00 00 9B 9F           5806 	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
      0032FA 0E                    5807 	.db	14
      0032FB 02                    5808 	.uleb128	2
      0032FC 01                    5809 	.db	1
      0032FD 00 00 9B A2           5810 	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
      003301 0E                    5811 	.db	14
      003302 03                    5812 	.uleb128	3
      003303 01                    5813 	.db	1
      003304 00 00 9B A5           5814 	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
      003308 0E                    5815 	.db	14
      003309 04                    5816 	.uleb128	4
      00330A 01                    5817 	.db	1
      00330B 00 00 9B A9           5818 	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
      00330F 0E                    5819 	.db	14
      003310 02                    5820 	.uleb128	2
                                   5821 
                                   5822 	.area .debug_frame (NOLOAD)
      003311 00 00                 5823 	.dw	0
      003313 00 0E                 5824 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      003315                       5825 Ldebug_CIE13_start:
      003315 FF FF                 5826 	.dw	0xffff
      003317 FF FF                 5827 	.dw	0xffff
      003319 01                    5828 	.db	1
      00331A 00                    5829 	.db	0
      00331B 01                    5830 	.uleb128	1
      00331C 7F                    5831 	.sleb128	-1
      00331D 09                    5832 	.db	9
      00331E 0C                    5833 	.db	12
      00331F 08                    5834 	.uleb128	8
      003320 02                    5835 	.uleb128	2
      003321 89                    5836 	.db	137
      003322 01                    5837 	.uleb128	1
      003323                       5838 Ldebug_CIE13_end:
      003323 00 00 00 13           5839 	.dw	0,19
      003327 00 00 33 11           5840 	.dw	0,(Ldebug_CIE13_start-4)
      00332B 00 00 99 3E           5841 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)	;initial loc
      00332F 00 00 00 15           5842 	.dw	0,Sstm8s_adc2$ADC2_DeInit$9-Sstm8s_adc2$ADC2_DeInit$1
      003333 01                    5843 	.db	1
      003334 00 00 99 3E           5844 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      003338 0E                    5845 	.db	14
      003339 02                    5846 	.uleb128	2
