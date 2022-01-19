                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module milis
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_ClearFlag
                                     12 	.globl _TIM4_ITConfig
                                     13 	.globl _TIM4_Cmd
                                     14 	.globl _TIM4_TimeBaseInit
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 	.globl _miliseconds
                                     17 	.globl _milis
                                     18 	.globl _init_milis
                                     19 	.globl _TIM4_UPD_OVF_IRQHandler
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                           000000    28 G$miliseconds$0_0$0==.
      000001                         29 _miliseconds::
      000001                         30 	.ds 4
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                           000000    60 	Smilis$milis$0 ==.
                                     61 ;	./src/milis.c: 13: MILIS_PROTOTYPE
                                     62 ; genLabel
                                     63 ;	-----------------------------------------
                                     64 ;	 function milis
                                     65 ;	-----------------------------------------
                                     66 ;	Register assignment is optimal.
                                     67 ;	Stack space usage: 4 bytes.
      008269                         68 _milis:
                           000000    69 	Smilis$milis$1 ==.
      008269 52 04            [ 2]   70 	sub	sp, #4
                           000002    71 	Smilis$milis$2 ==.
                           000002    72 	Smilis$milis$3 ==.
                                     73 ;	./src/milis.c: 20: TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
                                     74 ; genIPush
      00826B 4B 00            [ 1]   75 	push	#0x00
                           000004    76 	Smilis$milis$4 ==.
                                     77 ; genIPush
      00826D 4B 01            [ 1]   78 	push	#0x01
                           000006    79 	Smilis$milis$5 ==.
                                     80 ; genCall
      00826F CD 94 66         [ 4]   81 	call	_TIM4_ITConfig
      008272 85               [ 2]   82 	popw	x
                           00000A    83 	Smilis$milis$6 ==.
                           00000A    84 	Smilis$milis$7 ==.
                                     85 ;	./src/milis.c: 21: tmp = miliseconds;
                                     86 ; genAssign
      008273 CE 00 03         [ 2]   87 	ldw	x, _miliseconds+2
      008276 90 CE 00 01      [ 2]   88 	ldw	y, _miliseconds+0
      00827A 17 01            [ 2]   89 	ldw	(0x01, sp), y
                           000013    90 	Smilis$milis$8 ==.
                                     91 ;	./src/milis.c: 22: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                     92 ; genIPush
      00827C 89               [ 2]   93 	pushw	x
                           000014    94 	Smilis$milis$9 ==.
      00827D 4B 01            [ 1]   95 	push	#0x01
                           000016    96 	Smilis$milis$10 ==.
                                     97 ; genIPush
      00827F 4B 01            [ 1]   98 	push	#0x01
                           000018    99 	Smilis$milis$11 ==.
                                    100 ; genCall
      008281 CD 94 66         [ 4]  101 	call	_TIM4_ITConfig
      008284 85               [ 2]  102 	popw	x
                           00001C   103 	Smilis$milis$12 ==.
      008285 85               [ 2]  104 	popw	x
                           00001D   105 	Smilis$milis$13 ==.
                           00001D   106 	Smilis$milis$14 ==.
                                    107 ;	./src/milis.c: 23: return tmp;
                                    108 ; genReturn
      008286 16 01            [ 2]  109 	ldw	y, (0x01, sp)
                                    110 ; genLabel
      008288                        111 00101$:
                           00001F   112 	Smilis$milis$15 ==.
                                    113 ;	./src/milis.c: 24: }
                                    114 ; genEndFunction
      008288 5B 04            [ 2]  115 	addw	sp, #4
                           000021   116 	Smilis$milis$16 ==.
                           000021   117 	Smilis$milis$17 ==.
                           000021   118 	XG$milis$0$0 ==.
      00828A 81               [ 4]  119 	ret
                           000022   120 	Smilis$milis$18 ==.
                           000022   121 	Smilis$init_milis$19 ==.
                                    122 ;	./src/milis.c: 27: void init_milis(void)
                                    123 ; genLabel
                                    124 ;	-----------------------------------------
                                    125 ;	 function init_milis
                                    126 ;	-----------------------------------------
                                    127 ;	Register assignment is optimal.
                                    128 ;	Stack space usage: 0 bytes.
      00828B                        129 _init_milis:
                           000022   130 	Smilis$init_milis$20 ==.
                           000022   131 	Smilis$init_milis$21 ==.
                                    132 ;	./src/milis.c: 29: TIM4_TimeBaseInit(PRESCALER, PERIOD);       // (16MHz / 128) / 125 = 1000Hz
                                    133 ; genIPush
      00828B 4B 7C            [ 1]  134 	push	#0x7c
                           000024   135 	Smilis$init_milis$22 ==.
                                    136 ; genIPush
      00828D 4B 07            [ 1]  137 	push	#0x07
                           000026   138 	Smilis$init_milis$23 ==.
                                    139 ; genCall
      00828F CD 93 CF         [ 4]  140 	call	_TIM4_TimeBaseInit
      008292 85               [ 2]  141 	popw	x
                           00002A   142 	Smilis$init_milis$24 ==.
                           00002A   143 	Smilis$init_milis$25 ==.
                                    144 ;	./src/milis.c: 30: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    145 ; genIPush
      008293 4B 01            [ 1]  146 	push	#0x01
                           00002C   147 	Smilis$init_milis$26 ==.
                                    148 ; genCall
      008295 CD 96 70         [ 4]  149 	call	_TIM4_ClearFlag
      008298 84               [ 1]  150 	pop	a
                           000030   151 	Smilis$init_milis$27 ==.
                           000030   152 	Smilis$init_milis$28 ==.
                                    153 ;	./src/milis.c: 31: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                    154 ; genIPush
      008299 4B 01            [ 1]  155 	push	#0x01
                           000032   156 	Smilis$init_milis$29 ==.
                                    157 ; genIPush
      00829B 4B 01            [ 1]  158 	push	#0x01
                           000034   159 	Smilis$init_milis$30 ==.
                                    160 ; genCall
      00829D CD 94 66         [ 4]  161 	call	_TIM4_ITConfig
      0082A0 85               [ 2]  162 	popw	x
                           000038   163 	Smilis$init_milis$31 ==.
                           000038   164 	Smilis$init_milis$32 ==.
                                    165 ;	./src/milis.c: 32: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF, ITC_PRIORITYLEVEL_1);     // nízká priorita pøerušení
                                    166 ; genIPush
      0082A1 4B 01            [ 1]  167 	push	#0x01
                           00003A   168 	Smilis$init_milis$33 ==.
                                    169 ; genIPush
      0082A3 4B 17            [ 1]  170 	push	#0x17
                           00003C   171 	Smilis$init_milis$34 ==.
                                    172 ; genCall
      0082A5 CD 97 DF         [ 4]  173 	call	_ITC_SetSoftwarePriority
      0082A8 85               [ 2]  174 	popw	x
                           000040   175 	Smilis$init_milis$35 ==.
                           000040   176 	Smilis$init_milis$36 ==.
                                    177 ;	./src/milis.c: 33: enableInterrupts();
                                    178 ;	genInline
      0082A9 9A               [ 1]  179 	rim
                           000041   180 	Smilis$init_milis$37 ==.
                                    181 ;	./src/milis.c: 34: TIM4_Cmd(ENABLE);
                                    182 ; genIPush
      0082AA 4B 01            [ 1]  183 	push	#0x01
                           000043   184 	Smilis$init_milis$38 ==.
                                    185 ; genCall
      0082AC CD 94 30         [ 4]  186 	call	_TIM4_Cmd
      0082AF 84               [ 1]  187 	pop	a
                           000047   188 	Smilis$init_milis$39 ==.
                                    189 ; genLabel
      0082B0                        190 00101$:
                           000047   191 	Smilis$init_milis$40 ==.
                                    192 ;	./src/milis.c: 35: }
                                    193 ; genEndFunction
                           000047   194 	Smilis$init_milis$41 ==.
                           000047   195 	XG$init_milis$0$0 ==.
      0082B0 81               [ 4]  196 	ret
                           000048   197 	Smilis$init_milis$42 ==.
                           000048   198 	Smilis$TIM4_UPD_OVF_IRQHandler$43 ==.
                                    199 ;	./src/milis.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    200 ; genLabel
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM4_UPD_OVF_IRQHandler
                                    203 ;	-----------------------------------------
                                    204 ;	Register assignment might be sub-optimal.
                                    205 ;	Stack space usage: 0 bytes.
      0082B1                        206 _TIM4_UPD_OVF_IRQHandler:
                                    207 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      0082B1 62               [ 2]  208 	div	x, a
                           000049   209 	Smilis$TIM4_UPD_OVF_IRQHandler$44 ==.
                           000049   210 	Smilis$TIM4_UPD_OVF_IRQHandler$45 ==.
                                    211 ;	./src/milis.c: 40: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    212 ; genIPush
      0082B2 4B 01            [ 1]  213 	push	#0x01
                           00004B   214 	Smilis$TIM4_UPD_OVF_IRQHandler$46 ==.
                                    215 ; genCall
      0082B4 CD 96 70         [ 4]  216 	call	_TIM4_ClearFlag
      0082B7 84               [ 1]  217 	pop	a
                           00004F   218 	Smilis$TIM4_UPD_OVF_IRQHandler$47 ==.
                           00004F   219 	Smilis$TIM4_UPD_OVF_IRQHandler$48 ==.
                                    220 ;	./src/milis.c: 41: miliseconds++;
                                    221 ; genAssign
      0082B8 CE 00 03         [ 2]  222 	ldw	x, _miliseconds+2
      0082BB 90 CE 00 01      [ 2]  223 	ldw	y, _miliseconds+0
                                    224 ; genPlus
      0082BF 5C               [ 1]  225 	incw	x
      0082C0 26 02            [ 1]  226 	jrne	00103$
      0082C2 90 5C            [ 1]  227 	incw	y
      0082C4                        228 00103$:
                                    229 ; genAssign
      0082C4 CF 00 03         [ 2]  230 	ldw	_miliseconds+2, x
      0082C7 90 CF 00 01      [ 2]  231 	ldw	_miliseconds+0, y
                                    232 ; genLabel
      0082CB                        233 00101$:
                           000062   234 	Smilis$TIM4_UPD_OVF_IRQHandler$49 ==.
                                    235 ;	./src/milis.c: 42: }
                                    236 ; genEndFunction
                           000062   237 	Smilis$TIM4_UPD_OVF_IRQHandler$50 ==.
                           000062   238 	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
      0082CB 80               [11]  239 	iret
                           000063   240 	Smilis$TIM4_UPD_OVF_IRQHandler$51 ==.
                                    241 	.area CODE
                                    242 	.area CONST
                                    243 	.area INITIALIZER
                           000000   244 Fmilis$__xinit_miliseconds$0_0$0 == .
      00813D                        245 __xinit__miliseconds:
      00813D 00 00 00 00            246 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                    247 	.area CABS (ABS)
                                    248 
                                    249 	.area .debug_line (NOLOAD)
      0001E6 00 00 00 FE            250 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0001EA                        251 Ldebug_line_start:
      0001EA 00 02                  252 	.dw	2
      0001EC 00 00 00 6E            253 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0001F0 01                     254 	.db	1
      0001F1 01                     255 	.db	1
      0001F2 FB                     256 	.db	-5
      0001F3 0F                     257 	.db	15
      0001F4 0A                     258 	.db	10
      0001F5 00                     259 	.db	0
      0001F6 01                     260 	.db	1
      0001F7 01                     261 	.db	1
      0001F8 01                     262 	.db	1
      0001F9 01                     263 	.db	1
      0001FA 00                     264 	.db	0
      0001FB 00                     265 	.db	0
      0001FC 00                     266 	.db	0
      0001FD 01                     267 	.db	1
      0001FE 43 3A 5C 50 72 6F 67   268 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000226 00                     269 	.db	0
      000227 43 3A 5C 50 72 6F 67   270 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00024A 00                     271 	.db	0
      00024B 00                     272 	.db	0
      00024C 2E 2F 73 72 63 2F 6D   273 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      000259 00                     274 	.db	0
      00025A 00                     275 	.uleb128	0
      00025B 00                     276 	.uleb128	0
      00025C 00                     277 	.uleb128	0
      00025D 00                     278 	.db	0
      00025E                        279 Ldebug_line_stmt:
      00025E 00                     280 	.db	0
      00025F 05                     281 	.uleb128	5
      000260 02                     282 	.db	2
      000261 00 00 82 69            283 	.dw	0,(Smilis$milis$0)
      000265 03                     284 	.db	3
      000266 0C                     285 	.sleb128	12
      000267 01                     286 	.db	1
      000268 09                     287 	.db	9
      000269 00 02                  288 	.dw	Smilis$milis$3-Smilis$milis$0
      00026B 03                     289 	.db	3
      00026C 07                     290 	.sleb128	7
      00026D 01                     291 	.db	1
      00026E 09                     292 	.db	9
      00026F 00 08                  293 	.dw	Smilis$milis$7-Smilis$milis$3
      000271 03                     294 	.db	3
      000272 01                     295 	.sleb128	1
      000273 01                     296 	.db	1
      000274 09                     297 	.db	9
      000275 00 09                  298 	.dw	Smilis$milis$8-Smilis$milis$7
      000277 03                     299 	.db	3
      000278 01                     300 	.sleb128	1
      000279 01                     301 	.db	1
      00027A 09                     302 	.db	9
      00027B 00 0A                  303 	.dw	Smilis$milis$14-Smilis$milis$8
      00027D 03                     304 	.db	3
      00027E 01                     305 	.sleb128	1
      00027F 01                     306 	.db	1
      000280 09                     307 	.db	9
      000281 00 02                  308 	.dw	Smilis$milis$15-Smilis$milis$14
      000283 03                     309 	.db	3
      000284 01                     310 	.sleb128	1
      000285 01                     311 	.db	1
      000286 09                     312 	.db	9
      000287 00 03                  313 	.dw	1+Smilis$milis$17-Smilis$milis$15
      000289 00                     314 	.db	0
      00028A 01                     315 	.uleb128	1
      00028B 01                     316 	.db	1
      00028C 00                     317 	.db	0
      00028D 05                     318 	.uleb128	5
      00028E 02                     319 	.db	2
      00028F 00 00 82 8B            320 	.dw	0,(Smilis$init_milis$19)
      000293 03                     321 	.db	3
      000294 1A                     322 	.sleb128	26
      000295 01                     323 	.db	1
      000296 09                     324 	.db	9
      000297 00 00                  325 	.dw	Smilis$init_milis$21-Smilis$init_milis$19
      000299 03                     326 	.db	3
      00029A 02                     327 	.sleb128	2
      00029B 01                     328 	.db	1
      00029C 09                     329 	.db	9
      00029D 00 08                  330 	.dw	Smilis$init_milis$25-Smilis$init_milis$21
      00029F 03                     331 	.db	3
      0002A0 01                     332 	.sleb128	1
      0002A1 01                     333 	.db	1
      0002A2 09                     334 	.db	9
      0002A3 00 06                  335 	.dw	Smilis$init_milis$28-Smilis$init_milis$25
      0002A5 03                     336 	.db	3
      0002A6 01                     337 	.sleb128	1
      0002A7 01                     338 	.db	1
      0002A8 09                     339 	.db	9
      0002A9 00 08                  340 	.dw	Smilis$init_milis$32-Smilis$init_milis$28
      0002AB 03                     341 	.db	3
      0002AC 01                     342 	.sleb128	1
      0002AD 01                     343 	.db	1
      0002AE 09                     344 	.db	9
      0002AF 00 08                  345 	.dw	Smilis$init_milis$36-Smilis$init_milis$32
      0002B1 03                     346 	.db	3
      0002B2 01                     347 	.sleb128	1
      0002B3 01                     348 	.db	1
      0002B4 09                     349 	.db	9
      0002B5 00 01                  350 	.dw	Smilis$init_milis$37-Smilis$init_milis$36
      0002B7 03                     351 	.db	3
      0002B8 01                     352 	.sleb128	1
      0002B9 01                     353 	.db	1
      0002BA 09                     354 	.db	9
      0002BB 00 06                  355 	.dw	Smilis$init_milis$40-Smilis$init_milis$37
      0002BD 03                     356 	.db	3
      0002BE 01                     357 	.sleb128	1
      0002BF 01                     358 	.db	1
      0002C0 09                     359 	.db	9
      0002C1 00 01                  360 	.dw	1+Smilis$init_milis$41-Smilis$init_milis$40
      0002C3 00                     361 	.db	0
      0002C4 01                     362 	.uleb128	1
      0002C5 01                     363 	.db	1
      0002C6 00                     364 	.db	0
      0002C7 05                     365 	.uleb128	5
      0002C8 02                     366 	.db	2
      0002C9 00 00 82 B1            367 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$43)
      0002CD 03                     368 	.db	3
      0002CE 25                     369 	.sleb128	37
      0002CF 01                     370 	.db	1
      0002D0 09                     371 	.db	9
      0002D1 00 01                  372 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$45-Smilis$TIM4_UPD_OVF_IRQHandler$43
      0002D3 03                     373 	.db	3
      0002D4 02                     374 	.sleb128	2
      0002D5 01                     375 	.db	1
      0002D6 09                     376 	.db	9
      0002D7 00 06                  377 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$48-Smilis$TIM4_UPD_OVF_IRQHandler$45
      0002D9 03                     378 	.db	3
      0002DA 01                     379 	.sleb128	1
      0002DB 01                     380 	.db	1
      0002DC 09                     381 	.db	9
      0002DD 00 13                  382 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$49-Smilis$TIM4_UPD_OVF_IRQHandler$48
      0002DF 03                     383 	.db	3
      0002E0 01                     384 	.sleb128	1
      0002E1 01                     385 	.db	1
      0002E2 09                     386 	.db	9
      0002E3 00 01                  387 	.dw	1+Smilis$TIM4_UPD_OVF_IRQHandler$50-Smilis$TIM4_UPD_OVF_IRQHandler$49
      0002E5 00                     388 	.db	0
      0002E6 01                     389 	.uleb128	1
      0002E7 01                     390 	.db	1
      0002E8                        391 Ldebug_line_end:
                                    392 
                                    393 	.area .debug_loc (NOLOAD)
      00031C                        394 Ldebug_loc_start:
      00031C 00 00 82 B8            395 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      000320 00 00 82 CC            396 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$51)
      000324 00 02                  397 	.dw	2
      000326 78                     398 	.db	120
      000327 01                     399 	.sleb128	1
      000328 00 00 82 B4            400 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      00032C 00 00 82 B8            401 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      000330 00 02                  402 	.dw	2
      000332 78                     403 	.db	120
      000333 02                     404 	.sleb128	2
      000334 00 00 82 B2            405 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      000338 00 00 82 B4            406 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      00033C 00 02                  407 	.dw	2
      00033E 78                     408 	.db	120
      00033F 01                     409 	.sleb128	1
      000340 00 00 00 00            410 	.dw	0,0
      000344 00 00 00 00            411 	.dw	0,0
      000348 00 00 82 B0            412 	.dw	0,(Smilis$init_milis$39)
      00034C 00 00 82 B1            413 	.dw	0,(Smilis$init_milis$42)
      000350 00 02                  414 	.dw	2
      000352 78                     415 	.db	120
      000353 01                     416 	.sleb128	1
      000354 00 00 82 AC            417 	.dw	0,(Smilis$init_milis$38)
      000358 00 00 82 B0            418 	.dw	0,(Smilis$init_milis$39)
      00035C 00 02                  419 	.dw	2
      00035E 78                     420 	.db	120
      00035F 02                     421 	.sleb128	2
      000360 00 00 82 A9            422 	.dw	0,(Smilis$init_milis$35)
      000364 00 00 82 AC            423 	.dw	0,(Smilis$init_milis$38)
      000368 00 02                  424 	.dw	2
      00036A 78                     425 	.db	120
      00036B 01                     426 	.sleb128	1
      00036C 00 00 82 A5            427 	.dw	0,(Smilis$init_milis$34)
      000370 00 00 82 A9            428 	.dw	0,(Smilis$init_milis$35)
      000374 00 02                  429 	.dw	2
      000376 78                     430 	.db	120
      000377 03                     431 	.sleb128	3
      000378 00 00 82 A3            432 	.dw	0,(Smilis$init_milis$33)
      00037C 00 00 82 A5            433 	.dw	0,(Smilis$init_milis$34)
      000380 00 02                  434 	.dw	2
      000382 78                     435 	.db	120
      000383 02                     436 	.sleb128	2
      000384 00 00 82 A1            437 	.dw	0,(Smilis$init_milis$31)
      000388 00 00 82 A3            438 	.dw	0,(Smilis$init_milis$33)
      00038C 00 02                  439 	.dw	2
      00038E 78                     440 	.db	120
      00038F 01                     441 	.sleb128	1
      000390 00 00 82 9D            442 	.dw	0,(Smilis$init_milis$30)
      000394 00 00 82 A1            443 	.dw	0,(Smilis$init_milis$31)
      000398 00 02                  444 	.dw	2
      00039A 78                     445 	.db	120
      00039B 03                     446 	.sleb128	3
      00039C 00 00 82 9B            447 	.dw	0,(Smilis$init_milis$29)
      0003A0 00 00 82 9D            448 	.dw	0,(Smilis$init_milis$30)
      0003A4 00 02                  449 	.dw	2
      0003A6 78                     450 	.db	120
      0003A7 02                     451 	.sleb128	2
      0003A8 00 00 82 99            452 	.dw	0,(Smilis$init_milis$27)
      0003AC 00 00 82 9B            453 	.dw	0,(Smilis$init_milis$29)
      0003B0 00 02                  454 	.dw	2
      0003B2 78                     455 	.db	120
      0003B3 01                     456 	.sleb128	1
      0003B4 00 00 82 95            457 	.dw	0,(Smilis$init_milis$26)
      0003B8 00 00 82 99            458 	.dw	0,(Smilis$init_milis$27)
      0003BC 00 02                  459 	.dw	2
      0003BE 78                     460 	.db	120
      0003BF 02                     461 	.sleb128	2
      0003C0 00 00 82 93            462 	.dw	0,(Smilis$init_milis$24)
      0003C4 00 00 82 95            463 	.dw	0,(Smilis$init_milis$26)
      0003C8 00 02                  464 	.dw	2
      0003CA 78                     465 	.db	120
      0003CB 01                     466 	.sleb128	1
      0003CC 00 00 82 8F            467 	.dw	0,(Smilis$init_milis$23)
      0003D0 00 00 82 93            468 	.dw	0,(Smilis$init_milis$24)
      0003D4 00 02                  469 	.dw	2
      0003D6 78                     470 	.db	120
      0003D7 03                     471 	.sleb128	3
      0003D8 00 00 82 8D            472 	.dw	0,(Smilis$init_milis$22)
      0003DC 00 00 82 8F            473 	.dw	0,(Smilis$init_milis$23)
      0003E0 00 02                  474 	.dw	2
      0003E2 78                     475 	.db	120
      0003E3 02                     476 	.sleb128	2
      0003E4 00 00 82 8B            477 	.dw	0,(Smilis$init_milis$20)
      0003E8 00 00 82 8D            478 	.dw	0,(Smilis$init_milis$22)
      0003EC 00 02                  479 	.dw	2
      0003EE 78                     480 	.db	120
      0003EF 01                     481 	.sleb128	1
      0003F0 00 00 00 00            482 	.dw	0,0
      0003F4 00 00 00 00            483 	.dw	0,0
      0003F8 00 00 82 8A            484 	.dw	0,(Smilis$milis$16)
      0003FC 00 00 82 8B            485 	.dw	0,(Smilis$milis$18)
      000400 00 02                  486 	.dw	2
      000402 78                     487 	.db	120
      000403 01                     488 	.sleb128	1
      000404 00 00 82 86            489 	.dw	0,(Smilis$milis$13)
      000408 00 00 82 8A            490 	.dw	0,(Smilis$milis$16)
      00040C 00 02                  491 	.dw	2
      00040E 78                     492 	.db	120
      00040F 05                     493 	.sleb128	5
      000410 00 00 82 85            494 	.dw	0,(Smilis$milis$12)
      000414 00 00 82 86            495 	.dw	0,(Smilis$milis$13)
      000418 00 02                  496 	.dw	2
      00041A 78                     497 	.db	120
      00041B 07                     498 	.sleb128	7
      00041C 00 00 82 81            499 	.dw	0,(Smilis$milis$11)
      000420 00 00 82 85            500 	.dw	0,(Smilis$milis$12)
      000424 00 02                  501 	.dw	2
      000426 78                     502 	.db	120
      000427 09                     503 	.sleb128	9
      000428 00 00 82 7F            504 	.dw	0,(Smilis$milis$10)
      00042C 00 00 82 81            505 	.dw	0,(Smilis$milis$11)
      000430 00 02                  506 	.dw	2
      000432 78                     507 	.db	120
      000433 08                     508 	.sleb128	8
      000434 00 00 82 7D            509 	.dw	0,(Smilis$milis$9)
      000438 00 00 82 7F            510 	.dw	0,(Smilis$milis$10)
      00043C 00 02                  511 	.dw	2
      00043E 78                     512 	.db	120
      00043F 07                     513 	.sleb128	7
      000440 00 00 82 73            514 	.dw	0,(Smilis$milis$6)
      000444 00 00 82 7D            515 	.dw	0,(Smilis$milis$9)
      000448 00 02                  516 	.dw	2
      00044A 78                     517 	.db	120
      00044B 05                     518 	.sleb128	5
      00044C 00 00 82 6F            519 	.dw	0,(Smilis$milis$5)
      000450 00 00 82 73            520 	.dw	0,(Smilis$milis$6)
      000454 00 02                  521 	.dw	2
      000456 78                     522 	.db	120
      000457 07                     523 	.sleb128	7
      000458 00 00 82 6D            524 	.dw	0,(Smilis$milis$4)
      00045C 00 00 82 6F            525 	.dw	0,(Smilis$milis$5)
      000460 00 02                  526 	.dw	2
      000462 78                     527 	.db	120
      000463 06                     528 	.sleb128	6
      000464 00 00 82 6B            529 	.dw	0,(Smilis$milis$2)
      000468 00 00 82 6D            530 	.dw	0,(Smilis$milis$4)
      00046C 00 02                  531 	.dw	2
      00046E 78                     532 	.db	120
      00046F 05                     533 	.sleb128	5
      000470 00 00 82 69            534 	.dw	0,(Smilis$milis$1)
      000474 00 00 82 6B            535 	.dw	0,(Smilis$milis$2)
      000478 00 02                  536 	.dw	2
      00047A 78                     537 	.db	120
      00047B 01                     538 	.sleb128	1
      00047C 00 00 00 00            539 	.dw	0,0
      000480 00 00 00 00            540 	.dw	0,0
                                    541 
                                    542 	.area .debug_abbrev (NOLOAD)
      0000AA                        543 Ldebug_abbrev:
      0000AA 07                     544 	.uleb128	7
      0000AB 35                     545 	.uleb128	53
      0000AC 00                     546 	.db	0
      0000AD 49                     547 	.uleb128	73
      0000AE 13                     548 	.uleb128	19
      0000AF 00                     549 	.uleb128	0
      0000B0 00                     550 	.uleb128	0
      0000B1 08                     551 	.uleb128	8
      0000B2 34                     552 	.uleb128	52
      0000B3 00                     553 	.db	0
      0000B4 02                     554 	.uleb128	2
      0000B5 0A                     555 	.uleb128	10
      0000B6 03                     556 	.uleb128	3
      0000B7 08                     557 	.uleb128	8
      0000B8 3F                     558 	.uleb128	63
      0000B9 0C                     559 	.uleb128	12
      0000BA 49                     560 	.uleb128	73
      0000BB 13                     561 	.uleb128	19
      0000BC 00                     562 	.uleb128	0
      0000BD 00                     563 	.uleb128	0
      0000BE 04                     564 	.uleb128	4
      0000BF 34                     565 	.uleb128	52
      0000C0 00                     566 	.db	0
      0000C1 02                     567 	.uleb128	2
      0000C2 0A                     568 	.uleb128	10
      0000C3 03                     569 	.uleb128	3
      0000C4 08                     570 	.uleb128	8
      0000C5 49                     571 	.uleb128	73
      0000C6 13                     572 	.uleb128	19
      0000C7 00                     573 	.uleb128	0
      0000C8 00                     574 	.uleb128	0
      0000C9 03                     575 	.uleb128	3
      0000CA 2E                     576 	.uleb128	46
      0000CB 01                     577 	.db	1
      0000CC 01                     578 	.uleb128	1
      0000CD 13                     579 	.uleb128	19
      0000CE 03                     580 	.uleb128	3
      0000CF 08                     581 	.uleb128	8
      0000D0 11                     582 	.uleb128	17
      0000D1 01                     583 	.uleb128	1
      0000D2 12                     584 	.uleb128	18
      0000D3 01                     585 	.uleb128	1
      0000D4 3F                     586 	.uleb128	63
      0000D5 0C                     587 	.uleb128	12
      0000D6 40                     588 	.uleb128	64
      0000D7 06                     589 	.uleb128	6
      0000D8 49                     590 	.uleb128	73
      0000D9 13                     591 	.uleb128	19
      0000DA 00                     592 	.uleb128	0
      0000DB 00                     593 	.uleb128	0
      0000DC 01                     594 	.uleb128	1
      0000DD 11                     595 	.uleb128	17
      0000DE 01                     596 	.db	1
      0000DF 03                     597 	.uleb128	3
      0000E0 08                     598 	.uleb128	8
      0000E1 10                     599 	.uleb128	16
      0000E2 06                     600 	.uleb128	6
      0000E3 13                     601 	.uleb128	19
      0000E4 0B                     602 	.uleb128	11
      0000E5 25                     603 	.uleb128	37
      0000E6 08                     604 	.uleb128	8
      0000E7 00                     605 	.uleb128	0
      0000E8 00                     606 	.uleb128	0
      0000E9 05                     607 	.uleb128	5
      0000EA 2E                     608 	.uleb128	46
      0000EB 00                     609 	.db	0
      0000EC 03                     610 	.uleb128	3
      0000ED 08                     611 	.uleb128	8
      0000EE 11                     612 	.uleb128	17
      0000EF 01                     613 	.uleb128	1
      0000F0 12                     614 	.uleb128	18
      0000F1 01                     615 	.uleb128	1
      0000F2 3F                     616 	.uleb128	63
      0000F3 0C                     617 	.uleb128	12
      0000F4 40                     618 	.uleb128	64
      0000F5 06                     619 	.uleb128	6
      0000F6 00                     620 	.uleb128	0
      0000F7 00                     621 	.uleb128	0
      0000F8 02                     622 	.uleb128	2
      0000F9 24                     623 	.uleb128	36
      0000FA 00                     624 	.db	0
      0000FB 03                     625 	.uleb128	3
      0000FC 08                     626 	.uleb128	8
      0000FD 0B                     627 	.uleb128	11
      0000FE 0B                     628 	.uleb128	11
      0000FF 3E                     629 	.uleb128	62
      000100 0B                     630 	.uleb128	11
      000101 00                     631 	.uleb128	0
      000102 00                     632 	.uleb128	0
      000103 06                     633 	.uleb128	6
      000104 2E                     634 	.uleb128	46
      000105 00                     635 	.db	0
      000106 03                     636 	.uleb128	3
      000107 08                     637 	.uleb128	8
      000108 11                     638 	.uleb128	17
      000109 01                     639 	.uleb128	1
      00010A 12                     640 	.uleb128	18
      00010B 01                     641 	.uleb128	1
      00010C 36                     642 	.uleb128	54
      00010D 0B                     643 	.uleb128	11
      00010E 3F                     644 	.uleb128	63
      00010F 0C                     645 	.uleb128	12
      000110 40                     646 	.uleb128	64
      000111 06                     647 	.uleb128	6
      000112 00                     648 	.uleb128	0
      000113 00                     649 	.uleb128	0
      000114 00                     650 	.uleb128	0
                                    651 
                                    652 	.area .debug_info (NOLOAD)
      000280 00 00 00 DB            653 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000284                        654 Ldebug_info_start:
      000284 00 02                  655 	.dw	2
      000286 00 00 00 AA            656 	.dw	0,(Ldebug_abbrev)
      00028A 04                     657 	.db	4
      00028B 01                     658 	.uleb128	1
      00028C 2E 2F 73 72 63 2F 6D   659 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      000299 00                     660 	.db	0
      00029A 00 00 01 E6            661 	.dw	0,(Ldebug_line_start+-4)
      00029E 01                     662 	.db	1
      00029F 53 44 43 43 20 76 65   663 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0002B8 00                     664 	.db	0
      0002B9 02                     665 	.uleb128	2
      0002BA 75 6E 73 69 67 6E 65   666 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0002C7 00                     667 	.db	0
      0002C8 04                     668 	.db	4
      0002C9 07                     669 	.db	7
      0002CA 03                     670 	.uleb128	3
      0002CB 00 00 00 7F            671 	.dw	0,127
      0002CF 6D 69 6C 69 73         672 	.ascii "milis"
      0002D4 00                     673 	.db	0
      0002D5 00 00 82 69            674 	.dw	0,(_milis)
      0002D9 00 00 82 8B            675 	.dw	0,(XG$milis$0$0+1)
      0002DD 01                     676 	.db	1
      0002DE 00 00 03 F8            677 	.dw	0,(Ldebug_loc_start+220)
      0002E2 00 00 00 39            678 	.dw	0,57
      0002E6 04                     679 	.uleb128	4
      0002E7 0E                     680 	.db	14
      0002E8 91                     681 	.db	145
      0002E9 7C                     682 	.sleb128	-4
      0002EA 93                     683 	.db	147
      0002EB 01                     684 	.uleb128	1
      0002EC 91                     685 	.db	145
      0002ED 7D                     686 	.sleb128	-3
      0002EE 93                     687 	.db	147
      0002EF 01                     688 	.uleb128	1
      0002F0 52                     689 	.db	82
      0002F1 93                     690 	.db	147
      0002F2 01                     691 	.uleb128	1
      0002F3 51                     692 	.db	81
      0002F4 93                     693 	.db	147
      0002F5 01                     694 	.uleb128	1
      0002F6 74 6D 70               695 	.ascii "tmp"
      0002F9 00                     696 	.db	0
      0002FA 00 00 00 39            697 	.dw	0,57
      0002FE 00                     698 	.uleb128	0
      0002FF 05                     699 	.uleb128	5
      000300 69 6E 69 74 5F 6D 69   700 	.ascii "init_milis"
             6C 69 73
      00030A 00                     701 	.db	0
      00030B 00 00 82 8B            702 	.dw	0,(_init_milis)
      00030F 00 00 82 B1            703 	.dw	0,(XG$init_milis$0$0+1)
      000313 01                     704 	.db	1
      000314 00 00 03 48            705 	.dw	0,(Ldebug_loc_start+44)
      000318 06                     706 	.uleb128	6
      000319 54 49 4D 34 5F 55 50   707 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000330 00                     708 	.db	0
      000331 00 00 82 B1            709 	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
      000335 00 00 82 CC            710 	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
      000339 03                     711 	.db	3
      00033A 01                     712 	.db	1
      00033B 00 00 03 1C            713 	.dw	0,(Ldebug_loc_start)
      00033F 07                     714 	.uleb128	7
      000340 00 00 00 39            715 	.dw	0,57
      000344 08                     716 	.uleb128	8
      000345 05                     717 	.db	5
      000346 03                     718 	.db	3
      000347 00 00 00 01            719 	.dw	0,(_miliseconds)
      00034B 6D 69 6C 69 73 65 63   720 	.ascii "miliseconds"
             6F 6E 64 73
      000356 00                     721 	.db	0
      000357 01                     722 	.db	1
      000358 00 00 00 BF            723 	.dw	0,191
      00035C 00                     724 	.uleb128	0
      00035D 00                     725 	.uleb128	0
      00035E 00                     726 	.uleb128	0
      00035F                        727 Ldebug_info_end:
                                    728 
                                    729 	.area .debug_pubnames (NOLOAD)
      000037 00 00 00 53            730 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00003B                        731 Ldebug_pubnames_start:
      00003B 00 02                  732 	.dw	2
      00003D 00 00 02 80            733 	.dw	0,(Ldebug_info_start-4)
      000041 00 00 00 DF            734 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000045 00 00 00 4A            735 	.dw	0,74
      000049 6D 69 6C 69 73         736 	.ascii "milis"
      00004E 00                     737 	.db	0
      00004F 00 00 00 7F            738 	.dw	0,127
      000053 69 6E 69 74 5F 6D 69   739 	.ascii "init_milis"
             6C 69 73
      00005D 00                     740 	.db	0
      00005E 00 00 00 98            741 	.dw	0,152
      000062 54 49 4D 34 5F 55 50   742 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000079 00                     743 	.db	0
      00007A 00 00 00 C4            744 	.dw	0,196
      00007E 6D 69 6C 69 73 65 63   745 	.ascii "miliseconds"
             6F 6E 64 73
      000089 00                     746 	.db	0
      00008A 00 00 00 00            747 	.dw	0,0
      00008E                        748 Ldebug_pubnames_end:
                                    749 
                                    750 	.area .debug_frame (NOLOAD)
      000263 00 00                  751 	.dw	0
      000265 00 0E                  752 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000267                        753 Ldebug_CIE0_start:
      000267 FF FF                  754 	.dw	0xffff
      000269 FF FF                  755 	.dw	0xffff
      00026B 01                     756 	.db	1
      00026C 00                     757 	.db	0
      00026D 01                     758 	.uleb128	1
      00026E 7F                     759 	.sleb128	-1
      00026F 09                     760 	.db	9
      000270 0C                     761 	.db	12
      000271 08                     762 	.uleb128	8
      000272 09                     763 	.uleb128	9
      000273 89                     764 	.db	137
      000274 01                     765 	.uleb128	1
      000275                        766 Ldebug_CIE0_end:
      000275 00 00 00 21            767 	.dw	0,33
      000279 00 00 02 63            768 	.dw	0,(Ldebug_CIE0_start-4)
      00027D 00 00 82 B2            769 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)	;initial loc
      000281 00 00 00 1A            770 	.dw	0,Smilis$TIM4_UPD_OVF_IRQHandler$51-Smilis$TIM4_UPD_OVF_IRQHandler$44
      000285 01                     771 	.db	1
      000286 00 00 82 B2            772 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      00028A 0E                     773 	.db	14
      00028B 09                     774 	.uleb128	9
      00028C 01                     775 	.db	1
      00028D 00 00 82 B4            776 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      000291 0E                     777 	.db	14
      000292 0A                     778 	.uleb128	10
      000293 01                     779 	.db	1
      000294 00 00 82 B8            780 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      000298 0E                     781 	.db	14
      000299 09                     782 	.uleb128	9
                                    783 
                                    784 	.area .debug_frame (NOLOAD)
      00029A 00 00                  785 	.dw	0
      00029C 00 0E                  786 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00029E                        787 Ldebug_CIE1_start:
      00029E FF FF                  788 	.dw	0xffff
      0002A0 FF FF                  789 	.dw	0xffff
      0002A2 01                     790 	.db	1
      0002A3 00                     791 	.db	0
      0002A4 01                     792 	.uleb128	1
      0002A5 7F                     793 	.sleb128	-1
      0002A6 09                     794 	.db	9
      0002A7 0C                     795 	.db	12
      0002A8 08                     796 	.uleb128	8
      0002A9 02                     797 	.uleb128	2
      0002AA 89                     798 	.db	137
      0002AB 01                     799 	.uleb128	1
      0002AC                        800 Ldebug_CIE1_end:
      0002AC 00 00 00 6E            801 	.dw	0,110
      0002B0 00 00 02 9A            802 	.dw	0,(Ldebug_CIE1_start-4)
      0002B4 00 00 82 8B            803 	.dw	0,(Smilis$init_milis$20)	;initial loc
      0002B8 00 00 00 26            804 	.dw	0,Smilis$init_milis$42-Smilis$init_milis$20
      0002BC 01                     805 	.db	1
      0002BD 00 00 82 8B            806 	.dw	0,(Smilis$init_milis$20)
      0002C1 0E                     807 	.db	14
      0002C2 02                     808 	.uleb128	2
      0002C3 01                     809 	.db	1
      0002C4 00 00 82 8D            810 	.dw	0,(Smilis$init_milis$22)
      0002C8 0E                     811 	.db	14
      0002C9 03                     812 	.uleb128	3
      0002CA 01                     813 	.db	1
      0002CB 00 00 82 8F            814 	.dw	0,(Smilis$init_milis$23)
      0002CF 0E                     815 	.db	14
      0002D0 04                     816 	.uleb128	4
      0002D1 01                     817 	.db	1
      0002D2 00 00 82 93            818 	.dw	0,(Smilis$init_milis$24)
      0002D6 0E                     819 	.db	14
      0002D7 02                     820 	.uleb128	2
      0002D8 01                     821 	.db	1
      0002D9 00 00 82 95            822 	.dw	0,(Smilis$init_milis$26)
      0002DD 0E                     823 	.db	14
      0002DE 03                     824 	.uleb128	3
      0002DF 01                     825 	.db	1
      0002E0 00 00 82 99            826 	.dw	0,(Smilis$init_milis$27)
      0002E4 0E                     827 	.db	14
      0002E5 02                     828 	.uleb128	2
      0002E6 01                     829 	.db	1
      0002E7 00 00 82 9B            830 	.dw	0,(Smilis$init_milis$29)
      0002EB 0E                     831 	.db	14
      0002EC 03                     832 	.uleb128	3
      0002ED 01                     833 	.db	1
      0002EE 00 00 82 9D            834 	.dw	0,(Smilis$init_milis$30)
      0002F2 0E                     835 	.db	14
      0002F3 04                     836 	.uleb128	4
      0002F4 01                     837 	.db	1
      0002F5 00 00 82 A1            838 	.dw	0,(Smilis$init_milis$31)
      0002F9 0E                     839 	.db	14
      0002FA 02                     840 	.uleb128	2
      0002FB 01                     841 	.db	1
      0002FC 00 00 82 A3            842 	.dw	0,(Smilis$init_milis$33)
      000300 0E                     843 	.db	14
      000301 03                     844 	.uleb128	3
      000302 01                     845 	.db	1
      000303 00 00 82 A5            846 	.dw	0,(Smilis$init_milis$34)
      000307 0E                     847 	.db	14
      000308 04                     848 	.uleb128	4
      000309 01                     849 	.db	1
      00030A 00 00 82 A9            850 	.dw	0,(Smilis$init_milis$35)
      00030E 0E                     851 	.db	14
      00030F 02                     852 	.uleb128	2
      000310 01                     853 	.db	1
      000311 00 00 82 AC            854 	.dw	0,(Smilis$init_milis$38)
      000315 0E                     855 	.db	14
      000316 03                     856 	.uleb128	3
      000317 01                     857 	.db	1
      000318 00 00 82 B0            858 	.dw	0,(Smilis$init_milis$39)
      00031C 0E                     859 	.db	14
      00031D 02                     860 	.uleb128	2
                                    861 
                                    862 	.area .debug_frame (NOLOAD)
      00031E 00 00                  863 	.dw	0
      000320 00 0E                  864 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000322                        865 Ldebug_CIE2_start:
      000322 FF FF                  866 	.dw	0xffff
      000324 FF FF                  867 	.dw	0xffff
      000326 01                     868 	.db	1
      000327 00                     869 	.db	0
      000328 01                     870 	.uleb128	1
      000329 7F                     871 	.sleb128	-1
      00032A 09                     872 	.db	9
      00032B 0C                     873 	.db	12
      00032C 08                     874 	.uleb128	8
      00032D 02                     875 	.uleb128	2
      00032E 89                     876 	.db	137
      00032F 01                     877 	.uleb128	1
      000330                        878 Ldebug_CIE2_end:
      000330 00 00 00 59            879 	.dw	0,89
      000334 00 00 03 1E            880 	.dw	0,(Ldebug_CIE2_start-4)
      000338 00 00 82 69            881 	.dw	0,(Smilis$milis$1)	;initial loc
      00033C 00 00 00 22            882 	.dw	0,Smilis$milis$18-Smilis$milis$1
      000340 01                     883 	.db	1
      000341 00 00 82 69            884 	.dw	0,(Smilis$milis$1)
      000345 0E                     885 	.db	14
      000346 02                     886 	.uleb128	2
      000347 01                     887 	.db	1
      000348 00 00 82 6B            888 	.dw	0,(Smilis$milis$2)
      00034C 0E                     889 	.db	14
      00034D 06                     890 	.uleb128	6
      00034E 01                     891 	.db	1
      00034F 00 00 82 6D            892 	.dw	0,(Smilis$milis$4)
      000353 0E                     893 	.db	14
      000354 07                     894 	.uleb128	7
      000355 01                     895 	.db	1
      000356 00 00 82 6F            896 	.dw	0,(Smilis$milis$5)
      00035A 0E                     897 	.db	14
      00035B 08                     898 	.uleb128	8
      00035C 01                     899 	.db	1
      00035D 00 00 82 73            900 	.dw	0,(Smilis$milis$6)
      000361 0E                     901 	.db	14
      000362 06                     902 	.uleb128	6
      000363 01                     903 	.db	1
      000364 00 00 82 7D            904 	.dw	0,(Smilis$milis$9)
      000368 0E                     905 	.db	14
      000369 08                     906 	.uleb128	8
      00036A 01                     907 	.db	1
      00036B 00 00 82 7F            908 	.dw	0,(Smilis$milis$10)
      00036F 0E                     909 	.db	14
      000370 09                     910 	.uleb128	9
      000371 01                     911 	.db	1
      000372 00 00 82 81            912 	.dw	0,(Smilis$milis$11)
      000376 0E                     913 	.db	14
      000377 0A                     914 	.uleb128	10
      000378 01                     915 	.db	1
      000379 00 00 82 85            916 	.dw	0,(Smilis$milis$12)
      00037D 0E                     917 	.db	14
      00037E 08                     918 	.uleb128	8
      00037F 01                     919 	.db	1
      000380 00 00 82 86            920 	.dw	0,(Smilis$milis$13)
      000384 0E                     921 	.db	14
      000385 06                     922 	.uleb128	6
      000386 01                     923 	.db	1
      000387 00 00 82 8A            924 	.dw	0,(Smilis$milis$16)
      00038B 0E                     925 	.db	14
      00038C 02                     926 	.uleb128	2
