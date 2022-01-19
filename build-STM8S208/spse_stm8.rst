                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spse_stm8
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_GetConversionValue
                                     12 	.globl _ADC_get
                                     13 	.globl _ADC2_Select_Channel
                                     14 	.globl _ADC2_AlignConfig
                                     15 	.globl _ADC2_Startup_Wait
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	Sspse_stm8$_delay_cycl$0 ==.
                                     54 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function _delay_cycl
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      0082CC                         61 __delay_cycl:
                           000000    62 	Sspse_stm8$_delay_cycl$1 ==.
                           000000    63 	Sspse_stm8$_delay_cycl$2 ==.
                                     64 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     65 ;	genInline
      0082CC 9D               [ 1]   66 	nop
      0082CD 9D               [ 1]   67 	nop
                           000002    68 	Sspse_stm8$_delay_cycl$3 ==.
                                     69 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     70 ; genAssign
      0082CE 1E 03            [ 2]   71 	ldw	x, (0x03, sp)
                                     72 ; genLabel
      0082D0                         73 00101$:
                           000004    74 	Sspse_stm8$_delay_cycl$4 ==.
                           000004    75 	Sspse_stm8$_delay_cycl$5 ==.
                                     76 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     77 ; genMinus
      0082D0 5A               [ 2]   78 	decw	x
                           000005    79 	Sspse_stm8$_delay_cycl$6 ==.
                           000005    80 	Sspse_stm8$_delay_cycl$7 ==.
                                     81 ;	inc/delay.h: 28: } while ( __ticks );
                                     82 ; genIfx
      0082D1 5D               [ 2]   83 	tnzw	x
      0082D2 27 03            [ 1]   84 	jreq	00117$
      0082D4 CC 82 D0         [ 2]   85 	jp	00101$
      0082D7                         86 00117$:
                           00000B    87 	Sspse_stm8$_delay_cycl$8 ==.
                                     88 ;	inc/delay.h: 29: __asm__("nop\n");
                                     89 ;	genInline
      0082D7 9D               [ 1]   90 	nop
                                     91 ; genLabel
      0082D8                         92 00104$:
                           00000C    93 	Sspse_stm8$_delay_cycl$9 ==.
                                     94 ;	inc/delay.h: 39: }
                                     95 ; genEndFunction
                           00000C    96 	Sspse_stm8$_delay_cycl$10 ==.
                           00000C    97 	XFspse_stm8$_delay_cycl$0$0 ==.
      0082D8 81               [ 4]   98 	ret
                           00000D    99 	Sspse_stm8$_delay_cycl$11 ==.
                           00000D   100 	Sspse_stm8$_delay_us$12 ==.
                                    101 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    102 ; genLabel
                                    103 ;	-----------------------------------------
                                    104 ;	 function _delay_us
                                    105 ;	-----------------------------------------
                                    106 ;	Register assignment might be sub-optimal.
                                    107 ;	Stack space usage: 0 bytes.
      0082D9                        108 __delay_us:
                           00000D   109 	Sspse_stm8$_delay_us$13 ==.
                           00000D   110 	Sspse_stm8$_delay_us$14 ==.
                                    111 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    112 ; genCast
                                    113 ; genAssign
      0082D9 16 03            [ 2]  114 	ldw	y, (0x03, sp)
      0082DB 5F               [ 1]  115 	clrw	x
                                    116 ; genIPush
      0082DC 90 89            [ 2]  117 	pushw	y
                           000012   118 	Sspse_stm8$_delay_us$15 ==.
      0082DE 89               [ 2]  119 	pushw	x
                           000013   120 	Sspse_stm8$_delay_us$16 ==.
                                    121 ; genIPush
      0082DF 4B 00            [ 1]  122 	push	#0x00
                           000015   123 	Sspse_stm8$_delay_us$17 ==.
      0082E1 4B 24            [ 1]  124 	push	#0x24
                           000017   125 	Sspse_stm8$_delay_us$18 ==.
      0082E3 4B F4            [ 1]  126 	push	#0xf4
                           000019   127 	Sspse_stm8$_delay_us$19 ==.
      0082E5 4B 00            [ 1]  128 	push	#0x00
                           00001B   129 	Sspse_stm8$_delay_us$20 ==.
                                    130 ; genCall
      0082E7 CD BA C4         [ 4]  131 	call	__mullong
      0082EA 5B 08            [ 2]  132 	addw	sp, #8
                           000020   133 	Sspse_stm8$_delay_us$21 ==.
                           000020   134 	Sspse_stm8$_delay_us$22 ==.
                                    135 ; genCast
                                    136 ; genAssign
                                    137 ; genIPush
      0082EC 4B 40            [ 1]  138 	push	#0x40
                           000022   139 	Sspse_stm8$_delay_us$23 ==.
      0082EE 4B 42            [ 1]  140 	push	#0x42
                           000024   141 	Sspse_stm8$_delay_us$24 ==.
      0082F0 4B 0F            [ 1]  142 	push	#0x0f
                           000026   143 	Sspse_stm8$_delay_us$25 ==.
      0082F2 4B 00            [ 1]  144 	push	#0x00
                           000028   145 	Sspse_stm8$_delay_us$26 ==.
                                    146 ; genIPush
      0082F4 89               [ 2]  147 	pushw	x
                           000029   148 	Sspse_stm8$_delay_us$27 ==.
      0082F5 90 89            [ 2]  149 	pushw	y
                           00002B   150 	Sspse_stm8$_delay_us$28 ==.
                                    151 ; genCall
      0082F7 CD BA 6A         [ 4]  152 	call	__divulong
      0082FA 5B 08            [ 2]  153 	addw	sp, #8
                           000030   154 	Sspse_stm8$_delay_us$29 ==.
                           000030   155 	Sspse_stm8$_delay_us$30 ==.
                                    156 ; genRightShiftLiteral
      0082FC 90 54            [ 2]  157 	srlw	y
      0082FE 56               [ 2]  158 	rrcw	x
      0082FF 90 54            [ 2]  159 	srlw	y
      008301 56               [ 2]  160 	rrcw	x
      008302 90 54            [ 2]  161 	srlw	y
      008304 56               [ 2]  162 	rrcw	x
                                    163 ; genCast
                                    164 ; genAssign
                           000039   165 	Sspse_stm8$_delay_us$31 ==.
                                    166 ; genPlus
      008305 5C               [ 1]  167 	incw	x
                                    168 ; genAssign
                                    169 ; genAssign
                           00003A   170 	Sspse_stm8$_delay_us$32 ==.
                                    171 ; genAssign
                           00003A   172 	Sspse_stm8$_delay_us$33 ==.
                                    173 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    174 ;	genInline
      008306 9D               [ 1]  175 	nop
      008307 9D               [ 1]  176 	nop
                           00003C   177 	Sspse_stm8$_delay_us$34 ==.
                           00003C   178 	Sspse_stm8$_delay_us$35 ==.
                                    179 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    180 ; genAssign
                                    181 ; genLabel
      008308                        182 00101$:
                           00003C   183 	Sspse_stm8$_delay_us$36 ==.
                                    184 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    185 ; genMinus
      008308 5A               [ 2]  186 	decw	x
                           00003D   187 	Sspse_stm8$_delay_us$37 ==.
                                    188 ;	inc/delay.h: 28: } while ( __ticks );
                                    189 ; genIfx
      008309 5D               [ 2]  190 	tnzw	x
      00830A 27 03            [ 1]  191 	jreq	00118$
      00830C CC 83 08         [ 2]  192 	jp	00101$
      00830F                        193 00118$:
                                    194 ;	inc/delay.h: 29: __asm__("nop\n");
                                    195 ;	genInline
      00830F 9D               [ 1]  196 	nop
                           000044   197 	Sspse_stm8$_delay_us$38 ==.
                           000044   198 	Sspse_stm8$_delay_us$39 ==.
                                    199 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    200 ; genLabel
      008310                        201 00105$:
                           000044   202 	Sspse_stm8$_delay_us$40 ==.
                                    203 ;	inc/delay.h: 43: }
                                    204 ; genEndFunction
                           000044   205 	Sspse_stm8$_delay_us$41 ==.
                           000044   206 	XFspse_stm8$_delay_us$0$0 ==.
      008310 81               [ 4]  207 	ret
                           000045   208 	Sspse_stm8$_delay_us$42 ==.
                           000045   209 	Sspse_stm8$ADC_get$43 ==.
                                    210 ;	./src/spse_stm8.c: 10: uint16_t ADC_get(ADC2_Channel_TypeDef ADC2_Channel){
                                    211 ; genLabel
                                    212 ;	-----------------------------------------
                                    213 ;	 function ADC_get
                                    214 ;	-----------------------------------------
                                    215 ;	Register assignment is optimal.
                                    216 ;	Stack space usage: 0 bytes.
      008311                        217 _ADC_get:
                           000045   218 	Sspse_stm8$ADC_get$44 ==.
                           000045   219 	Sspse_stm8$ADC_get$45 ==.
                                    220 ;	./src/spse_stm8.c: 11: ADC2_Select_Channel(ADC2_Channel); // vybere kanál / nastavuje analogový multiplexer
                                    221 ; genIPush
      008311 7B 03            [ 1]  222 	ld	a, (0x03, sp)
      008313 88               [ 1]  223 	push	a
                           000048   224 	Sspse_stm8$ADC_get$46 ==.
                                    225 ; genCall
      008314 CD 83 35         [ 4]  226 	call	_ADC2_Select_Channel
      008317 84               [ 1]  227 	pop	a
                           00004C   228 	Sspse_stm8$ADC_get$47 ==.
                           00004C   229 	Sspse_stm8$ADC_get$48 ==.
                                    230 ;	./src/spse_stm8.c: 12: ADC2->CR1 |= ADC2_CR1_ADON; // Start Conversion (ADON must be SET before => ADC must be enabled !)
                                    231 ; genPointerGet
      008318 C6 54 01         [ 1]  232 	ld	a, 0x5401
                                    233 ; genOr
      00831B AA 01            [ 1]  234 	or	a, #0x01
                                    235 ; genPointerSet
      00831D C7 54 01         [ 1]  236 	ld	0x5401, a
                           000054   237 	Sspse_stm8$ADC_get$49 ==.
                                    238 ;	./src/spse_stm8.c: 13: while(!(ADC2->CSR & ADC2_CSR_EOC)); // èeká na dokonèení pøevodu (End Of Conversion)
                                    239 ; genLabel
      008320                        240 00101$:
                                    241 ; genPointerGet
      008320 C6 54 00         [ 1]  242 	ld	a, 0x5400
                                    243 ; genAnd
      008323 4D               [ 1]  244 	tnz	a
      008324 2B 03            [ 1]  245 	jrmi	00116$
      008326 CC 83 20         [ 2]  246 	jp	00101$
      008329                        247 00116$:
                                    248 ; skipping generated iCode
                           00005D   249 	Sspse_stm8$ADC_get$50 ==.
                                    250 ;	./src/spse_stm8.c: 14: ADC2->CSR &=~ADC2_CSR_EOC; // maže vlajku 
                                    251 ; genPointerGet
      008329 C6 54 00         [ 1]  252 	ld	a, 0x5400
                                    253 ; genAnd
      00832C A4 7F            [ 1]  254 	and	a, #0x7f
                                    255 ; genPointerSet
      00832E C7 54 00         [ 1]  256 	ld	0x5400, a
                           000065   257 	Sspse_stm8$ADC_get$51 ==.
                                    258 ;	./src/spse_stm8.c: 15: return ADC2_GetConversionValue(); // vrací výsledek
                                    259 ; genCall
      008331 CC 9F 75         [ 2]  260 	jp	_ADC2_GetConversionValue
                                    261 ; genReturn
                                    262 ; genLabel
      008334                        263 00104$:
                           000068   264 	Sspse_stm8$ADC_get$52 ==.
                                    265 ;	./src/spse_stm8.c: 16: }
                                    266 ; genEndFunction
                           000068   267 	Sspse_stm8$ADC_get$53 ==.
                           000068   268 	XG$ADC_get$0$0 ==.
      008334 81               [ 4]  269 	ret
                           000069   270 	Sspse_stm8$ADC_get$54 ==.
                           000069   271 	Sspse_stm8$ADC2_Select_Channel$55 ==.
                                    272 ;	./src/spse_stm8.c: 21: void ADC2_Select_Channel(ADC2_Channel_TypeDef ADC2_Channel){
                                    273 ; genLabel
                                    274 ;	-----------------------------------------
                                    275 ;	 function ADC2_Select_Channel
                                    276 ;	-----------------------------------------
                                    277 ;	Register assignment is optimal.
                                    278 ;	Stack space usage: 1 bytes.
      008335                        279 _ADC2_Select_Channel:
                           000069   280 	Sspse_stm8$ADC2_Select_Channel$56 ==.
      008335 88               [ 1]  281 	push	a
                           00006A   282 	Sspse_stm8$ADC2_Select_Channel$57 ==.
                           00006A   283 	Sspse_stm8$ADC2_Select_Channel$58 ==.
                                    284 ;	./src/spse_stm8.c: 22: uint8_t tmp = (ADC2->CSR) & (~ADC2_CSR_CH);
                                    285 ; genPointerGet
      008336 C6 54 00         [ 1]  286 	ld	a, 0x5400
                                    287 ; genAnd
      008339 A4 F0            [ 1]  288 	and	a, #0xf0
      00833B 6B 01            [ 1]  289 	ld	(0x01, sp), a
                           000071   290 	Sspse_stm8$ADC2_Select_Channel$59 ==.
                                    291 ;	./src/spse_stm8.c: 23: tmp |= ADC2_Channel | ADC2_CSR_EOC;
                                    292 ; genOr
      00833D 7B 04            [ 1]  293 	ld	a, (0x04, sp)
      00833F AA 80            [ 1]  294 	or	a, #0x80
                                    295 ; genOr
      008341 1A 01            [ 1]  296 	or	a, (0x01, sp)
                                    297 ; genAssign
                           000077   298 	Sspse_stm8$ADC2_Select_Channel$60 ==.
                                    299 ;	./src/spse_stm8.c: 24: ADC2->CSR = tmp;
                                    300 ; genPointerSet
      008343 C7 54 00         [ 1]  301 	ld	0x5400, a
                                    302 ; genLabel
      008346                        303 00101$:
                           00007A   304 	Sspse_stm8$ADC2_Select_Channel$61 ==.
                                    305 ;	./src/spse_stm8.c: 25: }
                                    306 ; genEndFunction
      008346 84               [ 1]  307 	pop	a
                           00007B   308 	Sspse_stm8$ADC2_Select_Channel$62 ==.
                           00007B   309 	Sspse_stm8$ADC2_Select_Channel$63 ==.
                           00007B   310 	XG$ADC2_Select_Channel$0$0 ==.
      008347 81               [ 4]  311 	ret
                           00007C   312 	Sspse_stm8$ADC2_Select_Channel$64 ==.
                           00007C   313 	Sspse_stm8$ADC2_AlignConfig$65 ==.
                                    314 ;	./src/spse_stm8.c: 30: void ADC2_AlignConfig(ADC2_Align_TypeDef ADC2_Align){
                                    315 ; genLabel
                                    316 ;	-----------------------------------------
                                    317 ;	 function ADC2_AlignConfig
                                    318 ;	-----------------------------------------
                                    319 ;	Register assignment is optimal.
                                    320 ;	Stack space usage: 0 bytes.
      008348                        321 _ADC2_AlignConfig:
                           00007C   322 	Sspse_stm8$ADC2_AlignConfig$66 ==.
                           00007C   323 	Sspse_stm8$ADC2_AlignConfig$67 ==.
                                    324 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    325 ; genPointerGet
      008348 C6 54 02         [ 1]  326 	ld	a, 0x5402
                           00007F   327 	Sspse_stm8$ADC2_AlignConfig$68 ==.
                                    328 ;	./src/spse_stm8.c: 31: if(ADC2_Align){
                                    329 ; genIfx
      00834B 0D 03            [ 1]  330 	tnz	(0x03, sp)
      00834D 26 03            [ 1]  331 	jrne	00111$
      00834F CC 83 5A         [ 2]  332 	jp	00102$
      008352                        333 00111$:
                           000086   334 	Sspse_stm8$ADC2_AlignConfig$69 ==.
                           000086   335 	Sspse_stm8$ADC2_AlignConfig$70 ==.
                                    336 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    337 ; genOr
      008352 1A 03            [ 1]  338 	or	a, (0x03, sp)
                                    339 ; genPointerSet
      008354 C7 54 02         [ 1]  340 	ld	0x5402, a
                           00008B   341 	Sspse_stm8$ADC2_AlignConfig$71 ==.
                                    342 ; genGoto
      008357 CC 83 5F         [ 2]  343 	jp	00104$
                                    344 ; genLabel
      00835A                        345 00102$:
                           00008E   346 	Sspse_stm8$ADC2_AlignConfig$72 ==.
                           00008E   347 	Sspse_stm8$ADC2_AlignConfig$73 ==.
                                    348 ;	./src/spse_stm8.c: 34: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    349 ; genAnd
      00835A A4 F7            [ 1]  350 	and	a, #0xf7
                                    351 ; genPointerSet
      00835C C7 54 02         [ 1]  352 	ld	0x5402, a
                           000093   353 	Sspse_stm8$ADC2_AlignConfig$74 ==.
                                    354 ; genLabel
      00835F                        355 00104$:
                           000093   356 	Sspse_stm8$ADC2_AlignConfig$75 ==.
                                    357 ;	./src/spse_stm8.c: 36: }
                                    358 ; genEndFunction
                           000093   359 	Sspse_stm8$ADC2_AlignConfig$76 ==.
                           000093   360 	XG$ADC2_AlignConfig$0$0 ==.
      00835F 81               [ 4]  361 	ret
                           000094   362 	Sspse_stm8$ADC2_AlignConfig$77 ==.
                           000094   363 	Sspse_stm8$ADC2_Startup_Wait$78 ==.
                                    364 ;	./src/spse_stm8.c: 40: void ADC2_Startup_Wait(void){
                                    365 ; genLabel
                                    366 ;	-----------------------------------------
                                    367 ;	 function ADC2_Startup_Wait
                                    368 ;	-----------------------------------------
                                    369 ;	Register assignment is optimal.
                                    370 ;	Stack space usage: 0 bytes.
      008360                        371 _ADC2_Startup_Wait:
                           000094   372 	Sspse_stm8$ADC2_Startup_Wait$79 ==.
                           000094   373 	Sspse_stm8$ADC2_Startup_Wait$80 ==.
                                    374 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    375 ; genAssign
      008360 AE 00 0F         [ 2]  376 	ldw	x, #0x000f
                           000097   377 	Sspse_stm8$ADC2_Startup_Wait$81 ==.
                                    378 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    379 ;	genInline
      008363 9D               [ 1]  380 	nop
      008364 9D               [ 1]  381 	nop
                           000099   382 	Sspse_stm8$ADC2_Startup_Wait$82 ==.
                           000099   383 	Sspse_stm8$ADC2_Startup_Wait$83 ==.
                                    384 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    385 ; genAssign
                                    386 ; genLabel
      008365                        387 00101$:
                           000099   388 	Sspse_stm8$ADC2_Startup_Wait$84 ==.
                                    389 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    390 ; genMinus
      008365 5A               [ 2]  391 	decw	x
                           00009A   392 	Sspse_stm8$ADC2_Startup_Wait$85 ==.
                                    393 ;	inc/delay.h: 28: } while ( __ticks );
                                    394 ; genIfx
      008366 5D               [ 2]  395 	tnzw	x
      008367 27 03            [ 1]  396 	jreq	00119$
      008369 CC 83 65         [ 2]  397 	jp	00101$
      00836C                        398 00119$:
                                    399 ;	inc/delay.h: 29: __asm__("nop\n");
                                    400 ;	genInline
      00836C 9D               [ 1]  401 	nop
                           0000A1   402 	Sspse_stm8$ADC2_Startup_Wait$86 ==.
                           0000A1   403 	Sspse_stm8$ADC2_Startup_Wait$87 ==.
                                    404 ;	./src/spse_stm8.c: 41: _delay_us(ADC_TSTAB);
                                    405 ; genLabel
      00836D                        406 00106$:
                           0000A1   407 	Sspse_stm8$ADC2_Startup_Wait$88 ==.
                                    408 ;	./src/spse_stm8.c: 42: }
                                    409 ; genEndFunction
                           0000A1   410 	Sspse_stm8$ADC2_Startup_Wait$89 ==.
                           0000A1   411 	XG$ADC2_Startup_Wait$0$0 ==.
      00836D 81               [ 4]  412 	ret
                           0000A2   413 	Sspse_stm8$ADC2_Startup_Wait$90 ==.
                                    414 	.area CODE
                                    415 	.area CONST
                                    416 	.area INITIALIZER
                                    417 	.area CABS (ABS)
                                    418 
                                    419 	.area .debug_line (NOLOAD)
      0002E8 00 00 01 95            420 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0002EC                        421 Ldebug_line_start:
      0002EC 00 02                  422 	.dw	2
      0002EE 00 00 00 81            423 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0002F2 01                     424 	.db	1
      0002F3 01                     425 	.db	1
      0002F4 FB                     426 	.db	-5
      0002F5 0F                     427 	.db	15
      0002F6 0A                     428 	.db	10
      0002F7 00                     429 	.db	0
      0002F8 01                     430 	.db	1
      0002F9 01                     431 	.db	1
      0002FA 01                     432 	.db	1
      0002FB 01                     433 	.db	1
      0002FC 00                     434 	.db	0
      0002FD 00                     435 	.db	0
      0002FE 00                     436 	.db	0
      0002FF 01                     437 	.db	1
      000300 43 3A 5C 50 72 6F 67   438 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000328 00                     439 	.db	0
      000329 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00034C 00                     441 	.db	0
      00034D 00                     442 	.db	0
      00034E 69 6E 63 2F 64 65 6C   443 	.ascii "inc/delay.h"
             61 79 2E 68
      000359 00                     444 	.db	0
      00035A 00                     445 	.uleb128	0
      00035B 00                     446 	.uleb128	0
      00035C 00                     447 	.uleb128	0
      00035D 2E 2F 73 72 63 2F 73   448 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      00036E 00                     449 	.db	0
      00036F 00                     450 	.uleb128	0
      000370 00                     451 	.uleb128	0
      000371 00                     452 	.uleb128	0
      000372 00                     453 	.db	0
      000373                        454 Ldebug_line_stmt:
      000373 00                     455 	.db	0
      000374 05                     456 	.uleb128	5
      000375 02                     457 	.db	2
      000376 00 00 82 CC            458 	.dw	0,(Sspse_stm8$_delay_cycl$0)
      00037A 03                     459 	.db	3
      00037B 0D                     460 	.sleb128	13
      00037C 01                     461 	.db	1
      00037D 09                     462 	.db	9
      00037E 00 00                  463 	.dw	Sspse_stm8$_delay_cycl$2-Sspse_stm8$_delay_cycl$0
      000380 03                     464 	.db	3
      000381 0B                     465 	.sleb128	11
      000382 01                     466 	.db	1
      000383 09                     467 	.db	9
      000384 00 02                  468 	.dw	Sspse_stm8$_delay_cycl$3-Sspse_stm8$_delay_cycl$2
      000386 03                     469 	.db	3
      000387 01                     470 	.sleb128	1
      000388 01                     471 	.db	1
      000389 09                     472 	.db	9
      00038A 00 02                  473 	.dw	Sspse_stm8$_delay_cycl$5-Sspse_stm8$_delay_cycl$3
      00038C 03                     474 	.db	3
      00038D 01                     475 	.sleb128	1
      00038E 01                     476 	.db	1
      00038F 09                     477 	.db	9
      000390 00 01                  478 	.dw	Sspse_stm8$_delay_cycl$7-Sspse_stm8$_delay_cycl$5
      000392 03                     479 	.db	3
      000393 01                     480 	.sleb128	1
      000394 01                     481 	.db	1
      000395 09                     482 	.db	9
      000396 00 06                  483 	.dw	Sspse_stm8$_delay_cycl$8-Sspse_stm8$_delay_cycl$7
      000398 03                     484 	.db	3
      000399 01                     485 	.sleb128	1
      00039A 01                     486 	.db	1
      00039B 09                     487 	.db	9
      00039C 00 01                  488 	.dw	Sspse_stm8$_delay_cycl$9-Sspse_stm8$_delay_cycl$8
      00039E 03                     489 	.db	3
      00039F 0A                     490 	.sleb128	10
      0003A0 01                     491 	.db	1
      0003A1 09                     492 	.db	9
      0003A2 00 01                  493 	.dw	1+Sspse_stm8$_delay_cycl$10-Sspse_stm8$_delay_cycl$9
      0003A4 00                     494 	.db	0
      0003A5 01                     495 	.uleb128	1
      0003A6 01                     496 	.db	1
      0003A7 00                     497 	.db	0
      0003A8 05                     498 	.uleb128	5
      0003A9 02                     499 	.db	2
      0003AA 00 00 82 D9            500 	.dw	0,(Sspse_stm8$_delay_us$12)
      0003AE 03                     501 	.db	3
      0003AF 28                     502 	.sleb128	40
      0003B0 01                     503 	.db	1
      0003B1 09                     504 	.db	9
      0003B2 00 2F                  505 	.dw	Sspse_stm8$_delay_us$35-Sspse_stm8$_delay_us$12
      0003B4 03                     506 	.db	3
      0003B5 71                     507 	.sleb128	-15
      0003B6 01                     508 	.db	1
      0003B7 09                     509 	.db	9
      0003B8 00 08                  510 	.dw	Sspse_stm8$_delay_us$39-Sspse_stm8$_delay_us$35
      0003BA 03                     511 	.db	3
      0003BB 10                     512 	.sleb128	16
      0003BC 01                     513 	.db	1
      0003BD 09                     514 	.db	9
      0003BE 00 00                  515 	.dw	Sspse_stm8$_delay_us$40-Sspse_stm8$_delay_us$39
      0003C0 03                     516 	.db	3
      0003C1 01                     517 	.sleb128	1
      0003C2 01                     518 	.db	1
      0003C3 09                     519 	.db	9
      0003C4 00 01                  520 	.dw	1+Sspse_stm8$_delay_us$41-Sspse_stm8$_delay_us$40
      0003C6 00                     521 	.db	0
      0003C7 01                     522 	.uleb128	1
      0003C8 01                     523 	.db	1
      0003C9 04                     524 	.db	4
      0003CA 02                     525 	.uleb128	2
      0003CB 00                     526 	.db	0
      0003CC 05                     527 	.uleb128	5
      0003CD 02                     528 	.db	2
      0003CE 00 00 83 11            529 	.dw	0,(Sspse_stm8$ADC_get$43)
      0003D2 03                     530 	.db	3
      0003D3 09                     531 	.sleb128	9
      0003D4 01                     532 	.db	1
      0003D5 09                     533 	.db	9
      0003D6 00 00                  534 	.dw	Sspse_stm8$ADC_get$45-Sspse_stm8$ADC_get$43
      0003D8 03                     535 	.db	3
      0003D9 01                     536 	.sleb128	1
      0003DA 01                     537 	.db	1
      0003DB 09                     538 	.db	9
      0003DC 00 07                  539 	.dw	Sspse_stm8$ADC_get$48-Sspse_stm8$ADC_get$45
      0003DE 03                     540 	.db	3
      0003DF 01                     541 	.sleb128	1
      0003E0 01                     542 	.db	1
      0003E1 09                     543 	.db	9
      0003E2 00 08                  544 	.dw	Sspse_stm8$ADC_get$49-Sspse_stm8$ADC_get$48
      0003E4 03                     545 	.db	3
      0003E5 01                     546 	.sleb128	1
      0003E6 01                     547 	.db	1
      0003E7 09                     548 	.db	9
      0003E8 00 09                  549 	.dw	Sspse_stm8$ADC_get$50-Sspse_stm8$ADC_get$49
      0003EA 03                     550 	.db	3
      0003EB 01                     551 	.sleb128	1
      0003EC 01                     552 	.db	1
      0003ED 09                     553 	.db	9
      0003EE 00 08                  554 	.dw	Sspse_stm8$ADC_get$51-Sspse_stm8$ADC_get$50
      0003F0 03                     555 	.db	3
      0003F1 01                     556 	.sleb128	1
      0003F2 01                     557 	.db	1
      0003F3 09                     558 	.db	9
      0003F4 00 03                  559 	.dw	Sspse_stm8$ADC_get$52-Sspse_stm8$ADC_get$51
      0003F6 03                     560 	.db	3
      0003F7 01                     561 	.sleb128	1
      0003F8 01                     562 	.db	1
      0003F9 09                     563 	.db	9
      0003FA 00 01                  564 	.dw	1+Sspse_stm8$ADC_get$53-Sspse_stm8$ADC_get$52
      0003FC 00                     565 	.db	0
      0003FD 01                     566 	.uleb128	1
      0003FE 01                     567 	.db	1
      0003FF 04                     568 	.db	4
      000400 02                     569 	.uleb128	2
      000401 00                     570 	.db	0
      000402 05                     571 	.uleb128	5
      000403 02                     572 	.db	2
      000404 00 00 83 35            573 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$55)
      000408 03                     574 	.db	3
      000409 14                     575 	.sleb128	20
      00040A 01                     576 	.db	1
      00040B 09                     577 	.db	9
      00040C 00 01                  578 	.dw	Sspse_stm8$ADC2_Select_Channel$58-Sspse_stm8$ADC2_Select_Channel$55
      00040E 03                     579 	.db	3
      00040F 01                     580 	.sleb128	1
      000410 01                     581 	.db	1
      000411 09                     582 	.db	9
      000412 00 07                  583 	.dw	Sspse_stm8$ADC2_Select_Channel$59-Sspse_stm8$ADC2_Select_Channel$58
      000414 03                     584 	.db	3
      000415 01                     585 	.sleb128	1
      000416 01                     586 	.db	1
      000417 09                     587 	.db	9
      000418 00 06                  588 	.dw	Sspse_stm8$ADC2_Select_Channel$60-Sspse_stm8$ADC2_Select_Channel$59
      00041A 03                     589 	.db	3
      00041B 01                     590 	.sleb128	1
      00041C 01                     591 	.db	1
      00041D 09                     592 	.db	9
      00041E 00 03                  593 	.dw	Sspse_stm8$ADC2_Select_Channel$61-Sspse_stm8$ADC2_Select_Channel$60
      000420 03                     594 	.db	3
      000421 01                     595 	.sleb128	1
      000422 01                     596 	.db	1
      000423 09                     597 	.db	9
      000424 00 02                  598 	.dw	1+Sspse_stm8$ADC2_Select_Channel$63-Sspse_stm8$ADC2_Select_Channel$61
      000426 00                     599 	.db	0
      000427 01                     600 	.uleb128	1
      000428 01                     601 	.db	1
      000429 04                     602 	.db	4
      00042A 02                     603 	.uleb128	2
      00042B 00                     604 	.db	0
      00042C 05                     605 	.uleb128	5
      00042D 02                     606 	.db	2
      00042E 00 00 83 48            607 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$65)
      000432 03                     608 	.db	3
      000433 1D                     609 	.sleb128	29
      000434 01                     610 	.db	1
      000435 09                     611 	.db	9
      000436 00 00                  612 	.dw	Sspse_stm8$ADC2_AlignConfig$67-Sspse_stm8$ADC2_AlignConfig$65
      000438 03                     613 	.db	3
      000439 02                     614 	.sleb128	2
      00043A 01                     615 	.db	1
      00043B 09                     616 	.db	9
      00043C 00 03                  617 	.dw	Sspse_stm8$ADC2_AlignConfig$68-Sspse_stm8$ADC2_AlignConfig$67
      00043E 03                     618 	.db	3
      00043F 7F                     619 	.sleb128	-1
      000440 01                     620 	.db	1
      000441 09                     621 	.db	9
      000442 00 07                  622 	.dw	Sspse_stm8$ADC2_AlignConfig$70-Sspse_stm8$ADC2_AlignConfig$68
      000444 03                     623 	.db	3
      000445 01                     624 	.sleb128	1
      000446 01                     625 	.db	1
      000447 09                     626 	.db	9
      000448 00 08                  627 	.dw	Sspse_stm8$ADC2_AlignConfig$73-Sspse_stm8$ADC2_AlignConfig$70
      00044A 03                     628 	.db	3
      00044B 02                     629 	.sleb128	2
      00044C 01                     630 	.db	1
      00044D 09                     631 	.db	9
      00044E 00 05                  632 	.dw	Sspse_stm8$ADC2_AlignConfig$75-Sspse_stm8$ADC2_AlignConfig$73
      000450 03                     633 	.db	3
      000451 02                     634 	.sleb128	2
      000452 01                     635 	.db	1
      000453 09                     636 	.db	9
      000454 00 01                  637 	.dw	1+Sspse_stm8$ADC2_AlignConfig$76-Sspse_stm8$ADC2_AlignConfig$75
      000456 00                     638 	.db	0
      000457 01                     639 	.uleb128	1
      000458 01                     640 	.db	1
      000459 04                     641 	.db	4
      00045A 02                     642 	.uleb128	2
      00045B 00                     643 	.db	0
      00045C 05                     644 	.uleb128	5
      00045D 02                     645 	.db	2
      00045E 00 00 83 60            646 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$78)
      000462 03                     647 	.db	3
      000463 27                     648 	.sleb128	39
      000464 01                     649 	.db	1
      000465 04                     650 	.db	4
      000466 01                     651 	.uleb128	1
      000467 09                     652 	.db	9
      000468 00 05                  653 	.dw	Sspse_stm8$ADC2_Startup_Wait$83-Sspse_stm8$ADC2_Startup_Wait$78
      00046A 03                     654 	.db	3
      00046B 72                     655 	.sleb128	-14
      00046C 01                     656 	.db	1
      00046D 04                     657 	.db	4
      00046E 02                     658 	.uleb128	2
      00046F 09                     659 	.db	9
      000470 00 08                  660 	.dw	Sspse_stm8$ADC2_Startup_Wait$87-Sspse_stm8$ADC2_Startup_Wait$83
      000472 03                     661 	.db	3
      000473 0F                     662 	.sleb128	15
      000474 01                     663 	.db	1
      000475 09                     664 	.db	9
      000476 00 00                  665 	.dw	Sspse_stm8$ADC2_Startup_Wait$88-Sspse_stm8$ADC2_Startup_Wait$87
      000478 03                     666 	.db	3
      000479 01                     667 	.sleb128	1
      00047A 01                     668 	.db	1
      00047B 09                     669 	.db	9
      00047C 00 01                  670 	.dw	1+Sspse_stm8$ADC2_Startup_Wait$89-Sspse_stm8$ADC2_Startup_Wait$88
      00047E 00                     671 	.db	0
      00047F 01                     672 	.uleb128	1
      000480 01                     673 	.db	1
      000481                        674 Ldebug_line_end:
                                    675 
                                    676 	.area .debug_loc (NOLOAD)
      000484                        677 Ldebug_loc_start:
      000484 00 00 83 60            678 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      000488 00 00 83 6E            679 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$90)
      00048C 00 02                  680 	.dw	2
      00048E 78                     681 	.db	120
      00048F 01                     682 	.sleb128	1
      000490 00 00 00 00            683 	.dw	0,0
      000494 00 00 00 00            684 	.dw	0,0
      000498 00 00 83 48            685 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      00049C 00 00 83 60            686 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$77)
      0004A0 00 02                  687 	.dw	2
      0004A2 78                     688 	.db	120
      0004A3 01                     689 	.sleb128	1
      0004A4 00 00 00 00            690 	.dw	0,0
      0004A8 00 00 00 00            691 	.dw	0,0
      0004AC 00 00 83 47            692 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      0004B0 00 00 83 48            693 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$64)
      0004B4 00 02                  694 	.dw	2
      0004B6 78                     695 	.db	120
      0004B7 01                     696 	.sleb128	1
      0004B8 00 00 83 36            697 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      0004BC 00 00 83 47            698 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      0004C0 00 02                  699 	.dw	2
      0004C2 78                     700 	.db	120
      0004C3 02                     701 	.sleb128	2
      0004C4 00 00 83 35            702 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      0004C8 00 00 83 36            703 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      0004CC 00 02                  704 	.dw	2
      0004CE 78                     705 	.db	120
      0004CF 01                     706 	.sleb128	1
      0004D0 00 00 00 00            707 	.dw	0,0
      0004D4 00 00 00 00            708 	.dw	0,0
      0004D8 00 00 83 18            709 	.dw	0,(Sspse_stm8$ADC_get$47)
      0004DC 00 00 83 35            710 	.dw	0,(Sspse_stm8$ADC_get$54)
      0004E0 00 02                  711 	.dw	2
      0004E2 78                     712 	.db	120
      0004E3 01                     713 	.sleb128	1
      0004E4 00 00 83 14            714 	.dw	0,(Sspse_stm8$ADC_get$46)
      0004E8 00 00 83 18            715 	.dw	0,(Sspse_stm8$ADC_get$47)
      0004EC 00 02                  716 	.dw	2
      0004EE 78                     717 	.db	120
      0004EF 02                     718 	.sleb128	2
      0004F0 00 00 83 11            719 	.dw	0,(Sspse_stm8$ADC_get$44)
      0004F4 00 00 83 14            720 	.dw	0,(Sspse_stm8$ADC_get$46)
      0004F8 00 02                  721 	.dw	2
      0004FA 78                     722 	.db	120
      0004FB 01                     723 	.sleb128	1
      0004FC 00 00 00 00            724 	.dw	0,0
      000500 00 00 00 00            725 	.dw	0,0
      000504 00 00 82 FC            726 	.dw	0,(Sspse_stm8$_delay_us$29)
      000508 00 00 83 11            727 	.dw	0,(Sspse_stm8$_delay_us$42)
      00050C 00 02                  728 	.dw	2
      00050E 78                     729 	.db	120
      00050F 01                     730 	.sleb128	1
      000510 00 00 82 F7            731 	.dw	0,(Sspse_stm8$_delay_us$28)
      000514 00 00 82 FC            732 	.dw	0,(Sspse_stm8$_delay_us$29)
      000518 00 02                  733 	.dw	2
      00051A 78                     734 	.db	120
      00051B 09                     735 	.sleb128	9
      00051C 00 00 82 F5            736 	.dw	0,(Sspse_stm8$_delay_us$27)
      000520 00 00 82 F7            737 	.dw	0,(Sspse_stm8$_delay_us$28)
      000524 00 02                  738 	.dw	2
      000526 78                     739 	.db	120
      000527 07                     740 	.sleb128	7
      000528 00 00 82 F4            741 	.dw	0,(Sspse_stm8$_delay_us$26)
      00052C 00 00 82 F5            742 	.dw	0,(Sspse_stm8$_delay_us$27)
      000530 00 02                  743 	.dw	2
      000532 78                     744 	.db	120
      000533 05                     745 	.sleb128	5
      000534 00 00 82 F2            746 	.dw	0,(Sspse_stm8$_delay_us$25)
      000538 00 00 82 F4            747 	.dw	0,(Sspse_stm8$_delay_us$26)
      00053C 00 02                  748 	.dw	2
      00053E 78                     749 	.db	120
      00053F 04                     750 	.sleb128	4
      000540 00 00 82 F0            751 	.dw	0,(Sspse_stm8$_delay_us$24)
      000544 00 00 82 F2            752 	.dw	0,(Sspse_stm8$_delay_us$25)
      000548 00 02                  753 	.dw	2
      00054A 78                     754 	.db	120
      00054B 03                     755 	.sleb128	3
      00054C 00 00 82 EE            756 	.dw	0,(Sspse_stm8$_delay_us$23)
      000550 00 00 82 F0            757 	.dw	0,(Sspse_stm8$_delay_us$24)
      000554 00 02                  758 	.dw	2
      000556 78                     759 	.db	120
      000557 02                     760 	.sleb128	2
      000558 00 00 82 EC            761 	.dw	0,(Sspse_stm8$_delay_us$21)
      00055C 00 00 82 EE            762 	.dw	0,(Sspse_stm8$_delay_us$23)
      000560 00 02                  763 	.dw	2
      000562 78                     764 	.db	120
      000563 01                     765 	.sleb128	1
      000564 00 00 82 E7            766 	.dw	0,(Sspse_stm8$_delay_us$20)
      000568 00 00 82 EC            767 	.dw	0,(Sspse_stm8$_delay_us$21)
      00056C 00 02                  768 	.dw	2
      00056E 78                     769 	.db	120
      00056F 09                     770 	.sleb128	9
      000570 00 00 82 E5            771 	.dw	0,(Sspse_stm8$_delay_us$19)
      000574 00 00 82 E7            772 	.dw	0,(Sspse_stm8$_delay_us$20)
      000578 00 02                  773 	.dw	2
      00057A 78                     774 	.db	120
      00057B 08                     775 	.sleb128	8
      00057C 00 00 82 E3            776 	.dw	0,(Sspse_stm8$_delay_us$18)
      000580 00 00 82 E5            777 	.dw	0,(Sspse_stm8$_delay_us$19)
      000584 00 02                  778 	.dw	2
      000586 78                     779 	.db	120
      000587 07                     780 	.sleb128	7
      000588 00 00 82 E1            781 	.dw	0,(Sspse_stm8$_delay_us$17)
      00058C 00 00 82 E3            782 	.dw	0,(Sspse_stm8$_delay_us$18)
      000590 00 02                  783 	.dw	2
      000592 78                     784 	.db	120
      000593 06                     785 	.sleb128	6
      000594 00 00 82 DF            786 	.dw	0,(Sspse_stm8$_delay_us$16)
      000598 00 00 82 E1            787 	.dw	0,(Sspse_stm8$_delay_us$17)
      00059C 00 02                  788 	.dw	2
      00059E 78                     789 	.db	120
      00059F 05                     790 	.sleb128	5
      0005A0 00 00 82 DE            791 	.dw	0,(Sspse_stm8$_delay_us$15)
      0005A4 00 00 82 DF            792 	.dw	0,(Sspse_stm8$_delay_us$16)
      0005A8 00 02                  793 	.dw	2
      0005AA 78                     794 	.db	120
      0005AB 03                     795 	.sleb128	3
      0005AC 00 00 82 D9            796 	.dw	0,(Sspse_stm8$_delay_us$13)
      0005B0 00 00 82 DE            797 	.dw	0,(Sspse_stm8$_delay_us$15)
      0005B4 00 02                  798 	.dw	2
      0005B6 78                     799 	.db	120
      0005B7 01                     800 	.sleb128	1
      0005B8 00 00 00 00            801 	.dw	0,0
      0005BC 00 00 00 00            802 	.dw	0,0
      0005C0 00 00 82 CC            803 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      0005C4 00 00 82 D9            804 	.dw	0,(Sspse_stm8$_delay_cycl$11)
      0005C8 00 02                  805 	.dw	2
      0005CA 78                     806 	.db	120
      0005CB 01                     807 	.sleb128	1
      0005CC 00 00 00 00            808 	.dw	0,0
      0005D0 00 00 00 00            809 	.dw	0,0
                                    810 
                                    811 	.area .debug_abbrev (NOLOAD)
      000115                        812 Ldebug_abbrev:
      000115 0D                     813 	.uleb128	13
      000116 0B                     814 	.uleb128	11
      000117 01                     815 	.db	1
      000118 00                     816 	.uleb128	0
      000119 00                     817 	.uleb128	0
      00011A 03                     818 	.uleb128	3
      00011B 05                     819 	.uleb128	5
      00011C 00                     820 	.db	0
      00011D 02                     821 	.uleb128	2
      00011E 0A                     822 	.uleb128	10
      00011F 03                     823 	.uleb128	3
      000120 08                     824 	.uleb128	8
      000121 49                     825 	.uleb128	73
      000122 13                     826 	.uleb128	19
      000123 00                     827 	.uleb128	0
      000124 00                     828 	.uleb128	0
      000125 02                     829 	.uleb128	2
      000126 2E                     830 	.uleb128	46
      000127 01                     831 	.db	1
      000128 01                     832 	.uleb128	1
      000129 13                     833 	.uleb128	19
      00012A 03                     834 	.uleb128	3
      00012B 08                     835 	.uleb128	8
      00012C 11                     836 	.uleb128	17
      00012D 01                     837 	.uleb128	1
      00012E 12                     838 	.uleb128	18
      00012F 01                     839 	.uleb128	1
      000130 3F                     840 	.uleb128	63
      000131 0C                     841 	.uleb128	12
      000132 40                     842 	.uleb128	64
      000133 06                     843 	.uleb128	6
      000134 00                     844 	.uleb128	0
      000135 00                     845 	.uleb128	0
      000136 0A                     846 	.uleb128	10
      000137 34                     847 	.uleb128	52
      000138 00                     848 	.db	0
      000139 02                     849 	.uleb128	2
      00013A 0A                     850 	.uleb128	10
      00013B 03                     851 	.uleb128	3
      00013C 08                     852 	.uleb128	8
      00013D 49                     853 	.uleb128	73
      00013E 13                     854 	.uleb128	19
      00013F 00                     855 	.uleb128	0
      000140 00                     856 	.uleb128	0
      000141 0B                     857 	.uleb128	11
      000142 2E                     858 	.uleb128	46
      000143 01                     859 	.db	1
      000144 01                     860 	.uleb128	1
      000145 13                     861 	.uleb128	19
      000146 03                     862 	.uleb128	3
      000147 08                     863 	.uleb128	8
      000148 11                     864 	.uleb128	17
      000149 01                     865 	.uleb128	1
      00014A 12                     866 	.uleb128	18
      00014B 01                     867 	.uleb128	1
      00014C 3F                     868 	.uleb128	63
      00014D 0C                     869 	.uleb128	12
      00014E 40                     870 	.uleb128	64
      00014F 06                     871 	.uleb128	6
      000150 49                     872 	.uleb128	73
      000151 13                     873 	.uleb128	19
      000152 00                     874 	.uleb128	0
      000153 00                     875 	.uleb128	0
      000154 0E                     876 	.uleb128	14
      000155 0B                     877 	.uleb128	11
      000156 01                     878 	.db	1
      000157 01                     879 	.uleb128	1
      000158 13                     880 	.uleb128	19
      000159 00                     881 	.uleb128	0
      00015A 00                     882 	.uleb128	0
      00015B 06                     883 	.uleb128	6
      00015C 26                     884 	.uleb128	38
      00015D 00                     885 	.db	0
      00015E 49                     886 	.uleb128	73
      00015F 13                     887 	.uleb128	19
      000160 00                     888 	.uleb128	0
      000161 00                     889 	.uleb128	0
      000162 01                     890 	.uleb128	1
      000163 11                     891 	.uleb128	17
      000164 01                     892 	.db	1
      000165 03                     893 	.uleb128	3
      000166 08                     894 	.uleb128	8
      000167 10                     895 	.uleb128	16
      000168 06                     896 	.uleb128	6
      000169 13                     897 	.uleb128	19
      00016A 0B                     898 	.uleb128	11
      00016B 25                     899 	.uleb128	37
      00016C 08                     900 	.uleb128	8
      00016D 00                     901 	.uleb128	0
      00016E 00                     902 	.uleb128	0
      00016F 04                     903 	.uleb128	4
      000170 0B                     904 	.uleb128	11
      000171 00                     905 	.db	0
      000172 11                     906 	.uleb128	17
      000173 01                     907 	.uleb128	1
      000174 12                     908 	.uleb128	18
      000175 01                     909 	.uleb128	1
      000176 00                     910 	.uleb128	0
      000177 00                     911 	.uleb128	0
      000178 07                     912 	.uleb128	7
      000179 0B                     913 	.uleb128	11
      00017A 01                     914 	.db	1
      00017B 11                     915 	.uleb128	17
      00017C 01                     916 	.uleb128	1
      00017D 12                     917 	.uleb128	18
      00017E 01                     918 	.uleb128	1
      00017F 00                     919 	.uleb128	0
      000180 00                     920 	.uleb128	0
      000181 08                     921 	.uleb128	8
      000182 0B                     922 	.uleb128	11
      000183 01                     923 	.db	1
      000184 01                     924 	.uleb128	1
      000185 13                     925 	.uleb128	19
      000186 11                     926 	.uleb128	17
      000187 01                     927 	.uleb128	1
      000188 00                     928 	.uleb128	0
      000189 00                     929 	.uleb128	0
      00018A 0C                     930 	.uleb128	12
      00018B 2E                     931 	.uleb128	46
      00018C 01                     932 	.db	1
      00018D 03                     933 	.uleb128	3
      00018E 08                     934 	.uleb128	8
      00018F 11                     935 	.uleb128	17
      000190 01                     936 	.uleb128	1
      000191 12                     937 	.uleb128	18
      000192 01                     938 	.uleb128	1
      000193 3F                     939 	.uleb128	63
      000194 0C                     940 	.uleb128	12
      000195 40                     941 	.uleb128	64
      000196 06                     942 	.uleb128	6
      000197 00                     943 	.uleb128	0
      000198 00                     944 	.uleb128	0
      000199 09                     945 	.uleb128	9
      00019A 0B                     946 	.uleb128	11
      00019B 01                     947 	.db	1
      00019C 01                     948 	.uleb128	1
      00019D 13                     949 	.uleb128	19
      00019E 11                     950 	.uleb128	17
      00019F 01                     951 	.uleb128	1
      0001A0 12                     952 	.uleb128	18
      0001A1 01                     953 	.uleb128	1
      0001A2 00                     954 	.uleb128	0
      0001A3 00                     955 	.uleb128	0
      0001A4 05                     956 	.uleb128	5
      0001A5 24                     957 	.uleb128	36
      0001A6 00                     958 	.db	0
      0001A7 03                     959 	.uleb128	3
      0001A8 08                     960 	.uleb128	8
      0001A9 0B                     961 	.uleb128	11
      0001AA 0B                     962 	.uleb128	11
      0001AB 3E                     963 	.uleb128	62
      0001AC 0B                     964 	.uleb128	11
      0001AD 00                     965 	.uleb128	0
      0001AE 00                     966 	.uleb128	0
      0001AF 00                     967 	.uleb128	0
                                    968 
                                    969 	.area .debug_info (NOLOAD)
      00035F 00 00 02 7D            970 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000363                        971 Ldebug_info_start:
      000363 00 02                  972 	.dw	2
      000365 00 00 01 15            973 	.dw	0,(Ldebug_abbrev)
      000369 04                     974 	.db	4
      00036A 01                     975 	.uleb128	1
      00036B 2E 2F 73 72 63 2F 73   976 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      00037C 00                     977 	.db	0
      00037D 00 00 02 E8            978 	.dw	0,(Ldebug_line_start+-4)
      000381 01                     979 	.db	1
      000382 53 44 43 43 20 76 65   980 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00039B 00                     981 	.db	0
      00039C 02                     982 	.uleb128	2
      00039D 00 00 00 75            983 	.dw	0,117
      0003A1 5F 64 65 6C 61 79 5F   984 	.ascii "_delay_cycl"
             63 79 63 6C
      0003AC 00                     985 	.db	0
      0003AD 00 00 82 CC            986 	.dw	0,(__delay_cycl)
      0003B1 00 00 82 D9            987 	.dw	0,(XFspse_stm8$_delay_cycl$0$0+1)
      0003B5 00                     988 	.db	0
      0003B6 00 00 05 C0            989 	.dw	0,(Ldebug_loc_start+316)
      0003BA 03                     990 	.uleb128	3
      0003BB 02                     991 	.db	2
      0003BC 91                     992 	.db	145
      0003BD 02                     993 	.sleb128	2
      0003BE 5F 5F 74 69 63 6B 73   994 	.ascii "__ticks"
      0003C5 00                     995 	.db	0
      0003C6 00 00 00 75            996 	.dw	0,117
      0003CA 04                     997 	.uleb128	4
      0003CB 00 00 82 D0            998 	.dw	0,(Sspse_stm8$_delay_cycl$4)
      0003CF 00 00 82 D1            999 	.dw	0,(Sspse_stm8$_delay_cycl$6)
      0003D3 00                    1000 	.uleb128	0
      0003D4 05                    1001 	.uleb128	5
      0003D5 75 6E 73 69 67 6E 65  1002 	.ascii "unsigned int"
             64 20 69 6E 74
      0003E1 00                    1003 	.db	0
      0003E2 02                    1004 	.db	2
      0003E3 07                    1005 	.db	7
      0003E4 02                    1006 	.uleb128	2
      0003E5 00 00 01 0C           1007 	.dw	0,268
      0003E9 5F 64 65 6C 61 79 5F  1008 	.ascii "_delay_us"
             75 73
      0003F2 00                    1009 	.db	0
      0003F3 00 00 82 D9           1010 	.dw	0,(__delay_us)
      0003F7 00 00 83 11           1011 	.dw	0,(XFspse_stm8$_delay_us$0$0+1)
      0003FB 00                    1012 	.db	0
      0003FC 00 00 05 04           1013 	.dw	0,(Ldebug_loc_start+128)
      000400 06                    1014 	.uleb128	6
      000401 00 00 00 75           1015 	.dw	0,117
      000405 03                    1016 	.uleb128	3
      000406 02                    1017 	.db	2
      000407 91                    1018 	.db	145
      000408 02                    1019 	.sleb128	2
      000409 5F 5F 75 73           1020 	.ascii "__us"
      00040D 00                    1021 	.db	0
      00040E 00 00 00 A1           1022 	.dw	0,161
      000412 07                    1023 	.uleb128	7
      000413 00 00 82 D9           1024 	.dw	0,(Sspse_stm8$_delay_us$14)
      000417 00 00 83 05           1025 	.dw	0,(Sspse_stm8$_delay_us$31)
      00041B 08                    1026 	.uleb128	8
      00041C 00 00 00 F1           1027 	.dw	0,241
      000420 00 00 83 06           1028 	.dw	0,(Sspse_stm8$_delay_us$32)
      000424 09                    1029 	.uleb128	9
      000425 00 00 00 DC           1030 	.dw	0,220
      000429 00 00 83 06           1031 	.dw	0,(Sspse_stm8$_delay_us$33)
      00042D 00 00 83 10           1032 	.dw	0,(Sspse_stm8$_delay_us$38)
      000431 04                    1033 	.uleb128	4
      000432 00 00 83 08           1034 	.dw	0,(Sspse_stm8$_delay_us$36)
      000436 00 00 83 09           1035 	.dw	0,(Sspse_stm8$_delay_us$37)
      00043A 00                    1036 	.uleb128	0
      00043B 0A                    1037 	.uleb128	10
      00043C 06                    1038 	.db	6
      00043D 52                    1039 	.db	82
      00043E 93                    1040 	.db	147
      00043F 01                    1041 	.uleb128	1
      000440 51                    1042 	.db	81
      000441 93                    1043 	.db	147
      000442 01                    1044 	.uleb128	1
      000443 5F 5F 74 69 63 6B 73  1045 	.ascii "__ticks"
      00044A 00                    1046 	.db	0
      00044B 00 00 00 75           1047 	.dw	0,117
      00044F 00                    1048 	.uleb128	0
      000450 0A                    1049 	.uleb128	10
      000451 06                    1050 	.db	6
      000452 52                    1051 	.db	82
      000453 93                    1052 	.db	147
      000454 01                    1053 	.uleb128	1
      000455 51                    1054 	.db	81
      000456 93                    1055 	.db	147
      000457 01                    1056 	.uleb128	1
      000458 5F 5F 31 33 31 30 37  1057 	.ascii "__1310720010"
             32 30 30 31 30
      000464 00                    1058 	.db	0
      000465 00 00 00 75           1059 	.dw	0,117
      000469 00                    1060 	.uleb128	0
      00046A 00                    1061 	.uleb128	0
      00046B 0B                    1062 	.uleb128	11
      00046C 00 00 01 40           1063 	.dw	0,320
      000470 41 44 43 5F 67 65 74  1064 	.ascii "ADC_get"
      000477 00                    1065 	.db	0
      000478 00 00 83 11           1066 	.dw	0,(_ADC_get)
      00047C 00 00 83 35           1067 	.dw	0,(XG$ADC_get$0$0+1)
      000480 01                    1068 	.db	1
      000481 00 00 04 D8           1069 	.dw	0,(Ldebug_loc_start+84)
      000485 00 00 00 75           1070 	.dw	0,117
      000489 03                    1071 	.uleb128	3
      00048A 02                    1072 	.db	2
      00048B 91                    1073 	.db	145
      00048C 02                    1074 	.sleb128	2
      00048D 41 44 43 32 5F 43 68  1075 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      000499 00                    1076 	.db	0
      00049A 00 00 01 40           1077 	.dw	0,320
      00049E 00                    1078 	.uleb128	0
      00049F 05                    1079 	.uleb128	5
      0004A0 75 6E 73 69 67 6E 65  1080 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004AD 00                    1081 	.db	0
      0004AE 01                    1082 	.db	1
      0004AF 08                    1083 	.db	8
      0004B0 02                    1084 	.uleb128	2
      0004B1 00 00 01 98           1085 	.dw	0,408
      0004B5 41 44 43 32 5F 53 65  1086 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0004C8 00                    1087 	.db	0
      0004C9 00 00 83 35           1088 	.dw	0,(_ADC2_Select_Channel)
      0004CD 00 00 83 48           1089 	.dw	0,(XG$ADC2_Select_Channel$0$0+1)
      0004D1 01                    1090 	.db	1
      0004D2 00 00 04 AC           1091 	.dw	0,(Ldebug_loc_start+40)
      0004D6 03                    1092 	.uleb128	3
      0004D7 02                    1093 	.db	2
      0004D8 91                    1094 	.db	145
      0004D9 02                    1095 	.sleb128	2
      0004DA 41 44 43 32 5F 43 68  1096 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      0004E6 00                    1097 	.db	0
      0004E7 00 00 01 40           1098 	.dw	0,320
      0004EB 0A                    1099 	.uleb128	10
      0004EC 01                    1100 	.db	1
      0004ED 50                    1101 	.db	80
      0004EE 74 6D 70              1102 	.ascii "tmp"
      0004F1 00                    1103 	.db	0
      0004F2 00 00 01 40           1104 	.dw	0,320
      0004F6 00                    1105 	.uleb128	0
      0004F7 02                    1106 	.uleb128	2
      0004F8 00 00 01 E1           1107 	.dw	0,481
      0004FC 41 44 43 32 5F 41 6C  1108 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      00050C 00                    1109 	.db	0
      00050D 00 00 83 48           1110 	.dw	0,(_ADC2_AlignConfig)
      000511 00 00 83 60           1111 	.dw	0,(XG$ADC2_AlignConfig$0$0+1)
      000515 01                    1112 	.db	1
      000516 00 00 04 98           1113 	.dw	0,(Ldebug_loc_start+20)
      00051A 03                    1114 	.uleb128	3
      00051B 02                    1115 	.db	2
      00051C 91                    1116 	.db	145
      00051D 02                    1117 	.sleb128	2
      00051E 41 44 43 32 5F 41 6C  1118 	.ascii "ADC2_Align"
             69 67 6E
      000528 00                    1119 	.db	0
      000529 00 00 01 40           1120 	.dw	0,320
      00052D 04                    1121 	.uleb128	4
      00052E 00 00 83 52           1122 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$69)
      000532 00 00 83 57           1123 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$71)
      000536 04                    1124 	.uleb128	4
      000537 00 00 83 5A           1125 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$72)
      00053B 00 00 83 5F           1126 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$74)
      00053F 00                    1127 	.uleb128	0
      000540 0C                    1128 	.uleb128	12
      000541 41 44 43 32 5F 53 74  1129 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      000552 00                    1130 	.db	0
      000553 00 00 83 60           1131 	.dw	0,(_ADC2_Startup_Wait)
      000557 00 00 83 6E           1132 	.dw	0,(XG$ADC2_Startup_Wait$0$0+1)
      00055B 01                    1133 	.db	1
      00055C 00 00 04 84           1134 	.dw	0,(Ldebug_loc_start)
      000560 0D                    1135 	.uleb128	13
      000561 0E                    1136 	.uleb128	14
      000562 00 00 02 67           1137 	.dw	0,615
      000566 0E                    1138 	.uleb128	14
      000567 00 00 02 59           1139 	.dw	0,601
      00056B 0D                    1140 	.uleb128	13
      00056C 08                    1141 	.uleb128	8
      00056D 00 00 02 42           1142 	.dw	0,578
      000571 00 00 83 60           1143 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$80)
      000575 09                    1144 	.uleb128	9
      000576 00 00 02 2D           1145 	.dw	0,557
      00057A 00 00 83 63           1146 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$81)
      00057E 00 00 83 6D           1147 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$86)
      000582 04                    1148 	.uleb128	4
      000583 00 00 83 65           1149 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$84)
      000587 00 00 83 66           1150 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$85)
      00058B 00                    1151 	.uleb128	0
      00058C 0A                    1152 	.uleb128	10
      00058D 06                    1153 	.db	6
      00058E 52                    1154 	.db	82
      00058F 93                    1155 	.db	147
      000590 01                    1156 	.uleb128	1
      000591 51                    1157 	.db	81
      000592 93                    1158 	.db	147
      000593 01                    1159 	.uleb128	1
      000594 5F 5F 74 69 63 6B 73  1160 	.ascii "__ticks"
      00059B 00                    1161 	.db	0
      00059C 00 00 00 75           1162 	.dw	0,117
      0005A0 00                    1163 	.uleb128	0
      0005A1 0A                    1164 	.uleb128	10
      0005A2 02                    1165 	.db	2
      0005A3 91                    1166 	.db	145
      0005A4 00                    1167 	.sleb128	0
      0005A5 5F 5F 31 33 31 30 37  1168 	.ascii "__1310720010"
             32 30 30 31 30
      0005B1 00                    1169 	.db	0
      0005B2 00 00 00 75           1170 	.dw	0,117
      0005B6 00                    1171 	.uleb128	0
      0005B7 00                    1172 	.uleb128	0
      0005B8 0A                    1173 	.uleb128	10
      0005B9 02                    1174 	.db	2
      0005BA 91                    1175 	.db	145
      0005BB 00                    1176 	.sleb128	0
      0005BC 5F 5F 75 73           1177 	.ascii "__us"
      0005C0 00                    1178 	.db	0
      0005C1 00 00 00 A1           1179 	.dw	0,161
      0005C5 00                    1180 	.uleb128	0
      0005C6 0A                    1181 	.uleb128	10
      0005C7 02                    1182 	.db	2
      0005C8 91                    1183 	.db	145
      0005C9 00                    1184 	.sleb128	0
      0005CA 5F 5F 31 33 31 30 37  1185 	.ascii "__1310720012"
             32 30 30 31 32
      0005D6 00                    1186 	.db	0
      0005D7 00 00 00 A1           1187 	.dw	0,161
      0005DB 00                    1188 	.uleb128	0
      0005DC 00                    1189 	.uleb128	0
      0005DD 00                    1190 	.uleb128	0
      0005DE 00                    1191 	.uleb128	0
      0005DF 00                    1192 	.uleb128	0
      0005E0                       1193 Ldebug_info_end:
                                   1194 
                                   1195 	.area .debug_pubnames (NOLOAD)
      00008E 00 00 00 5D           1196 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000092                       1197 Ldebug_pubnames_start:
      000092 00 02                 1198 	.dw	2
      000094 00 00 03 5F           1199 	.dw	0,(Ldebug_info_start-4)
      000098 00 00 02 81           1200 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00009C 00 00 01 0C           1201 	.dw	0,268
      0000A0 41 44 43 5F 67 65 74  1202 	.ascii "ADC_get"
      0000A7 00                    1203 	.db	0
      0000A8 00 00 01 51           1204 	.dw	0,337
      0000AC 41 44 43 32 5F 53 65  1205 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0000BF 00                    1206 	.db	0
      0000C0 00 00 01 98           1207 	.dw	0,408
      0000C4 41 44 43 32 5F 41 6C  1208 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      0000D4 00                    1209 	.db	0
      0000D5 00 00 01 E1           1210 	.dw	0,481
      0000D9 41 44 43 32 5F 53 74  1211 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0000EA 00                    1212 	.db	0
      0000EB 00 00 00 00           1213 	.dw	0,0
      0000EF                       1214 Ldebug_pubnames_end:
                                   1215 
                                   1216 	.area .debug_frame (NOLOAD)
      00038D 00 00                 1217 	.dw	0
      00038F 00 0E                 1218 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000391                       1219 Ldebug_CIE0_start:
      000391 FF FF                 1220 	.dw	0xffff
      000393 FF FF                 1221 	.dw	0xffff
      000395 01                    1222 	.db	1
      000396 00                    1223 	.db	0
      000397 01                    1224 	.uleb128	1
      000398 7F                    1225 	.sleb128	-1
      000399 09                    1226 	.db	9
      00039A 0C                    1227 	.db	12
      00039B 08                    1228 	.uleb128	8
      00039C 02                    1229 	.uleb128	2
      00039D 89                    1230 	.db	137
      00039E 01                    1231 	.uleb128	1
      00039F                       1232 Ldebug_CIE0_end:
      00039F 00 00 00 13           1233 	.dw	0,19
      0003A3 00 00 03 8D           1234 	.dw	0,(Ldebug_CIE0_start-4)
      0003A7 00 00 83 60           1235 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)	;initial loc
      0003AB 00 00 00 0E           1236 	.dw	0,Sspse_stm8$ADC2_Startup_Wait$90-Sspse_stm8$ADC2_Startup_Wait$79
      0003AF 01                    1237 	.db	1
      0003B0 00 00 83 60           1238 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      0003B4 0E                    1239 	.db	14
      0003B5 02                    1240 	.uleb128	2
                                   1241 
                                   1242 	.area .debug_frame (NOLOAD)
      0003B6 00 00                 1243 	.dw	0
      0003B8 00 0E                 1244 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0003BA                       1245 Ldebug_CIE1_start:
      0003BA FF FF                 1246 	.dw	0xffff
      0003BC FF FF                 1247 	.dw	0xffff
      0003BE 01                    1248 	.db	1
      0003BF 00                    1249 	.db	0
      0003C0 01                    1250 	.uleb128	1
      0003C1 7F                    1251 	.sleb128	-1
      0003C2 09                    1252 	.db	9
      0003C3 0C                    1253 	.db	12
      0003C4 08                    1254 	.uleb128	8
      0003C5 02                    1255 	.uleb128	2
      0003C6 89                    1256 	.db	137
      0003C7 01                    1257 	.uleb128	1
      0003C8                       1258 Ldebug_CIE1_end:
      0003C8 00 00 00 13           1259 	.dw	0,19
      0003CC 00 00 03 B6           1260 	.dw	0,(Ldebug_CIE1_start-4)
      0003D0 00 00 83 48           1261 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)	;initial loc
      0003D4 00 00 00 18           1262 	.dw	0,Sspse_stm8$ADC2_AlignConfig$77-Sspse_stm8$ADC2_AlignConfig$66
      0003D8 01                    1263 	.db	1
      0003D9 00 00 83 48           1264 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      0003DD 0E                    1265 	.db	14
      0003DE 02                    1266 	.uleb128	2
                                   1267 
                                   1268 	.area .debug_frame (NOLOAD)
      0003DF 00 00                 1269 	.dw	0
      0003E1 00 0E                 1270 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0003E3                       1271 Ldebug_CIE2_start:
      0003E3 FF FF                 1272 	.dw	0xffff
      0003E5 FF FF                 1273 	.dw	0xffff
      0003E7 01                    1274 	.db	1
      0003E8 00                    1275 	.db	0
      0003E9 01                    1276 	.uleb128	1
      0003EA 7F                    1277 	.sleb128	-1
      0003EB 09                    1278 	.db	9
      0003EC 0C                    1279 	.db	12
      0003ED 08                    1280 	.uleb128	8
      0003EE 02                    1281 	.uleb128	2
      0003EF 89                    1282 	.db	137
      0003F0 01                    1283 	.uleb128	1
      0003F1                       1284 Ldebug_CIE2_end:
      0003F1 00 00 00 21           1285 	.dw	0,33
      0003F5 00 00 03 DF           1286 	.dw	0,(Ldebug_CIE2_start-4)
      0003F9 00 00 83 35           1287 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)	;initial loc
      0003FD 00 00 00 13           1288 	.dw	0,Sspse_stm8$ADC2_Select_Channel$64-Sspse_stm8$ADC2_Select_Channel$56
      000401 01                    1289 	.db	1
      000402 00 00 83 35           1290 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      000406 0E                    1291 	.db	14
      000407 02                    1292 	.uleb128	2
      000408 01                    1293 	.db	1
      000409 00 00 83 36           1294 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      00040D 0E                    1295 	.db	14
      00040E 03                    1296 	.uleb128	3
      00040F 01                    1297 	.db	1
      000410 00 00 83 47           1298 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      000414 0E                    1299 	.db	14
      000415 02                    1300 	.uleb128	2
                                   1301 
                                   1302 	.area .debug_frame (NOLOAD)
      000416 00 00                 1303 	.dw	0
      000418 00 0E                 1304 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00041A                       1305 Ldebug_CIE3_start:
      00041A FF FF                 1306 	.dw	0xffff
      00041C FF FF                 1307 	.dw	0xffff
      00041E 01                    1308 	.db	1
      00041F 00                    1309 	.db	0
      000420 01                    1310 	.uleb128	1
      000421 7F                    1311 	.sleb128	-1
      000422 09                    1312 	.db	9
      000423 0C                    1313 	.db	12
      000424 08                    1314 	.uleb128	8
      000425 02                    1315 	.uleb128	2
      000426 89                    1316 	.db	137
      000427 01                    1317 	.uleb128	1
      000428                       1318 Ldebug_CIE3_end:
      000428 00 00 00 21           1319 	.dw	0,33
      00042C 00 00 04 16           1320 	.dw	0,(Ldebug_CIE3_start-4)
      000430 00 00 83 11           1321 	.dw	0,(Sspse_stm8$ADC_get$44)	;initial loc
      000434 00 00 00 24           1322 	.dw	0,Sspse_stm8$ADC_get$54-Sspse_stm8$ADC_get$44
      000438 01                    1323 	.db	1
      000439 00 00 83 11           1324 	.dw	0,(Sspse_stm8$ADC_get$44)
      00043D 0E                    1325 	.db	14
      00043E 02                    1326 	.uleb128	2
      00043F 01                    1327 	.db	1
      000440 00 00 83 14           1328 	.dw	0,(Sspse_stm8$ADC_get$46)
      000444 0E                    1329 	.db	14
      000445 03                    1330 	.uleb128	3
      000446 01                    1331 	.db	1
      000447 00 00 83 18           1332 	.dw	0,(Sspse_stm8$ADC_get$47)
      00044B 0E                    1333 	.db	14
      00044C 02                    1334 	.uleb128	2
                                   1335 
                                   1336 	.area .debug_frame (NOLOAD)
      00044D 00 00                 1337 	.dw	0
      00044F 00 0E                 1338 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000451                       1339 Ldebug_CIE4_start:
      000451 FF FF                 1340 	.dw	0xffff
      000453 FF FF                 1341 	.dw	0xffff
      000455 01                    1342 	.db	1
      000456 00                    1343 	.db	0
      000457 01                    1344 	.uleb128	1
      000458 7F                    1345 	.sleb128	-1
      000459 09                    1346 	.db	9
      00045A 0C                    1347 	.db	12
      00045B 08                    1348 	.uleb128	8
      00045C 02                    1349 	.uleb128	2
      00045D 89                    1350 	.db	137
      00045E 01                    1351 	.uleb128	1
      00045F                       1352 Ldebug_CIE4_end:
      00045F 00 00 00 75           1353 	.dw	0,117
      000463 00 00 04 4D           1354 	.dw	0,(Ldebug_CIE4_start-4)
      000467 00 00 82 D9           1355 	.dw	0,(Sspse_stm8$_delay_us$13)	;initial loc
      00046B 00 00 00 38           1356 	.dw	0,Sspse_stm8$_delay_us$42-Sspse_stm8$_delay_us$13
      00046F 01                    1357 	.db	1
      000470 00 00 82 D9           1358 	.dw	0,(Sspse_stm8$_delay_us$13)
      000474 0E                    1359 	.db	14
      000475 02                    1360 	.uleb128	2
      000476 01                    1361 	.db	1
      000477 00 00 82 DE           1362 	.dw	0,(Sspse_stm8$_delay_us$15)
      00047B 0E                    1363 	.db	14
      00047C 04                    1364 	.uleb128	4
      00047D 01                    1365 	.db	1
      00047E 00 00 82 DF           1366 	.dw	0,(Sspse_stm8$_delay_us$16)
      000482 0E                    1367 	.db	14
      000483 06                    1368 	.uleb128	6
      000484 01                    1369 	.db	1
      000485 00 00 82 E1           1370 	.dw	0,(Sspse_stm8$_delay_us$17)
      000489 0E                    1371 	.db	14
      00048A 07                    1372 	.uleb128	7
      00048B 01                    1373 	.db	1
      00048C 00 00 82 E3           1374 	.dw	0,(Sspse_stm8$_delay_us$18)
      000490 0E                    1375 	.db	14
      000491 08                    1376 	.uleb128	8
      000492 01                    1377 	.db	1
      000493 00 00 82 E5           1378 	.dw	0,(Sspse_stm8$_delay_us$19)
      000497 0E                    1379 	.db	14
      000498 09                    1380 	.uleb128	9
      000499 01                    1381 	.db	1
      00049A 00 00 82 E7           1382 	.dw	0,(Sspse_stm8$_delay_us$20)
      00049E 0E                    1383 	.db	14
      00049F 0A                    1384 	.uleb128	10
      0004A0 01                    1385 	.db	1
      0004A1 00 00 82 EC           1386 	.dw	0,(Sspse_stm8$_delay_us$21)
      0004A5 0E                    1387 	.db	14
      0004A6 02                    1388 	.uleb128	2
      0004A7 01                    1389 	.db	1
      0004A8 00 00 82 EE           1390 	.dw	0,(Sspse_stm8$_delay_us$23)
      0004AC 0E                    1391 	.db	14
      0004AD 03                    1392 	.uleb128	3
      0004AE 01                    1393 	.db	1
      0004AF 00 00 82 F0           1394 	.dw	0,(Sspse_stm8$_delay_us$24)
      0004B3 0E                    1395 	.db	14
      0004B4 04                    1396 	.uleb128	4
      0004B5 01                    1397 	.db	1
      0004B6 00 00 82 F2           1398 	.dw	0,(Sspse_stm8$_delay_us$25)
      0004BA 0E                    1399 	.db	14
      0004BB 05                    1400 	.uleb128	5
      0004BC 01                    1401 	.db	1
      0004BD 00 00 82 F4           1402 	.dw	0,(Sspse_stm8$_delay_us$26)
      0004C1 0E                    1403 	.db	14
      0004C2 06                    1404 	.uleb128	6
      0004C3 01                    1405 	.db	1
      0004C4 00 00 82 F5           1406 	.dw	0,(Sspse_stm8$_delay_us$27)
      0004C8 0E                    1407 	.db	14
      0004C9 08                    1408 	.uleb128	8
      0004CA 01                    1409 	.db	1
      0004CB 00 00 82 F7           1410 	.dw	0,(Sspse_stm8$_delay_us$28)
      0004CF 0E                    1411 	.db	14
      0004D0 0A                    1412 	.uleb128	10
      0004D1 01                    1413 	.db	1
      0004D2 00 00 82 FC           1414 	.dw	0,(Sspse_stm8$_delay_us$29)
      0004D6 0E                    1415 	.db	14
      0004D7 02                    1416 	.uleb128	2
                                   1417 
                                   1418 	.area .debug_frame (NOLOAD)
      0004D8 00 00                 1419 	.dw	0
      0004DA 00 0E                 1420 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0004DC                       1421 Ldebug_CIE5_start:
      0004DC FF FF                 1422 	.dw	0xffff
      0004DE FF FF                 1423 	.dw	0xffff
      0004E0 01                    1424 	.db	1
      0004E1 00                    1425 	.db	0
      0004E2 01                    1426 	.uleb128	1
      0004E3 7F                    1427 	.sleb128	-1
      0004E4 09                    1428 	.db	9
      0004E5 0C                    1429 	.db	12
      0004E6 08                    1430 	.uleb128	8
      0004E7 02                    1431 	.uleb128	2
      0004E8 89                    1432 	.db	137
      0004E9 01                    1433 	.uleb128	1
      0004EA                       1434 Ldebug_CIE5_end:
      0004EA 00 00 00 13           1435 	.dw	0,19
      0004EE 00 00 04 D8           1436 	.dw	0,(Ldebug_CIE5_start-4)
      0004F2 00 00 82 CC           1437 	.dw	0,(Sspse_stm8$_delay_cycl$1)	;initial loc
      0004F6 00 00 00 0D           1438 	.dw	0,Sspse_stm8$_delay_cycl$11-Sspse_stm8$_delay_cycl$1
      0004FA 01                    1439 	.db	1
      0004FB 00 00 82 CC           1440 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      0004FF 0E                    1441 	.db	14
      000500 02                    1442 	.uleb128	2
