                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _CAN_RX_IRQHandler
                                     21 	.globl _CAN_TX_IRQHandler
                                     22 	.globl _SPI_IRQHandler
                                     23 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     24 	.globl _TIM1_CAP_COM_IRQHandler
                                     25 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM2_CAP_COM_IRQHandler
                                     27 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     28 	.globl _TIM3_CAP_COM_IRQHandler
                                     29 	.globl _UART1_TX_IRQHandler
                                     30 	.globl _UART1_RX_IRQHandler
                                     31 	.globl _I2C_IRQHandler
                                     32 	.globl _UART3_TX_IRQHandler
                                     33 	.globl _UART3_RX_IRQHandler
                                     34 	.globl _ADC2_IRQHandler
                                     35 	.globl _EEPROM_EEC_IRQHandler
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                           000000    73 	Sstm8s_it$TRAP_IRQHandler$0 ==.
                                     74 ;	./src/stm8s_it.c: 63: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function TRAP_IRQHandler
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      008853                         81 _TRAP_IRQHandler:
                           000000    82 	Sstm8s_it$TRAP_IRQHandler$1 ==.
                           000000    83 	Sstm8s_it$TRAP_IRQHandler$2 ==.
                                     84 ;	./src/stm8s_it.c: 68: }
                                     85 ; genLabel
      008853                         86 00101$:
                                     87 ; genEndFunction
                           000000    88 	Sstm8s_it$TRAP_IRQHandler$3 ==.
                           000000    89 	XG$TRAP_IRQHandler$0$0 ==.
      008853 80               [11]   90 	iret
                           000001    91 	Sstm8s_it$TRAP_IRQHandler$4 ==.
                           000001    92 	Sstm8s_it$TLI_IRQHandler$5 ==.
                                     93 ;	./src/stm8s_it.c: 74: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     94 ; genLabel
                                     95 ;	-----------------------------------------
                                     96 ;	 function TLI_IRQHandler
                                     97 ;	-----------------------------------------
                                     98 ;	Register assignment is optimal.
                                     99 ;	Stack space usage: 0 bytes.
      008854                        100 _TLI_IRQHandler:
                           000001   101 	Sstm8s_it$TLI_IRQHandler$6 ==.
                           000001   102 	Sstm8s_it$TLI_IRQHandler$7 ==.
                                    103 ;	./src/stm8s_it.c: 79: }
                                    104 ; genLabel
      008854                        105 00101$:
                                    106 ; genEndFunction
                           000001   107 	Sstm8s_it$TLI_IRQHandler$8 ==.
                           000001   108 	XG$TLI_IRQHandler$0$0 ==.
      008854 80               [11]  109 	iret
                           000002   110 	Sstm8s_it$TLI_IRQHandler$9 ==.
                           000002   111 	Sstm8s_it$AWU_IRQHandler$10 ==.
                                    112 ;	./src/stm8s_it.c: 86: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    113 ; genLabel
                                    114 ;	-----------------------------------------
                                    115 ;	 function AWU_IRQHandler
                                    116 ;	-----------------------------------------
                                    117 ;	Register assignment is optimal.
                                    118 ;	Stack space usage: 0 bytes.
      008855                        119 _AWU_IRQHandler:
                           000002   120 	Sstm8s_it$AWU_IRQHandler$11 ==.
                           000002   121 	Sstm8s_it$AWU_IRQHandler$12 ==.
                                    122 ;	./src/stm8s_it.c: 91: }
                                    123 ; genLabel
      008855                        124 00101$:
                                    125 ; genEndFunction
                           000002   126 	Sstm8s_it$AWU_IRQHandler$13 ==.
                           000002   127 	XG$AWU_IRQHandler$0$0 ==.
      008855 80               [11]  128 	iret
                           000003   129 	Sstm8s_it$AWU_IRQHandler$14 ==.
                           000003   130 	Sstm8s_it$CLK_IRQHandler$15 ==.
                                    131 ;	./src/stm8s_it.c: 98: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function CLK_IRQHandler
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment is optimal.
                                    137 ;	Stack space usage: 0 bytes.
      008856                        138 _CLK_IRQHandler:
                           000003   139 	Sstm8s_it$CLK_IRQHandler$16 ==.
                           000003   140 	Sstm8s_it$CLK_IRQHandler$17 ==.
                                    141 ;	./src/stm8s_it.c: 103: }
                                    142 ; genLabel
      008856                        143 00101$:
                                    144 ; genEndFunction
                           000003   145 	Sstm8s_it$CLK_IRQHandler$18 ==.
                           000003   146 	XG$CLK_IRQHandler$0$0 ==.
      008856 80               [11]  147 	iret
                           000004   148 	Sstm8s_it$CLK_IRQHandler$19 ==.
                           000004   149 	Sstm8s_it$EXTI_PORTA_IRQHandler$20 ==.
                                    150 ;	./src/stm8s_it.c: 110: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    151 ; genLabel
                                    152 ;	-----------------------------------------
                                    153 ;	 function EXTI_PORTA_IRQHandler
                                    154 ;	-----------------------------------------
                                    155 ;	Register assignment is optimal.
                                    156 ;	Stack space usage: 0 bytes.
      008857                        157 _EXTI_PORTA_IRQHandler:
                           000004   158 	Sstm8s_it$EXTI_PORTA_IRQHandler$21 ==.
                           000004   159 	Sstm8s_it$EXTI_PORTA_IRQHandler$22 ==.
                                    160 ;	./src/stm8s_it.c: 115: }
                                    161 ; genLabel
      008857                        162 00101$:
                                    163 ; genEndFunction
                           000004   164 	Sstm8s_it$EXTI_PORTA_IRQHandler$23 ==.
                           000004   165 	XG$EXTI_PORTA_IRQHandler$0$0 ==.
      008857 80               [11]  166 	iret
                           000005   167 	Sstm8s_it$EXTI_PORTA_IRQHandler$24 ==.
                           000005   168 	Sstm8s_it$EXTI_PORTB_IRQHandler$25 ==.
                                    169 ;	./src/stm8s_it.c: 122: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    170 ; genLabel
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_PORTB_IRQHandler
                                    173 ;	-----------------------------------------
                                    174 ;	Register assignment is optimal.
                                    175 ;	Stack space usage: 0 bytes.
      008858                        176 _EXTI_PORTB_IRQHandler:
                           000005   177 	Sstm8s_it$EXTI_PORTB_IRQHandler$26 ==.
                           000005   178 	Sstm8s_it$EXTI_PORTB_IRQHandler$27 ==.
                                    179 ;	./src/stm8s_it.c: 127: }
                                    180 ; genLabel
      008858                        181 00101$:
                                    182 ; genEndFunction
                           000005   183 	Sstm8s_it$EXTI_PORTB_IRQHandler$28 ==.
                           000005   184 	XG$EXTI_PORTB_IRQHandler$0$0 ==.
      008858 80               [11]  185 	iret
                           000006   186 	Sstm8s_it$EXTI_PORTB_IRQHandler$29 ==.
                           000006   187 	Sstm8s_it$EXTI_PORTC_IRQHandler$30 ==.
                                    188 ;	./src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    189 ; genLabel
                                    190 ;	-----------------------------------------
                                    191 ;	 function EXTI_PORTC_IRQHandler
                                    192 ;	-----------------------------------------
                                    193 ;	Register assignment is optimal.
                                    194 ;	Stack space usage: 0 bytes.
      008859                        195 _EXTI_PORTC_IRQHandler:
                           000006   196 	Sstm8s_it$EXTI_PORTC_IRQHandler$31 ==.
                           000006   197 	Sstm8s_it$EXTI_PORTC_IRQHandler$32 ==.
                                    198 ;	./src/stm8s_it.c: 139: }
                                    199 ; genLabel
      008859                        200 00101$:
                                    201 ; genEndFunction
                           000006   202 	Sstm8s_it$EXTI_PORTC_IRQHandler$33 ==.
                           000006   203 	XG$EXTI_PORTC_IRQHandler$0$0 ==.
      008859 80               [11]  204 	iret
                           000007   205 	Sstm8s_it$EXTI_PORTC_IRQHandler$34 ==.
                           000007   206 	Sstm8s_it$EXTI_PORTD_IRQHandler$35 ==.
                                    207 ;	./src/stm8s_it.c: 146: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    208 ; genLabel
                                    209 ;	-----------------------------------------
                                    210 ;	 function EXTI_PORTD_IRQHandler
                                    211 ;	-----------------------------------------
                                    212 ;	Register assignment is optimal.
                                    213 ;	Stack space usage: 0 bytes.
      00885A                        214 _EXTI_PORTD_IRQHandler:
                           000007   215 	Sstm8s_it$EXTI_PORTD_IRQHandler$36 ==.
                           000007   216 	Sstm8s_it$EXTI_PORTD_IRQHandler$37 ==.
                                    217 ;	./src/stm8s_it.c: 151: }
                                    218 ; genLabel
      00885A                        219 00101$:
                                    220 ; genEndFunction
                           000007   221 	Sstm8s_it$EXTI_PORTD_IRQHandler$38 ==.
                           000007   222 	XG$EXTI_PORTD_IRQHandler$0$0 ==.
      00885A 80               [11]  223 	iret
                           000008   224 	Sstm8s_it$EXTI_PORTD_IRQHandler$39 ==.
                           000008   225 	Sstm8s_it$EXTI_PORTE_IRQHandler$40 ==.
                                    226 ;	./src/stm8s_it.c: 158: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function EXTI_PORTE_IRQHandler
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      00885B                        233 _EXTI_PORTE_IRQHandler:
                           000008   234 	Sstm8s_it$EXTI_PORTE_IRQHandler$41 ==.
                           000008   235 	Sstm8s_it$EXTI_PORTE_IRQHandler$42 ==.
                                    236 ;	./src/stm8s_it.c: 163: }
                                    237 ; genLabel
      00885B                        238 00101$:
                                    239 ; genEndFunction
                           000008   240 	Sstm8s_it$EXTI_PORTE_IRQHandler$43 ==.
                           000008   241 	XG$EXTI_PORTE_IRQHandler$0$0 ==.
      00885B 80               [11]  242 	iret
                           000009   243 	Sstm8s_it$EXTI_PORTE_IRQHandler$44 ==.
                           000009   244 	Sstm8s_it$CAN_RX_IRQHandler$45 ==.
                                    245 ;	./src/stm8s_it.c: 184: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
                                    246 ; genLabel
                                    247 ;	-----------------------------------------
                                    248 ;	 function CAN_RX_IRQHandler
                                    249 ;	-----------------------------------------
                                    250 ;	Register assignment is optimal.
                                    251 ;	Stack space usage: 0 bytes.
      00885C                        252 _CAN_RX_IRQHandler:
                           000009   253 	Sstm8s_it$CAN_RX_IRQHandler$46 ==.
                           000009   254 	Sstm8s_it$CAN_RX_IRQHandler$47 ==.
                                    255 ;	./src/stm8s_it.c: 189: }
                                    256 ; genLabel
      00885C                        257 00101$:
                                    258 ; genEndFunction
                           000009   259 	Sstm8s_it$CAN_RX_IRQHandler$48 ==.
                           000009   260 	XG$CAN_RX_IRQHandler$0$0 ==.
      00885C 80               [11]  261 	iret
                           00000A   262 	Sstm8s_it$CAN_RX_IRQHandler$49 ==.
                           00000A   263 	Sstm8s_it$CAN_TX_IRQHandler$50 ==.
                                    264 ;	./src/stm8s_it.c: 196: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
                                    265 ; genLabel
                                    266 ;	-----------------------------------------
                                    267 ;	 function CAN_TX_IRQHandler
                                    268 ;	-----------------------------------------
                                    269 ;	Register assignment is optimal.
                                    270 ;	Stack space usage: 0 bytes.
      00885D                        271 _CAN_TX_IRQHandler:
                           00000A   272 	Sstm8s_it$CAN_TX_IRQHandler$51 ==.
                           00000A   273 	Sstm8s_it$CAN_TX_IRQHandler$52 ==.
                                    274 ;	./src/stm8s_it.c: 201: }
                                    275 ; genLabel
      00885D                        276 00101$:
                                    277 ; genEndFunction
                           00000A   278 	Sstm8s_it$CAN_TX_IRQHandler$53 ==.
                           00000A   279 	XG$CAN_TX_IRQHandler$0$0 ==.
      00885D 80               [11]  280 	iret
                           00000B   281 	Sstm8s_it$CAN_TX_IRQHandler$54 ==.
                           00000B   282 	Sstm8s_it$SPI_IRQHandler$55 ==.
                                    283 ;	./src/stm8s_it.c: 209: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    284 ; genLabel
                                    285 ;	-----------------------------------------
                                    286 ;	 function SPI_IRQHandler
                                    287 ;	-----------------------------------------
                                    288 ;	Register assignment is optimal.
                                    289 ;	Stack space usage: 0 bytes.
      00885E                        290 _SPI_IRQHandler:
                           00000B   291 	Sstm8s_it$SPI_IRQHandler$56 ==.
                           00000B   292 	Sstm8s_it$SPI_IRQHandler$57 ==.
                                    293 ;	./src/stm8s_it.c: 214: }
                                    294 ; genLabel
      00885E                        295 00101$:
                                    296 ; genEndFunction
                           00000B   297 	Sstm8s_it$SPI_IRQHandler$58 ==.
                           00000B   298 	XG$SPI_IRQHandler$0$0 ==.
      00885E 80               [11]  299 	iret
                           00000C   300 	Sstm8s_it$SPI_IRQHandler$59 ==.
                           00000C   301 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60 ==.
                                    302 ;	./src/stm8s_it.c: 221: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      00885F                        309 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                           00000C   310 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61 ==.
                           00000C   311 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62 ==.
                                    312 ;	./src/stm8s_it.c: 226: }
                                    313 ; genLabel
      00885F                        314 00101$:
                                    315 ; genEndFunction
                           00000C   316 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63 ==.
                           00000C   317 	XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0 ==.
      00885F 80               [11]  318 	iret
                           00000D   319 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64 ==.
                           00000D   320 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$65 ==.
                                    321 ;	./src/stm8s_it.c: 233: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    322 ; genLabel
                                    323 ;	-----------------------------------------
                                    324 ;	 function TIM1_CAP_COM_IRQHandler
                                    325 ;	-----------------------------------------
                                    326 ;	Register assignment is optimal.
                                    327 ;	Stack space usage: 0 bytes.
      008860                        328 _TIM1_CAP_COM_IRQHandler:
                           00000D   329 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$66 ==.
                           00000D   330 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67 ==.
                                    331 ;	./src/stm8s_it.c: 238: }
                                    332 ; genLabel
      008860                        333 00101$:
                                    334 ; genEndFunction
                           00000D   335 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68 ==.
                           00000D   336 	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
      008860 80               [11]  337 	iret
                           00000E   338 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69 ==.
                           00000E   339 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70 ==.
                                    340 ;	./src/stm8s_it.c: 270: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 0 bytes.
      008861                        347 _TIM2_UPD_OVF_BRK_IRQHandler:
                           00000E   348 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71 ==.
                           00000E   349 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72 ==.
                                    350 ;	./src/stm8s_it.c: 275: }
                                    351 ; genLabel
      008861                        352 00101$:
                                    353 ; genEndFunction
                           00000E   354 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73 ==.
                           00000E   355 	XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008861 80               [11]  356 	iret
                           00000F   357 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74 ==.
                           00000F   358 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$75 ==.
                                    359 ;	./src/stm8s_it.c: 282: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function TIM2_CAP_COM_IRQHandler
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment is optimal.
                                    365 ;	Stack space usage: 0 bytes.
      008862                        366 _TIM2_CAP_COM_IRQHandler:
                           00000F   367 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$76 ==.
                           00000F   368 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77 ==.
                                    369 ;	./src/stm8s_it.c: 287: }
                                    370 ; genLabel
      008862                        371 00101$:
                                    372 ; genEndFunction
                           00000F   373 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$78 ==.
                           00000F   374 	XG$TIM2_CAP_COM_IRQHandler$0$0 ==.
      008862 80               [11]  375 	iret
                           000010   376 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$79 ==.
                           000010   377 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80 ==.
                                    378 ;	./src/stm8s_it.c: 297: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment is optimal.
                                    384 ;	Stack space usage: 0 bytes.
      008863                        385 _TIM3_UPD_OVF_BRK_IRQHandler:
                           000010   386 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81 ==.
                           000010   387 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82 ==.
                                    388 ;	./src/stm8s_it.c: 302: }
                                    389 ; genLabel
      008863                        390 00101$:
                                    391 ; genEndFunction
                           000010   392 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83 ==.
                           000010   393 	XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008863 80               [11]  394 	iret
                           000011   395 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84 ==.
                           000011   396 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$85 ==.
                                    397 ;	./src/stm8s_it.c: 309: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    398 ; genLabel
                                    399 ;	-----------------------------------------
                                    400 ;	 function TIM3_CAP_COM_IRQHandler
                                    401 ;	-----------------------------------------
                                    402 ;	Register assignment is optimal.
                                    403 ;	Stack space usage: 0 bytes.
      008864                        404 _TIM3_CAP_COM_IRQHandler:
                           000011   405 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$86 ==.
                           000011   406 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87 ==.
                                    407 ;	./src/stm8s_it.c: 314: }
                                    408 ; genLabel
      008864                        409 00101$:
                                    410 ; genEndFunction
                           000011   411 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$88 ==.
                           000011   412 	XG$TIM3_CAP_COM_IRQHandler$0$0 ==.
      008864 80               [11]  413 	iret
                           000012   414 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$89 ==.
                           000012   415 	Sstm8s_it$UART1_TX_IRQHandler$90 ==.
                                    416 ;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    417 ; genLabel
                                    418 ;	-----------------------------------------
                                    419 ;	 function UART1_TX_IRQHandler
                                    420 ;	-----------------------------------------
                                    421 ;	Register assignment is optimal.
                                    422 ;	Stack space usage: 0 bytes.
      008865                        423 _UART1_TX_IRQHandler:
                           000012   424 	Sstm8s_it$UART1_TX_IRQHandler$91 ==.
                           000012   425 	Sstm8s_it$UART1_TX_IRQHandler$92 ==.
                                    426 ;	./src/stm8s_it.c: 329: }
                                    427 ; genLabel
      008865                        428 00101$:
                                    429 ; genEndFunction
                           000012   430 	Sstm8s_it$UART1_TX_IRQHandler$93 ==.
                           000012   431 	XG$UART1_TX_IRQHandler$0$0 ==.
      008865 80               [11]  432 	iret
                           000013   433 	Sstm8s_it$UART1_TX_IRQHandler$94 ==.
                           000013   434 	Sstm8s_it$UART1_RX_IRQHandler$95 ==.
                                    435 ;	./src/stm8s_it.c: 336: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    436 ; genLabel
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_RX_IRQHandler
                                    439 ;	-----------------------------------------
                                    440 ;	Register assignment is optimal.
                                    441 ;	Stack space usage: 0 bytes.
      008866                        442 _UART1_RX_IRQHandler:
                           000013   443 	Sstm8s_it$UART1_RX_IRQHandler$96 ==.
                           000013   444 	Sstm8s_it$UART1_RX_IRQHandler$97 ==.
                                    445 ;	./src/stm8s_it.c: 341: }
                                    446 ; genLabel
      008866                        447 00101$:
                                    448 ; genEndFunction
                           000013   449 	Sstm8s_it$UART1_RX_IRQHandler$98 ==.
                           000013   450 	XG$UART1_RX_IRQHandler$0$0 ==.
      008866 80               [11]  451 	iret
                           000014   452 	Sstm8s_it$UART1_RX_IRQHandler$99 ==.
                           000014   453 	Sstm8s_it$I2C_IRQHandler$100 ==.
                                    454 ;	./src/stm8s_it.c: 349: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    455 ; genLabel
                                    456 ;	-----------------------------------------
                                    457 ;	 function I2C_IRQHandler
                                    458 ;	-----------------------------------------
                                    459 ;	Register assignment is optimal.
                                    460 ;	Stack space usage: 0 bytes.
      008867                        461 _I2C_IRQHandler:
                           000014   462 	Sstm8s_it$I2C_IRQHandler$101 ==.
                           000014   463 	Sstm8s_it$I2C_IRQHandler$102 ==.
                                    464 ;	./src/stm8s_it.c: 354: }
                                    465 ; genLabel
      008867                        466 00101$:
                                    467 ; genEndFunction
                           000014   468 	Sstm8s_it$I2C_IRQHandler$103 ==.
                           000014   469 	XG$I2C_IRQHandler$0$0 ==.
      008867 80               [11]  470 	iret
                           000015   471 	Sstm8s_it$I2C_IRQHandler$104 ==.
                           000015   472 	Sstm8s_it$UART3_TX_IRQHandler$105 ==.
                                    473 ;	./src/stm8s_it.c: 388: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
                                    474 ; genLabel
                                    475 ;	-----------------------------------------
                                    476 ;	 function UART3_TX_IRQHandler
                                    477 ;	-----------------------------------------
                                    478 ;	Register assignment is optimal.
                                    479 ;	Stack space usage: 0 bytes.
      008868                        480 _UART3_TX_IRQHandler:
                           000015   481 	Sstm8s_it$UART3_TX_IRQHandler$106 ==.
                           000015   482 	Sstm8s_it$UART3_TX_IRQHandler$107 ==.
                                    483 ;	./src/stm8s_it.c: 393: }
                                    484 ; genLabel
      008868                        485 00101$:
                                    486 ; genEndFunction
                           000015   487 	Sstm8s_it$UART3_TX_IRQHandler$108 ==.
                           000015   488 	XG$UART3_TX_IRQHandler$0$0 ==.
      008868 80               [11]  489 	iret
                           000016   490 	Sstm8s_it$UART3_TX_IRQHandler$109 ==.
                           000016   491 	Sstm8s_it$UART3_RX_IRQHandler$110 ==.
                                    492 ;	./src/stm8s_it.c: 400: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function UART3_RX_IRQHandler
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment is optimal.
                                    498 ;	Stack space usage: 0 bytes.
      008869                        499 _UART3_RX_IRQHandler:
                           000016   500 	Sstm8s_it$UART3_RX_IRQHandler$111 ==.
                           000016   501 	Sstm8s_it$UART3_RX_IRQHandler$112 ==.
                                    502 ;	./src/stm8s_it.c: 405: }
                                    503 ; genLabel
      008869                        504 00101$:
                                    505 ; genEndFunction
                           000016   506 	Sstm8s_it$UART3_RX_IRQHandler$113 ==.
                           000016   507 	XG$UART3_RX_IRQHandler$0$0 ==.
      008869 80               [11]  508 	iret
                           000017   509 	Sstm8s_it$UART3_RX_IRQHandler$114 ==.
                           000017   510 	Sstm8s_it$ADC2_IRQHandler$115 ==.
                                    511 ;	./src/stm8s_it.c: 414: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function ADC2_IRQHandler
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 0 bytes.
      00886A                        518 _ADC2_IRQHandler:
                           000017   519 	Sstm8s_it$ADC2_IRQHandler$116 ==.
                           000017   520 	Sstm8s_it$ADC2_IRQHandler$117 ==.
                                    521 ;	./src/stm8s_it.c: 420: return;
                                    522 ; genReturn
                                    523 ; genLabel
      00886A                        524 00101$:
                           000017   525 	Sstm8s_it$ADC2_IRQHandler$118 ==.
                                    526 ;	./src/stm8s_it.c: 422: }
                                    527 ; genEndFunction
                           000017   528 	Sstm8s_it$ADC2_IRQHandler$119 ==.
                           000017   529 	XG$ADC2_IRQHandler$0$0 ==.
      00886A 80               [11]  530 	iret
                           000018   531 	Sstm8s_it$ADC2_IRQHandler$120 ==.
                           000018   532 	Sstm8s_it$EEPROM_EEC_IRQHandler$121 ==.
                                    533 ;	./src/stm8s_it.c: 471: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    534 ; genLabel
                                    535 ;	-----------------------------------------
                                    536 ;	 function EEPROM_EEC_IRQHandler
                                    537 ;	-----------------------------------------
                                    538 ;	Register assignment is optimal.
                                    539 ;	Stack space usage: 0 bytes.
      00886B                        540 _EEPROM_EEC_IRQHandler:
                           000018   541 	Sstm8s_it$EEPROM_EEC_IRQHandler$122 ==.
                           000018   542 	Sstm8s_it$EEPROM_EEC_IRQHandler$123 ==.
                                    543 ;	./src/stm8s_it.c: 476: }
                                    544 ; genLabel
      00886B                        545 00101$:
                                    546 ; genEndFunction
                           000018   547 	Sstm8s_it$EEPROM_EEC_IRQHandler$124 ==.
                           000018   548 	XG$EEPROM_EEC_IRQHandler$0$0 ==.
      00886B 80               [11]  549 	iret
                           000019   550 	Sstm8s_it$EEPROM_EEC_IRQHandler$125 ==.
                                    551 	.area CODE
                                    552 	.area CONST
                                    553 	.area INITIALIZER
                                    554 	.area CABS (ABS)
                                    555 
                                    556 	.area .debug_line (NOLOAD)
      0009FC 00 00 02 BB            557 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000A00                        558 Ldebug_line_start:
      000A00 00 02                  559 	.dw	2
      000A02 00 00 00 71            560 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000A06 01                     561 	.db	1
      000A07 01                     562 	.db	1
      000A08 FB                     563 	.db	-5
      000A09 0F                     564 	.db	15
      000A0A 0A                     565 	.db	10
      000A0B 00                     566 	.db	0
      000A0C 01                     567 	.db	1
      000A0D 01                     568 	.db	1
      000A0E 01                     569 	.db	1
      000A0F 01                     570 	.db	1
      000A10 00                     571 	.db	0
      000A11 00                     572 	.db	0
      000A12 00                     573 	.db	0
      000A13 01                     574 	.db	1
      000A14 43 3A 5C 50 72 6F 67   575 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000A3C 00                     576 	.db	0
      000A3D 43 3A 5C 50 72 6F 67   577 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000A60 00                     578 	.db	0
      000A61 00                     579 	.db	0
      000A62 2E 2F 73 72 63 2F 73   580 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      000A72 00                     581 	.db	0
      000A73 00                     582 	.uleb128	0
      000A74 00                     583 	.uleb128	0
      000A75 00                     584 	.uleb128	0
      000A76 00                     585 	.db	0
      000A77                        586 Ldebug_line_stmt:
      000A77 00                     587 	.db	0
      000A78 05                     588 	.uleb128	5
      000A79 02                     589 	.db	2
      000A7A 00 00 88 53            590 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$0)
      000A7E 03                     591 	.db	3
      000A7F 3E                     592 	.sleb128	62
      000A80 01                     593 	.db	1
      000A81 09                     594 	.db	9
      000A82 00 00                  595 	.dw	Sstm8s_it$TRAP_IRQHandler$2-Sstm8s_it$TRAP_IRQHandler$0
      000A84 03                     596 	.db	3
      000A85 05                     597 	.sleb128	5
      000A86 01                     598 	.db	1
      000A87 09                     599 	.db	9
      000A88 00 01                  600 	.dw	1+Sstm8s_it$TRAP_IRQHandler$3-Sstm8s_it$TRAP_IRQHandler$2
      000A8A 00                     601 	.db	0
      000A8B 01                     602 	.uleb128	1
      000A8C 01                     603 	.db	1
      000A8D 00                     604 	.db	0
      000A8E 05                     605 	.uleb128	5
      000A8F 02                     606 	.db	2
      000A90 00 00 88 54            607 	.dw	0,(Sstm8s_it$TLI_IRQHandler$5)
      000A94 03                     608 	.db	3
      000A95 C9 00                  609 	.sleb128	73
      000A97 01                     610 	.db	1
      000A98 09                     611 	.db	9
      000A99 00 00                  612 	.dw	Sstm8s_it$TLI_IRQHandler$7-Sstm8s_it$TLI_IRQHandler$5
      000A9B 03                     613 	.db	3
      000A9C 05                     614 	.sleb128	5
      000A9D 01                     615 	.db	1
      000A9E 09                     616 	.db	9
      000A9F 00 01                  617 	.dw	1+Sstm8s_it$TLI_IRQHandler$8-Sstm8s_it$TLI_IRQHandler$7
      000AA1 00                     618 	.db	0
      000AA2 01                     619 	.uleb128	1
      000AA3 01                     620 	.db	1
      000AA4 00                     621 	.db	0
      000AA5 05                     622 	.uleb128	5
      000AA6 02                     623 	.db	2
      000AA7 00 00 88 55            624 	.dw	0,(Sstm8s_it$AWU_IRQHandler$10)
      000AAB 03                     625 	.db	3
      000AAC D5 00                  626 	.sleb128	85
      000AAE 01                     627 	.db	1
      000AAF 09                     628 	.db	9
      000AB0 00 00                  629 	.dw	Sstm8s_it$AWU_IRQHandler$12-Sstm8s_it$AWU_IRQHandler$10
      000AB2 03                     630 	.db	3
      000AB3 05                     631 	.sleb128	5
      000AB4 01                     632 	.db	1
      000AB5 09                     633 	.db	9
      000AB6 00 01                  634 	.dw	1+Sstm8s_it$AWU_IRQHandler$13-Sstm8s_it$AWU_IRQHandler$12
      000AB8 00                     635 	.db	0
      000AB9 01                     636 	.uleb128	1
      000ABA 01                     637 	.db	1
      000ABB 00                     638 	.db	0
      000ABC 05                     639 	.uleb128	5
      000ABD 02                     640 	.db	2
      000ABE 00 00 88 56            641 	.dw	0,(Sstm8s_it$CLK_IRQHandler$15)
      000AC2 03                     642 	.db	3
      000AC3 E1 00                  643 	.sleb128	97
      000AC5 01                     644 	.db	1
      000AC6 09                     645 	.db	9
      000AC7 00 00                  646 	.dw	Sstm8s_it$CLK_IRQHandler$17-Sstm8s_it$CLK_IRQHandler$15
      000AC9 03                     647 	.db	3
      000ACA 05                     648 	.sleb128	5
      000ACB 01                     649 	.db	1
      000ACC 09                     650 	.db	9
      000ACD 00 01                  651 	.dw	1+Sstm8s_it$CLK_IRQHandler$18-Sstm8s_it$CLK_IRQHandler$17
      000ACF 00                     652 	.db	0
      000AD0 01                     653 	.uleb128	1
      000AD1 01                     654 	.db	1
      000AD2 00                     655 	.db	0
      000AD3 05                     656 	.uleb128	5
      000AD4 02                     657 	.db	2
      000AD5 00 00 88 57            658 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$20)
      000AD9 03                     659 	.db	3
      000ADA ED 00                  660 	.sleb128	109
      000ADC 01                     661 	.db	1
      000ADD 09                     662 	.db	9
      000ADE 00 00                  663 	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$22-Sstm8s_it$EXTI_PORTA_IRQHandler$20
      000AE0 03                     664 	.db	3
      000AE1 05                     665 	.sleb128	5
      000AE2 01                     666 	.db	1
      000AE3 09                     667 	.db	9
      000AE4 00 01                  668 	.dw	1+Sstm8s_it$EXTI_PORTA_IRQHandler$23-Sstm8s_it$EXTI_PORTA_IRQHandler$22
      000AE6 00                     669 	.db	0
      000AE7 01                     670 	.uleb128	1
      000AE8 01                     671 	.db	1
      000AE9 00                     672 	.db	0
      000AEA 05                     673 	.uleb128	5
      000AEB 02                     674 	.db	2
      000AEC 00 00 88 58            675 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$25)
      000AF0 03                     676 	.db	3
      000AF1 F9 00                  677 	.sleb128	121
      000AF3 01                     678 	.db	1
      000AF4 09                     679 	.db	9
      000AF5 00 00                  680 	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$27-Sstm8s_it$EXTI_PORTB_IRQHandler$25
      000AF7 03                     681 	.db	3
      000AF8 05                     682 	.sleb128	5
      000AF9 01                     683 	.db	1
      000AFA 09                     684 	.db	9
      000AFB 00 01                  685 	.dw	1+Sstm8s_it$EXTI_PORTB_IRQHandler$28-Sstm8s_it$EXTI_PORTB_IRQHandler$27
      000AFD 00                     686 	.db	0
      000AFE 01                     687 	.uleb128	1
      000AFF 01                     688 	.db	1
      000B00 00                     689 	.db	0
      000B01 05                     690 	.uleb128	5
      000B02 02                     691 	.db	2
      000B03 00 00 88 59            692 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$30)
      000B07 03                     693 	.db	3
      000B08 85 01                  694 	.sleb128	133
      000B0A 01                     695 	.db	1
      000B0B 09                     696 	.db	9
      000B0C 00 00                  697 	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$32-Sstm8s_it$EXTI_PORTC_IRQHandler$30
      000B0E 03                     698 	.db	3
      000B0F 05                     699 	.sleb128	5
      000B10 01                     700 	.db	1
      000B11 09                     701 	.db	9
      000B12 00 01                  702 	.dw	1+Sstm8s_it$EXTI_PORTC_IRQHandler$33-Sstm8s_it$EXTI_PORTC_IRQHandler$32
      000B14 00                     703 	.db	0
      000B15 01                     704 	.uleb128	1
      000B16 01                     705 	.db	1
      000B17 00                     706 	.db	0
      000B18 05                     707 	.uleb128	5
      000B19 02                     708 	.db	2
      000B1A 00 00 88 5A            709 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$35)
      000B1E 03                     710 	.db	3
      000B1F 91 01                  711 	.sleb128	145
      000B21 01                     712 	.db	1
      000B22 09                     713 	.db	9
      000B23 00 00                  714 	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$37-Sstm8s_it$EXTI_PORTD_IRQHandler$35
      000B25 03                     715 	.db	3
      000B26 05                     716 	.sleb128	5
      000B27 01                     717 	.db	1
      000B28 09                     718 	.db	9
      000B29 00 01                  719 	.dw	1+Sstm8s_it$EXTI_PORTD_IRQHandler$38-Sstm8s_it$EXTI_PORTD_IRQHandler$37
      000B2B 00                     720 	.db	0
      000B2C 01                     721 	.uleb128	1
      000B2D 01                     722 	.db	1
      000B2E 00                     723 	.db	0
      000B2F 05                     724 	.uleb128	5
      000B30 02                     725 	.db	2
      000B31 00 00 88 5B            726 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$40)
      000B35 03                     727 	.db	3
      000B36 9D 01                  728 	.sleb128	157
      000B38 01                     729 	.db	1
      000B39 09                     730 	.db	9
      000B3A 00 00                  731 	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$42-Sstm8s_it$EXTI_PORTE_IRQHandler$40
      000B3C 03                     732 	.db	3
      000B3D 05                     733 	.sleb128	5
      000B3E 01                     734 	.db	1
      000B3F 09                     735 	.db	9
      000B40 00 01                  736 	.dw	1+Sstm8s_it$EXTI_PORTE_IRQHandler$43-Sstm8s_it$EXTI_PORTE_IRQHandler$42
      000B42 00                     737 	.db	0
      000B43 01                     738 	.uleb128	1
      000B44 01                     739 	.db	1
      000B45 00                     740 	.db	0
      000B46 05                     741 	.uleb128	5
      000B47 02                     742 	.db	2
      000B48 00 00 88 5C            743 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$45)
      000B4C 03                     744 	.db	3
      000B4D B7 01                  745 	.sleb128	183
      000B4F 01                     746 	.db	1
      000B50 09                     747 	.db	9
      000B51 00 00                  748 	.dw	Sstm8s_it$CAN_RX_IRQHandler$47-Sstm8s_it$CAN_RX_IRQHandler$45
      000B53 03                     749 	.db	3
      000B54 05                     750 	.sleb128	5
      000B55 01                     751 	.db	1
      000B56 09                     752 	.db	9
      000B57 00 01                  753 	.dw	1+Sstm8s_it$CAN_RX_IRQHandler$48-Sstm8s_it$CAN_RX_IRQHandler$47
      000B59 00                     754 	.db	0
      000B5A 01                     755 	.uleb128	1
      000B5B 01                     756 	.db	1
      000B5C 00                     757 	.db	0
      000B5D 05                     758 	.uleb128	5
      000B5E 02                     759 	.db	2
      000B5F 00 00 88 5D            760 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$50)
      000B63 03                     761 	.db	3
      000B64 C3 01                  762 	.sleb128	195
      000B66 01                     763 	.db	1
      000B67 09                     764 	.db	9
      000B68 00 00                  765 	.dw	Sstm8s_it$CAN_TX_IRQHandler$52-Sstm8s_it$CAN_TX_IRQHandler$50
      000B6A 03                     766 	.db	3
      000B6B 05                     767 	.sleb128	5
      000B6C 01                     768 	.db	1
      000B6D 09                     769 	.db	9
      000B6E 00 01                  770 	.dw	1+Sstm8s_it$CAN_TX_IRQHandler$53-Sstm8s_it$CAN_TX_IRQHandler$52
      000B70 00                     771 	.db	0
      000B71 01                     772 	.uleb128	1
      000B72 01                     773 	.db	1
      000B73 00                     774 	.db	0
      000B74 05                     775 	.uleb128	5
      000B75 02                     776 	.db	2
      000B76 00 00 88 5E            777 	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
      000B7A 03                     778 	.db	3
      000B7B D0 01                  779 	.sleb128	208
      000B7D 01                     780 	.db	1
      000B7E 09                     781 	.db	9
      000B7F 00 00                  782 	.dw	Sstm8s_it$SPI_IRQHandler$57-Sstm8s_it$SPI_IRQHandler$55
      000B81 03                     783 	.db	3
      000B82 05                     784 	.sleb128	5
      000B83 01                     785 	.db	1
      000B84 09                     786 	.db	9
      000B85 00 01                  787 	.dw	1+Sstm8s_it$SPI_IRQHandler$58-Sstm8s_it$SPI_IRQHandler$57
      000B87 00                     788 	.db	0
      000B88 01                     789 	.uleb128	1
      000B89 01                     790 	.db	1
      000B8A 00                     791 	.db	0
      000B8B 05                     792 	.uleb128	5
      000B8C 02                     793 	.db	2
      000B8D 00 00 88 5F            794 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60)
      000B91 03                     795 	.db	3
      000B92 DC 01                  796 	.sleb128	220
      000B94 01                     797 	.db	1
      000B95 09                     798 	.db	9
      000B96 00 00                  799 	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60
      000B98 03                     800 	.db	3
      000B99 05                     801 	.sleb128	5
      000B9A 01                     802 	.db	1
      000B9B 09                     803 	.db	9
      000B9C 00 01                  804 	.dw	1+Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62
      000B9E 00                     805 	.db	0
      000B9F 01                     806 	.uleb128	1
      000BA0 01                     807 	.db	1
      000BA1 00                     808 	.db	0
      000BA2 05                     809 	.uleb128	5
      000BA3 02                     810 	.db	2
      000BA4 00 00 88 60            811 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$65)
      000BA8 03                     812 	.db	3
      000BA9 E8 01                  813 	.sleb128	232
      000BAB 01                     814 	.db	1
      000BAC 09                     815 	.db	9
      000BAD 00 00                  816 	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67-Sstm8s_it$TIM1_CAP_COM_IRQHandler$65
      000BAF 03                     817 	.db	3
      000BB0 05                     818 	.sleb128	5
      000BB1 01                     819 	.db	1
      000BB2 09                     820 	.db	9
      000BB3 00 01                  821 	.dw	1+Sstm8s_it$TIM1_CAP_COM_IRQHandler$68-Sstm8s_it$TIM1_CAP_COM_IRQHandler$67
      000BB5 00                     822 	.db	0
      000BB6 01                     823 	.uleb128	1
      000BB7 01                     824 	.db	1
      000BB8 00                     825 	.db	0
      000BB9 05                     826 	.uleb128	5
      000BBA 02                     827 	.db	2
      000BBB 00 00 88 61            828 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70)
      000BBF 03                     829 	.db	3
      000BC0 8D 02                  830 	.sleb128	269
      000BC2 01                     831 	.db	1
      000BC3 09                     832 	.db	9
      000BC4 00 00                  833 	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70
      000BC6 03                     834 	.db	3
      000BC7 05                     835 	.sleb128	5
      000BC8 01                     836 	.db	1
      000BC9 09                     837 	.db	9
      000BCA 00 01                  838 	.dw	1+Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72
      000BCC 00                     839 	.db	0
      000BCD 01                     840 	.uleb128	1
      000BCE 01                     841 	.db	1
      000BCF 00                     842 	.db	0
      000BD0 05                     843 	.uleb128	5
      000BD1 02                     844 	.db	2
      000BD2 00 00 88 62            845 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$75)
      000BD6 03                     846 	.db	3
      000BD7 99 02                  847 	.sleb128	281
      000BD9 01                     848 	.db	1
      000BDA 09                     849 	.db	9
      000BDB 00 00                  850 	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77-Sstm8s_it$TIM2_CAP_COM_IRQHandler$75
      000BDD 03                     851 	.db	3
      000BDE 05                     852 	.sleb128	5
      000BDF 01                     853 	.db	1
      000BE0 09                     854 	.db	9
      000BE1 00 01                  855 	.dw	1+Sstm8s_it$TIM2_CAP_COM_IRQHandler$78-Sstm8s_it$TIM2_CAP_COM_IRQHandler$77
      000BE3 00                     856 	.db	0
      000BE4 01                     857 	.uleb128	1
      000BE5 01                     858 	.db	1
      000BE6 00                     859 	.db	0
      000BE7 05                     860 	.uleb128	5
      000BE8 02                     861 	.db	2
      000BE9 00 00 88 63            862 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80)
      000BED 03                     863 	.db	3
      000BEE A8 02                  864 	.sleb128	296
      000BF0 01                     865 	.db	1
      000BF1 09                     866 	.db	9
      000BF2 00 00                  867 	.dw	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80
      000BF4 03                     868 	.db	3
      000BF5 05                     869 	.sleb128	5
      000BF6 01                     870 	.db	1
      000BF7 09                     871 	.db	9
      000BF8 00 01                  872 	.dw	1+Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82
      000BFA 00                     873 	.db	0
      000BFB 01                     874 	.uleb128	1
      000BFC 01                     875 	.db	1
      000BFD 00                     876 	.db	0
      000BFE 05                     877 	.uleb128	5
      000BFF 02                     878 	.db	2
      000C00 00 00 88 64            879 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$85)
      000C04 03                     880 	.db	3
      000C05 B4 02                  881 	.sleb128	308
      000C07 01                     882 	.db	1
      000C08 09                     883 	.db	9
      000C09 00 00                  884 	.dw	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87-Sstm8s_it$TIM3_CAP_COM_IRQHandler$85
      000C0B 03                     885 	.db	3
      000C0C 05                     886 	.sleb128	5
      000C0D 01                     887 	.db	1
      000C0E 09                     888 	.db	9
      000C0F 00 01                  889 	.dw	1+Sstm8s_it$TIM3_CAP_COM_IRQHandler$88-Sstm8s_it$TIM3_CAP_COM_IRQHandler$87
      000C11 00                     890 	.db	0
      000C12 01                     891 	.uleb128	1
      000C13 01                     892 	.db	1
      000C14 00                     893 	.db	0
      000C15 05                     894 	.uleb128	5
      000C16 02                     895 	.db	2
      000C17 00 00 88 65            896 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$90)
      000C1B 03                     897 	.db	3
      000C1C C3 02                  898 	.sleb128	323
      000C1E 01                     899 	.db	1
      000C1F 09                     900 	.db	9
      000C20 00 00                  901 	.dw	Sstm8s_it$UART1_TX_IRQHandler$92-Sstm8s_it$UART1_TX_IRQHandler$90
      000C22 03                     902 	.db	3
      000C23 05                     903 	.sleb128	5
      000C24 01                     904 	.db	1
      000C25 09                     905 	.db	9
      000C26 00 01                  906 	.dw	1+Sstm8s_it$UART1_TX_IRQHandler$93-Sstm8s_it$UART1_TX_IRQHandler$92
      000C28 00                     907 	.db	0
      000C29 01                     908 	.uleb128	1
      000C2A 01                     909 	.db	1
      000C2B 00                     910 	.db	0
      000C2C 05                     911 	.uleb128	5
      000C2D 02                     912 	.db	2
      000C2E 00 00 88 66            913 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$95)
      000C32 03                     914 	.db	3
      000C33 CF 02                  915 	.sleb128	335
      000C35 01                     916 	.db	1
      000C36 09                     917 	.db	9
      000C37 00 00                  918 	.dw	Sstm8s_it$UART1_RX_IRQHandler$97-Sstm8s_it$UART1_RX_IRQHandler$95
      000C39 03                     919 	.db	3
      000C3A 05                     920 	.sleb128	5
      000C3B 01                     921 	.db	1
      000C3C 09                     922 	.db	9
      000C3D 00 01                  923 	.dw	1+Sstm8s_it$UART1_RX_IRQHandler$98-Sstm8s_it$UART1_RX_IRQHandler$97
      000C3F 00                     924 	.db	0
      000C40 01                     925 	.uleb128	1
      000C41 01                     926 	.db	1
      000C42 00                     927 	.db	0
      000C43 05                     928 	.uleb128	5
      000C44 02                     929 	.db	2
      000C45 00 00 88 67            930 	.dw	0,(Sstm8s_it$I2C_IRQHandler$100)
      000C49 03                     931 	.db	3
      000C4A DC 02                  932 	.sleb128	348
      000C4C 01                     933 	.db	1
      000C4D 09                     934 	.db	9
      000C4E 00 00                  935 	.dw	Sstm8s_it$I2C_IRQHandler$102-Sstm8s_it$I2C_IRQHandler$100
      000C50 03                     936 	.db	3
      000C51 05                     937 	.sleb128	5
      000C52 01                     938 	.db	1
      000C53 09                     939 	.db	9
      000C54 00 01                  940 	.dw	1+Sstm8s_it$I2C_IRQHandler$103-Sstm8s_it$I2C_IRQHandler$102
      000C56 00                     941 	.db	0
      000C57 01                     942 	.uleb128	1
      000C58 01                     943 	.db	1
      000C59 00                     944 	.db	0
      000C5A 05                     945 	.uleb128	5
      000C5B 02                     946 	.db	2
      000C5C 00 00 88 68            947 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$105)
      000C60 03                     948 	.db	3
      000C61 83 03                  949 	.sleb128	387
      000C63 01                     950 	.db	1
      000C64 09                     951 	.db	9
      000C65 00 00                  952 	.dw	Sstm8s_it$UART3_TX_IRQHandler$107-Sstm8s_it$UART3_TX_IRQHandler$105
      000C67 03                     953 	.db	3
      000C68 05                     954 	.sleb128	5
      000C69 01                     955 	.db	1
      000C6A 09                     956 	.db	9
      000C6B 00 01                  957 	.dw	1+Sstm8s_it$UART3_TX_IRQHandler$108-Sstm8s_it$UART3_TX_IRQHandler$107
      000C6D 00                     958 	.db	0
      000C6E 01                     959 	.uleb128	1
      000C6F 01                     960 	.db	1
      000C70 00                     961 	.db	0
      000C71 05                     962 	.uleb128	5
      000C72 02                     963 	.db	2
      000C73 00 00 88 69            964 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$110)
      000C77 03                     965 	.db	3
      000C78 8F 03                  966 	.sleb128	399
      000C7A 01                     967 	.db	1
      000C7B 09                     968 	.db	9
      000C7C 00 00                  969 	.dw	Sstm8s_it$UART3_RX_IRQHandler$112-Sstm8s_it$UART3_RX_IRQHandler$110
      000C7E 03                     970 	.db	3
      000C7F 05                     971 	.sleb128	5
      000C80 01                     972 	.db	1
      000C81 09                     973 	.db	9
      000C82 00 01                  974 	.dw	1+Sstm8s_it$UART3_RX_IRQHandler$113-Sstm8s_it$UART3_RX_IRQHandler$112
      000C84 00                     975 	.db	0
      000C85 01                     976 	.uleb128	1
      000C86 01                     977 	.db	1
      000C87 00                     978 	.db	0
      000C88 05                     979 	.uleb128	5
      000C89 02                     980 	.db	2
      000C8A 00 00 88 6A            981 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$115)
      000C8E 03                     982 	.db	3
      000C8F 9D 03                  983 	.sleb128	413
      000C91 01                     984 	.db	1
      000C92 09                     985 	.db	9
      000C93 00 00                  986 	.dw	Sstm8s_it$ADC2_IRQHandler$117-Sstm8s_it$ADC2_IRQHandler$115
      000C95 03                     987 	.db	3
      000C96 06                     988 	.sleb128	6
      000C97 01                     989 	.db	1
      000C98 09                     990 	.db	9
      000C99 00 00                  991 	.dw	Sstm8s_it$ADC2_IRQHandler$118-Sstm8s_it$ADC2_IRQHandler$117
      000C9B 03                     992 	.db	3
      000C9C 02                     993 	.sleb128	2
      000C9D 01                     994 	.db	1
      000C9E 09                     995 	.db	9
      000C9F 00 01                  996 	.dw	1+Sstm8s_it$ADC2_IRQHandler$119-Sstm8s_it$ADC2_IRQHandler$118
      000CA1 00                     997 	.db	0
      000CA2 01                     998 	.uleb128	1
      000CA3 01                     999 	.db	1
      000CA4 00                    1000 	.db	0
      000CA5 05                    1001 	.uleb128	5
      000CA6 02                    1002 	.db	2
      000CA7 00 00 88 6B           1003 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$121)
      000CAB 03                    1004 	.db	3
      000CAC D6 03                 1005 	.sleb128	470
      000CAE 01                    1006 	.db	1
      000CAF 09                    1007 	.db	9
      000CB0 00 00                 1008 	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$123-Sstm8s_it$EEPROM_EEC_IRQHandler$121
      000CB2 03                    1009 	.db	3
      000CB3 05                    1010 	.sleb128	5
      000CB4 01                    1011 	.db	1
      000CB5 09                    1012 	.db	9
      000CB6 00 01                 1013 	.dw	1+Sstm8s_it$EEPROM_EEC_IRQHandler$124-Sstm8s_it$EEPROM_EEC_IRQHandler$123
      000CB8 00                    1014 	.db	0
      000CB9 01                    1015 	.uleb128	1
      000CBA 01                    1016 	.db	1
      000CBB                       1017 Ldebug_line_end:
                                   1018 
                                   1019 	.area .debug_loc (NOLOAD)
      00141C                       1020 Ldebug_loc_start:
      00141C 00 00 88 6B           1021 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      001420 00 00 88 6C           1022 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$125)
      001424 00 02                 1023 	.dw	2
      001426 78                    1024 	.db	120
      001427 01                    1025 	.sleb128	1
      001428 00 00 00 00           1026 	.dw	0,0
      00142C 00 00 00 00           1027 	.dw	0,0
      001430 00 00 88 6A           1028 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      001434 00 00 88 6B           1029 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$120)
      001438 00 02                 1030 	.dw	2
      00143A 78                    1031 	.db	120
      00143B 01                    1032 	.sleb128	1
      00143C 00 00 00 00           1033 	.dw	0,0
      001440 00 00 00 00           1034 	.dw	0,0
      001444 00 00 88 69           1035 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      001448 00 00 88 6A           1036 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$114)
      00144C 00 02                 1037 	.dw	2
      00144E 78                    1038 	.db	120
      00144F 01                    1039 	.sleb128	1
      001450 00 00 00 00           1040 	.dw	0,0
      001454 00 00 00 00           1041 	.dw	0,0
      001458 00 00 88 68           1042 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      00145C 00 00 88 69           1043 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$109)
      001460 00 02                 1044 	.dw	2
      001462 78                    1045 	.db	120
      001463 01                    1046 	.sleb128	1
      001464 00 00 00 00           1047 	.dw	0,0
      001468 00 00 00 00           1048 	.dw	0,0
      00146C 00 00 88 67           1049 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      001470 00 00 88 68           1050 	.dw	0,(Sstm8s_it$I2C_IRQHandler$104)
      001474 00 02                 1051 	.dw	2
      001476 78                    1052 	.db	120
      001477 01                    1053 	.sleb128	1
      001478 00 00 00 00           1054 	.dw	0,0
      00147C 00 00 00 00           1055 	.dw	0,0
      001480 00 00 88 66           1056 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      001484 00 00 88 67           1057 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$99)
      001488 00 02                 1058 	.dw	2
      00148A 78                    1059 	.db	120
      00148B 01                    1060 	.sleb128	1
      00148C 00 00 00 00           1061 	.dw	0,0
      001490 00 00 00 00           1062 	.dw	0,0
      001494 00 00 88 65           1063 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      001498 00 00 88 66           1064 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$94)
      00149C 00 02                 1065 	.dw	2
      00149E 78                    1066 	.db	120
      00149F 01                    1067 	.sleb128	1
      0014A0 00 00 00 00           1068 	.dw	0,0
      0014A4 00 00 00 00           1069 	.dw	0,0
      0014A8 00 00 88 64           1070 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      0014AC 00 00 88 65           1071 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$89)
      0014B0 00 02                 1072 	.dw	2
      0014B2 78                    1073 	.db	120
      0014B3 01                    1074 	.sleb128	1
      0014B4 00 00 00 00           1075 	.dw	0,0
      0014B8 00 00 00 00           1076 	.dw	0,0
      0014BC 00 00 88 63           1077 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      0014C0 00 00 88 64           1078 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84)
      0014C4 00 02                 1079 	.dw	2
      0014C6 78                    1080 	.db	120
      0014C7 01                    1081 	.sleb128	1
      0014C8 00 00 00 00           1082 	.dw	0,0
      0014CC 00 00 00 00           1083 	.dw	0,0
      0014D0 00 00 88 62           1084 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      0014D4 00 00 88 63           1085 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
      0014D8 00 02                 1086 	.dw	2
      0014DA 78                    1087 	.db	120
      0014DB 01                    1088 	.sleb128	1
      0014DC 00 00 00 00           1089 	.dw	0,0
      0014E0 00 00 00 00           1090 	.dw	0,0
      0014E4 00 00 88 61           1091 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      0014E8 00 00 88 62           1092 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74)
      0014EC 00 02                 1093 	.dw	2
      0014EE 78                    1094 	.db	120
      0014EF 01                    1095 	.sleb128	1
      0014F0 00 00 00 00           1096 	.dw	0,0
      0014F4 00 00 00 00           1097 	.dw	0,0
      0014F8 00 00 88 60           1098 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      0014FC 00 00 88 61           1099 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$69)
      001500 00 02                 1100 	.dw	2
      001502 78                    1101 	.db	120
      001503 01                    1102 	.sleb128	1
      001504 00 00 00 00           1103 	.dw	0,0
      001508 00 00 00 00           1104 	.dw	0,0
      00150C 00 00 88 5F           1105 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      001510 00 00 88 60           1106 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64)
      001514 00 02                 1107 	.dw	2
      001516 78                    1108 	.db	120
      001517 01                    1109 	.sleb128	1
      001518 00 00 00 00           1110 	.dw	0,0
      00151C 00 00 00 00           1111 	.dw	0,0
      001520 00 00 88 5E           1112 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      001524 00 00 88 5F           1113 	.dw	0,(Sstm8s_it$SPI_IRQHandler$59)
      001528 00 02                 1114 	.dw	2
      00152A 78                    1115 	.db	120
      00152B 01                    1116 	.sleb128	1
      00152C 00 00 00 00           1117 	.dw	0,0
      001530 00 00 00 00           1118 	.dw	0,0
      001534 00 00 88 5D           1119 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      001538 00 00 88 5E           1120 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$54)
      00153C 00 02                 1121 	.dw	2
      00153E 78                    1122 	.db	120
      00153F 01                    1123 	.sleb128	1
      001540 00 00 00 00           1124 	.dw	0,0
      001544 00 00 00 00           1125 	.dw	0,0
      001548 00 00 88 5C           1126 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      00154C 00 00 88 5D           1127 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$49)
      001550 00 02                 1128 	.dw	2
      001552 78                    1129 	.db	120
      001553 01                    1130 	.sleb128	1
      001554 00 00 00 00           1131 	.dw	0,0
      001558 00 00 00 00           1132 	.dw	0,0
      00155C 00 00 88 5B           1133 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      001560 00 00 88 5C           1134 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$44)
      001564 00 02                 1135 	.dw	2
      001566 78                    1136 	.db	120
      001567 01                    1137 	.sleb128	1
      001568 00 00 00 00           1138 	.dw	0,0
      00156C 00 00 00 00           1139 	.dw	0,0
      001570 00 00 88 5A           1140 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      001574 00 00 88 5B           1141 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$39)
      001578 00 02                 1142 	.dw	2
      00157A 78                    1143 	.db	120
      00157B 01                    1144 	.sleb128	1
      00157C 00 00 00 00           1145 	.dw	0,0
      001580 00 00 00 00           1146 	.dw	0,0
      001584 00 00 88 59           1147 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      001588 00 00 88 5A           1148 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$34)
      00158C 00 02                 1149 	.dw	2
      00158E 78                    1150 	.db	120
      00158F 01                    1151 	.sleb128	1
      001590 00 00 00 00           1152 	.dw	0,0
      001594 00 00 00 00           1153 	.dw	0,0
      001598 00 00 88 58           1154 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      00159C 00 00 88 59           1155 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$29)
      0015A0 00 02                 1156 	.dw	2
      0015A2 78                    1157 	.db	120
      0015A3 01                    1158 	.sleb128	1
      0015A4 00 00 00 00           1159 	.dw	0,0
      0015A8 00 00 00 00           1160 	.dw	0,0
      0015AC 00 00 88 57           1161 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      0015B0 00 00 88 58           1162 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$24)
      0015B4 00 02                 1163 	.dw	2
      0015B6 78                    1164 	.db	120
      0015B7 01                    1165 	.sleb128	1
      0015B8 00 00 00 00           1166 	.dw	0,0
      0015BC 00 00 00 00           1167 	.dw	0,0
      0015C0 00 00 88 56           1168 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      0015C4 00 00 88 57           1169 	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
      0015C8 00 02                 1170 	.dw	2
      0015CA 78                    1171 	.db	120
      0015CB 01                    1172 	.sleb128	1
      0015CC 00 00 00 00           1173 	.dw	0,0
      0015D0 00 00 00 00           1174 	.dw	0,0
      0015D4 00 00 88 55           1175 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      0015D8 00 00 88 56           1176 	.dw	0,(Sstm8s_it$AWU_IRQHandler$14)
      0015DC 00 02                 1177 	.dw	2
      0015DE 78                    1178 	.db	120
      0015DF 01                    1179 	.sleb128	1
      0015E0 00 00 00 00           1180 	.dw	0,0
      0015E4 00 00 00 00           1181 	.dw	0,0
      0015E8 00 00 88 54           1182 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      0015EC 00 00 88 55           1183 	.dw	0,(Sstm8s_it$TLI_IRQHandler$9)
      0015F0 00 02                 1184 	.dw	2
      0015F2 78                    1185 	.db	120
      0015F3 01                    1186 	.sleb128	1
      0015F4 00 00 00 00           1187 	.dw	0,0
      0015F8 00 00 00 00           1188 	.dw	0,0
      0015FC 00 00 88 53           1189 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      001600 00 00 88 54           1190 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$4)
      001604 00 02                 1191 	.dw	2
      001606 78                    1192 	.db	120
      001607 01                    1193 	.sleb128	1
      001608 00 00 00 00           1194 	.dw	0,0
      00160C 00 00 00 00           1195 	.dw	0,0
                                   1196 
                                   1197 	.area .debug_abbrev (NOLOAD)
      000265                       1198 Ldebug_abbrev:
      000265 01                    1199 	.uleb128	1
      000266 11                    1200 	.uleb128	17
      000267 01                    1201 	.db	1
      000268 03                    1202 	.uleb128	3
      000269 08                    1203 	.uleb128	8
      00026A 10                    1204 	.uleb128	16
      00026B 06                    1205 	.uleb128	6
      00026C 13                    1206 	.uleb128	19
      00026D 0B                    1207 	.uleb128	11
      00026E 25                    1208 	.uleb128	37
      00026F 08                    1209 	.uleb128	8
      000270 00                    1210 	.uleb128	0
      000271 00                    1211 	.uleb128	0
      000272 02                    1212 	.uleb128	2
      000273 2E                    1213 	.uleb128	46
      000274 00                    1214 	.db	0
      000275 03                    1215 	.uleb128	3
      000276 08                    1216 	.uleb128	8
      000277 11                    1217 	.uleb128	17
      000278 01                    1218 	.uleb128	1
      000279 12                    1219 	.uleb128	18
      00027A 01                    1220 	.uleb128	1
      00027B 36                    1221 	.uleb128	54
      00027C 0B                    1222 	.uleb128	11
      00027D 3F                    1223 	.uleb128	63
      00027E 0C                    1224 	.uleb128	12
      00027F 40                    1225 	.uleb128	64
      000280 06                    1226 	.uleb128	6
      000281 00                    1227 	.uleb128	0
      000282 00                    1228 	.uleb128	0
      000283 00                    1229 	.uleb128	0
                                   1230 
                                   1231 	.area .debug_info (NOLOAD)
      0010DE 00 00 03 B5           1232 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0010E2                       1233 Ldebug_info_start:
      0010E2 00 02                 1234 	.dw	2
      0010E4 00 00 02 65           1235 	.dw	0,(Ldebug_abbrev)
      0010E8 04                    1236 	.db	4
      0010E9 01                    1237 	.uleb128	1
      0010EA 2E 2F 73 72 63 2F 73  1238 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      0010FA 00                    1239 	.db	0
      0010FB 00 00 09 FC           1240 	.dw	0,(Ldebug_line_start+-4)
      0010FF 01                    1241 	.db	1
      001100 53 44 43 43 20 76 65  1242 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001119 00                    1243 	.db	0
      00111A 02                    1244 	.uleb128	2
      00111B 54 52 41 50 5F 49 52  1245 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      00112A 00                    1246 	.db	0
      00112B 00 00 88 53           1247 	.dw	0,(_TRAP_IRQHandler)
      00112F 00 00 88 54           1248 	.dw	0,(XG$TRAP_IRQHandler$0$0+1)
      001133 03                    1249 	.db	3
      001134 01                    1250 	.db	1
      001135 00 00 15 FC           1251 	.dw	0,(Ldebug_loc_start+480)
      001139 02                    1252 	.uleb128	2
      00113A 54 4C 49 5F 49 52 51  1253 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      001148 00                    1254 	.db	0
      001149 00 00 88 54           1255 	.dw	0,(_TLI_IRQHandler)
      00114D 00 00 88 55           1256 	.dw	0,(XG$TLI_IRQHandler$0$0+1)
      001151 03                    1257 	.db	3
      001152 01                    1258 	.db	1
      001153 00 00 15 E8           1259 	.dw	0,(Ldebug_loc_start+460)
      001157 02                    1260 	.uleb128	2
      001158 41 57 55 5F 49 52 51  1261 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      001166 00                    1262 	.db	0
      001167 00 00 88 55           1263 	.dw	0,(_AWU_IRQHandler)
      00116B 00 00 88 56           1264 	.dw	0,(XG$AWU_IRQHandler$0$0+1)
      00116F 03                    1265 	.db	3
      001170 01                    1266 	.db	1
      001171 00 00 15 D4           1267 	.dw	0,(Ldebug_loc_start+440)
      001175 02                    1268 	.uleb128	2
      001176 43 4C 4B 5F 49 52 51  1269 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      001184 00                    1270 	.db	0
      001185 00 00 88 56           1271 	.dw	0,(_CLK_IRQHandler)
      001189 00 00 88 57           1272 	.dw	0,(XG$CLK_IRQHandler$0$0+1)
      00118D 03                    1273 	.db	3
      00118E 01                    1274 	.db	1
      00118F 00 00 15 C0           1275 	.dw	0,(Ldebug_loc_start+420)
      001193 02                    1276 	.uleb128	2
      001194 45 58 54 49 5F 50 4F  1277 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      0011A9 00                    1278 	.db	0
      0011AA 00 00 88 57           1279 	.dw	0,(_EXTI_PORTA_IRQHandler)
      0011AE 00 00 88 58           1280 	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
      0011B2 03                    1281 	.db	3
      0011B3 01                    1282 	.db	1
      0011B4 00 00 15 AC           1283 	.dw	0,(Ldebug_loc_start+400)
      0011B8 02                    1284 	.uleb128	2
      0011B9 45 58 54 49 5F 50 4F  1285 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      0011CE 00                    1286 	.db	0
      0011CF 00 00 88 58           1287 	.dw	0,(_EXTI_PORTB_IRQHandler)
      0011D3 00 00 88 59           1288 	.dw	0,(XG$EXTI_PORTB_IRQHandler$0$0+1)
      0011D7 03                    1289 	.db	3
      0011D8 01                    1290 	.db	1
      0011D9 00 00 15 98           1291 	.dw	0,(Ldebug_loc_start+380)
      0011DD 02                    1292 	.uleb128	2
      0011DE 45 58 54 49 5F 50 4F  1293 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      0011F3 00                    1294 	.db	0
      0011F4 00 00 88 59           1295 	.dw	0,(_EXTI_PORTC_IRQHandler)
      0011F8 00 00 88 5A           1296 	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
      0011FC 03                    1297 	.db	3
      0011FD 01                    1298 	.db	1
      0011FE 00 00 15 84           1299 	.dw	0,(Ldebug_loc_start+360)
      001202 02                    1300 	.uleb128	2
      001203 45 58 54 49 5F 50 4F  1301 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      001218 00                    1302 	.db	0
      001219 00 00 88 5A           1303 	.dw	0,(_EXTI_PORTD_IRQHandler)
      00121D 00 00 88 5B           1304 	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
      001221 03                    1305 	.db	3
      001222 01                    1306 	.db	1
      001223 00 00 15 70           1307 	.dw	0,(Ldebug_loc_start+340)
      001227 02                    1308 	.uleb128	2
      001228 45 58 54 49 5F 50 4F  1309 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      00123D 00                    1310 	.db	0
      00123E 00 00 88 5B           1311 	.dw	0,(_EXTI_PORTE_IRQHandler)
      001242 00 00 88 5C           1312 	.dw	0,(XG$EXTI_PORTE_IRQHandler$0$0+1)
      001246 03                    1313 	.db	3
      001247 01                    1314 	.db	1
      001248 00 00 15 5C           1315 	.dw	0,(Ldebug_loc_start+320)
      00124C 02                    1316 	.uleb128	2
      00124D 43 41 4E 5F 52 58 5F  1317 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00125E 00                    1318 	.db	0
      00125F 00 00 88 5C           1319 	.dw	0,(_CAN_RX_IRQHandler)
      001263 00 00 88 5D           1320 	.dw	0,(XG$CAN_RX_IRQHandler$0$0+1)
      001267 03                    1321 	.db	3
      001268 01                    1322 	.db	1
      001269 00 00 15 48           1323 	.dw	0,(Ldebug_loc_start+300)
      00126D 02                    1324 	.uleb128	2
      00126E 43 41 4E 5F 54 58 5F  1325 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00127F 00                    1326 	.db	0
      001280 00 00 88 5D           1327 	.dw	0,(_CAN_TX_IRQHandler)
      001284 00 00 88 5E           1328 	.dw	0,(XG$CAN_TX_IRQHandler$0$0+1)
      001288 03                    1329 	.db	3
      001289 01                    1330 	.db	1
      00128A 00 00 15 34           1331 	.dw	0,(Ldebug_loc_start+280)
      00128E 02                    1332 	.uleb128	2
      00128F 53 50 49 5F 49 52 51  1333 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      00129D 00                    1334 	.db	0
      00129E 00 00 88 5E           1335 	.dw	0,(_SPI_IRQHandler)
      0012A2 00 00 88 5F           1336 	.dw	0,(XG$SPI_IRQHandler$0$0+1)
      0012A6 03                    1337 	.db	3
      0012A7 01                    1338 	.db	1
      0012A8 00 00 15 20           1339 	.dw	0,(Ldebug_loc_start+260)
      0012AC 02                    1340 	.uleb128	2
      0012AD 54 49 4D 31 5F 55 50  1341 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      0012CC 00                    1342 	.db	0
      0012CD 00 00 88 5F           1343 	.dw	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
      0012D1 00 00 88 60           1344 	.dw	0,(XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0+1)
      0012D5 03                    1345 	.db	3
      0012D6 01                    1346 	.db	1
      0012D7 00 00 15 0C           1347 	.dw	0,(Ldebug_loc_start+240)
      0012DB 02                    1348 	.uleb128	2
      0012DC 54 49 4D 31 5F 43 41  1349 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0012F3 00                    1350 	.db	0
      0012F4 00 00 88 60           1351 	.dw	0,(_TIM1_CAP_COM_IRQHandler)
      0012F8 00 00 88 61           1352 	.dw	0,(XG$TIM1_CAP_COM_IRQHandler$0$0+1)
      0012FC 03                    1353 	.db	3
      0012FD 01                    1354 	.db	1
      0012FE 00 00 14 F8           1355 	.dw	0,(Ldebug_loc_start+220)
      001302 02                    1356 	.uleb128	2
      001303 54 49 4D 32 5F 55 50  1357 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      00131E 00                    1358 	.db	0
      00131F 00 00 88 61           1359 	.dw	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
      001323 00 00 88 62           1360 	.dw	0,(XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0+1)
      001327 03                    1361 	.db	3
      001328 01                    1362 	.db	1
      001329 00 00 14 E4           1363 	.dw	0,(Ldebug_loc_start+200)
      00132D 02                    1364 	.uleb128	2
      00132E 54 49 4D 32 5F 43 41  1365 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      001345 00                    1366 	.db	0
      001346 00 00 88 62           1367 	.dw	0,(_TIM2_CAP_COM_IRQHandler)
      00134A 00 00 88 63           1368 	.dw	0,(XG$TIM2_CAP_COM_IRQHandler$0$0+1)
      00134E 03                    1369 	.db	3
      00134F 01                    1370 	.db	1
      001350 00 00 14 D0           1371 	.dw	0,(Ldebug_loc_start+180)
      001354 02                    1372 	.uleb128	2
      001355 54 49 4D 33 5F 55 50  1373 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      001370 00                    1374 	.db	0
      001371 00 00 88 63           1375 	.dw	0,(_TIM3_UPD_OVF_BRK_IRQHandler)
      001375 00 00 88 64           1376 	.dw	0,(XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0+1)
      001379 03                    1377 	.db	3
      00137A 01                    1378 	.db	1
      00137B 00 00 14 BC           1379 	.dw	0,(Ldebug_loc_start+160)
      00137F 02                    1380 	.uleb128	2
      001380 54 49 4D 33 5F 43 41  1381 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      001397 00                    1382 	.db	0
      001398 00 00 88 64           1383 	.dw	0,(_TIM3_CAP_COM_IRQHandler)
      00139C 00 00 88 65           1384 	.dw	0,(XG$TIM3_CAP_COM_IRQHandler$0$0+1)
      0013A0 03                    1385 	.db	3
      0013A1 01                    1386 	.db	1
      0013A2 00 00 14 A8           1387 	.dw	0,(Ldebug_loc_start+140)
      0013A6 02                    1388 	.uleb128	2
      0013A7 55 41 52 54 31 5F 54  1389 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0013BA 00                    1390 	.db	0
      0013BB 00 00 88 65           1391 	.dw	0,(_UART1_TX_IRQHandler)
      0013BF 00 00 88 66           1392 	.dw	0,(XG$UART1_TX_IRQHandler$0$0+1)
      0013C3 03                    1393 	.db	3
      0013C4 01                    1394 	.db	1
      0013C5 00 00 14 94           1395 	.dw	0,(Ldebug_loc_start+120)
      0013C9 02                    1396 	.uleb128	2
      0013CA 55 41 52 54 31 5F 52  1397 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0013DD 00                    1398 	.db	0
      0013DE 00 00 88 66           1399 	.dw	0,(_UART1_RX_IRQHandler)
      0013E2 00 00 88 67           1400 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      0013E6 03                    1401 	.db	3
      0013E7 01                    1402 	.db	1
      0013E8 00 00 14 80           1403 	.dw	0,(Ldebug_loc_start+100)
      0013EC 02                    1404 	.uleb128	2
      0013ED 49 32 43 5F 49 52 51  1405 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      0013FB 00                    1406 	.db	0
      0013FC 00 00 88 67           1407 	.dw	0,(_I2C_IRQHandler)
      001400 00 00 88 68           1408 	.dw	0,(XG$I2C_IRQHandler$0$0+1)
      001404 03                    1409 	.db	3
      001405 01                    1410 	.db	1
      001406 00 00 14 6C           1411 	.dw	0,(Ldebug_loc_start+80)
      00140A 02                    1412 	.uleb128	2
      00140B 55 41 52 54 33 5F 54  1413 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00141E 00                    1414 	.db	0
      00141F 00 00 88 68           1415 	.dw	0,(_UART3_TX_IRQHandler)
      001423 00 00 88 69           1416 	.dw	0,(XG$UART3_TX_IRQHandler$0$0+1)
      001427 03                    1417 	.db	3
      001428 01                    1418 	.db	1
      001429 00 00 14 58           1419 	.dw	0,(Ldebug_loc_start+60)
      00142D 02                    1420 	.uleb128	2
      00142E 55 41 52 54 33 5F 52  1421 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001441 00                    1422 	.db	0
      001442 00 00 88 69           1423 	.dw	0,(_UART3_RX_IRQHandler)
      001446 00 00 88 6A           1424 	.dw	0,(XG$UART3_RX_IRQHandler$0$0+1)
      00144A 03                    1425 	.db	3
      00144B 01                    1426 	.db	1
      00144C 00 00 14 44           1427 	.dw	0,(Ldebug_loc_start+40)
      001450 02                    1428 	.uleb128	2
      001451 41 44 43 32 5F 49 52  1429 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      001460 00                    1430 	.db	0
      001461 00 00 88 6A           1431 	.dw	0,(_ADC2_IRQHandler)
      001465 00 00 88 6B           1432 	.dw	0,(XG$ADC2_IRQHandler$0$0+1)
      001469 03                    1433 	.db	3
      00146A 01                    1434 	.db	1
      00146B 00 00 14 30           1435 	.dw	0,(Ldebug_loc_start+20)
      00146F 02                    1436 	.uleb128	2
      001470 45 45 50 52 4F 4D 5F  1437 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      001485 00                    1438 	.db	0
      001486 00 00 88 6B           1439 	.dw	0,(_EEPROM_EEC_IRQHandler)
      00148A 00 00 88 6C           1440 	.dw	0,(XG$EEPROM_EEC_IRQHandler$0$0+1)
      00148E 03                    1441 	.db	3
      00148F 01                    1442 	.db	1
      001490 00 00 14 1C           1443 	.dw	0,(Ldebug_loc_start)
      001494 00                    1444 	.uleb128	0
      001495 00                    1445 	.uleb128	0
      001496 00                    1446 	.uleb128	0
      001497                       1447 Ldebug_info_end:
                                   1448 
                                   1449 	.area .debug_pubnames (NOLOAD)
      000219 00 00 02 75           1450 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00021D                       1451 Ldebug_pubnames_start:
      00021D 00 02                 1452 	.dw	2
      00021F 00 00 10 DE           1453 	.dw	0,(Ldebug_info_start-4)
      000223 00 00 03 B9           1454 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000227 00 00 00 3C           1455 	.dw	0,60
      00022B 54 52 41 50 5F 49 52  1456 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      00023A 00                    1457 	.db	0
      00023B 00 00 00 5B           1458 	.dw	0,91
      00023F 54 4C 49 5F 49 52 51  1459 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      00024D 00                    1460 	.db	0
      00024E 00 00 00 79           1461 	.dw	0,121
      000252 41 57 55 5F 49 52 51  1462 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      000260 00                    1463 	.db	0
      000261 00 00 00 97           1464 	.dw	0,151
      000265 43 4C 4B 5F 49 52 51  1465 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      000273 00                    1466 	.db	0
      000274 00 00 00 B5           1467 	.dw	0,181
      000278 45 58 54 49 5F 50 4F  1468 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      00028D 00                    1469 	.db	0
      00028E 00 00 00 DA           1470 	.dw	0,218
      000292 45 58 54 49 5F 50 4F  1471 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002A7 00                    1472 	.db	0
      0002A8 00 00 00 FF           1473 	.dw	0,255
      0002AC 45 58 54 49 5F 50 4F  1474 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002C1 00                    1475 	.db	0
      0002C2 00 00 01 24           1476 	.dw	0,292
      0002C6 45 58 54 49 5F 50 4F  1477 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002DB 00                    1478 	.db	0
      0002DC 00 00 01 49           1479 	.dw	0,329
      0002E0 45 58 54 49 5F 50 4F  1480 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002F5 00                    1481 	.db	0
      0002F6 00 00 01 6E           1482 	.dw	0,366
      0002FA 43 41 4E 5F 52 58 5F  1483 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00030B 00                    1484 	.db	0
      00030C 00 00 01 8F           1485 	.dw	0,399
      000310 43 41 4E 5F 54 58 5F  1486 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      000321 00                    1487 	.db	0
      000322 00 00 01 B0           1488 	.dw	0,432
      000326 53 50 49 5F 49 52 51  1489 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      000334 00                    1490 	.db	0
      000335 00 00 01 CE           1491 	.dw	0,462
      000339 54 49 4D 31 5F 55 50  1492 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      000358 00                    1493 	.db	0
      000359 00 00 01 FD           1494 	.dw	0,509
      00035D 54 49 4D 31 5F 43 41  1495 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000374 00                    1496 	.db	0
      000375 00 00 02 24           1497 	.dw	0,548
      000379 54 49 4D 32 5F 55 50  1498 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      000394 00                    1499 	.db	0
      000395 00 00 02 4F           1500 	.dw	0,591
      000399 54 49 4D 32 5F 43 41  1501 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003B0 00                    1502 	.db	0
      0003B1 00 00 02 76           1503 	.dw	0,630
      0003B5 54 49 4D 33 5F 55 50  1504 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0003D0 00                    1505 	.db	0
      0003D1 00 00 02 A1           1506 	.dw	0,673
      0003D5 54 49 4D 33 5F 43 41  1507 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003EC 00                    1508 	.db	0
      0003ED 00 00 02 C8           1509 	.dw	0,712
      0003F1 55 41 52 54 31 5F 54  1510 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000404 00                    1511 	.db	0
      000405 00 00 02 EB           1512 	.dw	0,747
      000409 55 41 52 54 31 5F 52  1513 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00041C 00                    1514 	.db	0
      00041D 00 00 03 0E           1515 	.dw	0,782
      000421 49 32 43 5F 49 52 51  1516 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      00042F 00                    1517 	.db	0
      000430 00 00 03 2C           1518 	.dw	0,812
      000434 55 41 52 54 33 5F 54  1519 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000447 00                    1520 	.db	0
      000448 00 00 03 4F           1521 	.dw	0,847
      00044C 55 41 52 54 33 5F 52  1522 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00045F 00                    1523 	.db	0
      000460 00 00 03 72           1524 	.dw	0,882
      000464 41 44 43 32 5F 49 52  1525 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000473 00                    1526 	.db	0
      000474 00 00 03 91           1527 	.dw	0,913
      000478 45 45 50 52 4F 4D 5F  1528 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00048D 00                    1529 	.db	0
      00048E 00 00 00 00           1530 	.dw	0,0
      000492                       1531 Ldebug_pubnames_end:
                                   1532 
                                   1533 	.area .debug_frame (NOLOAD)
      000F83 00 00                 1534 	.dw	0
      000F85 00 0E                 1535 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000F87                       1536 Ldebug_CIE0_start:
      000F87 FF FF                 1537 	.dw	0xffff
      000F89 FF FF                 1538 	.dw	0xffff
      000F8B 01                    1539 	.db	1
      000F8C 00                    1540 	.db	0
      000F8D 01                    1541 	.uleb128	1
      000F8E 7F                    1542 	.sleb128	-1
      000F8F 09                    1543 	.db	9
      000F90 0C                    1544 	.db	12
      000F91 08                    1545 	.uleb128	8
      000F92 09                    1546 	.uleb128	9
      000F93 89                    1547 	.db	137
      000F94 01                    1548 	.uleb128	1
      000F95                       1549 Ldebug_CIE0_end:
      000F95 00 00 00 13           1550 	.dw	0,19
      000F99 00 00 0F 83           1551 	.dw	0,(Ldebug_CIE0_start-4)
      000F9D 00 00 88 6B           1552 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)	;initial loc
      000FA1 00 00 00 01           1553 	.dw	0,Sstm8s_it$EEPROM_EEC_IRQHandler$125-Sstm8s_it$EEPROM_EEC_IRQHandler$122
      000FA5 01                    1554 	.db	1
      000FA6 00 00 88 6B           1555 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      000FAA 0E                    1556 	.db	14
      000FAB 09                    1557 	.uleb128	9
                                   1558 
                                   1559 	.area .debug_frame (NOLOAD)
      000FAC 00 00                 1560 	.dw	0
      000FAE 00 0E                 1561 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000FB0                       1562 Ldebug_CIE1_start:
      000FB0 FF FF                 1563 	.dw	0xffff
      000FB2 FF FF                 1564 	.dw	0xffff
      000FB4 01                    1565 	.db	1
      000FB5 00                    1566 	.db	0
      000FB6 01                    1567 	.uleb128	1
      000FB7 7F                    1568 	.sleb128	-1
      000FB8 09                    1569 	.db	9
      000FB9 0C                    1570 	.db	12
      000FBA 08                    1571 	.uleb128	8
      000FBB 09                    1572 	.uleb128	9
      000FBC 89                    1573 	.db	137
      000FBD 01                    1574 	.uleb128	1
      000FBE                       1575 Ldebug_CIE1_end:
      000FBE 00 00 00 13           1576 	.dw	0,19
      000FC2 00 00 0F AC           1577 	.dw	0,(Ldebug_CIE1_start-4)
      000FC6 00 00 88 6A           1578 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)	;initial loc
      000FCA 00 00 00 01           1579 	.dw	0,Sstm8s_it$ADC2_IRQHandler$120-Sstm8s_it$ADC2_IRQHandler$116
      000FCE 01                    1580 	.db	1
      000FCF 00 00 88 6A           1581 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      000FD3 0E                    1582 	.db	14
      000FD4 09                    1583 	.uleb128	9
                                   1584 
                                   1585 	.area .debug_frame (NOLOAD)
      000FD5 00 00                 1586 	.dw	0
      000FD7 00 0E                 1587 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000FD9                       1588 Ldebug_CIE2_start:
      000FD9 FF FF                 1589 	.dw	0xffff
      000FDB FF FF                 1590 	.dw	0xffff
      000FDD 01                    1591 	.db	1
      000FDE 00                    1592 	.db	0
      000FDF 01                    1593 	.uleb128	1
      000FE0 7F                    1594 	.sleb128	-1
      000FE1 09                    1595 	.db	9
      000FE2 0C                    1596 	.db	12
      000FE3 08                    1597 	.uleb128	8
      000FE4 09                    1598 	.uleb128	9
      000FE5 89                    1599 	.db	137
      000FE6 01                    1600 	.uleb128	1
      000FE7                       1601 Ldebug_CIE2_end:
      000FE7 00 00 00 13           1602 	.dw	0,19
      000FEB 00 00 0F D5           1603 	.dw	0,(Ldebug_CIE2_start-4)
      000FEF 00 00 88 69           1604 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)	;initial loc
      000FF3 00 00 00 01           1605 	.dw	0,Sstm8s_it$UART3_RX_IRQHandler$114-Sstm8s_it$UART3_RX_IRQHandler$111
      000FF7 01                    1606 	.db	1
      000FF8 00 00 88 69           1607 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      000FFC 0E                    1608 	.db	14
      000FFD 09                    1609 	.uleb128	9
                                   1610 
                                   1611 	.area .debug_frame (NOLOAD)
      000FFE 00 00                 1612 	.dw	0
      001000 00 0E                 1613 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      001002                       1614 Ldebug_CIE3_start:
      001002 FF FF                 1615 	.dw	0xffff
      001004 FF FF                 1616 	.dw	0xffff
      001006 01                    1617 	.db	1
      001007 00                    1618 	.db	0
      001008 01                    1619 	.uleb128	1
      001009 7F                    1620 	.sleb128	-1
      00100A 09                    1621 	.db	9
      00100B 0C                    1622 	.db	12
      00100C 08                    1623 	.uleb128	8
      00100D 09                    1624 	.uleb128	9
      00100E 89                    1625 	.db	137
      00100F 01                    1626 	.uleb128	1
      001010                       1627 Ldebug_CIE3_end:
      001010 00 00 00 13           1628 	.dw	0,19
      001014 00 00 0F FE           1629 	.dw	0,(Ldebug_CIE3_start-4)
      001018 00 00 88 68           1630 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)	;initial loc
      00101C 00 00 00 01           1631 	.dw	0,Sstm8s_it$UART3_TX_IRQHandler$109-Sstm8s_it$UART3_TX_IRQHandler$106
      001020 01                    1632 	.db	1
      001021 00 00 88 68           1633 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      001025 0E                    1634 	.db	14
      001026 09                    1635 	.uleb128	9
                                   1636 
                                   1637 	.area .debug_frame (NOLOAD)
      001027 00 00                 1638 	.dw	0
      001029 00 0E                 1639 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00102B                       1640 Ldebug_CIE4_start:
      00102B FF FF                 1641 	.dw	0xffff
      00102D FF FF                 1642 	.dw	0xffff
      00102F 01                    1643 	.db	1
      001030 00                    1644 	.db	0
      001031 01                    1645 	.uleb128	1
      001032 7F                    1646 	.sleb128	-1
      001033 09                    1647 	.db	9
      001034 0C                    1648 	.db	12
      001035 08                    1649 	.uleb128	8
      001036 09                    1650 	.uleb128	9
      001037 89                    1651 	.db	137
      001038 01                    1652 	.uleb128	1
      001039                       1653 Ldebug_CIE4_end:
      001039 00 00 00 13           1654 	.dw	0,19
      00103D 00 00 10 27           1655 	.dw	0,(Ldebug_CIE4_start-4)
      001041 00 00 88 67           1656 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)	;initial loc
      001045 00 00 00 01           1657 	.dw	0,Sstm8s_it$I2C_IRQHandler$104-Sstm8s_it$I2C_IRQHandler$101
      001049 01                    1658 	.db	1
      00104A 00 00 88 67           1659 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      00104E 0E                    1660 	.db	14
      00104F 09                    1661 	.uleb128	9
                                   1662 
                                   1663 	.area .debug_frame (NOLOAD)
      001050 00 00                 1664 	.dw	0
      001052 00 0E                 1665 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      001054                       1666 Ldebug_CIE5_start:
      001054 FF FF                 1667 	.dw	0xffff
      001056 FF FF                 1668 	.dw	0xffff
      001058 01                    1669 	.db	1
      001059 00                    1670 	.db	0
      00105A 01                    1671 	.uleb128	1
      00105B 7F                    1672 	.sleb128	-1
      00105C 09                    1673 	.db	9
      00105D 0C                    1674 	.db	12
      00105E 08                    1675 	.uleb128	8
      00105F 09                    1676 	.uleb128	9
      001060 89                    1677 	.db	137
      001061 01                    1678 	.uleb128	1
      001062                       1679 Ldebug_CIE5_end:
      001062 00 00 00 13           1680 	.dw	0,19
      001066 00 00 10 50           1681 	.dw	0,(Ldebug_CIE5_start-4)
      00106A 00 00 88 66           1682 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)	;initial loc
      00106E 00 00 00 01           1683 	.dw	0,Sstm8s_it$UART1_RX_IRQHandler$99-Sstm8s_it$UART1_RX_IRQHandler$96
      001072 01                    1684 	.db	1
      001073 00 00 88 66           1685 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      001077 0E                    1686 	.db	14
      001078 09                    1687 	.uleb128	9
                                   1688 
                                   1689 	.area .debug_frame (NOLOAD)
      001079 00 00                 1690 	.dw	0
      00107B 00 0E                 1691 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      00107D                       1692 Ldebug_CIE6_start:
      00107D FF FF                 1693 	.dw	0xffff
      00107F FF FF                 1694 	.dw	0xffff
      001081 01                    1695 	.db	1
      001082 00                    1696 	.db	0
      001083 01                    1697 	.uleb128	1
      001084 7F                    1698 	.sleb128	-1
      001085 09                    1699 	.db	9
      001086 0C                    1700 	.db	12
      001087 08                    1701 	.uleb128	8
      001088 09                    1702 	.uleb128	9
      001089 89                    1703 	.db	137
      00108A 01                    1704 	.uleb128	1
      00108B                       1705 Ldebug_CIE6_end:
      00108B 00 00 00 13           1706 	.dw	0,19
      00108F 00 00 10 79           1707 	.dw	0,(Ldebug_CIE6_start-4)
      001093 00 00 88 65           1708 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)	;initial loc
      001097 00 00 00 01           1709 	.dw	0,Sstm8s_it$UART1_TX_IRQHandler$94-Sstm8s_it$UART1_TX_IRQHandler$91
      00109B 01                    1710 	.db	1
      00109C 00 00 88 65           1711 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      0010A0 0E                    1712 	.db	14
      0010A1 09                    1713 	.uleb128	9
                                   1714 
                                   1715 	.area .debug_frame (NOLOAD)
      0010A2 00 00                 1716 	.dw	0
      0010A4 00 0E                 1717 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0010A6                       1718 Ldebug_CIE7_start:
      0010A6 FF FF                 1719 	.dw	0xffff
      0010A8 FF FF                 1720 	.dw	0xffff
      0010AA 01                    1721 	.db	1
      0010AB 00                    1722 	.db	0
      0010AC 01                    1723 	.uleb128	1
      0010AD 7F                    1724 	.sleb128	-1
      0010AE 09                    1725 	.db	9
      0010AF 0C                    1726 	.db	12
      0010B0 08                    1727 	.uleb128	8
      0010B1 09                    1728 	.uleb128	9
      0010B2 89                    1729 	.db	137
      0010B3 01                    1730 	.uleb128	1
      0010B4                       1731 Ldebug_CIE7_end:
      0010B4 00 00 00 13           1732 	.dw	0,19
      0010B8 00 00 10 A2           1733 	.dw	0,(Ldebug_CIE7_start-4)
      0010BC 00 00 88 64           1734 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)	;initial loc
      0010C0 00 00 00 01           1735 	.dw	0,Sstm8s_it$TIM3_CAP_COM_IRQHandler$89-Sstm8s_it$TIM3_CAP_COM_IRQHandler$86
      0010C4 01                    1736 	.db	1
      0010C5 00 00 88 64           1737 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      0010C9 0E                    1738 	.db	14
      0010CA 09                    1739 	.uleb128	9
                                   1740 
                                   1741 	.area .debug_frame (NOLOAD)
      0010CB 00 00                 1742 	.dw	0
      0010CD 00 0E                 1743 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0010CF                       1744 Ldebug_CIE8_start:
      0010CF FF FF                 1745 	.dw	0xffff
      0010D1 FF FF                 1746 	.dw	0xffff
      0010D3 01                    1747 	.db	1
      0010D4 00                    1748 	.db	0
      0010D5 01                    1749 	.uleb128	1
      0010D6 7F                    1750 	.sleb128	-1
      0010D7 09                    1751 	.db	9
      0010D8 0C                    1752 	.db	12
      0010D9 08                    1753 	.uleb128	8
      0010DA 09                    1754 	.uleb128	9
      0010DB 89                    1755 	.db	137
      0010DC 01                    1756 	.uleb128	1
      0010DD                       1757 Ldebug_CIE8_end:
      0010DD 00 00 00 13           1758 	.dw	0,19
      0010E1 00 00 10 CB           1759 	.dw	0,(Ldebug_CIE8_start-4)
      0010E5 00 00 88 63           1760 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)	;initial loc
      0010E9 00 00 00 01           1761 	.dw	0,Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81
      0010ED 01                    1762 	.db	1
      0010EE 00 00 88 63           1763 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      0010F2 0E                    1764 	.db	14
      0010F3 09                    1765 	.uleb128	9
                                   1766 
                                   1767 	.area .debug_frame (NOLOAD)
      0010F4 00 00                 1768 	.dw	0
      0010F6 00 0E                 1769 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0010F8                       1770 Ldebug_CIE9_start:
      0010F8 FF FF                 1771 	.dw	0xffff
      0010FA FF FF                 1772 	.dw	0xffff
      0010FC 01                    1773 	.db	1
      0010FD 00                    1774 	.db	0
      0010FE 01                    1775 	.uleb128	1
      0010FF 7F                    1776 	.sleb128	-1
      001100 09                    1777 	.db	9
      001101 0C                    1778 	.db	12
      001102 08                    1779 	.uleb128	8
      001103 09                    1780 	.uleb128	9
      001104 89                    1781 	.db	137
      001105 01                    1782 	.uleb128	1
      001106                       1783 Ldebug_CIE9_end:
      001106 00 00 00 13           1784 	.dw	0,19
      00110A 00 00 10 F4           1785 	.dw	0,(Ldebug_CIE9_start-4)
      00110E 00 00 88 62           1786 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)	;initial loc
      001112 00 00 00 01           1787 	.dw	0,Sstm8s_it$TIM2_CAP_COM_IRQHandler$79-Sstm8s_it$TIM2_CAP_COM_IRQHandler$76
      001116 01                    1788 	.db	1
      001117 00 00 88 62           1789 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      00111B 0E                    1790 	.db	14
      00111C 09                    1791 	.uleb128	9
                                   1792 
                                   1793 	.area .debug_frame (NOLOAD)
      00111D 00 00                 1794 	.dw	0
      00111F 00 0E                 1795 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001121                       1796 Ldebug_CIE10_start:
      001121 FF FF                 1797 	.dw	0xffff
      001123 FF FF                 1798 	.dw	0xffff
      001125 01                    1799 	.db	1
      001126 00                    1800 	.db	0
      001127 01                    1801 	.uleb128	1
      001128 7F                    1802 	.sleb128	-1
      001129 09                    1803 	.db	9
      00112A 0C                    1804 	.db	12
      00112B 08                    1805 	.uleb128	8
      00112C 09                    1806 	.uleb128	9
      00112D 89                    1807 	.db	137
      00112E 01                    1808 	.uleb128	1
      00112F                       1809 Ldebug_CIE10_end:
      00112F 00 00 00 13           1810 	.dw	0,19
      001133 00 00 11 1D           1811 	.dw	0,(Ldebug_CIE10_start-4)
      001137 00 00 88 61           1812 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)	;initial loc
      00113B 00 00 00 01           1813 	.dw	0,Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71
      00113F 01                    1814 	.db	1
      001140 00 00 88 61           1815 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      001144 0E                    1816 	.db	14
      001145 09                    1817 	.uleb128	9
                                   1818 
                                   1819 	.area .debug_frame (NOLOAD)
      001146 00 00                 1820 	.dw	0
      001148 00 0E                 1821 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      00114A                       1822 Ldebug_CIE11_start:
      00114A FF FF                 1823 	.dw	0xffff
      00114C FF FF                 1824 	.dw	0xffff
      00114E 01                    1825 	.db	1
      00114F 00                    1826 	.db	0
      001150 01                    1827 	.uleb128	1
      001151 7F                    1828 	.sleb128	-1
      001152 09                    1829 	.db	9
      001153 0C                    1830 	.db	12
      001154 08                    1831 	.uleb128	8
      001155 09                    1832 	.uleb128	9
      001156 89                    1833 	.db	137
      001157 01                    1834 	.uleb128	1
      001158                       1835 Ldebug_CIE11_end:
      001158 00 00 00 13           1836 	.dw	0,19
      00115C 00 00 11 46           1837 	.dw	0,(Ldebug_CIE11_start-4)
      001160 00 00 88 60           1838 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)	;initial loc
      001164 00 00 00 01           1839 	.dw	0,Sstm8s_it$TIM1_CAP_COM_IRQHandler$69-Sstm8s_it$TIM1_CAP_COM_IRQHandler$66
      001168 01                    1840 	.db	1
      001169 00 00 88 60           1841 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      00116D 0E                    1842 	.db	14
      00116E 09                    1843 	.uleb128	9
                                   1844 
                                   1845 	.area .debug_frame (NOLOAD)
      00116F 00 00                 1846 	.dw	0
      001171 00 0E                 1847 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      001173                       1848 Ldebug_CIE12_start:
      001173 FF FF                 1849 	.dw	0xffff
      001175 FF FF                 1850 	.dw	0xffff
      001177 01                    1851 	.db	1
      001178 00                    1852 	.db	0
      001179 01                    1853 	.uleb128	1
      00117A 7F                    1854 	.sleb128	-1
      00117B 09                    1855 	.db	9
      00117C 0C                    1856 	.db	12
      00117D 08                    1857 	.uleb128	8
      00117E 09                    1858 	.uleb128	9
      00117F 89                    1859 	.db	137
      001180 01                    1860 	.uleb128	1
      001181                       1861 Ldebug_CIE12_end:
      001181 00 00 00 13           1862 	.dw	0,19
      001185 00 00 11 6F           1863 	.dw	0,(Ldebug_CIE12_start-4)
      001189 00 00 88 5F           1864 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)	;initial loc
      00118D 00 00 00 01           1865 	.dw	0,Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61
      001191 01                    1866 	.db	1
      001192 00 00 88 5F           1867 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      001196 0E                    1868 	.db	14
      001197 09                    1869 	.uleb128	9
                                   1870 
                                   1871 	.area .debug_frame (NOLOAD)
      001198 00 00                 1872 	.dw	0
      00119A 00 0E                 1873 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      00119C                       1874 Ldebug_CIE13_start:
      00119C FF FF                 1875 	.dw	0xffff
      00119E FF FF                 1876 	.dw	0xffff
      0011A0 01                    1877 	.db	1
      0011A1 00                    1878 	.db	0
      0011A2 01                    1879 	.uleb128	1
      0011A3 7F                    1880 	.sleb128	-1
      0011A4 09                    1881 	.db	9
      0011A5 0C                    1882 	.db	12
      0011A6 08                    1883 	.uleb128	8
      0011A7 09                    1884 	.uleb128	9
      0011A8 89                    1885 	.db	137
      0011A9 01                    1886 	.uleb128	1
      0011AA                       1887 Ldebug_CIE13_end:
      0011AA 00 00 00 13           1888 	.dw	0,19
      0011AE 00 00 11 98           1889 	.dw	0,(Ldebug_CIE13_start-4)
      0011B2 00 00 88 5E           1890 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)	;initial loc
      0011B6 00 00 00 01           1891 	.dw	0,Sstm8s_it$SPI_IRQHandler$59-Sstm8s_it$SPI_IRQHandler$56
      0011BA 01                    1892 	.db	1
      0011BB 00 00 88 5E           1893 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      0011BF 0E                    1894 	.db	14
      0011C0 09                    1895 	.uleb128	9
                                   1896 
                                   1897 	.area .debug_frame (NOLOAD)
      0011C1 00 00                 1898 	.dw	0
      0011C3 00 0E                 1899 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      0011C5                       1900 Ldebug_CIE14_start:
      0011C5 FF FF                 1901 	.dw	0xffff
      0011C7 FF FF                 1902 	.dw	0xffff
      0011C9 01                    1903 	.db	1
      0011CA 00                    1904 	.db	0
      0011CB 01                    1905 	.uleb128	1
      0011CC 7F                    1906 	.sleb128	-1
      0011CD 09                    1907 	.db	9
      0011CE 0C                    1908 	.db	12
      0011CF 08                    1909 	.uleb128	8
      0011D0 09                    1910 	.uleb128	9
      0011D1 89                    1911 	.db	137
      0011D2 01                    1912 	.uleb128	1
      0011D3                       1913 Ldebug_CIE14_end:
      0011D3 00 00 00 13           1914 	.dw	0,19
      0011D7 00 00 11 C1           1915 	.dw	0,(Ldebug_CIE14_start-4)
      0011DB 00 00 88 5D           1916 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)	;initial loc
      0011DF 00 00 00 01           1917 	.dw	0,Sstm8s_it$CAN_TX_IRQHandler$54-Sstm8s_it$CAN_TX_IRQHandler$51
      0011E3 01                    1918 	.db	1
      0011E4 00 00 88 5D           1919 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      0011E8 0E                    1920 	.db	14
      0011E9 09                    1921 	.uleb128	9
                                   1922 
                                   1923 	.area .debug_frame (NOLOAD)
      0011EA 00 00                 1924 	.dw	0
      0011EC 00 0E                 1925 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      0011EE                       1926 Ldebug_CIE15_start:
      0011EE FF FF                 1927 	.dw	0xffff
      0011F0 FF FF                 1928 	.dw	0xffff
      0011F2 01                    1929 	.db	1
      0011F3 00                    1930 	.db	0
      0011F4 01                    1931 	.uleb128	1
      0011F5 7F                    1932 	.sleb128	-1
      0011F6 09                    1933 	.db	9
      0011F7 0C                    1934 	.db	12
      0011F8 08                    1935 	.uleb128	8
      0011F9 09                    1936 	.uleb128	9
      0011FA 89                    1937 	.db	137
      0011FB 01                    1938 	.uleb128	1
      0011FC                       1939 Ldebug_CIE15_end:
      0011FC 00 00 00 13           1940 	.dw	0,19
      001200 00 00 11 EA           1941 	.dw	0,(Ldebug_CIE15_start-4)
      001204 00 00 88 5C           1942 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)	;initial loc
      001208 00 00 00 01           1943 	.dw	0,Sstm8s_it$CAN_RX_IRQHandler$49-Sstm8s_it$CAN_RX_IRQHandler$46
      00120C 01                    1944 	.db	1
      00120D 00 00 88 5C           1945 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      001211 0E                    1946 	.db	14
      001212 09                    1947 	.uleb128	9
                                   1948 
                                   1949 	.area .debug_frame (NOLOAD)
      001213 00 00                 1950 	.dw	0
      001215 00 0E                 1951 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      001217                       1952 Ldebug_CIE16_start:
      001217 FF FF                 1953 	.dw	0xffff
      001219 FF FF                 1954 	.dw	0xffff
      00121B 01                    1955 	.db	1
      00121C 00                    1956 	.db	0
      00121D 01                    1957 	.uleb128	1
      00121E 7F                    1958 	.sleb128	-1
      00121F 09                    1959 	.db	9
      001220 0C                    1960 	.db	12
      001221 08                    1961 	.uleb128	8
      001222 09                    1962 	.uleb128	9
      001223 89                    1963 	.db	137
      001224 01                    1964 	.uleb128	1
      001225                       1965 Ldebug_CIE16_end:
      001225 00 00 00 13           1966 	.dw	0,19
      001229 00 00 12 13           1967 	.dw	0,(Ldebug_CIE16_start-4)
      00122D 00 00 88 5B           1968 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)	;initial loc
      001231 00 00 00 01           1969 	.dw	0,Sstm8s_it$EXTI_PORTE_IRQHandler$44-Sstm8s_it$EXTI_PORTE_IRQHandler$41
      001235 01                    1970 	.db	1
      001236 00 00 88 5B           1971 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      00123A 0E                    1972 	.db	14
      00123B 09                    1973 	.uleb128	9
                                   1974 
                                   1975 	.area .debug_frame (NOLOAD)
      00123C 00 00                 1976 	.dw	0
      00123E 00 0E                 1977 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      001240                       1978 Ldebug_CIE17_start:
      001240 FF FF                 1979 	.dw	0xffff
      001242 FF FF                 1980 	.dw	0xffff
      001244 01                    1981 	.db	1
      001245 00                    1982 	.db	0
      001246 01                    1983 	.uleb128	1
      001247 7F                    1984 	.sleb128	-1
      001248 09                    1985 	.db	9
      001249 0C                    1986 	.db	12
      00124A 08                    1987 	.uleb128	8
      00124B 09                    1988 	.uleb128	9
      00124C 89                    1989 	.db	137
      00124D 01                    1990 	.uleb128	1
      00124E                       1991 Ldebug_CIE17_end:
      00124E 00 00 00 13           1992 	.dw	0,19
      001252 00 00 12 3C           1993 	.dw	0,(Ldebug_CIE17_start-4)
      001256 00 00 88 5A           1994 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)	;initial loc
      00125A 00 00 00 01           1995 	.dw	0,Sstm8s_it$EXTI_PORTD_IRQHandler$39-Sstm8s_it$EXTI_PORTD_IRQHandler$36
      00125E 01                    1996 	.db	1
      00125F 00 00 88 5A           1997 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      001263 0E                    1998 	.db	14
      001264 09                    1999 	.uleb128	9
                                   2000 
                                   2001 	.area .debug_frame (NOLOAD)
      001265 00 00                 2002 	.dw	0
      001267 00 0E                 2003 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      001269                       2004 Ldebug_CIE18_start:
      001269 FF FF                 2005 	.dw	0xffff
      00126B FF FF                 2006 	.dw	0xffff
      00126D 01                    2007 	.db	1
      00126E 00                    2008 	.db	0
      00126F 01                    2009 	.uleb128	1
      001270 7F                    2010 	.sleb128	-1
      001271 09                    2011 	.db	9
      001272 0C                    2012 	.db	12
      001273 08                    2013 	.uleb128	8
      001274 09                    2014 	.uleb128	9
      001275 89                    2015 	.db	137
      001276 01                    2016 	.uleb128	1
      001277                       2017 Ldebug_CIE18_end:
      001277 00 00 00 13           2018 	.dw	0,19
      00127B 00 00 12 65           2019 	.dw	0,(Ldebug_CIE18_start-4)
      00127F 00 00 88 59           2020 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)	;initial loc
      001283 00 00 00 01           2021 	.dw	0,Sstm8s_it$EXTI_PORTC_IRQHandler$34-Sstm8s_it$EXTI_PORTC_IRQHandler$31
      001287 01                    2022 	.db	1
      001288 00 00 88 59           2023 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      00128C 0E                    2024 	.db	14
      00128D 09                    2025 	.uleb128	9
                                   2026 
                                   2027 	.area .debug_frame (NOLOAD)
      00128E 00 00                 2028 	.dw	0
      001290 00 0E                 2029 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      001292                       2030 Ldebug_CIE19_start:
      001292 FF FF                 2031 	.dw	0xffff
      001294 FF FF                 2032 	.dw	0xffff
      001296 01                    2033 	.db	1
      001297 00                    2034 	.db	0
      001298 01                    2035 	.uleb128	1
      001299 7F                    2036 	.sleb128	-1
      00129A 09                    2037 	.db	9
      00129B 0C                    2038 	.db	12
      00129C 08                    2039 	.uleb128	8
      00129D 09                    2040 	.uleb128	9
      00129E 89                    2041 	.db	137
      00129F 01                    2042 	.uleb128	1
      0012A0                       2043 Ldebug_CIE19_end:
      0012A0 00 00 00 13           2044 	.dw	0,19
      0012A4 00 00 12 8E           2045 	.dw	0,(Ldebug_CIE19_start-4)
      0012A8 00 00 88 58           2046 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)	;initial loc
      0012AC 00 00 00 01           2047 	.dw	0,Sstm8s_it$EXTI_PORTB_IRQHandler$29-Sstm8s_it$EXTI_PORTB_IRQHandler$26
      0012B0 01                    2048 	.db	1
      0012B1 00 00 88 58           2049 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      0012B5 0E                    2050 	.db	14
      0012B6 09                    2051 	.uleb128	9
                                   2052 
                                   2053 	.area .debug_frame (NOLOAD)
      0012B7 00 00                 2054 	.dw	0
      0012B9 00 0E                 2055 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      0012BB                       2056 Ldebug_CIE20_start:
      0012BB FF FF                 2057 	.dw	0xffff
      0012BD FF FF                 2058 	.dw	0xffff
      0012BF 01                    2059 	.db	1
      0012C0 00                    2060 	.db	0
      0012C1 01                    2061 	.uleb128	1
      0012C2 7F                    2062 	.sleb128	-1
      0012C3 09                    2063 	.db	9
      0012C4 0C                    2064 	.db	12
      0012C5 08                    2065 	.uleb128	8
      0012C6 09                    2066 	.uleb128	9
      0012C7 89                    2067 	.db	137
      0012C8 01                    2068 	.uleb128	1
      0012C9                       2069 Ldebug_CIE20_end:
      0012C9 00 00 00 13           2070 	.dw	0,19
      0012CD 00 00 12 B7           2071 	.dw	0,(Ldebug_CIE20_start-4)
      0012D1 00 00 88 57           2072 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)	;initial loc
      0012D5 00 00 00 01           2073 	.dw	0,Sstm8s_it$EXTI_PORTA_IRQHandler$24-Sstm8s_it$EXTI_PORTA_IRQHandler$21
      0012D9 01                    2074 	.db	1
      0012DA 00 00 88 57           2075 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      0012DE 0E                    2076 	.db	14
      0012DF 09                    2077 	.uleb128	9
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      0012E0 00 00                 2080 	.dw	0
      0012E2 00 0E                 2081 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0012E4                       2082 Ldebug_CIE21_start:
      0012E4 FF FF                 2083 	.dw	0xffff
      0012E6 FF FF                 2084 	.dw	0xffff
      0012E8 01                    2085 	.db	1
      0012E9 00                    2086 	.db	0
      0012EA 01                    2087 	.uleb128	1
      0012EB 7F                    2088 	.sleb128	-1
      0012EC 09                    2089 	.db	9
      0012ED 0C                    2090 	.db	12
      0012EE 08                    2091 	.uleb128	8
      0012EF 09                    2092 	.uleb128	9
      0012F0 89                    2093 	.db	137
      0012F1 01                    2094 	.uleb128	1
      0012F2                       2095 Ldebug_CIE21_end:
      0012F2 00 00 00 13           2096 	.dw	0,19
      0012F6 00 00 12 E0           2097 	.dw	0,(Ldebug_CIE21_start-4)
      0012FA 00 00 88 56           2098 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)	;initial loc
      0012FE 00 00 00 01           2099 	.dw	0,Sstm8s_it$CLK_IRQHandler$19-Sstm8s_it$CLK_IRQHandler$16
      001302 01                    2100 	.db	1
      001303 00 00 88 56           2101 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      001307 0E                    2102 	.db	14
      001308 09                    2103 	.uleb128	9
                                   2104 
                                   2105 	.area .debug_frame (NOLOAD)
      001309 00 00                 2106 	.dw	0
      00130B 00 0E                 2107 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      00130D                       2108 Ldebug_CIE22_start:
      00130D FF FF                 2109 	.dw	0xffff
      00130F FF FF                 2110 	.dw	0xffff
      001311 01                    2111 	.db	1
      001312 00                    2112 	.db	0
      001313 01                    2113 	.uleb128	1
      001314 7F                    2114 	.sleb128	-1
      001315 09                    2115 	.db	9
      001316 0C                    2116 	.db	12
      001317 08                    2117 	.uleb128	8
      001318 09                    2118 	.uleb128	9
      001319 89                    2119 	.db	137
      00131A 01                    2120 	.uleb128	1
      00131B                       2121 Ldebug_CIE22_end:
      00131B 00 00 00 13           2122 	.dw	0,19
      00131F 00 00 13 09           2123 	.dw	0,(Ldebug_CIE22_start-4)
      001323 00 00 88 55           2124 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)	;initial loc
      001327 00 00 00 01           2125 	.dw	0,Sstm8s_it$AWU_IRQHandler$14-Sstm8s_it$AWU_IRQHandler$11
      00132B 01                    2126 	.db	1
      00132C 00 00 88 55           2127 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      001330 0E                    2128 	.db	14
      001331 09                    2129 	.uleb128	9
                                   2130 
                                   2131 	.area .debug_frame (NOLOAD)
      001332 00 00                 2132 	.dw	0
      001334 00 0E                 2133 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      001336                       2134 Ldebug_CIE23_start:
      001336 FF FF                 2135 	.dw	0xffff
      001338 FF FF                 2136 	.dw	0xffff
      00133A 01                    2137 	.db	1
      00133B 00                    2138 	.db	0
      00133C 01                    2139 	.uleb128	1
      00133D 7F                    2140 	.sleb128	-1
      00133E 09                    2141 	.db	9
      00133F 0C                    2142 	.db	12
      001340 08                    2143 	.uleb128	8
      001341 09                    2144 	.uleb128	9
      001342 89                    2145 	.db	137
      001343 01                    2146 	.uleb128	1
      001344                       2147 Ldebug_CIE23_end:
      001344 00 00 00 13           2148 	.dw	0,19
      001348 00 00 13 32           2149 	.dw	0,(Ldebug_CIE23_start-4)
      00134C 00 00 88 54           2150 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)	;initial loc
      001350 00 00 00 01           2151 	.dw	0,Sstm8s_it$TLI_IRQHandler$9-Sstm8s_it$TLI_IRQHandler$6
      001354 01                    2152 	.db	1
      001355 00 00 88 54           2153 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      001359 0E                    2154 	.db	14
      00135A 09                    2155 	.uleb128	9
                                   2156 
                                   2157 	.area .debug_frame (NOLOAD)
      00135B 00 00                 2158 	.dw	0
      00135D 00 0E                 2159 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      00135F                       2160 Ldebug_CIE24_start:
      00135F FF FF                 2161 	.dw	0xffff
      001361 FF FF                 2162 	.dw	0xffff
      001363 01                    2163 	.db	1
      001364 00                    2164 	.db	0
      001365 01                    2165 	.uleb128	1
      001366 7F                    2166 	.sleb128	-1
      001367 09                    2167 	.db	9
      001368 0C                    2168 	.db	12
      001369 08                    2169 	.uleb128	8
      00136A 09                    2170 	.uleb128	9
      00136B 89                    2171 	.db	137
      00136C 01                    2172 	.uleb128	1
      00136D                       2173 Ldebug_CIE24_end:
      00136D 00 00 00 13           2174 	.dw	0,19
      001371 00 00 13 5B           2175 	.dw	0,(Ldebug_CIE24_start-4)
      001375 00 00 88 53           2176 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)	;initial loc
      001379 00 00 00 01           2177 	.dw	0,Sstm8s_it$TRAP_IRQHandler$4-Sstm8s_it$TRAP_IRQHandler$1
      00137D 01                    2178 	.db	1
      00137E 00 00 88 53           2179 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      001382 0E                    2180 	.db	14
      001383 09                    2181 	.uleb128	9
