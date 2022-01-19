;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup
	.globl _sprintf
	.globl _lcd_puts
	.globl _lcd_gotoxy
	.globl _lcd_init
	.globl _lcd_command
	.globl _milis
	.globl _init_milis
	.globl _GPIO_ReadInputPin
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
	.globl _assert_failed
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$_delay_cycl$0 ==.
;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	Smain$_delay_cycl$1 ==.
	Smain$_delay_cycl$2 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_cycl$3 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	Smain$_delay_cycl$4 ==.
	Smain$_delay_cycl$5 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_cycl$6 ==.
	Smain$_delay_cycl$7 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	Smain$_delay_cycl$8 ==.
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	Smain$_delay_cycl$9 ==.
;	inc/delay.h: 39: }
; genEndFunction
	Smain$_delay_cycl$10 ==.
	XFmain$_delay_cycl$0$0 ==.
	ret
	Smain$_delay_cycl$11 ==.
	Smain$_delay_us$12 ==.
;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	Smain$_delay_us$13 ==.
	Smain$_delay_us$14 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	Smain$_delay_us$15 ==.
	pushw	x
	Smain$_delay_us$16 ==.
; genIPush
	push	#0x00
	Smain$_delay_us$17 ==.
	push	#0x24
	Smain$_delay_us$18 ==.
	push	#0xf4
	Smain$_delay_us$19 ==.
	push	#0x00
	Smain$_delay_us$20 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Smain$_delay_us$21 ==.
	Smain$_delay_us$22 ==.
; genCast
; genAssign
; genIPush
	push	#0x40
	Smain$_delay_us$23 ==.
	push	#0x42
	Smain$_delay_us$24 ==.
	push	#0x0f
	Smain$_delay_us$25 ==.
	push	#0x00
	Smain$_delay_us$26 ==.
; genIPush
	pushw	x
	Smain$_delay_us$27 ==.
	pushw	y
	Smain$_delay_us$28 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Smain$_delay_us$29 ==.
	Smain$_delay_us$30 ==.
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	Smain$_delay_us$31 ==.
; genPlus
	incw	x
; genAssign
; genAssign
	Smain$_delay_us$32 ==.
; genAssign
	Smain$_delay_us$33 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_us$34 ==.
	Smain$_delay_us$35 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Smain$_delay_us$36 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_us$37 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$_delay_us$38 ==.
	Smain$_delay_us$39 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	Smain$_delay_us$40 ==.
;	inc/delay.h: 43: }
; genEndFunction
	Smain$_delay_us$41 ==.
	XFmain$_delay_us$0$0 ==.
	ret
	Smain$_delay_us$42 ==.
	Smain$setup$43 ==.
;	./src/main.c: 11: void setup(void)
; genLabel
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_setup:
	Smain$setup$44 ==.
	Smain$setup$45 ==.
;	./src/main.c: 13: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
; genIPush
	push	#0x00
	Smain$setup$46 ==.
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
	Smain$setup$47 ==.
	Smain$setup$48 ==.
;	./src/main.c: 14: lcd_init(); //inicializace LCD
; genCall
	call	_lcd_init
	Smain$setup$49 ==.
;	./src/main.c: 15: init_milis(); //inicializace mmilisu
; genCall
	call	_init_milis
	Smain$setup$50 ==.
;	./src/main.c: 16: GPIO_Init(GPIOE, GPIO_PIN_3,GPIO_MODE_IN_FL_NO_IT); // nastavíme PE3 jako vstup (fototranzistor)
; genIPush
	push	#0x00
	Smain$setup$51 ==.
; genIPush
	push	#0x08
	Smain$setup$52 ==.
; genIPush
	push	#0x14
	Smain$setup$53 ==.
	push	#0x50
	Smain$setup$54 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$55 ==.
	Smain$setup$56 ==.
;	./src/main.c: 17: GPIO_Init(GPIOE, GPIO_PIN_4,GPIO_MODE_IN_FL_NO_IT); // nastavíme PE4 jako vstup (tlačítko)
; genIPush
	push	#0x00
	Smain$setup$57 ==.
