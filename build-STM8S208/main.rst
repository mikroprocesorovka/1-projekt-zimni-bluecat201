                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _setup
                                     13 	.globl _sprintf
                                     14 	.globl _lcd_puts
                                     15 	.globl _lcd_gotoxy
                                     16 	.globl _lcd_init
                                     17 	.globl _lcd_command
                                     18 	.globl _milis
                                     19 	.globl _init_milis
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_Init
                                     22 	.globl _CLK_HSIPrescalerConfig
                                     23 	.globl _assert_failed
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DATA
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area INITIALIZED
                                     32 ;--------------------------------------------------------
                                     33 ; Stack segment in internal ram 
                                     34 ;--------------------------------------------------------
                                     35 	.area	SSEG
      000005                         36 __start__stack:
      000005                         37 	.ds	1
                                     38 
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; interrupt vector 
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
      008000                         56 __interrupt_vect:
      008000 82 00 80 6F             57 	int s_GSINIT ; reset
      008004 82 00 88 53             58 	int _TRAP_IRQHandler ; trap
      008008 82 00 88 54             59 	int _TLI_IRQHandler ; int0
      00800C 82 00 88 55             60 	int _AWU_IRQHandler ; int1
      008010 82 00 88 56             61 	int _CLK_IRQHandler ; int2
      008014 82 00 88 57             62 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 88 58             63 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 88 59             64 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 88 5A             65 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 88 5B             66 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 88 5C             67 	int _CAN_RX_IRQHandler ; int8
      00802C 82 00 88 5D             68 	int _CAN_TX_IRQHandler ; int9
      008030 82 00 88 5E             69 	int _SPI_IRQHandler ; int10
      008034 82 00 88 5F             70 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 88 60             71 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 88 61             72 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 88 62             73 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 88 63             74 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 88 64             75 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 88 65             76 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 88 66             77 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 88 67             78 	int _I2C_IRQHandler ; int19
      008058 82 00 88 68             79 	int _UART3_TX_IRQHandler ; int20
      00805C 82 00 88 69             80 	int _UART3_RX_IRQHandler ; int21
      008060 82 00 88 6A             81 	int _ADC2_IRQHandler ; int22
      008064 82 00 82 B1             82 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 88 6B             83 	int _EEPROM_EEC_IRQHandler ; int24
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME
                                     88 	.area GSINIT
                                     89 	.area GSFINAL
                                     90 	.area GSINIT
      00806F                         91 __sdcc_init_data:
                                     92 ; stm8_genXINIT() start
      00806F AE 00 00         [ 2]   93 	ldw x, #l_DATA
      008072 27 07            [ 1]   94 	jreq	00002$
      008074                         95 00001$:
      008074 72 4F 00 00      [ 1]   96 	clr (s_DATA - 1, x)
      008078 5A               [ 2]   97 	decw x
      008079 26 F9            [ 1]   98 	jrne	00001$
      00807B                         99 00002$:
      00807B AE 00 04         [ 2]  100 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  101 	jreq	00004$
      008080                        102 00003$:
      008080 D6 81 3C         [ 1]  103 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 00         [ 1]  104 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  105 	decw	x
      008087 26 F7            [ 1]  106 	jrne	00003$
      008089                        107 00004$:
                                    108 ; stm8_genXINIT() end
                                    109 	.area GSFINAL
      008089 CC 80 6C         [ 2]  110 	jp	__sdcc_program_startup
                                    111 ;--------------------------------------------------------
                                    112 ; Home
                                    113 ;--------------------------------------------------------
                                    114 	.area HOME
                                    115 	.area HOME
      00806C                        116 __sdcc_program_startup:
      00806C CC 81 AD         [ 2]  117 	jp	_main
                                    118 ;	return from main will return to caller
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CODE
                           000000   123 	Smain$_delay_cycl$0 ==.
                                    124 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                    125 ; genLabel
                                    126 ;	-----------------------------------------
                                    127 ;	 function _delay_cycl
                                    128 ;	-----------------------------------------
                                    129 ;	Register assignment is optimal.
                                    130 ;	Stack space usage: 0 bytes.
      008141                        131 __delay_cycl:
                           000000   132 	Smain$_delay_cycl$1 ==.
                           000000   133 	Smain$_delay_cycl$2 ==.
                                    134 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    135 ;	genInline
      008141 9D               [ 1]  136 	nop
      008142 9D               [ 1]  137 	nop
                           000002   138 	Smain$_delay_cycl$3 ==.
                                    139 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    140 ; genAssign
      008143 1E 03            [ 2]  141 	ldw	x, (0x03, sp)
                                    142 ; genLabel
      008145                        143 00101$:
                           000004   144 	Smain$_delay_cycl$4 ==.
                           000004   145 	Smain$_delay_cycl$5 ==.
                                    146 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    147 ; genMinus
      008145 5A               [ 2]  148 	decw	x
                           000005   149 	Smain$_delay_cycl$6 ==.
                           000005   150 	Smain$_delay_cycl$7 ==.
                                    151 ;	inc/delay.h: 28: } while ( __ticks );
                                    152 ; genIfx
      008146 5D               [ 2]  153 	tnzw	x
      008147 27 03            [ 1]  154 	jreq	00117$
      008149 CC 81 45         [ 2]  155 	jp	00101$
      00814C                        156 00117$:
                           00000B   157 	Smain$_delay_cycl$8 ==.
                                    158 ;	inc/delay.h: 29: __asm__("nop\n");
                                    159 ;	genInline
      00814C 9D               [ 1]  160 	nop
                                    161 ; genLabel
      00814D                        162 00104$:
                           00000C   163 	Smain$_delay_cycl$9 ==.
                                    164 ;	inc/delay.h: 39: }
                                    165 ; genEndFunction
                           00000C   166 	Smain$_delay_cycl$10 ==.
                           00000C   167 	XFmain$_delay_cycl$0$0 ==.
      00814D 81               [ 4]  168 	ret
                           00000D   169 	Smain$_delay_cycl$11 ==.
                           00000D   170 	Smain$_delay_us$12 ==.
                                    171 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    172 ; genLabel
                                    173 ;	-----------------------------------------
                                    174 ;	 function _delay_us
                                    175 ;	-----------------------------------------
                                    176 ;	Register assignment might be sub-optimal.
                                    177 ;	Stack space usage: 0 bytes.
      00814E                        178 __delay_us:
                           00000D   179 	Smain$_delay_us$13 ==.
                           00000D   180 	Smain$_delay_us$14 ==.
                                    181 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    182 ; genCast
                                    183 ; genAssign
      00814E 16 03            [ 2]  184 	ldw	y, (0x03, sp)
      008150 5F               [ 1]  185 	clrw	x
                                    186 ; genIPush
      008151 90 89            [ 2]  187 	pushw	y
                           000012   188 	Smain$_delay_us$15 ==.
      008153 89               [ 2]  189 	pushw	x
                           000013   190 	Smain$_delay_us$16 ==.
                                    191 ; genIPush
      008154 4B 00            [ 1]  192 	push	#0x00
                           000015   193 	Smain$_delay_us$17 ==.
      008156 4B 24            [ 1]  194 	push	#0x24
                           000017   195 	Smain$_delay_us$18 ==.
      008158 4B F4            [ 1]  196 	push	#0xf4
                           000019   197 	Smain$_delay_us$19 ==.
      00815A 4B 00            [ 1]  198 	push	#0x00
                           00001B   199 	Smain$_delay_us$20 ==.
                                    200 ; genCall
      00815C CD BA C4         [ 4]  201 	call	__mullong
      00815F 5B 08            [ 2]  202 	addw	sp, #8
                           000020   203 	Smain$_delay_us$21 ==.
                           000020   204 	Smain$_delay_us$22 ==.
                                    205 ; genCast
                                    206 ; genAssign
                                    207 ; genIPush
      008161 4B 40            [ 1]  208 	push	#0x40
                           000022   209 	Smain$_delay_us$23 ==.
      008163 4B 42            [ 1]  210 	push	#0x42
                           000024   211 	Smain$_delay_us$24 ==.
      008165 4B 0F            [ 1]  212 	push	#0x0f
                           000026   213 	Smain$_delay_us$25 ==.
      008167 4B 00            [ 1]  214 	push	#0x00
                           000028   215 	Smain$_delay_us$26 ==.
                                    216 ; genIPush
      008169 89               [ 2]  217 	pushw	x
                           000029   218 	Smain$_delay_us$27 ==.
      00816A 90 89            [ 2]  219 	pushw	y
                           00002B   220 	Smain$_delay_us$28 ==.
                                    221 ; genCall
      00816C CD BA 6A         [ 4]  222 	call	__divulong
      00816F 5B 08            [ 2]  223 	addw	sp, #8
                           000030   224 	Smain$_delay_us$29 ==.
                           000030   225 	Smain$_delay_us$30 ==.
                                    226 ; genRightShiftLiteral
      008171 90 54            [ 2]  227 	srlw	y
      008173 56               [ 2]  228 	rrcw	x
      008174 90 54            [ 2]  229 	srlw	y
      008176 56               [ 2]  230 	rrcw	x
      008177 90 54            [ 2]  231 	srlw	y
      008179 56               [ 2]  232 	rrcw	x
                                    233 ; genCast
                                    234 ; genAssign
                           000039   235 	Smain$_delay_us$31 ==.
                                    236 ; genPlus
      00817A 5C               [ 1]  237 	incw	x
                                    238 ; genAssign
                                    239 ; genAssign
                           00003A   240 	Smain$_delay_us$32 ==.
                                    241 ; genAssign
                           00003A   242 	Smain$_delay_us$33 ==.
                                    243 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    244 ;	genInline
      00817B 9D               [ 1]  245 	nop
      00817C 9D               [ 1]  246 	nop
                           00003C   247 	Smain$_delay_us$34 ==.
                           00003C   248 	Smain$_delay_us$35 ==.
                                    249 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    250 ; genAssign
                                    251 ; genLabel
      00817D                        252 00101$:
                           00003C   253 	Smain$_delay_us$36 ==.
                                    254 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    255 ; genMinus
      00817D 5A               [ 2]  256 	decw	x
                           00003D   257 	Smain$_delay_us$37 ==.
                                    258 ;	inc/delay.h: 28: } while ( __ticks );
                                    259 ; genIfx
      00817E 5D               [ 2]  260 	tnzw	x
      00817F 27 03            [ 1]  261 	jreq	00118$
      008181 CC 81 7D         [ 2]  262 	jp	00101$
      008184                        263 00118$:
                                    264 ;	inc/delay.h: 29: __asm__("nop\n");
                                    265 ;	genInline
      008184 9D               [ 1]  266 	nop
                           000044   267 	Smain$_delay_us$38 ==.
                           000044   268 	Smain$_delay_us$39 ==.
                                    269 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    270 ; genLabel
      008185                        271 00105$:
                           000044   272 	Smain$_delay_us$40 ==.
                                    273 ;	inc/delay.h: 43: }
                                    274 ; genEndFunction
                           000044   275 	Smain$_delay_us$41 ==.
                           000044   276 	XFmain$_delay_us$0$0 ==.
      008185 81               [ 4]  277 	ret
                           000045   278 	Smain$_delay_us$42 ==.
                           000045   279 	Smain$setup$43 ==.
                                    280 ;	./src/main.c: 11: void setup(void)
                                    281 ; genLabel
                                    282 ;	-----------------------------------------
                                    283 ;	 function setup
                                    284 ;	-----------------------------------------
                                    285 ;	Register assignment is optimal.
                                    286 ;	Stack space usage: 0 bytes.
      008186                        287 _setup:
                           000045   288 	Smain$setup$44 ==.
                           000045   289 	Smain$setup$45 ==.
                                    290 ;	./src/main.c: 13: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
                                    291 ; genIPush
      008186 4B 00            [ 1]  292 	push	#0x00
                           000047   293 	Smain$setup$46 ==.
                                    294 ; genCall
      008188 CD 8F 0E         [ 4]  295 	call	_CLK_HSIPrescalerConfig
      00818B 84               [ 1]  296 	pop	a
                           00004B   297 	Smain$setup$47 ==.
                           00004B   298 	Smain$setup$48 ==.
                                    299 ;	./src/main.c: 14: lcd_init(); //inicializace LCD
                                    300 ; genCall
      00818C CD 84 00         [ 4]  301 	call	_lcd_init
                           00004E   302 	Smain$setup$49 ==.
                                    303 ;	./src/main.c: 15: init_milis(); //inicializace mmilisu
                                    304 ; genCall
      00818F CD 82 8B         [ 4]  305 	call	_init_milis
                           000051   306 	Smain$setup$50 ==.
                                    307 ;	./src/main.c: 16: GPIO_Init(GPIOE, GPIO_PIN_3,GPIO_MODE_IN_FL_NO_IT); // nastav??me PE3 jako vstup (fototranzistor)
                                    308 ; genIPush
      008192 4B 00            [ 1]  309 	push	#0x00
                           000053   310 	Smain$setup$51 ==.
                                    311 ; genIPush
      008194 4B 08            [ 1]  312 	push	#0x08
                           000055   313 	Smain$setup$52 ==.
                                    314 ; genIPush
      008196 4B 14            [ 1]  315 	push	#0x14
                           000057   316 	Smain$setup$53 ==.
      008198 4B 50            [ 1]  317 	push	#0x50
                           000059   318 	Smain$setup$54 ==.
                                    319 ; genCall
      00819A CD 89 12         [ 4]  320 	call	_GPIO_Init
      00819D 5B 04            [ 2]  321 	addw	sp, #4
                           00005E   322 	Smain$setup$55 ==.
                           00005E   323 	Smain$setup$56 ==.
                                    324 ;	./src/main.c: 17: GPIO_Init(GPIOE, GPIO_PIN_4,GPIO_MODE_IN_FL_NO_IT); // nastav??me PE4 jako vstup (tla????tko)
                                    325 ; genIPush
      00819F 4B 00            [ 1]  326 	push	#0x00
                           000060   327 	Smain$setup$57 ==.
                                    328 ; genIPush
      0081A1 4B 10            [ 1]  329 	push	#0x10
                           000062   330 	Smain$setup$58 ==.
                                    331 ; genIPush
      0081A3 4B 14            [ 1]  332 	push	#0x14
                           000064   333 	Smain$setup$59 ==.
      0081A5 4B 50            [ 1]  334 	push	#0x50
                           000066   335 	Smain$setup$60 ==.
                                    336 ; genCall
      0081A7 CD 89 12         [ 4]  337 	call	_GPIO_Init
      0081AA 5B 04            [ 2]  338 	addw	sp, #4
                           00006B   339 	Smain$setup$61 ==.
                                    340 ; genLabel
      0081AC                        341 00101$:
                           00006B   342 	Smain$setup$62 ==.
                                    343 ;	./src/main.c: 19: }
                                    344 ; genEndFunction
                           00006B   345 	Smain$setup$63 ==.
                           00006B   346 	XG$setup$0$0 ==.
      0081AC 81               [ 4]  347 	ret
                           00006C   348 	Smain$setup$64 ==.
                           00006C   349 	Smain$main$65 ==.
                                    350 ;	./src/main.c: 22: int main(void)
                                    351 ; genLabel
                                    352 ;	-----------------------------------------
                                    353 ;	 function main
                                    354 ;	-----------------------------------------
                                    355 ;	Register assignment might be sub-optimal.
                                    356 ;	Stack space usage: 39 bytes.
      0081AD                        357 _main:
                           00006C   358 	Smain$main$66 ==.
      0081AD 52 27            [ 2]  359 	sub	sp, #39
                           00006E   360 	Smain$main$67 ==.
                           00006E   361 	Smain$main$68 ==.
                                    362 ;	./src/main.c: 24: uint32_t time = 0; //inicializace prom??nn??ch
                                    363 ; genAssign
      0081AF 5F               [ 1]  364 	clrw	x
      0081B0 1F 23            [ 2]  365 	ldw	(0x23, sp), x
      0081B2 1F 21            [ 2]  366 	ldw	(0x21, sp), x
                           000073   367 	Smain$main$69 ==.
                                    368 ;	./src/main.c: 25: uint8_t tlacitko = 0;
                                    369 ; genAssign
      0081B4 0F 25            [ 1]  370 	clr	(0x25, sp)
                           000075   371 	Smain$main$70 ==.
                                    372 ;	./src/main.c: 26: uint8_t tlacitko1 = 0;
                                    373 ; genAssign
      0081B6 0F 26            [ 1]  374 	clr	(0x26, sp)
                           000077   375 	Smain$main$71 ==.
                                    376 ;	./src/main.c: 27: uint8_t start = 0;
                                    377 ; genAssign
      0081B8 0F 27            [ 1]  378 	clr	(0x27, sp)
                           000079   379 	Smain$main$72 ==.
                                    380 ;	./src/main.c: 30: setup();
                                    381 ; genCall
      0081BA CD 81 86         [ 4]  382 	call	_setup
                           00007C   383 	Smain$main$73 ==.
                                    384 ;	./src/main.c: 33: while (1) {
                                    385 ; genLabel
      0081BD                        386 00114$:
                           00007C   387 	Smain$main$74 ==.
                           00007C   388 	Smain$main$75 ==.
                                    389 ;	./src/main.c: 34: if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_3)==RESET){ // kontrolujeme zda je senzor laseru sepnut??
                                    390 ; genIPush
      0081BD 4B 08            [ 1]  391 	push	#0x08
                           00007E   392 	Smain$main$76 ==.
                                    393 ; genIPush
      0081BF 4B 14            [ 1]  394 	push	#0x14
                           000080   395 	Smain$main$77 ==.
      0081C1 4B 50            [ 1]  396 	push	#0x50
                           000082   397 	Smain$main$78 ==.
                                    398 ; genCall
      0081C3 CD 8A 53         [ 4]  399 	call	_GPIO_ReadInputPin
      0081C6 5B 03            [ 2]  400 	addw	sp, #3
                           000087   401 	Smain$main$79 ==.
                                    402 ; genIfx
      0081C8 4D               [ 1]  403 	tnz	a
      0081C9 27 03            [ 1]  404 	jreq	00148$
      0081CB CC 81 DE         [ 2]  405 	jp	00104$
      0081CE                        406 00148$:
                           00008D   407 	Smain$main$80 ==.
                           00008D   408 	Smain$main$81 ==.
                                    409 ;	./src/main.c: 35: if(tlacitko == 0){
                                    410 ; genIfx
      0081CE 0D 25            [ 1]  411 	tnz	(0x25, sp)
      0081D0 27 03            [ 1]  412 	jreq	00149$
      0081D2 CC 81 D7         [ 2]  413 	jp	00102$
      0081D5                        414 00149$:
                           000094   415 	Smain$main$82 ==.
                           000094   416 	Smain$main$83 ==.
                                    417 ;	./src/main.c: 36: start = 0;
                                    418 ; genAssign
      0081D5 0F 27            [ 1]  419 	clr	(0x27, sp)
                           000096   420 	Smain$main$84 ==.
                                    421 ; genLabel
      0081D7                        422 00102$:
                           000096   423 	Smain$main$85 ==.
                                    424 ;	./src/main.c: 38: tlacitko = 1;
                                    425 ; genAssign
      0081D7 A6 01            [ 1]  426 	ld	a, #0x01
      0081D9 6B 25            [ 1]  427 	ld	(0x25, sp), a
                           00009A   428 	Smain$main$86 ==.
                                    429 ; genGoto
      0081DB CC 81 E0         [ 2]  430 	jp	00105$
                                    431 ; genLabel
      0081DE                        432 00104$:
                           00009D   433 	Smain$main$87 ==.
                           00009D   434 	Smain$main$88 ==.
                                    435 ;	./src/main.c: 40: tlacitko = 0;
                                    436 ; genAssign
      0081DE 0F 25            [ 1]  437 	clr	(0x25, sp)
                           00009F   438 	Smain$main$89 ==.
                                    439 ; genLabel
      0081E0                        440 00105$:
                           00009F   441 	Smain$main$90 ==.
                                    442 ;	./src/main.c: 44: if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_4)==RESET){ // kontrolujeme zda je tla????tko stisknut??
                                    443 ; genIPush
      0081E0 4B 10            [ 1]  444 	push	#0x10
                           0000A1   445 	Smain$main$91 ==.
                                    446 ; genIPush
      0081E2 4B 14            [ 1]  447 	push	#0x14
                           0000A3   448 	Smain$main$92 ==.
      0081E4 4B 50            [ 1]  449 	push	#0x50
                           0000A5   450 	Smain$main$93 ==.
                                    451 ; genCall
      0081E6 CD 8A 53         [ 4]  452 	call	_GPIO_ReadInputPin
      0081E9 5B 03            [ 2]  453 	addw	sp, #3
                           0000AA   454 	Smain$main$94 ==.
                                    455 ; genIfx
      0081EB 4D               [ 1]  456 	tnz	a
      0081EC 27 03            [ 1]  457 	jreq	00150$
      0081EE CC 82 10         [ 2]  458 	jp	00109$
      0081F1                        459 00150$:
                           0000B0   460 	Smain$main$95 ==.
                           0000B0   461 	Smain$main$96 ==.
                                    462 ;	./src/main.c: 45: if(tlacitko1 == 0){
                                    463 ; genIfx
      0081F1 0D 26            [ 1]  464 	tnz	(0x26, sp)
      0081F3 27 03            [ 1]  465 	jreq	00151$
      0081F5 CC 82 09         [ 2]  466 	jp	00107$
      0081F8                        467 00151$:
                           0000B7   468 	Smain$main$97 ==.
                           0000B7   469 	Smain$main$98 ==.
                                    470 ;	./src/main.c: 46: time = milis();
                                    471 ; genCall
      0081F8 CD 82 69         [ 4]  472 	call	_milis
                                    473 ; genAssign
      0081FB 1F 23            [ 2]  474 	ldw	(0x23, sp), x
      0081FD 17 21            [ 2]  475 	ldw	(0x21, sp), y
                           0000BE   476 	Smain$main$99 ==.
                                    477 ;	./src/main.c: 47: start = 1;
                                    478 ; genAssign
      0081FF A6 01            [ 1]  479 	ld	a, #0x01
      008201 6B 27            [ 1]  480 	ld	(0x27, sp), a
                           0000C2   481 	Smain$main$100 ==.
                                    482 ;	./src/main.c: 48: lcd_clear();
                                    483 ; genIPush
      008203 4B 01            [ 1]  484 	push	#0x01
                           0000C4   485 	Smain$main$101 ==.
                                    486 ; genCall
      008205 CD 86 C2         [ 4]  487 	call	_lcd_command
      008208 84               [ 1]  488 	pop	a
                           0000C8   489 	Smain$main$102 ==.
                           0000C8   490 	Smain$main$103 ==.
                                    491 ; genLabel
      008209                        492 00107$:
                           0000C8   493 	Smain$main$104 ==.
                                    494 ;	./src/main.c: 50: tlacitko1 = 1;
                                    495 ; genAssign
      008209 A6 01            [ 1]  496 	ld	a, #0x01
      00820B 6B 26            [ 1]  497 	ld	(0x26, sp), a
                           0000CC   498 	Smain$main$105 ==.
                                    499 ; genGoto
      00820D CC 82 12         [ 2]  500 	jp	00110$
                                    501 ; genLabel
      008210                        502 00109$:
                           0000CF   503 	Smain$main$106 ==.
                           0000CF   504 	Smain$main$107 ==.
                                    505 ;	./src/main.c: 52: tlacitko1 = 0;
                                    506 ; genAssign
      008210 0F 26            [ 1]  507 	clr	(0x26, sp)
                           0000D1   508 	Smain$main$108 ==.
                                    509 ; genLabel
      008212                        510 00110$:
                           0000D1   511 	Smain$main$109 ==.
                                    512 ;	./src/main.c: 55: if(start == 1){
                                    513 ; genCmpEQorNE
      008212 7B 27            [ 1]  514 	ld	a, (0x27, sp)
      008214 4A               [ 1]  515 	dec	a
      008215 26 03            [ 1]  516 	jrne	00153$
      008217 CC 82 1D         [ 2]  517 	jp	00154$
      00821A                        518 00153$:
      00821A CC 81 BD         [ 2]  519 	jp	00114$
      00821D                        520 00154$:
                           0000DC   521 	Smain$main$110 ==.
                                    522 ; skipping generated iCode
                           0000DC   523 	Smain$main$111 ==.
                           0000DC   524 	Smain$main$112 ==.
                                    525 ;	./src/main.c: 56: temp = (milis() - time)/1000;
                                    526 ; genCall
      00821D CD 82 69         [ 4]  527 	call	_milis
      008220 51               [ 1]  528 	exgw	x, y
                                    529 ; genMinus
      008221 72 F2 23         [ 2]  530 	subw	y, (0x23, sp)
      008224 9F               [ 1]  531 	ld	a, xl
      008225 12 22            [ 1]  532 	sbc	a, (0x22, sp)
      008227 97               [ 1]  533 	ld	xl, a
      008228 9E               [ 1]  534 	ld	a, xh
      008229 12 21            [ 1]  535 	sbc	a, (0x21, sp)
      00822B 95               [ 1]  536 	ld	xh, a
                           0000EB   537 	Smain$main$113 ==.
                                    538 ; genIPush
      00822C 4B E8            [ 1]  539 	push	#0xe8
                           0000ED   540 	Smain$main$114 ==.
      00822E 4B 03            [ 1]  541 	push	#0x03
                           0000EF   542 	Smain$main$115 ==.
      008230 4B 00            [ 1]  543 	push	#0x00
                           0000F1   544 	Smain$main$116 ==.
      008232 4B 00            [ 1]  545 	push	#0x00
                           0000F3   546 	Smain$main$117 ==.
                                    547 ; genIPush
      008234 90 89            [ 2]  548 	pushw	y
                           0000F5   549 	Smain$main$118 ==.
      008236 89               [ 2]  550 	pushw	x
                           0000F6   551 	Smain$main$119 ==.
                                    552 ; genCall
      008237 CD BA 6A         [ 4]  553 	call	__divulong
      00823A 5B 08            [ 2]  554 	addw	sp, #8
                           0000FB   555 	Smain$main$120 ==.
      00823C 9F               [ 1]  556 	ld	a, xl
                                    557 ; genCast
                                    558 ; genAssign
                           0000FC   559 	Smain$main$121 ==.
                                    560 ;	./src/main.c: 57: lcd_gotoxy(0, 0);
                                    561 ; genIPush
      00823D 88               [ 1]  562 	push	a
                           0000FD   563 	Smain$main$122 ==.
      00823E 4B 00            [ 1]  564 	push	#0x00
                           0000FF   565 	Smain$main$123 ==.
                                    566 ; genIPush
      008240 4B 00            [ 1]  567 	push	#0x00
                           000101   568 	Smain$main$124 ==.
                                    569 ; genCall
      008242 CD 84 83         [ 4]  570 	call	_lcd_gotoxy
      008245 85               [ 2]  571 	popw	x
                           000105   572 	Smain$main$125 ==.
      008246 84               [ 1]  573 	pop	a
                           000106   574 	Smain$main$126 ==.
                           000106   575 	Smain$main$127 ==.
                                    576 ;	./src/main.c: 58: sprintf(text,"Cas = %1u s",temp);
                                    577 ; genCast
                                    578 ; genAssign
      008247 5F               [ 1]  579 	clrw	x
      008248 97               [ 1]  580 	ld	xl, a
                                    581 ; skipping iCode since result will be rematerialized
                                    582 ; skipping iCode since result will be rematerialized
                                    583 ; skipping iCode since result will be rematerialized
                                    584 ; skipping iCode since result will be rematerialized
                                    585 ; genIPush
      008249 89               [ 2]  586 	pushw	x
                           000109   587 	Smain$main$128 ==.
                                    588 ; genIPush
      00824A 4B 8C            [ 1]  589 	push	#<(___str_0+0)
                           00010B   590 	Smain$main$129 ==.
      00824C 4B 80            [ 1]  591 	push	#((___str_0+0) >> 8)
                           00010D   592 	Smain$main$130 ==.
                                    593 ; genIPush
      00824E 96               [ 1]  594 	ldw	x, sp
      00824F 1C 00 05         [ 2]  595 	addw	x, #5
      008252 89               [ 2]  596 	pushw	x
                           000112   597 	Smain$main$131 ==.
                                    598 ; genCall
      008253 CD BA 4F         [ 4]  599 	call	_sprintf
      008256 5B 06            [ 2]  600 	addw	sp, #6
                           000117   601 	Smain$main$132 ==.
                           000117   602 	Smain$main$133 ==.
                                    603 ;	./src/main.c: 59: lcd_puts(text);
                                    604 ; skipping iCode since result will be rematerialized
                                    605 ; skipping iCode since result will be rematerialized
                                    606 ; genIPush
      008258 96               [ 1]  607 	ldw	x, sp
      008259 5C               [ 1]  608 	incw	x
      00825A 89               [ 2]  609 	pushw	x
                           00011A   610 	Smain$main$134 ==.
                                    611 ; genCall
      00825B CD 83 EB         [ 4]  612 	call	_lcd_puts
      00825E 85               [ 2]  613 	popw	x
                           00011E   614 	Smain$main$135 ==.
                                    615 ; genGoto
      00825F CC 81 BD         [ 2]  616 	jp	00114$
                                    617 ; genLabel
      008262                        618 00116$:
                           000121   619 	Smain$main$136 ==.
                                    620 ;	./src/main.c: 63: }
                                    621 ; genEndFunction
      008262 5B 27            [ 2]  622 	addw	sp, #39
                           000123   623 	Smain$main$137 ==.
                           000123   624 	Smain$main$138 ==.
                           000123   625 	XG$main$0$0 ==.
      008264 81               [ 4]  626 	ret
                           000124   627 	Smain$main$139 ==.
                           000124   628 	Smain$assert_failed$140 ==.
                                    629 ;	inc/__assert__.h: 13: void assert_failed(uint8_t* file, uint32_t line)
                                    630 ; genLabel
                                    631 ;	-----------------------------------------
                                    632 ;	 function assert_failed
                                    633 ;	-----------------------------------------
                                    634 ;	Register assignment is optimal.
                                    635 ;	Stack space usage: 0 bytes.
      008265                        636 _assert_failed:
                           000124   637 	Smain$assert_failed$141 ==.
                           000124   638 	Smain$assert_failed$142 ==.
                                    639 ;	inc/__assert__.h: 22: while (1)
                                    640 ; genLabel
      008265                        641 00102$:
                                    642 ; genGoto
      008265 CC 82 65         [ 2]  643 	jp	00102$
                                    644 ; genLabel
      008268                        645 00104$:
                           000127   646 	Smain$assert_failed$143 ==.
                                    647 ;	inc/__assert__.h: 25: }
                                    648 ; genEndFunction
                           000127   649 	Smain$assert_failed$144 ==.
                           000127   650 	XG$assert_failed$0$0 ==.
      008268 81               [ 4]  651 	ret
                           000128   652 	Smain$assert_failed$145 ==.
                                    653 	.area CODE
                                    654 	.area CONST
                           000000   655 Fmain$__str_0$0_0$0 == .
                                    656 	.area CONST
      00808C                        657 ___str_0:
      00808C 43 61 73 20 3D 20 25   658 	.ascii "Cas = %1u s"
             31 75 20 73
      008097 00                     659 	.db 0x00
                                    660 	.area CODE
                                    661 	.area INITIALIZER
                                    662 	.area CABS (ABS)
                                    663 
                                    664 	.area .debug_line (NOLOAD)
      000000 00 00 01 E2            665 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        666 Ldebug_line_start:
      000004 00 02                  667 	.dw	2
      000006 00 00 00 90            668 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     669 	.db	1
      00000B 01                     670 	.db	1
      00000C FB                     671 	.db	-5
      00000D 0F                     672 	.db	15
      00000E 0A                     673 	.db	10
      00000F 00                     674 	.db	0
      000010 01                     675 	.db	1
      000011 01                     676 	.db	1
      000012 01                     677 	.db	1
      000013 01                     678 	.db	1
      000014 00                     679 	.db	0
      000015 00                     680 	.db	0
      000016 00                     681 	.db	0
      000017 01                     682 	.db	1
      000018 43 3A 5C 50 72 6F 67   683 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000040 00                     684 	.db	0
      000041 43 3A 5C 50 72 6F 67   685 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000064 00                     686 	.db	0
      000065 00                     687 	.db	0
      000066 69 6E 63 2F 64 65 6C   688 	.ascii "inc/delay.h"
             61 79 2E 68
      000071 00                     689 	.db	0
      000072 00                     690 	.uleb128	0
      000073 00                     691 	.uleb128	0
      000074 00                     692 	.uleb128	0
      000075 2E 2F 73 72 63 2F 6D   693 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000081 00                     694 	.db	0
      000082 00                     695 	.uleb128	0
      000083 00                     696 	.uleb128	0
      000084 00                     697 	.uleb128	0
      000085 69 6E 63 2F 5F 5F 61   698 	.ascii "inc/__assert__.h"
             73 73 65 72 74 5F 5F
             2E 68
      000095 00                     699 	.db	0
      000096 00                     700 	.uleb128	0
      000097 00                     701 	.uleb128	0
      000098 00                     702 	.uleb128	0
      000099 00                     703 	.db	0
      00009A                        704 Ldebug_line_stmt:
      00009A 00                     705 	.db	0
      00009B 05                     706 	.uleb128	5
      00009C 02                     707 	.db	2
      00009D 00 00 81 41            708 	.dw	0,(Smain$_delay_cycl$0)
      0000A1 03                     709 	.db	3
      0000A2 0D                     710 	.sleb128	13
      0000A3 01                     711 	.db	1
      0000A4 09                     712 	.db	9
      0000A5 00 00                  713 	.dw	Smain$_delay_cycl$2-Smain$_delay_cycl$0
      0000A7 03                     714 	.db	3
      0000A8 0B                     715 	.sleb128	11
      0000A9 01                     716 	.db	1
      0000AA 09                     717 	.db	9
      0000AB 00 02                  718 	.dw	Smain$_delay_cycl$3-Smain$_delay_cycl$2
      0000AD 03                     719 	.db	3
      0000AE 01                     720 	.sleb128	1
      0000AF 01                     721 	.db	1
      0000B0 09                     722 	.db	9
      0000B1 00 02                  723 	.dw	Smain$_delay_cycl$5-Smain$_delay_cycl$3
      0000B3 03                     724 	.db	3
      0000B4 01                     725 	.sleb128	1
      0000B5 01                     726 	.db	1
      0000B6 09                     727 	.db	9
      0000B7 00 01                  728 	.dw	Smain$_delay_cycl$7-Smain$_delay_cycl$5
      0000B9 03                     729 	.db	3
      0000BA 01                     730 	.sleb128	1
      0000BB 01                     731 	.db	1
      0000BC 09                     732 	.db	9
      0000BD 00 06                  733 	.dw	Smain$_delay_cycl$8-Smain$_delay_cycl$7
      0000BF 03                     734 	.db	3
      0000C0 01                     735 	.sleb128	1
      0000C1 01                     736 	.db	1
      0000C2 09                     737 	.db	9
      0000C3 00 01                  738 	.dw	Smain$_delay_cycl$9-Smain$_delay_cycl$8
      0000C5 03                     739 	.db	3
      0000C6 0A                     740 	.sleb128	10
      0000C7 01                     741 	.db	1
      0000C8 09                     742 	.db	9
      0000C9 00 01                  743 	.dw	1+Smain$_delay_cycl$10-Smain$_delay_cycl$9
      0000CB 00                     744 	.db	0
      0000CC 01                     745 	.uleb128	1
      0000CD 01                     746 	.db	1
      0000CE 00                     747 	.db	0
      0000CF 05                     748 	.uleb128	5
      0000D0 02                     749 	.db	2
      0000D1 00 00 81 4E            750 	.dw	0,(Smain$_delay_us$12)
      0000D5 03                     751 	.db	3
      0000D6 28                     752 	.sleb128	40
      0000D7 01                     753 	.db	1
      0000D8 09                     754 	.db	9
      0000D9 00 2F                  755 	.dw	Smain$_delay_us$35-Smain$_delay_us$12
      0000DB 03                     756 	.db	3
      0000DC 71                     757 	.sleb128	-15
      0000DD 01                     758 	.db	1
      0000DE 09                     759 	.db	9
      0000DF 00 08                  760 	.dw	Smain$_delay_us$39-Smain$_delay_us$35
      0000E1 03                     761 	.db	3
      0000E2 10                     762 	.sleb128	16
      0000E3 01                     763 	.db	1
      0000E4 09                     764 	.db	9
      0000E5 00 00                  765 	.dw	Smain$_delay_us$40-Smain$_delay_us$39
      0000E7 03                     766 	.db	3
      0000E8 01                     767 	.sleb128	1
      0000E9 01                     768 	.db	1
      0000EA 09                     769 	.db	9
      0000EB 00 01                  770 	.dw	1+Smain$_delay_us$41-Smain$_delay_us$40
      0000ED 00                     771 	.db	0
      0000EE 01                     772 	.uleb128	1
      0000EF 01                     773 	.db	1
      0000F0 04                     774 	.db	4
      0000F1 02                     775 	.uleb128	2
      0000F2 00                     776 	.db	0
      0000F3 05                     777 	.uleb128	5
      0000F4 02                     778 	.db	2
      0000F5 00 00 81 86            779 	.dw	0,(Smain$setup$43)
      0000F9 03                     780 	.db	3
      0000FA 0A                     781 	.sleb128	10
      0000FB 01                     782 	.db	1
      0000FC 09                     783 	.db	9
      0000FD 00 00                  784 	.dw	Smain$setup$45-Smain$setup$43
      0000FF 03                     785 	.db	3
      000100 02                     786 	.sleb128	2
      000101 01                     787 	.db	1
      000102 09                     788 	.db	9
      000103 00 06                  789 	.dw	Smain$setup$48-Smain$setup$45
      000105 03                     790 	.db	3
      000106 01                     791 	.sleb128	1
      000107 01                     792 	.db	1
      000108 09                     793 	.db	9
      000109 00 03                  794 	.dw	Smain$setup$49-Smain$setup$48
      00010B 03                     795 	.db	3
      00010C 01                     796 	.sleb128	1
      00010D 01                     797 	.db	1
      00010E 09                     798 	.db	9
      00010F 00 03                  799 	.dw	Smain$setup$50-Smain$setup$49
      000111 03                     800 	.db	3
      000112 01                     801 	.sleb128	1
      000113 01                     802 	.db	1
      000114 09                     803 	.db	9
      000115 00 0D                  804 	.dw	Smain$setup$56-Smain$setup$50
      000117 03                     805 	.db	3
      000118 01                     806 	.sleb128	1
      000119 01                     807 	.db	1
      00011A 09                     808 	.db	9
      00011B 00 0D                  809 	.dw	Smain$setup$62-Smain$setup$56
      00011D 03                     810 	.db	3
      00011E 02                     811 	.sleb128	2
      00011F 01                     812 	.db	1
      000120 09                     813 	.db	9
      000121 00 01                  814 	.dw	1+Smain$setup$63-Smain$setup$62
      000123 00                     815 	.db	0
      000124 01                     816 	.uleb128	1
      000125 01                     817 	.db	1
      000126 04                     818 	.db	4
      000127 02                     819 	.uleb128	2
      000128 00                     820 	.db	0
      000129 05                     821 	.uleb128	5
      00012A 02                     822 	.db	2
      00012B 00 00 81 AD            823 	.dw	0,(Smain$main$65)
      00012F 03                     824 	.db	3
      000130 15                     825 	.sleb128	21
      000131 01                     826 	.db	1
      000132 09                     827 	.db	9
      000133 00 02                  828 	.dw	Smain$main$68-Smain$main$65
      000135 03                     829 	.db	3
      000136 02                     830 	.sleb128	2
      000137 01                     831 	.db	1
      000138 09                     832 	.db	9
      000139 00 05                  833 	.dw	Smain$main$69-Smain$main$68
      00013B 03                     834 	.db	3
      00013C 01                     835 	.sleb128	1
      00013D 01                     836 	.db	1
      00013E 09                     837 	.db	9
      00013F 00 02                  838 	.dw	Smain$main$70-Smain$main$69
      000141 03                     839 	.db	3
      000142 01                     840 	.sleb128	1
      000143 01                     841 	.db	1
      000144 09                     842 	.db	9
      000145 00 02                  843 	.dw	Smain$main$71-Smain$main$70
      000147 03                     844 	.db	3
      000148 01                     845 	.sleb128	1
      000149 01                     846 	.db	1
      00014A 09                     847 	.db	9
      00014B 00 02                  848 	.dw	Smain$main$72-Smain$main$71
      00014D 03                     849 	.db	3
      00014E 03                     850 	.sleb128	3
      00014F 01                     851 	.db	1
      000150 09                     852 	.db	9
      000151 00 03                  853 	.dw	Smain$main$73-Smain$main$72
      000153 03                     854 	.db	3
      000154 03                     855 	.sleb128	3
      000155 01                     856 	.db	1
      000156 09                     857 	.db	9
      000157 00 00                  858 	.dw	Smain$main$75-Smain$main$73
      000159 03                     859 	.db	3
      00015A 01                     860 	.sleb128	1
      00015B 01                     861 	.db	1
      00015C 09                     862 	.db	9
      00015D 00 11                  863 	.dw	Smain$main$81-Smain$main$75
      00015F 03                     864 	.db	3
      000160 01                     865 	.sleb128	1
      000161 01                     866 	.db	1
      000162 09                     867 	.db	9
      000163 00 07                  868 	.dw	Smain$main$83-Smain$main$81
      000165 03                     869 	.db	3
      000166 01                     870 	.sleb128	1
      000167 01                     871 	.db	1
      000168 09                     872 	.db	9
      000169 00 02                  873 	.dw	Smain$main$85-Smain$main$83
      00016B 03                     874 	.db	3
      00016C 02                     875 	.sleb128	2
      00016D 01                     876 	.db	1
      00016E 09                     877 	.db	9
      00016F 00 07                  878 	.dw	Smain$main$88-Smain$main$85
      000171 03                     879 	.db	3
      000172 02                     880 	.sleb128	2
      000173 01                     881 	.db	1
      000174 09                     882 	.db	9
      000175 00 02                  883 	.dw	Smain$main$90-Smain$main$88
      000177 03                     884 	.db	3
      000178 04                     885 	.sleb128	4
      000179 01                     886 	.db	1
      00017A 09                     887 	.db	9
      00017B 00 11                  888 	.dw	Smain$main$96-Smain$main$90
      00017D 03                     889 	.db	3
      00017E 01                     890 	.sleb128	1
      00017F 01                     891 	.db	1
      000180 09                     892 	.db	9
      000181 00 07                  893 	.dw	Smain$main$98-Smain$main$96
      000183 03                     894 	.db	3
      000184 01                     895 	.sleb128	1
      000185 01                     896 	.db	1
      000186 09                     897 	.db	9
      000187 00 07                  898 	.dw	Smain$main$99-Smain$main$98
      000189 03                     899 	.db	3
      00018A 01                     900 	.sleb128	1
      00018B 01                     901 	.db	1
      00018C 09                     902 	.db	9
      00018D 00 04                  903 	.dw	Smain$main$100-Smain$main$99
      00018F 03                     904 	.db	3
      000190 01                     905 	.sleb128	1
      000191 01                     906 	.db	1
      000192 09                     907 	.db	9
      000193 00 06                  908 	.dw	Smain$main$104-Smain$main$100
      000195 03                     909 	.db	3
      000196 02                     910 	.sleb128	2
      000197 01                     911 	.db	1
      000198 09                     912 	.db	9
      000199 00 07                  913 	.dw	Smain$main$107-Smain$main$104
      00019B 03                     914 	.db	3
      00019C 02                     915 	.sleb128	2
      00019D 01                     916 	.db	1
      00019E 09                     917 	.db	9
      00019F 00 02                  918 	.dw	Smain$main$109-Smain$main$107
      0001A1 03                     919 	.db	3
      0001A2 03                     920 	.sleb128	3
      0001A3 01                     921 	.db	1
      0001A4 09                     922 	.db	9
      0001A5 00 0B                  923 	.dw	Smain$main$112-Smain$main$109
      0001A7 03                     924 	.db	3
      0001A8 01                     925 	.sleb128	1
      0001A9 01                     926 	.db	1
      0001AA 09                     927 	.db	9
      0001AB 00 20                  928 	.dw	Smain$main$121-Smain$main$112
      0001AD 03                     929 	.db	3
      0001AE 01                     930 	.sleb128	1
      0001AF 01                     931 	.db	1
      0001B0 09                     932 	.db	9
      0001B1 00 0A                  933 	.dw	Smain$main$127-Smain$main$121
      0001B3 03                     934 	.db	3
      0001B4 01                     935 	.sleb128	1
      0001B5 01                     936 	.db	1
      0001B6 09                     937 	.db	9
      0001B7 00 11                  938 	.dw	Smain$main$133-Smain$main$127
      0001B9 03                     939 	.db	3
      0001BA 01                     940 	.sleb128	1
      0001BB 01                     941 	.db	1
      0001BC 09                     942 	.db	9
      0001BD 00 0A                  943 	.dw	Smain$main$136-Smain$main$133
      0001BF 03                     944 	.db	3
      0001C0 04                     945 	.sleb128	4
      0001C1 01                     946 	.db	1
      0001C2 09                     947 	.db	9
      0001C3 00 03                  948 	.dw	1+Smain$main$138-Smain$main$136
      0001C5 00                     949 	.db	0
      0001C6 01                     950 	.uleb128	1
      0001C7 01                     951 	.db	1
      0001C8 04                     952 	.db	4
      0001C9 03                     953 	.uleb128	3
      0001CA 00                     954 	.db	0
      0001CB 05                     955 	.uleb128	5
      0001CC 02                     956 	.db	2
      0001CD 00 00 82 65            957 	.dw	0,(Smain$assert_failed$140)
      0001D1 03                     958 	.db	3
      0001D2 0C                     959 	.sleb128	12
      0001D3 01                     960 	.db	1
      0001D4 09                     961 	.db	9
      0001D5 00 00                  962 	.dw	Smain$assert_failed$142-Smain$assert_failed$140
      0001D7 03                     963 	.db	3
      0001D8 09                     964 	.sleb128	9
      0001D9 01                     965 	.db	1
      0001DA 09                     966 	.db	9
      0001DB 00 03                  967 	.dw	Smain$assert_failed$143-Smain$assert_failed$142
      0001DD 03                     968 	.db	3
      0001DE 03                     969 	.sleb128	3
      0001DF 01                     970 	.db	1
      0001E0 09                     971 	.db	9
      0001E1 00 01                  972 	.dw	1+Smain$assert_failed$144-Smain$assert_failed$143
      0001E3 00                     973 	.db	0
      0001E4 01                     974 	.uleb128	1
      0001E5 01                     975 	.db	1
      0001E6                        976 Ldebug_line_end:
                                    977 
                                    978 	.area .debug_loc (NOLOAD)
      000000                        979 Ldebug_loc_start:
      000000 00 00 82 65            980 	.dw	0,(Smain$assert_failed$141)
      000004 00 00 82 69            981 	.dw	0,(Smain$assert_failed$145)
      000008 00 02                  982 	.dw	2
      00000A 78                     983 	.db	120
      00000B 01                     984 	.sleb128	1
      00000C 00 00 00 00            985 	.dw	0,0
      000010 00 00 00 00            986 	.dw	0,0
      000014 00 00 82 64            987 	.dw	0,(Smain$main$137)
      000018 00 00 82 65            988 	.dw	0,(Smain$main$139)
      00001C 00 02                  989 	.dw	2
      00001E 78                     990 	.db	120
      00001F 01                     991 	.sleb128	1
      000020 00 00 82 5F            992 	.dw	0,(Smain$main$135)
      000024 00 00 82 64            993 	.dw	0,(Smain$main$137)
      000028 00 02                  994 	.dw	2
      00002A 78                     995 	.db	120
      00002B 28                     996 	.sleb128	40
      00002C 00 00 82 5B            997 	.dw	0,(Smain$main$134)
      000030 00 00 82 5F            998 	.dw	0,(Smain$main$135)
      000034 00 02                  999 	.dw	2
      000036 78                    1000 	.db	120
      000037 2A                    1001 	.sleb128	42
      000038 00 00 82 58           1002 	.dw	0,(Smain$main$132)
      00003C 00 00 82 5B           1003 	.dw	0,(Smain$main$134)
      000040 00 02                 1004 	.dw	2
      000042 78                    1005 	.db	120
      000043 28                    1006 	.sleb128	40
      000044 00 00 82 53           1007 	.dw	0,(Smain$main$131)
      000048 00 00 82 58           1008 	.dw	0,(Smain$main$132)
      00004C 00 02                 1009 	.dw	2
      00004E 78                    1010 	.db	120
      00004F 2E                    1011 	.sleb128	46
      000050 00 00 82 4E           1012 	.dw	0,(Smain$main$130)
      000054 00 00 82 53           1013 	.dw	0,(Smain$main$131)
      000058 00 02                 1014 	.dw	2
      00005A 78                    1015 	.db	120
      00005B 2C                    1016 	.sleb128	44
      00005C 00 00 82 4C           1017 	.dw	0,(Smain$main$129)
      000060 00 00 82 4E           1018 	.dw	0,(Smain$main$130)
      000064 00 02                 1019 	.dw	2
      000066 78                    1020 	.db	120
      000067 2B                    1021 	.sleb128	43
      000068 00 00 82 4A           1022 	.dw	0,(Smain$main$128)
      00006C 00 00 82 4C           1023 	.dw	0,(Smain$main$129)
      000070 00 02                 1024 	.dw	2
      000072 78                    1025 	.db	120
      000073 2A                    1026 	.sleb128	42
      000074 00 00 82 47           1027 	.dw	0,(Smain$main$126)
      000078 00 00 82 4A           1028 	.dw	0,(Smain$main$128)
      00007C 00 02                 1029 	.dw	2
      00007E 78                    1030 	.db	120
      00007F 28                    1031 	.sleb128	40
      000080 00 00 82 46           1032 	.dw	0,(Smain$main$125)
      000084 00 00 82 47           1033 	.dw	0,(Smain$main$126)
      000088 00 02                 1034 	.dw	2
      00008A 78                    1035 	.db	120
      00008B 29                    1036 	.sleb128	41
      00008C 00 00 82 42           1037 	.dw	0,(Smain$main$124)
      000090 00 00 82 46           1038 	.dw	0,(Smain$main$125)
      000094 00 02                 1039 	.dw	2
      000096 78                    1040 	.db	120
      000097 2B                    1041 	.sleb128	43
      000098 00 00 82 40           1042 	.dw	0,(Smain$main$123)
      00009C 00 00 82 42           1043 	.dw	0,(Smain$main$124)
      0000A0 00 02                 1044 	.dw	2
      0000A2 78                    1045 	.db	120
      0000A3 2A                    1046 	.sleb128	42
      0000A4 00 00 82 3E           1047 	.dw	0,(Smain$main$122)
      0000A8 00 00 82 40           1048 	.dw	0,(Smain$main$123)
      0000AC 00 02                 1049 	.dw	2
      0000AE 78                    1050 	.db	120
      0000AF 29                    1051 	.sleb128	41
      0000B0 00 00 82 3C           1052 	.dw	0,(Smain$main$120)
      0000B4 00 00 82 3E           1053 	.dw	0,(Smain$main$122)
      0000B8 00 02                 1054 	.dw	2
      0000BA 78                    1055 	.db	120
      0000BB 28                    1056 	.sleb128	40
      0000BC 00 00 82 37           1057 	.dw	0,(Smain$main$119)
      0000C0 00 00 82 3C           1058 	.dw	0,(Smain$main$120)
      0000C4 00 02                 1059 	.dw	2
      0000C6 78                    1060 	.db	120
      0000C7 30                    1061 	.sleb128	48
      0000C8 00 00 82 36           1062 	.dw	0,(Smain$main$118)
      0000CC 00 00 82 37           1063 	.dw	0,(Smain$main$119)
      0000D0 00 02                 1064 	.dw	2
      0000D2 78                    1065 	.db	120
      0000D3 2E                    1066 	.sleb128	46
      0000D4 00 00 82 34           1067 	.dw	0,(Smain$main$117)
      0000D8 00 00 82 36           1068 	.dw	0,(Smain$main$118)
      0000DC 00 02                 1069 	.dw	2
      0000DE 78                    1070 	.db	120
      0000DF 2C                    1071 	.sleb128	44
      0000E0 00 00 82 32           1072 	.dw	0,(Smain$main$116)
      0000E4 00 00 82 34           1073 	.dw	0,(Smain$main$117)
      0000E8 00 02                 1074 	.dw	2
      0000EA 78                    1075 	.db	120
      0000EB 2B                    1076 	.sleb128	43
      0000EC 00 00 82 30           1077 	.dw	0,(Smain$main$115)
      0000F0 00 00 82 32           1078 	.dw	0,(Smain$main$116)
      0000F4 00 02                 1079 	.dw	2
      0000F6 78                    1080 	.db	120
      0000F7 2A                    1081 	.sleb128	42
      0000F8 00 00 82 2E           1082 	.dw	0,(Smain$main$114)
      0000FC 00 00 82 30           1083 	.dw	0,(Smain$main$115)
      000100 00 02                 1084 	.dw	2
      000102 78                    1085 	.db	120
      000103 29                    1086 	.sleb128	41
      000104 00 00 82 1D           1087 	.dw	0,(Smain$main$110)
      000108 00 00 82 2E           1088 	.dw	0,(Smain$main$114)
      00010C 00 02                 1089 	.dw	2
      00010E 78                    1090 	.db	120
      00010F 28                    1091 	.sleb128	40
      000110 00 00 82 09           1092 	.dw	0,(Smain$main$102)
      000114 00 00 82 1D           1093 	.dw	0,(Smain$main$110)
      000118 00 02                 1094 	.dw	2
      00011A 78                    1095 	.db	120
      00011B 28                    1096 	.sleb128	40
      00011C 00 00 82 05           1097 	.dw	0,(Smain$main$101)
      000120 00 00 82 09           1098 	.dw	0,(Smain$main$102)
      000124 00 02                 1099 	.dw	2
      000126 78                    1100 	.db	120
      000127 29                    1101 	.sleb128	41
      000128 00 00 81 EB           1102 	.dw	0,(Smain$main$94)
      00012C 00 00 82 05           1103 	.dw	0,(Smain$main$101)
      000130 00 02                 1104 	.dw	2
      000132 78                    1105 	.db	120
      000133 28                    1106 	.sleb128	40
      000134 00 00 81 E6           1107 	.dw	0,(Smain$main$93)
      000138 00 00 81 EB           1108 	.dw	0,(Smain$main$94)
      00013C 00 02                 1109 	.dw	2
      00013E 78                    1110 	.db	120
      00013F 2B                    1111 	.sleb128	43
      000140 00 00 81 E4           1112 	.dw	0,(Smain$main$92)
      000144 00 00 81 E6           1113 	.dw	0,(Smain$main$93)
      000148 00 02                 1114 	.dw	2
      00014A 78                    1115 	.db	120
      00014B 2A                    1116 	.sleb128	42
      00014C 00 00 81 E2           1117 	.dw	0,(Smain$main$91)
      000150 00 00 81 E4           1118 	.dw	0,(Smain$main$92)
      000154 00 02                 1119 	.dw	2
      000156 78                    1120 	.db	120
      000157 29                    1121 	.sleb128	41
      000158 00 00 81 C8           1122 	.dw	0,(Smain$main$79)
      00015C 00 00 81 E2           1123 	.dw	0,(Smain$main$91)
      000160 00 02                 1124 	.dw	2
      000162 78                    1125 	.db	120
      000163 28                    1126 	.sleb128	40
      000164 00 00 81 C3           1127 	.dw	0,(Smain$main$78)
      000168 00 00 81 C8           1128 	.dw	0,(Smain$main$79)
      00016C 00 02                 1129 	.dw	2
      00016E 78                    1130 	.db	120
      00016F 2B                    1131 	.sleb128	43
      000170 00 00 81 C1           1132 	.dw	0,(Smain$main$77)
      000174 00 00 81 C3           1133 	.dw	0,(Smain$main$78)
      000178 00 02                 1134 	.dw	2
      00017A 78                    1135 	.db	120
      00017B 2A                    1136 	.sleb128	42
      00017C 00 00 81 BF           1137 	.dw	0,(Smain$main$76)
      000180 00 00 81 C1           1138 	.dw	0,(Smain$main$77)
      000184 00 02                 1139 	.dw	2
      000186 78                    1140 	.db	120
      000187 29                    1141 	.sleb128	41
      000188 00 00 81 AF           1142 	.dw	0,(Smain$main$67)
      00018C 00 00 81 BF           1143 	.dw	0,(Smain$main$76)
      000190 00 02                 1144 	.dw	2
      000192 78                    1145 	.db	120
      000193 28                    1146 	.sleb128	40
      000194 00 00 81 AD           1147 	.dw	0,(Smain$main$66)
      000198 00 00 81 AF           1148 	.dw	0,(Smain$main$67)
      00019C 00 02                 1149 	.dw	2
      00019E 78                    1150 	.db	120
      00019F 01                    1151 	.sleb128	1
      0001A0 00 00 00 00           1152 	.dw	0,0
      0001A4 00 00 00 00           1153 	.dw	0,0
      0001A8 00 00 81 AC           1154 	.dw	0,(Smain$setup$61)
      0001AC 00 00 81 AD           1155 	.dw	0,(Smain$setup$64)
      0001B0 00 02                 1156 	.dw	2
      0001B2 78                    1157 	.db	120
      0001B3 01                    1158 	.sleb128	1
      0001B4 00 00 81 A7           1159 	.dw	0,(Smain$setup$60)
      0001B8 00 00 81 AC           1160 	.dw	0,(Smain$setup$61)
      0001BC 00 02                 1161 	.dw	2
      0001BE 78                    1162 	.db	120
      0001BF 05                    1163 	.sleb128	5
      0001C0 00 00 81 A5           1164 	.dw	0,(Smain$setup$59)
      0001C4 00 00 81 A7           1165 	.dw	0,(Smain$setup$60)
      0001C8 00 02                 1166 	.dw	2
      0001CA 78                    1167 	.db	120
      0001CB 04                    1168 	.sleb128	4
      0001CC 00 00 81 A3           1169 	.dw	0,(Smain$setup$58)
      0001D0 00 00 81 A5           1170 	.dw	0,(Smain$setup$59)
      0001D4 00 02                 1171 	.dw	2
      0001D6 78                    1172 	.db	120
      0001D7 03                    1173 	.sleb128	3
      0001D8 00 00 81 A1           1174 	.dw	0,(Smain$setup$57)
      0001DC 00 00 81 A3           1175 	.dw	0,(Smain$setup$58)
      0001E0 00 02                 1176 	.dw	2
      0001E2 78                    1177 	.db	120
      0001E3 02                    1178 	.sleb128	2
      0001E4 00 00 81 9F           1179 	.dw	0,(Smain$setup$55)
      0001E8 00 00 81 A1           1180 	.dw	0,(Smain$setup$57)
      0001EC 00 02                 1181 	.dw	2
      0001EE 78                    1182 	.db	120
      0001EF 01                    1183 	.sleb128	1
      0001F0 00 00 81 9A           1184 	.dw	0,(Smain$setup$54)
      0001F4 00 00 81 9F           1185 	.dw	0,(Smain$setup$55)
      0001F8 00 02                 1186 	.dw	2
      0001FA 78                    1187 	.db	120
      0001FB 05                    1188 	.sleb128	5
      0001FC 00 00 81 98           1189 	.dw	0,(Smain$setup$53)
      000200 00 00 81 9A           1190 	.dw	0,(Smain$setup$54)
      000204 00 02                 1191 	.dw	2
      000206 78                    1192 	.db	120
      000207 04                    1193 	.sleb128	4
      000208 00 00 81 96           1194 	.dw	0,(Smain$setup$52)
      00020C 00 00 81 98           1195 	.dw	0,(Smain$setup$53)
      000210 00 02                 1196 	.dw	2
      000212 78                    1197 	.db	120
      000213 03                    1198 	.sleb128	3
      000214 00 00 81 94           1199 	.dw	0,(Smain$setup$51)
      000218 00 00 81 96           1200 	.dw	0,(Smain$setup$52)
      00021C 00 02                 1201 	.dw	2
      00021E 78                    1202 	.db	120
      00021F 02                    1203 	.sleb128	2
      000220 00 00 81 8C           1204 	.dw	0,(Smain$setup$47)
      000224 00 00 81 94           1205 	.dw	0,(Smain$setup$51)
      000228 00 02                 1206 	.dw	2
      00022A 78                    1207 	.db	120
      00022B 01                    1208 	.sleb128	1
      00022C 00 00 81 88           1209 	.dw	0,(Smain$setup$46)
      000230 00 00 81 8C           1210 	.dw	0,(Smain$setup$47)
      000234 00 02                 1211 	.dw	2
      000236 78                    1212 	.db	120
      000237 02                    1213 	.sleb128	2
      000238 00 00 81 86           1214 	.dw	0,(Smain$setup$44)
      00023C 00 00 81 88           1215 	.dw	0,(Smain$setup$46)
      000240 00 02                 1216 	.dw	2
      000242 78                    1217 	.db	120
      000243 01                    1218 	.sleb128	1
      000244 00 00 00 00           1219 	.dw	0,0
      000248 00 00 00 00           1220 	.dw	0,0
      00024C 00 00 81 71           1221 	.dw	0,(Smain$_delay_us$29)
      000250 00 00 81 86           1222 	.dw	0,(Smain$_delay_us$42)
      000254 00 02                 1223 	.dw	2
      000256 78                    1224 	.db	120
      000257 01                    1225 	.sleb128	1
      000258 00 00 81 6C           1226 	.dw	0,(Smain$_delay_us$28)
      00025C 00 00 81 71           1227 	.dw	0,(Smain$_delay_us$29)
      000260 00 02                 1228 	.dw	2
      000262 78                    1229 	.db	120
      000263 09                    1230 	.sleb128	9
      000264 00 00 81 6A           1231 	.dw	0,(Smain$_delay_us$27)
      000268 00 00 81 6C           1232 	.dw	0,(Smain$_delay_us$28)
      00026C 00 02                 1233 	.dw	2
      00026E 78                    1234 	.db	120
      00026F 07                    1235 	.sleb128	7
      000270 00 00 81 69           1236 	.dw	0,(Smain$_delay_us$26)
      000274 00 00 81 6A           1237 	.dw	0,(Smain$_delay_us$27)
      000278 00 02                 1238 	.dw	2
      00027A 78                    1239 	.db	120
      00027B 05                    1240 	.sleb128	5
      00027C 00 00 81 67           1241 	.dw	0,(Smain$_delay_us$25)
      000280 00 00 81 69           1242 	.dw	0,(Smain$_delay_us$26)
      000284 00 02                 1243 	.dw	2
      000286 78                    1244 	.db	120
      000287 04                    1245 	.sleb128	4
      000288 00 00 81 65           1246 	.dw	0,(Smain$_delay_us$24)
      00028C 00 00 81 67           1247 	.dw	0,(Smain$_delay_us$25)
      000290 00 02                 1248 	.dw	2
      000292 78                    1249 	.db	120
      000293 03                    1250 	.sleb128	3
      000294 00 00 81 63           1251 	.dw	0,(Smain$_delay_us$23)
      000298 00 00 81 65           1252 	.dw	0,(Smain$_delay_us$24)
      00029C 00 02                 1253 	.dw	2
      00029E 78                    1254 	.db	120
      00029F 02                    1255 	.sleb128	2
      0002A0 00 00 81 61           1256 	.dw	0,(Smain$_delay_us$21)
      0002A4 00 00 81 63           1257 	.dw	0,(Smain$_delay_us$23)
      0002A8 00 02                 1258 	.dw	2
      0002AA 78                    1259 	.db	120
      0002AB 01                    1260 	.sleb128	1
      0002AC 00 00 81 5C           1261 	.dw	0,(Smain$_delay_us$20)
      0002B0 00 00 81 61           1262 	.dw	0,(Smain$_delay_us$21)
      0002B4 00 02                 1263 	.dw	2
      0002B6 78                    1264 	.db	120
      0002B7 09                    1265 	.sleb128	9
      0002B8 00 00 81 5A           1266 	.dw	0,(Smain$_delay_us$19)
      0002BC 00 00 81 5C           1267 	.dw	0,(Smain$_delay_us$20)
      0002C0 00 02                 1268 	.dw	2
      0002C2 78                    1269 	.db	120
      0002C3 08                    1270 	.sleb128	8
      0002C4 00 00 81 58           1271 	.dw	0,(Smain$_delay_us$18)
      0002C8 00 00 81 5A           1272 	.dw	0,(Smain$_delay_us$19)
      0002CC 00 02                 1273 	.dw	2
      0002CE 78                    1274 	.db	120
      0002CF 07                    1275 	.sleb128	7
      0002D0 00 00 81 56           1276 	.dw	0,(Smain$_delay_us$17)
      0002D4 00 00 81 58           1277 	.dw	0,(Smain$_delay_us$18)
      0002D8 00 02                 1278 	.dw	2
      0002DA 78                    1279 	.db	120
      0002DB 06                    1280 	.sleb128	6
      0002DC 00 00 81 54           1281 	.dw	0,(Smain$_delay_us$16)
      0002E0 00 00 81 56           1282 	.dw	0,(Smain$_delay_us$17)
      0002E4 00 02                 1283 	.dw	2
      0002E6 78                    1284 	.db	120
      0002E7 05                    1285 	.sleb128	5
      0002E8 00 00 81 53           1286 	.dw	0,(Smain$_delay_us$15)
      0002EC 00 00 81 54           1287 	.dw	0,(Smain$_delay_us$16)
      0002F0 00 02                 1288 	.dw	2
      0002F2 78                    1289 	.db	120
      0002F3 03                    1290 	.sleb128	3
      0002F4 00 00 81 4E           1291 	.dw	0,(Smain$_delay_us$13)
      0002F8 00 00 81 53           1292 	.dw	0,(Smain$_delay_us$15)
      0002FC 00 02                 1293 	.dw	2
      0002FE 78                    1294 	.db	120
      0002FF 01                    1295 	.sleb128	1
      000300 00 00 00 00           1296 	.dw	0,0
      000304 00 00 00 00           1297 	.dw	0,0
      000308 00 00 81 41           1298 	.dw	0,(Smain$_delay_cycl$1)
      00030C 00 00 81 4E           1299 	.dw	0,(Smain$_delay_cycl$11)
      000310 00 02                 1300 	.dw	2
      000312 78                    1301 	.db	120
      000313 01                    1302 	.sleb128	1
      000314 00 00 00 00           1303 	.dw	0,0
      000318 00 00 00 00           1304 	.dw	0,0
                                   1305 
                                   1306 	.area .debug_abbrev (NOLOAD)
      000000                       1307 Ldebug_abbrev:
      000000 0F                    1308 	.uleb128	15
      000001 0F                    1309 	.uleb128	15
      000002 00                    1310 	.db	0
      000003 0B                    1311 	.uleb128	11
      000004 0B                    1312 	.uleb128	11
      000005 49                    1313 	.uleb128	73
      000006 13                    1314 	.uleb128	19
      000007 00                    1315 	.uleb128	0
      000008 00                    1316 	.uleb128	0
      000009 03                    1317 	.uleb128	3
      00000A 05                    1318 	.uleb128	5
      00000B 00                    1319 	.db	0
      00000C 02                    1320 	.uleb128	2
      00000D 0A                    1321 	.uleb128	10
      00000E 03                    1322 	.uleb128	3
      00000F 08                    1323 	.uleb128	8
      000010 49                    1324 	.uleb128	73
      000011 13                    1325 	.uleb128	19
      000012 00                    1326 	.uleb128	0
      000013 00                    1327 	.uleb128	0
      000014 0D                    1328 	.uleb128	13
      000015 01                    1329 	.uleb128	1
      000016 01                    1330 	.db	1
      000017 01                    1331 	.uleb128	1
      000018 13                    1332 	.uleb128	19
      000019 0B                    1333 	.uleb128	11
      00001A 0B                    1334 	.uleb128	11
      00001B 49                    1335 	.uleb128	73
      00001C 13                    1336 	.uleb128	19
      00001D 00                    1337 	.uleb128	0
      00001E 00                    1338 	.uleb128	0
      00001F 02                    1339 	.uleb128	2
      000020 2E                    1340 	.uleb128	46
      000021 01                    1341 	.db	1
      000022 01                    1342 	.uleb128	1
      000023 13                    1343 	.uleb128	19
      000024 03                    1344 	.uleb128	3
      000025 08                    1345 	.uleb128	8
      000026 11                    1346 	.uleb128	17
      000027 01                    1347 	.uleb128	1
      000028 12                    1348 	.uleb128	18
      000029 01                    1349 	.uleb128	1
      00002A 3F                    1350 	.uleb128	63
      00002B 0C                    1351 	.uleb128	12
      00002C 40                    1352 	.uleb128	64
      00002D 06                    1353 	.uleb128	6
      00002E 00                    1354 	.uleb128	0
      00002F 00                    1355 	.uleb128	0
      000030 0A                    1356 	.uleb128	10
      000031 34                    1357 	.uleb128	52
      000032 00                    1358 	.db	0
      000033 02                    1359 	.uleb128	2
      000034 0A                    1360 	.uleb128	10
      000035 03                    1361 	.uleb128	3
      000036 08                    1362 	.uleb128	8
      000037 49                    1363 	.uleb128	73
      000038 13                    1364 	.uleb128	19
      000039 00                    1365 	.uleb128	0
      00003A 00                    1366 	.uleb128	0
      00003B 0C                    1367 	.uleb128	12
      00003C 2E                    1368 	.uleb128	46
      00003D 01                    1369 	.db	1
      00003E 01                    1370 	.uleb128	1
      00003F 13                    1371 	.uleb128	19
      000040 03                    1372 	.uleb128	3
      000041 08                    1373 	.uleb128	8
      000042 11                    1374 	.uleb128	17
      000043 01                    1375 	.uleb128	1
      000044 12                    1376 	.uleb128	18
      000045 01                    1377 	.uleb128	1
      000046 3F                    1378 	.uleb128	63
      000047 0C                    1379 	.uleb128	12
      000048 40                    1380 	.uleb128	64
      000049 06                    1381 	.uleb128	6
      00004A 49                    1382 	.uleb128	73
      00004B 13                    1383 	.uleb128	19
      00004C 00                    1384 	.uleb128	0
      00004D 00                    1385 	.uleb128	0
      00004E 06                    1386 	.uleb128	6
      00004F 26                    1387 	.uleb128	38
      000050 00                    1388 	.db	0
      000051 49                    1389 	.uleb128	73
      000052 13                    1390 	.uleb128	19
      000053 00                    1391 	.uleb128	0
      000054 00                    1392 	.uleb128	0
      000055 01                    1393 	.uleb128	1
      000056 11                    1394 	.uleb128	17
      000057 01                    1395 	.db	1
      000058 03                    1396 	.uleb128	3
      000059 08                    1397 	.uleb128	8
      00005A 10                    1398 	.uleb128	16
      00005B 06                    1399 	.uleb128	6
      00005C 13                    1400 	.uleb128	19
      00005D 0B                    1401 	.uleb128	11
      00005E 25                    1402 	.uleb128	37
      00005F 08                    1403 	.uleb128	8
      000060 00                    1404 	.uleb128	0
      000061 00                    1405 	.uleb128	0
      000062 04                    1406 	.uleb128	4
      000063 0B                    1407 	.uleb128	11
      000064 00                    1408 	.db	0
      000065 11                    1409 	.uleb128	17
      000066 01                    1410 	.uleb128	1
      000067 12                    1411 	.uleb128	18
      000068 01                    1412 	.uleb128	1
      000069 00                    1413 	.uleb128	0
      00006A 00                    1414 	.uleb128	0
      00006B 07                    1415 	.uleb128	7
      00006C 0B                    1416 	.uleb128	11
      00006D 01                    1417 	.db	1
      00006E 11                    1418 	.uleb128	17
      00006F 01                    1419 	.uleb128	1
      000070 12                    1420 	.uleb128	18
      000071 01                    1421 	.uleb128	1
      000072 00                    1422 	.uleb128	0
      000073 00                    1423 	.uleb128	0
      000074 08                    1424 	.uleb128	8
      000075 0B                    1425 	.uleb128	11
      000076 01                    1426 	.db	1
      000077 01                    1427 	.uleb128	1
      000078 13                    1428 	.uleb128	19
      000079 11                    1429 	.uleb128	17
      00007A 01                    1430 	.uleb128	1
      00007B 00                    1431 	.uleb128	0
      00007C 00                    1432 	.uleb128	0
      00007D 0B                    1433 	.uleb128	11
      00007E 2E                    1434 	.uleb128	46
      00007F 00                    1435 	.db	0
      000080 03                    1436 	.uleb128	3
      000081 08                    1437 	.uleb128	8
      000082 11                    1438 	.uleb128	17
      000083 01                    1439 	.uleb128	1
      000084 12                    1440 	.uleb128	18
      000085 01                    1441 	.uleb128	1
      000086 3F                    1442 	.uleb128	63
      000087 0C                    1443 	.uleb128	12
      000088 40                    1444 	.uleb128	64
      000089 06                    1445 	.uleb128	6
      00008A 00                    1446 	.uleb128	0
      00008B 00                    1447 	.uleb128	0
      00008C 09                    1448 	.uleb128	9
      00008D 0B                    1449 	.uleb128	11
      00008E 01                    1450 	.db	1
      00008F 01                    1451 	.uleb128	1
      000090 13                    1452 	.uleb128	19
      000091 11                    1453 	.uleb128	17
      000092 01                    1454 	.uleb128	1
      000093 12                    1455 	.uleb128	18
      000094 01                    1456 	.uleb128	1
      000095 00                    1457 	.uleb128	0
      000096 00                    1458 	.uleb128	0
      000097 0E                    1459 	.uleb128	14
      000098 21                    1460 	.uleb128	33
      000099 00                    1461 	.db	0
      00009A 2F                    1462 	.uleb128	47
      00009B 0B                    1463 	.uleb128	11
      00009C 00                    1464 	.uleb128	0
      00009D 00                    1465 	.uleb128	0
      00009E 05                    1466 	.uleb128	5
      00009F 24                    1467 	.uleb128	36
      0000A0 00                    1468 	.db	0
      0000A1 03                    1469 	.uleb128	3
      0000A2 08                    1470 	.uleb128	8
      0000A3 0B                    1471 	.uleb128	11
      0000A4 0B                    1472 	.uleb128	11
      0000A5 3E                    1473 	.uleb128	62
      0000A6 0B                    1474 	.uleb128	11
      0000A7 00                    1475 	.uleb128	0
      0000A8 00                    1476 	.uleb128	0
      0000A9 00                    1477 	.uleb128	0
                                   1478 
                                   1479 	.area .debug_info (NOLOAD)
      000000 00 00 02 7C           1480 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                       1481 Ldebug_info_start:
      000004 00 02                 1482 	.dw	2
      000006 00 00 00 00           1483 	.dw	0,(Ldebug_abbrev)
      00000A 04                    1484 	.db	4
      00000B 01                    1485 	.uleb128	1
      00000C 2E 2F 73 72 63 2F 6D  1486 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000018 00                    1487 	.db	0
      000019 00 00 00 00           1488 	.dw	0,(Ldebug_line_start+-4)
      00001D 01                    1489 	.db	1
      00001E 53 44 43 43 20 76 65  1490 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000037 00                    1491 	.db	0
      000038 02                    1492 	.uleb128	2
      000039 00 00 00 70           1493 	.dw	0,112
      00003D 5F 64 65 6C 61 79 5F  1494 	.ascii "_delay_cycl"
             63 79 63 6C
      000048 00                    1495 	.db	0
      000049 00 00 81 41           1496 	.dw	0,(__delay_cycl)
      00004D 00 00 81 4E           1497 	.dw	0,(XFmain$_delay_cycl$0$0+1)
      000051 00                    1498 	.db	0
      000052 00 00 03 08           1499 	.dw	0,(Ldebug_loc_start+776)
      000056 03                    1500 	.uleb128	3
      000057 02                    1501 	.db	2
      000058 91                    1502 	.db	145
      000059 02                    1503 	.sleb128	2
      00005A 5F 5F 74 69 63 6B 73  1504 	.ascii "__ticks"
      000061 00                    1505 	.db	0
      000062 00 00 00 70           1506 	.dw	0,112
      000066 04                    1507 	.uleb128	4
      000067 00 00 81 45           1508 	.dw	0,(Smain$_delay_cycl$4)
      00006B 00 00 81 46           1509 	.dw	0,(Smain$_delay_cycl$6)
      00006F 00                    1510 	.uleb128	0
      000070 05                    1511 	.uleb128	5
      000071 75 6E 73 69 67 6E 65  1512 	.ascii "unsigned int"
             64 20 69 6E 74
      00007D 00                    1513 	.db	0
      00007E 02                    1514 	.db	2
      00007F 07                    1515 	.db	7
      000080 02                    1516 	.uleb128	2
      000081 00 00 01 07           1517 	.dw	0,263
      000085 5F 64 65 6C 61 79 5F  1518 	.ascii "_delay_us"
             75 73
      00008E 00                    1519 	.db	0
      00008F 00 00 81 4E           1520 	.dw	0,(__delay_us)
      000093 00 00 81 86           1521 	.dw	0,(XFmain$_delay_us$0$0+1)
      000097 00                    1522 	.db	0
      000098 00 00 02 4C           1523 	.dw	0,(Ldebug_loc_start+588)
      00009C 06                    1524 	.uleb128	6
      00009D 00 00 00 70           1525 	.dw	0,112
      0000A1 03                    1526 	.uleb128	3
      0000A2 02                    1527 	.db	2
      0000A3 91                    1528 	.db	145
      0000A4 02                    1529 	.sleb128	2
      0000A5 5F 5F 75 73           1530 	.ascii "__us"
      0000A9 00                    1531 	.db	0
      0000AA 00 00 00 9C           1532 	.dw	0,156
      0000AE 07                    1533 	.uleb128	7
      0000AF 00 00 81 4E           1534 	.dw	0,(Smain$_delay_us$14)
      0000B3 00 00 81 7A           1535 	.dw	0,(Smain$_delay_us$31)
      0000B7 08                    1536 	.uleb128	8
      0000B8 00 00 00 EC           1537 	.dw	0,236
      0000BC 00 00 81 7B           1538 	.dw	0,(Smain$_delay_us$32)
      0000C0 09                    1539 	.uleb128	9
      0000C1 00 00 00 D7           1540 	.dw	0,215
      0000C5 00 00 81 7B           1541 	.dw	0,(Smain$_delay_us$33)
      0000C9 00 00 81 85           1542 	.dw	0,(Smain$_delay_us$38)
      0000CD 04                    1543 	.uleb128	4
      0000CE 00 00 81 7D           1544 	.dw	0,(Smain$_delay_us$36)
      0000D2 00 00 81 7E           1545 	.dw	0,(Smain$_delay_us$37)
      0000D6 00                    1546 	.uleb128	0
      0000D7 0A                    1547 	.uleb128	10
      0000D8 06                    1548 	.db	6
      0000D9 52                    1549 	.db	82
      0000DA 93                    1550 	.db	147
      0000DB 01                    1551 	.uleb128	1
      0000DC 51                    1552 	.db	81
      0000DD 93                    1553 	.db	147
      0000DE 01                    1554 	.uleb128	1
      0000DF 5F 5F 74 69 63 6B 73  1555 	.ascii "__ticks"
      0000E6 00                    1556 	.db	0
      0000E7 00 00 00 70           1557 	.dw	0,112
      0000EB 00                    1558 	.uleb128	0
      0000EC 0A                    1559 	.uleb128	10
      0000ED 06                    1560 	.db	6
      0000EE 52                    1561 	.db	82
      0000EF 93                    1562 	.db	147
      0000F0 01                    1563 	.uleb128	1
      0000F1 51                    1564 	.db	81
      0000F2 93                    1565 	.db	147
      0000F3 01                    1566 	.uleb128	1
      0000F4 5F 5F 31 33 31 30 37  1567 	.ascii "__1310720010"
             32 30 30 31 30
      000100 00                    1568 	.db	0
      000101 00 00 00 70           1569 	.dw	0,112
      000105 00                    1570 	.uleb128	0
      000106 00                    1571 	.uleb128	0
      000107 0B                    1572 	.uleb128	11
      000108 73 65 74 75 70        1573 	.ascii "setup"
      00010D 00                    1574 	.db	0
      00010E 00 00 81 86           1575 	.dw	0,(_setup)
      000112 00 00 81 AD           1576 	.dw	0,(XG$setup$0$0+1)
      000116 01                    1577 	.db	1
      000117 00 00 01 A8           1578 	.dw	0,(Ldebug_loc_start+424)
      00011B 05                    1579 	.uleb128	5
      00011C 69 6E 74              1580 	.ascii "int"
      00011F 00                    1581 	.db	0
      000120 02                    1582 	.db	2
      000121 05                    1583 	.db	5
      000122 0C                    1584 	.uleb128	12
      000123 00 00 01 F5           1585 	.dw	0,501
      000127 6D 61 69 6E           1586 	.ascii "main"
      00012B 00                    1587 	.db	0
      00012C 00 00 81 AD           1588 	.dw	0,(_main)
      000130 00 00 82 65           1589 	.dw	0,(XG$main$0$0+1)
      000134 01                    1590 	.db	1
      000135 00 00 00 14           1591 	.dw	0,(Ldebug_loc_start+20)
      000139 00 00 01 1B           1592 	.dw	0,283
      00013D 08                    1593 	.uleb128	8
      00013E 00 00 01 90           1594 	.dw	0,400
      000142 00 00 81 BD           1595 	.dw	0,(Smain$main$74)
      000146 09                    1596 	.uleb128	9
      000147 00 00 01 5D           1597 	.dw	0,349
      00014B 00 00 81 CE           1598 	.dw	0,(Smain$main$80)
      00014F 00 00 81 DB           1599 	.dw	0,(Smain$main$86)
      000153 04                    1600 	.uleb128	4
      000154 00 00 81 D5           1601 	.dw	0,(Smain$main$82)
      000158 00 00 81 D7           1602 	.dw	0,(Smain$main$84)
      00015C 00                    1603 	.uleb128	0
      00015D 04                    1604 	.uleb128	4
      00015E 00 00 81 DE           1605 	.dw	0,(Smain$main$87)
      000162 00 00 81 E0           1606 	.dw	0,(Smain$main$89)
      000166 09                    1607 	.uleb128	9
      000167 00 00 01 7D           1608 	.dw	0,381
      00016B 00 00 81 F1           1609 	.dw	0,(Smain$main$95)
      00016F 00 00 82 0D           1610 	.dw	0,(Smain$main$105)
      000173 04                    1611 	.uleb128	4
      000174 00 00 81 F8           1612 	.dw	0,(Smain$main$97)
      000178 00 00 82 09           1613 	.dw	0,(Smain$main$103)
      00017C 00                    1614 	.uleb128	0
      00017D 04                    1615 	.uleb128	4
      00017E 00 00 82 10           1616 	.dw	0,(Smain$main$106)
      000182 00 00 82 12           1617 	.dw	0,(Smain$main$108)
      000186 04                    1618 	.uleb128	4
      000187 00 00 82 1D           1619 	.dw	0,(Smain$main$111)
      00018B 00 00 82 2C           1620 	.dw	0,(Smain$main$113)
      00018F 00                    1621 	.uleb128	0
      000190 0A                    1622 	.uleb128	10
      000191 02                    1623 	.db	2
      000192 91                    1624 	.db	145
      000193 79                    1625 	.sleb128	-7
      000194 74 69 6D 65           1626 	.ascii "time"
      000198 00                    1627 	.db	0
      000199 00 00 01 F5           1628 	.dw	0,501
      00019D 0A                    1629 	.uleb128	10
      00019E 02                    1630 	.db	2
      00019F 91                    1631 	.db	145
      0001A0 7D                    1632 	.sleb128	-3
      0001A1 74 6C 61 63 69 74 6B  1633 	.ascii "tlacitko"
             6F
      0001A9 00                    1634 	.db	0
      0001AA 00 00 02 06           1635 	.dw	0,518
      0001AE 0A                    1636 	.uleb128	10
      0001AF 02                    1637 	.db	2
      0001B0 91                    1638 	.db	145
      0001B1 7E                    1639 	.sleb128	-2
      0001B2 74 6C 61 63 69 74 6B  1640 	.ascii "tlacitko1"
             6F 31
      0001BB 00                    1641 	.db	0
      0001BC 00 00 02 06           1642 	.dw	0,518
      0001C0 0A                    1643 	.uleb128	10
      0001C1 02                    1644 	.db	2
      0001C2 91                    1645 	.db	145
      0001C3 7F                    1646 	.sleb128	-1
      0001C4 73 74 61 72 74        1647 	.ascii "start"
      0001C9 00                    1648 	.db	0
      0001CA 00 00 02 06           1649 	.dw	0,518
      0001CE 0A                    1650 	.uleb128	10
      0001CF 01                    1651 	.db	1
      0001D0 50                    1652 	.db	80
      0001D1 74 65 6D 70           1653 	.ascii "temp"
      0001D5 00                    1654 	.db	0
      0001D6 00 00 02 06           1655 	.dw	0,518
      0001DA 0D                    1656 	.uleb128	13
      0001DB 00 00 01 E7           1657 	.dw	0,487
      0001DF 20                    1658 	.db	32
      0001E0 00 00 02 06           1659 	.dw	0,518
      0001E4 0E                    1660 	.uleb128	14
      0001E5 1F                    1661 	.db	31
      0001E6 00                    1662 	.uleb128	0
      0001E7 0A                    1663 	.uleb128	10
      0001E8 02                    1664 	.db	2
      0001E9 91                    1665 	.db	145
      0001EA 59                    1666 	.sleb128	-39
      0001EB 74 65 78 74           1667 	.ascii "text"
      0001EF 00                    1668 	.db	0
      0001F0 00 00 01 DA           1669 	.dw	0,474
      0001F4 00                    1670 	.uleb128	0
      0001F5 05                    1671 	.uleb128	5
      0001F6 75 6E 73 69 67 6E 65  1672 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      000203 00                    1673 	.db	0
      000204 04                    1674 	.db	4
      000205 07                    1675 	.db	7
      000206 05                    1676 	.uleb128	5
      000207 75 6E 73 69 67 6E 65  1677 	.ascii "unsigned char"
             64 20 63 68 61 72
      000214 00                    1678 	.db	0
      000215 01                    1679 	.db	1
      000216 08                    1680 	.db	8
      000217 02                    1681 	.uleb128	2
      000218 00 00 02 58           1682 	.dw	0,600
      00021C 61 73 73 65 72 74 5F  1683 	.ascii "assert_failed"
             66 61 69 6C 65 64
      000229 00                    1684 	.db	0
      00022A 00 00 82 65           1685 	.dw	0,(_assert_failed)
      00022E 00 00 82 69           1686 	.dw	0,(XG$assert_failed$0$0+1)
      000232 01                    1687 	.db	1
      000233 00 00 00 00           1688 	.dw	0,(Ldebug_loc_start)
      000237 0F                    1689 	.uleb128	15
      000238 02                    1690 	.db	2
      000239 00 00 02 06           1691 	.dw	0,518
      00023D 03                    1692 	.uleb128	3
      00023E 02                    1693 	.db	2
      00023F 91                    1694 	.db	145
      000240 02                    1695 	.sleb128	2
      000241 66 69 6C 65           1696 	.ascii "file"
      000245 00                    1697 	.db	0
      000246 00 00 02 37           1698 	.dw	0,567
      00024A 03                    1699 	.uleb128	3
      00024B 02                    1700 	.db	2
      00024C 91                    1701 	.db	145
      00024D 04                    1702 	.sleb128	4
      00024E 6C 69 6E 65           1703 	.ascii "line"
      000252 00                    1704 	.db	0
      000253 00 00 01 F5           1705 	.dw	0,501
      000257 00                    1706 	.uleb128	0
      000258 06                    1707 	.uleb128	6
      000259 00 00 02 06           1708 	.dw	0,518
      00025D 0D                    1709 	.uleb128	13
      00025E 00 00 02 6A           1710 	.dw	0,618
      000262 0C                    1711 	.db	12
      000263 00 00 02 58           1712 	.dw	0,600
      000267 0E                    1713 	.uleb128	14
      000268 0B                    1714 	.db	11
      000269 00                    1715 	.uleb128	0
      00026A 0A                    1716 	.uleb128	10
      00026B 05                    1717 	.db	5
      00026C 03                    1718 	.db	3
      00026D 00 00 80 8C           1719 	.dw	0,(___str_0)
      000271 5F 5F 73 74 72 5F 30  1720 	.ascii "__str_0"
      000278 00                    1721 	.db	0
      000279 00 00 02 5D           1722 	.dw	0,605
      00027D 00                    1723 	.uleb128	0
      00027E 00                    1724 	.uleb128	0
      00027F 00                    1725 	.uleb128	0
      000280                       1726 Ldebug_info_end:
                                   1727 
                                   1728 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 33           1729 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                       1730 Ldebug_pubnames_start:
      000004 00 02                 1731 	.dw	2
      000006 00 00 00 00           1732 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 02 80           1733 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 01 07           1734 	.dw	0,263
      000012 73 65 74 75 70        1735 	.ascii "setup"
      000017 00                    1736 	.db	0
      000018 00 00 01 22           1737 	.dw	0,290
      00001C 6D 61 69 6E           1738 	.ascii "main"
      000020 00                    1739 	.db	0
      000021 00 00 02 17           1740 	.dw	0,535
      000025 61 73 73 65 72 74 5F  1741 	.ascii "assert_failed"
             66 61 69 6C 65 64
      000032 00                    1742 	.db	0
      000033 00 00 00 00           1743 	.dw	0,0
      000037                       1744 Ldebug_pubnames_end:
                                   1745 
                                   1746 	.area .debug_frame (NOLOAD)
      000000 00 00                 1747 	.dw	0
      000002 00 0E                 1748 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                       1749 Ldebug_CIE0_start:
      000004 FF FF                 1750 	.dw	0xffff
      000006 FF FF                 1751 	.dw	0xffff
      000008 01                    1752 	.db	1
      000009 00                    1753 	.db	0
      00000A 01                    1754 	.uleb128	1
      00000B 7F                    1755 	.sleb128	-1
      00000C 09                    1756 	.db	9
      00000D 0C                    1757 	.db	12
      00000E 08                    1758 	.uleb128	8
      00000F 02                    1759 	.uleb128	2
      000010 89                    1760 	.db	137
      000011 01                    1761 	.uleb128	1
      000012                       1762 Ldebug_CIE0_end:
      000012 00 00 00 13           1763 	.dw	0,19
      000016 00 00 00 00           1764 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 82 65           1765 	.dw	0,(Smain$assert_failed$141)	;initial loc
      00001E 00 00 00 04           1766 	.dw	0,Smain$assert_failed$145-Smain$assert_failed$141
      000022 01                    1767 	.db	1
      000023 00 00 82 65           1768 	.dw	0,(Smain$assert_failed$141)
      000027 0E                    1769 	.db	14
      000028 02                    1770 	.uleb128	2
                                   1771 
                                   1772 	.area .debug_frame (NOLOAD)
      000029 00 00                 1773 	.dw	0
      00002B 00 0E                 1774 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00002D                       1775 Ldebug_CIE1_start:
      00002D FF FF                 1776 	.dw	0xffff
      00002F FF FF                 1777 	.dw	0xffff
      000031 01                    1778 	.db	1
      000032 00                    1779 	.db	0
      000033 01                    1780 	.uleb128	1
      000034 7F                    1781 	.sleb128	-1
      000035 09                    1782 	.db	9
      000036 0C                    1783 	.db	12
      000037 08                    1784 	.uleb128	8
      000038 02                    1785 	.uleb128	2
      000039 89                    1786 	.db	137
      00003A 01                    1787 	.uleb128	1
      00003B                       1788 Ldebug_CIE1_end:
      00003B 00 00 00 F3           1789 	.dw	0,243
      00003F 00 00 00 29           1790 	.dw	0,(Ldebug_CIE1_start-4)
      000043 00 00 81 AD           1791 	.dw	0,(Smain$main$66)	;initial loc
      000047 00 00 00 B8           1792 	.dw	0,Smain$main$139-Smain$main$66
      00004B 01                    1793 	.db	1
      00004C 00 00 81 AD           1794 	.dw	0,(Smain$main$66)
      000050 0E                    1795 	.db	14
      000051 02                    1796 	.uleb128	2
      000052 01                    1797 	.db	1
      000053 00 00 81 AF           1798 	.dw	0,(Smain$main$67)
      000057 0E                    1799 	.db	14
      000058 29                    1800 	.uleb128	41
      000059 01                    1801 	.db	1
      00005A 00 00 81 BF           1802 	.dw	0,(Smain$main$76)
      00005E 0E                    1803 	.db	14
      00005F 2A                    1804 	.uleb128	42
      000060 01                    1805 	.db	1
      000061 00 00 81 C1           1806 	.dw	0,(Smain$main$77)
      000065 0E                    1807 	.db	14
      000066 2B                    1808 	.uleb128	43
      000067 01                    1809 	.db	1
      000068 00 00 81 C3           1810 	.dw	0,(Smain$main$78)
      00006C 0E                    1811 	.db	14
      00006D 2C                    1812 	.uleb128	44
      00006E 01                    1813 	.db	1
      00006F 00 00 81 C8           1814 	.dw	0,(Smain$main$79)
      000073 0E                    1815 	.db	14
      000074 29                    1816 	.uleb128	41
      000075 01                    1817 	.db	1
      000076 00 00 81 E2           1818 	.dw	0,(Smain$main$91)
      00007A 0E                    1819 	.db	14
      00007B 2A                    1820 	.uleb128	42
      00007C 01                    1821 	.db	1
      00007D 00 00 81 E4           1822 	.dw	0,(Smain$main$92)
      000081 0E                    1823 	.db	14
      000082 2B                    1824 	.uleb128	43
      000083 01                    1825 	.db	1
      000084 00 00 81 E6           1826 	.dw	0,(Smain$main$93)
      000088 0E                    1827 	.db	14
      000089 2C                    1828 	.uleb128	44
      00008A 01                    1829 	.db	1
      00008B 00 00 81 EB           1830 	.dw	0,(Smain$main$94)
      00008F 0E                    1831 	.db	14
      000090 29                    1832 	.uleb128	41
      000091 01                    1833 	.db	1
      000092 00 00 82 05           1834 	.dw	0,(Smain$main$101)
      000096 0E                    1835 	.db	14
      000097 2A                    1836 	.uleb128	42
      000098 01                    1837 	.db	1
      000099 00 00 82 09           1838 	.dw	0,(Smain$main$102)
      00009D 0E                    1839 	.db	14
      00009E 29                    1840 	.uleb128	41
      00009F 01                    1841 	.db	1
      0000A0 00 00 82 1D           1842 	.dw	0,(Smain$main$110)
      0000A4 0E                    1843 	.db	14
      0000A5 29                    1844 	.uleb128	41
      0000A6 01                    1845 	.db	1
      0000A7 00 00 82 2E           1846 	.dw	0,(Smain$main$114)
      0000AB 0E                    1847 	.db	14
      0000AC 2A                    1848 	.uleb128	42
      0000AD 01                    1849 	.db	1
      0000AE 00 00 82 30           1850 	.dw	0,(Smain$main$115)
      0000B2 0E                    1851 	.db	14
      0000B3 2B                    1852 	.uleb128	43
      0000B4 01                    1853 	.db	1
      0000B5 00 00 82 32           1854 	.dw	0,(Smain$main$116)
      0000B9 0E                    1855 	.db	14
      0000BA 2C                    1856 	.uleb128	44
      0000BB 01                    1857 	.db	1
      0000BC 00 00 82 34           1858 	.dw	0,(Smain$main$117)
      0000C0 0E                    1859 	.db	14
      0000C1 2D                    1860 	.uleb128	45
      0000C2 01                    1861 	.db	1
      0000C3 00 00 82 36           1862 	.dw	0,(Smain$main$118)
      0000C7 0E                    1863 	.db	14
      0000C8 2F                    1864 	.uleb128	47
      0000C9 01                    1865 	.db	1
      0000CA 00 00 82 37           1866 	.dw	0,(Smain$main$119)
      0000CE 0E                    1867 	.db	14
      0000CF 31                    1868 	.uleb128	49
      0000D0 01                    1869 	.db	1
      0000D1 00 00 82 3C           1870 	.dw	0,(Smain$main$120)
      0000D5 0E                    1871 	.db	14
      0000D6 29                    1872 	.uleb128	41
      0000D7 01                    1873 	.db	1
      0000D8 00 00 82 3E           1874 	.dw	0,(Smain$main$122)
      0000DC 0E                    1875 	.db	14
      0000DD 2A                    1876 	.uleb128	42
      0000DE 01                    1877 	.db	1
      0000DF 00 00 82 40           1878 	.dw	0,(Smain$main$123)
      0000E3 0E                    1879 	.db	14
      0000E4 2B                    1880 	.uleb128	43
      0000E5 01                    1881 	.db	1
      0000E6 00 00 82 42           1882 	.dw	0,(Smain$main$124)
      0000EA 0E                    1883 	.db	14
      0000EB 2C                    1884 	.uleb128	44
      0000EC 01                    1885 	.db	1
      0000ED 00 00 82 46           1886 	.dw	0,(Smain$main$125)
      0000F1 0E                    1887 	.db	14
      0000F2 2A                    1888 	.uleb128	42
      0000F3 01                    1889 	.db	1
      0000F4 00 00 82 47           1890 	.dw	0,(Smain$main$126)
      0000F8 0E                    1891 	.db	14
      0000F9 29                    1892 	.uleb128	41
      0000FA 01                    1893 	.db	1
      0000FB 00 00 82 4A           1894 	.dw	0,(Smain$main$128)
      0000FF 0E                    1895 	.db	14
      000100 2B                    1896 	.uleb128	43
      000101 01                    1897 	.db	1
      000102 00 00 82 4C           1898 	.dw	0,(Smain$main$129)
      000106 0E                    1899 	.db	14
      000107 2C                    1900 	.uleb128	44
      000108 01                    1901 	.db	1
      000109 00 00 82 4E           1902 	.dw	0,(Smain$main$130)
      00010D 0E                    1903 	.db	14
      00010E 2D                    1904 	.uleb128	45
      00010F 01                    1905 	.db	1
      000110 00 00 82 53           1906 	.dw	0,(Smain$main$131)
      000114 0E                    1907 	.db	14
      000115 2F                    1908 	.uleb128	47
      000116 01                    1909 	.db	1
      000117 00 00 82 58           1910 	.dw	0,(Smain$main$132)
      00011B 0E                    1911 	.db	14
      00011C 29                    1912 	.uleb128	41
      00011D 01                    1913 	.db	1
      00011E 00 00 82 5B           1914 	.dw	0,(Smain$main$134)
      000122 0E                    1915 	.db	14
      000123 2B                    1916 	.uleb128	43
      000124 01                    1917 	.db	1
      000125 00 00 82 5F           1918 	.dw	0,(Smain$main$135)
      000129 0E                    1919 	.db	14
      00012A 29                    1920 	.uleb128	41
      00012B 01                    1921 	.db	1
      00012C 00 00 82 64           1922 	.dw	0,(Smain$main$137)
      000130 0E                    1923 	.db	14
      000131 02                    1924 	.uleb128	2
                                   1925 
                                   1926 	.area .debug_frame (NOLOAD)
      000132 00 00                 1927 	.dw	0
      000134 00 0E                 1928 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000136                       1929 Ldebug_CIE2_start:
      000136 FF FF                 1930 	.dw	0xffff
      000138 FF FF                 1931 	.dw	0xffff
      00013A 01                    1932 	.db	1
      00013B 00                    1933 	.db	0
      00013C 01                    1934 	.uleb128	1
      00013D 7F                    1935 	.sleb128	-1
      00013E 09                    1936 	.db	9
      00013F 0C                    1937 	.db	12
      000140 08                    1938 	.uleb128	8
      000141 02                    1939 	.uleb128	2
      000142 89                    1940 	.db	137
      000143 01                    1941 	.uleb128	1
      000144                       1942 Ldebug_CIE2_end:
      000144 00 00 00 67           1943 	.dw	0,103
      000148 00 00 01 32           1944 	.dw	0,(Ldebug_CIE2_start-4)
      00014C 00 00 81 86           1945 	.dw	0,(Smain$setup$44)	;initial loc
      000150 00 00 00 27           1946 	.dw	0,Smain$setup$64-Smain$setup$44
      000154 01                    1947 	.db	1
      000155 00 00 81 86           1948 	.dw	0,(Smain$setup$44)
      000159 0E                    1949 	.db	14
      00015A 02                    1950 	.uleb128	2
      00015B 01                    1951 	.db	1
      00015C 00 00 81 88           1952 	.dw	0,(Smain$setup$46)
      000160 0E                    1953 	.db	14
      000161 03                    1954 	.uleb128	3
      000162 01                    1955 	.db	1
      000163 00 00 81 8C           1956 	.dw	0,(Smain$setup$47)
      000167 0E                    1957 	.db	14
      000168 02                    1958 	.uleb128	2
      000169 01                    1959 	.db	1
      00016A 00 00 81 94           1960 	.dw	0,(Smain$setup$51)
      00016E 0E                    1961 	.db	14
      00016F 03                    1962 	.uleb128	3
      000170 01                    1963 	.db	1
      000171 00 00 81 96           1964 	.dw	0,(Smain$setup$52)
      000175 0E                    1965 	.db	14
      000176 04                    1966 	.uleb128	4
      000177 01                    1967 	.db	1
      000178 00 00 81 98           1968 	.dw	0,(Smain$setup$53)
      00017C 0E                    1969 	.db	14
      00017D 05                    1970 	.uleb128	5
      00017E 01                    1971 	.db	1
      00017F 00 00 81 9A           1972 	.dw	0,(Smain$setup$54)
      000183 0E                    1973 	.db	14
      000184 06                    1974 	.uleb128	6
      000185 01                    1975 	.db	1
      000186 00 00 81 9F           1976 	.dw	0,(Smain$setup$55)
      00018A 0E                    1977 	.db	14
      00018B 02                    1978 	.uleb128	2
      00018C 01                    1979 	.db	1
      00018D 00 00 81 A1           1980 	.dw	0,(Smain$setup$57)
      000191 0E                    1981 	.db	14
      000192 03                    1982 	.uleb128	3
      000193 01                    1983 	.db	1
      000194 00 00 81 A3           1984 	.dw	0,(Smain$setup$58)
      000198 0E                    1985 	.db	14
      000199 04                    1986 	.uleb128	4
      00019A 01                    1987 	.db	1
      00019B 00 00 81 A5           1988 	.dw	0,(Smain$setup$59)
      00019F 0E                    1989 	.db	14
      0001A0 05                    1990 	.uleb128	5
      0001A1 01                    1991 	.db	1
      0001A2 00 00 81 A7           1992 	.dw	0,(Smain$setup$60)
      0001A6 0E                    1993 	.db	14
      0001A7 06                    1994 	.uleb128	6
      0001A8 01                    1995 	.db	1
      0001A9 00 00 81 AC           1996 	.dw	0,(Smain$setup$61)
      0001AD 0E                    1997 	.db	14
      0001AE 02                    1998 	.uleb128	2
                                   1999 
                                   2000 	.area .debug_frame (NOLOAD)
      0001AF 00 00                 2001 	.dw	0
      0001B1 00 0E                 2002 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0001B3                       2003 Ldebug_CIE3_start:
      0001B3 FF FF                 2004 	.dw	0xffff
      0001B5 FF FF                 2005 	.dw	0xffff
      0001B7 01                    2006 	.db	1
      0001B8 00                    2007 	.db	0
      0001B9 01                    2008 	.uleb128	1
      0001BA 7F                    2009 	.sleb128	-1
      0001BB 09                    2010 	.db	9
      0001BC 0C                    2011 	.db	12
      0001BD 08                    2012 	.uleb128	8
      0001BE 02                    2013 	.uleb128	2
      0001BF 89                    2014 	.db	137
      0001C0 01                    2015 	.uleb128	1
      0001C1                       2016 Ldebug_CIE3_end:
      0001C1 00 00 00 75           2017 	.dw	0,117
      0001C5 00 00 01 AF           2018 	.dw	0,(Ldebug_CIE3_start-4)
      0001C9 00 00 81 4E           2019 	.dw	0,(Smain$_delay_us$13)	;initial loc
      0001CD 00 00 00 38           2020 	.dw	0,Smain$_delay_us$42-Smain$_delay_us$13
      0001D1 01                    2021 	.db	1
      0001D2 00 00 81 4E           2022 	.dw	0,(Smain$_delay_us$13)
      0001D6 0E                    2023 	.db	14
      0001D7 02                    2024 	.uleb128	2
      0001D8 01                    2025 	.db	1
      0001D9 00 00 81 53           2026 	.dw	0,(Smain$_delay_us$15)
      0001DD 0E                    2027 	.db	14
      0001DE 04                    2028 	.uleb128	4
      0001DF 01                    2029 	.db	1
      0001E0 00 00 81 54           2030 	.dw	0,(Smain$_delay_us$16)
      0001E4 0E                    2031 	.db	14
      0001E5 06                    2032 	.uleb128	6
      0001E6 01                    2033 	.db	1
      0001E7 00 00 81 56           2034 	.dw	0,(Smain$_delay_us$17)
      0001EB 0E                    2035 	.db	14
      0001EC 07                    2036 	.uleb128	7
      0001ED 01                    2037 	.db	1
      0001EE 00 00 81 58           2038 	.dw	0,(Smain$_delay_us$18)
      0001F2 0E                    2039 	.db	14
      0001F3 08                    2040 	.uleb128	8
      0001F4 01                    2041 	.db	1
      0001F5 00 00 81 5A           2042 	.dw	0,(Smain$_delay_us$19)
      0001F9 0E                    2043 	.db	14
      0001FA 09                    2044 	.uleb128	9
      0001FB 01                    2045 	.db	1
      0001FC 00 00 81 5C           2046 	.dw	0,(Smain$_delay_us$20)
      000200 0E                    2047 	.db	14
      000201 0A                    2048 	.uleb128	10
      000202 01                    2049 	.db	1
      000203 00 00 81 61           2050 	.dw	0,(Smain$_delay_us$21)
      000207 0E                    2051 	.db	14
      000208 02                    2052 	.uleb128	2
      000209 01                    2053 	.db	1
      00020A 00 00 81 63           2054 	.dw	0,(Smain$_delay_us$23)
      00020E 0E                    2055 	.db	14
      00020F 03                    2056 	.uleb128	3
      000210 01                    2057 	.db	1
      000211 00 00 81 65           2058 	.dw	0,(Smain$_delay_us$24)
      000215 0E                    2059 	.db	14
      000216 04                    2060 	.uleb128	4
      000217 01                    2061 	.db	1
      000218 00 00 81 67           2062 	.dw	0,(Smain$_delay_us$25)
      00021C 0E                    2063 	.db	14
      00021D 05                    2064 	.uleb128	5
      00021E 01                    2065 	.db	1
      00021F 00 00 81 69           2066 	.dw	0,(Smain$_delay_us$26)
      000223 0E                    2067 	.db	14
      000224 06                    2068 	.uleb128	6
      000225 01                    2069 	.db	1
      000226 00 00 81 6A           2070 	.dw	0,(Smain$_delay_us$27)
      00022A 0E                    2071 	.db	14
      00022B 08                    2072 	.uleb128	8
      00022C 01                    2073 	.db	1
      00022D 00 00 81 6C           2074 	.dw	0,(Smain$_delay_us$28)
      000231 0E                    2075 	.db	14
      000232 0A                    2076 	.uleb128	10
      000233 01                    2077 	.db	1
      000234 00 00 81 71           2078 	.dw	0,(Smain$_delay_us$29)
      000238 0E                    2079 	.db	14
      000239 02                    2080 	.uleb128	2
                                   2081 
                                   2082 	.area .debug_frame (NOLOAD)
      00023A 00 00                 2083 	.dw	0
      00023C 00 0E                 2084 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00023E                       2085 Ldebug_CIE4_start:
      00023E FF FF                 2086 	.dw	0xffff
      000240 FF FF                 2087 	.dw	0xffff
      000242 01                    2088 	.db	1
      000243 00                    2089 	.db	0
      000244 01                    2090 	.uleb128	1
      000245 7F                    2091 	.sleb128	-1
      000246 09                    2092 	.db	9
      000247 0C                    2093 	.db	12
      000248 08                    2094 	.uleb128	8
      000249 02                    2095 	.uleb128	2
      00024A 89                    2096 	.db	137
      00024B 01                    2097 	.uleb128	1
      00024C                       2098 Ldebug_CIE4_end:
      00024C 00 00 00 13           2099 	.dw	0,19
      000250 00 00 02 3A           2100 	.dw	0,(Ldebug_CIE4_start-4)
      000254 00 00 81 41           2101 	.dw	0,(Smain$_delay_cycl$1)	;initial loc
      000258 00 00 00 0D           2102 	.dw	0,Smain$_delay_cycl$11-Smain$_delay_cycl$1
      00025C 01                    2103 	.db	1
      00025D 00 00 81 41           2104 	.dw	0,(Smain$_delay_cycl$1)
      000261 0E                    2105 	.db	14
      000262 02                    2106 	.uleb128	2