; genIPush
	push	#0x10
	Smain$setup$58 ==.
; genIPush
	push	#0x14
	Smain$setup$59 ==.
	push	#0x50
	Smain$setup$60 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$61 ==.
; genLabel
00101$:
	Smain$setup$62 ==.
;	./src/main.c: 19: }
; genEndFunction
	Smain$setup$63 ==.
	XG$setup$0$0 ==.
	ret
	Smain$setup$64 ==.
	Smain$main$65 ==.
;	./src/main.c: 22: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 39 bytes.
_main:
	Smain$main$66 ==.
	sub	sp, #39
	Smain$main$67 ==.
	Smain$main$68 ==.
;	./src/main.c: 24: uint32_t time = 0; //inicializace proměnných
; genAssign
	clrw	x
	ldw	(0x23, sp), x
	ldw	(0x21, sp), x
	Smain$main$69 ==.
;	./src/main.c: 25: uint8_t tlacitko = 0;
; genAssign
	clr	(0x25, sp)
	Smain$main$70 ==.
;	./src/main.c: 26: uint8_t tlacitko1 = 0;
; genAssign
	clr	(0x26, sp)
	Smain$main$71 ==.
;	./src/main.c: 27: uint8_t start = 0;
; genAssign
	clr	(0x27, sp)
	Smain$main$72 ==.
;	./src/main.c: 30: setup();
; genCall
	call	_setup
	Smain$main$73 ==.
;	./src/main.c: 33: while (1) {
; genLabel
00114$:
	Smain$main$74 ==.
	Smain$main$75 ==.
;	./src/main.c: 34: if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_3)==RESET){ // kontrolujeme zda je senzor laseru sepnutý
; genIPush
	push	#0x08
	Smain$main$76 ==.
; genIPush
	push	#0x14
	Smain$main$77 ==.
	push	#0x50
	Smain$main$78 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$main$79 ==.
; genIfx
	tnz	a
	jreq	00148$
	jp	00104$
00148$:
	Smain$main$80 ==.
	Smain$main$81 ==.
;	./src/main.c: 35: if(tlacitko == 0){
; genIfx
	tnz	(0x25, sp)
	jreq	00149$
	jp	00102$
00149$:
	Smain$main$82 ==.
	Smain$main$83 ==.
;	./src/main.c: 36: start = 0;
; genAssign
	clr	(0x27, sp)
	Smain$main$84 ==.
; genLabel
00102$:
	Smain$main$85 ==.
;	./src/main.c: 38: tlacitko = 1;
; genAssign
	ld	a, #0x01
	ld	(0x25, sp), a
	Smain$main$86 ==.
; genGoto
	jp	00105$
; genLabel
00104$:
	Smain$main$87 ==.
	Smain$main$88 ==.
;	./src/main.c: 40: tlacitko = 0;
; genAssign
	clr	(0x25, sp)
	Smain$main$89 ==.
; genLabel
00105$:
	Smain$main$90 ==.
;	./src/main.c: 44: if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_4)==RESET){ // kontrolujeme zda je tlačítko stisknuté
; genIPush
	push	#0x10
	Smain$main$91 ==.
; genIPush
	push	#0x14
	Smain$main$92 ==.
	push	#0x50
	Smain$main$93 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$main$94 ==.
; genIfx
	tnz	a
	jreq	00150$
	jp	00109$
00150$:
	Smain$main$95 ==.
	Smain$main$96 ==.
;	./src/main.c: 45: if(tlacitko1 == 0){
; genIfx
	tnz	(0x26, sp)
	jreq	00151$
	jp	00107$
00151$:
	Smain$main$97 ==.
	Smain$main$98 ==.
;	./src/main.c: 46: time = milis();
; genCall
	call	_milis
; genAssign
	ldw	(0x23, sp), x
	ldw	(0x21, sp), y
	Smain$main$99 ==.
;	./src/main.c: 47: start = 1;
; genAssign
	ld	a, #0x01
	ld	(0x27, sp), a
	Smain$main$100 ==.
;	./src/main.c: 48: lcd_clear();
; genIPush
	push	#0x01
	Smain$main$101 ==.
; genCall
	call	_lcd_command
	pop	a
	Smain$main$102 ==.
	Smain$main$103 ==.
; genLabel
00107$:
	Smain$main$104 ==.
;	./src/main.c: 50: tlacitko1 = 1;
; genAssign
	ld	a, #0x01
	ld	(0x26, sp), a
	Smain$main$105 ==.
; genGoto
	jp	00110$
; genLabel
00109$:
	Smain$main$106 ==.
	Smain$main$107 ==.
;	./src/main.c: 52: tlacitko1 = 0;
; genAssign
	clr	(0x26, sp)
	Smain$main$108 ==.
; genLabel
00110$:
	Smain$main$109 ==.
;	./src/main.c: 55: if(start == 1){
; genCmpEQorNE
	ld	a, (0x27, sp)
	dec	a
	jrne	00153$
	jp	00154$
00153$:
	jp	00114$
00154$:
	Smain$main$110 ==.
; skipping generated iCode
	Smain$main$111 ==.
	Smain$main$112 ==.
;	./src/main.c: 56: temp = (milis() - time)/1000;
; genCall
	call	_milis
	exgw	x, y
; genMinus
	subw	y, (0x23, sp)
	ld	a, xl
	sbc	a, (0x22, sp)
	ld	xl, a
	ld	a, xh
	sbc	a, (0x21, sp)
	ld	xh, a
	Smain$main$113 ==.
; genIPush
	push	#0xe8
	Smain$main$114 ==.
	push	#0x03
	Smain$main$115 ==.
	push	#0x00
	Smain$main$116 ==.
	push	#0x00
	Smain$main$117 ==.
; genIPush
	pushw	y
	Smain$main$118 ==.
	pushw	x
	Smain$main$119 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Smain$main$120 ==.
	ld	a, xl
; genCast
; genAssign
	Smain$main$121 ==.
;	./src/main.c: 57: lcd_gotoxy(0, 0);
; genIPush
	push	a
	Smain$main$122 ==.
	push	#0x00
	Smain$main$123 ==.
; genIPush
	push	#0x00
	Smain$main$124 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$125 ==.
	pop	a
	Smain$main$126 ==.
	Smain$main$127 ==.
;	./src/main.c: 58: sprintf(text,"Cas = %1u s",temp);
; genCast
; genAssign
	clrw	x
	ld	xl, a
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	pushw	x
	Smain$main$128 ==.
; genIPush
	push	#<(___str_0+0)
	Smain$main$129 ==.
	push	#((___str_0+0) >> 8)
	Smain$main$130 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$131 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$132 ==.
	Smain$main$133 ==.
;	./src/main.c: 59: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$134 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$135 ==.
; genGoto
	jp	00114$
; genLabel
00116$:
	Smain$main$136 ==.
;	./src/main.c: 63: }
; genEndFunction
	addw	sp, #39
	Smain$main$137 ==.
	Smain$main$138 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$139 ==.
	Smain$assert_failed$140 ==.
;	inc/__assert__.h: 13: void assert_failed(uint8_t* file, uint32_t line)
; genLabel
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_assert_failed:
	Smain$assert_failed$141 ==.
	Smain$assert_failed$142 ==.
;	inc/__assert__.h: 22: while (1)
; genLabel
00102$:
; genGoto
	jp	00102$
; genLabel
00104$:
	Smain$assert_failed$143 ==.
;	inc/__assert__.h: 25: }
; genEndFunction
	Smain$assert_failed$144 ==.
	XG$assert_failed$0$0 ==.
	ret
	Smain$assert_failed$145 ==.
	.area CODE
	.area CONST
Fmain$__str_0$0_0$0 == .
	.area CONST
___str_0:
	.ascii "Cas = %1u s"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "inc/delay.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "./src/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/__assert__.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_cycl$0)
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$2-Smain$_delay_cycl$0
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$3-Smain$_delay_cycl$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$5-Smain$_delay_cycl$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$7-Smain$_delay_cycl$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$8-Smain$_delay_cycl$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$9-Smain$_delay_cycl$8
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	1+Smain$_delay_cycl$10-Smain$_delay_cycl$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_us$12)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Smain$_delay_us$35-Smain$_delay_us$12
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Smain$_delay_us$39-Smain$_delay_us$35
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Smain$_delay_us$40-Smain$_delay_us$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$_delay_us$41-Smain$_delay_us$40
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$setup$43)
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Smain$setup$45-Smain$setup$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$48-Smain$setup$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$49-Smain$setup$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$50-Smain$setup$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$56-Smain$setup$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$62-Smain$setup$56
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$setup$63-Smain$setup$62
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$65)
	.db	3
	.sleb128	21
	.db	1
	.db	9
	.dw	Smain$main$68-Smain$main$65
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$69-Smain$main$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$70-Smain$main$69
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$71-Smain$main$70
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$72-Smain$main$71
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$73-Smain$main$72
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$75-Smain$main$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$81-Smain$main$75
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$83-Smain$main$81
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$85-Smain$main$83
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$88-Smain$main$85
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$90-Smain$main$88
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$96-Smain$main$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$98-Smain$main$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$99-Smain$main$98
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$100-Smain$main$99
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$104-Smain$main$100
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$107-Smain$main$104
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$109-Smain$main$107
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$112-Smain$main$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$121-Smain$main$112
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$127-Smain$main$121
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$133-Smain$main$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$136-Smain$main$133
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	1+Smain$main$138-Smain$main$136
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	3
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$assert_failed$140)
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Smain$assert_failed$142-Smain$assert_failed$140
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Smain$assert_failed$143-Smain$assert_failed$142
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$assert_failed$144-Smain$assert_failed$143
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$assert_failed$141)
	.dw	0,(Smain$assert_failed$145)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$main$137)
	.dw	0,(Smain$main$139)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$135)
	.dw	0,(Smain$main$137)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$134)
	.dw	0,(Smain$main$135)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$132)
	.dw	0,(Smain$main$134)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$131)
	.dw	0,(Smain$main$132)
	.dw	2
	.db	120
	.sleb128	46
	.dw	0,(Smain$main$130)
	.dw	0,(Smain$main$131)
	.dw	2
	.db	120
	.sleb128	44
	.dw	0,(Smain$main$129)
	.dw	0,(Smain$main$130)
	.dw	2
	.db	120
	.sleb128	43
	.dw	0,(Smain$main$128)
	.dw	0,(Smain$main$129)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$126)
	.dw	0,(Smain$main$128)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$125)
	.dw	0,(Smain$main$126)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$124)
	.dw	0,(Smain$main$125)
	.dw	2
	.db	120
	.sleb128	43
	.dw	0,(Smain$main$123)
	.dw	0,(Smain$main$124)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$122)
	.dw	0,(Smain$main$123)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$120)
	.dw	0,(Smain$main$122)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$119)
	.dw	0,(Smain$main$120)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$118)
	.dw	0,(Smain$main$119)
	.dw	2
	.db	120
	.sleb128	46
	.dw	0,(Smain$main$117)
	.dw	0,(Smain$main$118)
	.dw	2
	.db	120
	.sleb128	44
	.dw	0,(Smain$main$116)
	.dw	0,(Smain$main$117)
	.dw	2
	.db	120
	.sleb128	43
	.dw	0,(Smain$main$115)
	.dw	0,(Smain$main$116)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$114)
	.dw	0,(Smain$main$115)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$110)
	.dw	0,(Smain$main$114)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$102)
	.dw	0,(Smain$main$110)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$101)
	.dw	0,(Smain$main$102)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$94)
	.dw	0,(Smain$main$101)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$93)
	.dw	0,(Smain$main$94)
	.dw	2
	.db	120
	.sleb128	43
	.dw	0,(Smain$main$92)
	.dw	0,(Smain$main$93)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$91)
	.dw	0,(Smain$main$92)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$79)
	.dw	0,(Smain$main$91)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$78)
	.dw	0,(Smain$main$79)
	.dw	2
	.db	120
	.sleb128	43
	.dw	0,(Smain$main$77)
	.dw	0,(Smain$main$78)
	.dw	2
	.db	120
	.sleb128	42
	.dw	0,(Smain$main$76)
	.dw	0,(Smain$main$77)
	.dw	2
	.db	120
	.sleb128	41
	.dw	0,(Smain$main$67)
	.dw	0,(Smain$main$76)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Smain$main$66)
	.dw	0,(Smain$main$67)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$setup$61)
	.dw	0,(Smain$setup$64)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$60)
	.dw	0,(Smain$setup$61)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$59)
	.dw	0,(Smain$setup$60)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$58)
	.dw	0,(Smain$setup$59)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$57)
	.dw	0,(Smain$setup$58)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$55)
	.dw	0,(Smain$setup$57)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$54)
	.dw	0,(Smain$setup$55)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$53)
	.dw	0,(Smain$setup$54)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$52)
	.dw	0,(Smain$setup$53)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$51)
	.dw	0,(Smain$setup$52)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$47)
	.dw	0,(Smain$setup$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$46)
	.dw	0,(Smain$setup$47)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$44)
	.dw	0,(Smain$setup$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_us$29)
	.dw	0,(Smain$_delay_us$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$28)
	.dw	0,(Smain$_delay_us$29)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$27)
	.dw	0,(Smain$_delay_us$28)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$26)
	.dw	0,(Smain$_delay_us$27)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$25)
	.dw	0,(Smain$_delay_us$26)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$_delay_us$24)
	.dw	0,(Smain$_delay_us$25)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$23)
	.dw	0,(Smain$_delay_us$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$_delay_us$21)
	.dw	0,(Smain$_delay_us$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$20)
	.dw	0,(Smain$_delay_us$21)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$19)
	.dw	0,(Smain$_delay_us$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Smain$_delay_us$18)
	.dw	0,(Smain$_delay_us$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$17)
	.dw	0,(Smain$_delay_us$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$_delay_us$16)
	.dw	0,(Smain$_delay_us$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$15)
	.dw	0,(Smain$_delay_us$16)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$13)
	.dw	0,(Smain$_delay_us$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_cycl$1)
	.dw	0,(Smain$_delay_cycl$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	15
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
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
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	46
	.db	1
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
	.uleb128	6
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
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
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	46
	.db	0
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
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./src/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.dw	0,112
	.ascii "_delay_cycl"
	.db	0
	.dw	0,(__delay_cycl)
	.dw	0,(XFmain$_delay_cycl$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+776)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__ticks"
	.db	0
	.dw	0,112
	.uleb128	4
	.dw	0,(Smain$_delay_cycl$4)
	.dw	0,(Smain$_delay_cycl$6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,263
	.ascii "_delay_us"
	.db	0
	.dw	0,(__delay_us)
	.dw	0,(XFmain$_delay_us$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+588)
	.uleb128	6
	.dw	0,112
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,(Smain$_delay_us$14)
	.dw	0,(Smain$_delay_us$31)
	.uleb128	8
	.dw	0,236
	.dw	0,(Smain$_delay_us$32)
	.uleb128	9
	.dw	0,215
	.dw	0,(Smain$_delay_us$33)
	.dw	0,(Smain$_delay_us$38)
	.uleb128	4
	.dw	0,(Smain$_delay_us$36)
	.dw	0,(Smain$_delay_us$37)
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__ticks"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.ascii "setup"
	.db	0
	.dw	0,(_setup)
	.dw	0,(XG$setup$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+424)
	.uleb128	5
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	12
	.dw	0,501
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,283
	.uleb128	8
	.dw	0,400
	.dw	0,(Smain$main$74)
	.uleb128	9
	.dw	0,349
	.dw	0,(Smain$main$80)
	.dw	0,(Smain$main$86)
	.uleb128	4
	.dw	0,(Smain$main$82)
	.dw	0,(Smain$main$84)
	.uleb128	0
	.uleb128	4
	.dw	0,(Smain$main$87)
	.dw	0,(Smain$main$89)
	.uleb128	9
	.dw	0,381
	.dw	0,(Smain$main$95)
	.dw	0,(Smain$main$105)
	.uleb128	4
	.dw	0,(Smain$main$97)
	.dw	0,(Smain$main$103)
	.uleb128	0
	.uleb128	4
	.dw	0,(Smain$main$106)
	.dw	0,(Smain$main$108)
	.uleb128	4
	.dw	0,(Smain$main$111)
	.dw	0,(Smain$main$113)
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-7
	.ascii "time"
	.db	0
	.dw	0,501
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-3
	.ascii "tlacitko"
	.db	0
	.dw	0,518
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "tlacitko1"
	.db	0
	.dw	0,518
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "start"
	.db	0
	.dw	0,518
	.uleb128	10
	.db	1
	.db	80
	.ascii "temp"
	.db	0
	.dw	0,518
	.uleb128	13
	.dw	0,487
	.db	32
	.dw	0,518
	.uleb128	14
	.db	31
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-39
	.ascii "text"
	.db	0
	.dw	0,474
	.uleb128	0
	.uleb128	5
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,600
	.ascii "assert_failed"
	.db	0
	.dw	0,(_assert_failed)
	.dw	0,(XG$assert_failed$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	15
	.db	2
	.dw	0,518
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "file"
	.db	0
	.dw	0,567
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "line"
	.db	0
	.dw	0,501
	.uleb128	0
	.uleb128	6
	.dw	0,518
	.uleb128	13
	.dw	0,618
	.db	12
	.dw	0,600
	.uleb128	14
	.db	11
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_0)
	.ascii "__str_0"
	.db	0
	.dw	0,605
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,263
	.ascii "setup"
	.db	0
	.dw	0,290
	.ascii "main"
	.db	0
	.dw	0,535
	.ascii "assert_failed"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$assert_failed$141)	;initial loc
	.dw	0,Smain$assert_failed$145-Smain$assert_failed$141
	.db	1
	.dw	0,(Smain$assert_failed$141)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,243
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$main$66)	;initial loc
	.dw	0,Smain$main$139-Smain$main$66
	.db	1
	.dw	0,(Smain$main$66)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$67)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$76)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$77)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$78)
	.db	14
	.uleb128	44
	.db	1
	.dw	0,(Smain$main$79)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$91)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$92)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$93)
	.db	14
	.uleb128	44
	.db	1
	.dw	0,(Smain$main$94)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$101)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$102)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$110)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$114)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$115)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$116)
	.db	14
	.uleb128	44
	.db	1
	.dw	0,(Smain$main$117)
	.db	14
	.uleb128	45
	.db	1
	.dw	0,(Smain$main$118)
	.db	14
	.uleb128	47
	.db	1
	.dw	0,(Smain$main$119)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$120)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$122)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$123)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$124)
	.db	14
	.uleb128	44
	.db	1
	.dw	0,(Smain$main$125)
	.db	14
	.uleb128	42
	.db	1
	.dw	0,(Smain$main$126)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$128)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$129)
	.db	14
	.uleb128	44
	.db	1
	.dw	0,(Smain$main$130)
	.db	14
	.uleb128	45
	.db	1
	.dw	0,(Smain$main$131)
	.db	14
	.uleb128	47
	.db	1
	.dw	0,(Smain$main$132)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$134)
	.db	14
	.uleb128	43
	.db	1
	.dw	0,(Smain$main$135)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Smain$main$137)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,103
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$setup$44)	;initial loc
	.dw	0,Smain$setup$64-Smain$setup$44
	.db	1
	.dw	0,(Smain$setup$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$46)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$47)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$51)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$52)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$53)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$54)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$55)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$57)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$58)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$59)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$60)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$61)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$_delay_us$13)	;initial loc
	.dw	0,Smain$_delay_us$42-Smain$_delay_us$13
	.db	1
	.dw	0,(Smain$_delay_us$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$_delay_us$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$_delay_us$20)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$_delay_us$24)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$25)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$_delay_us$26)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$27)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$28)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$29)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Smain$_delay_cycl$1)	;initial loc
	.dw	0,Smain$_delay_cycl$11-Smain$_delay_cycl$1
	.db	1
	.dw	0,(Smain$_delay_cycl$1)
	.db	14
	.uleb128	2
