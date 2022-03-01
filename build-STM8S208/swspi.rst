                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module swspi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_WriteLow
                                     12 	.globl _GPIO_WriteHigh
                                     13 	.globl _GPIO_Init
                                     14 	.globl _swspi_init
                                     15 	.globl _swspi_tx16
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
                           000000    53 	Sswspi$swspi_init$0 ==.
                                     54 ;	./src/swspi.c: 12: void swspi_init(void){
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function swspi_init
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      00886C                         61 _swspi_init:
                           000000    62 	Sswspi$swspi_init$1 ==.
                           000000    63 	Sswspi$swspi_init$2 ==.
                                     64 ;	./src/swspi.c: 13: GPIO_Init(CS_GPIO,CS_PIN,GPIO_MODE_OUT_PP_HIGH_FAST);
                                     65 ; genIPush
      00886C 4B F0            [ 1]   66 	push	#0xf0
                           000002    67 	Sswspi$swspi_init$3 ==.
                                     68 ; genIPush
      00886E 4B 10            [ 1]   69 	push	#0x10
                           000004    70 	Sswspi$swspi_init$4 ==.
                                     71 ; genIPush
      008870 4B 05            [ 1]   72 	push	#0x05
                           000006    73 	Sswspi$swspi_init$5 ==.
      008872 4B 50            [ 1]   74 	push	#0x50
                           000008    75 	Sswspi$swspi_init$6 ==.
                                     76 ; genCall
      008874 CD 89 12         [ 4]   77 	call	_GPIO_Init
      008877 5B 04            [ 2]   78 	addw	sp, #4
                           00000D    79 	Sswspi$swspi_init$7 ==.
                           00000D    80 	Sswspi$swspi_init$8 ==.
                                     81 ;	./src/swspi.c: 14: GPIO_Init(CLK_GPIO,CLK_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     82 ; genIPush
      008879 4B E0            [ 1]   83 	push	#0xe0
                           00000F    84 	Sswspi$swspi_init$9 ==.
                                     85 ; genIPush
      00887B 4B 08            [ 1]   86 	push	#0x08
                           000011    87 	Sswspi$swspi_init$10 ==.
                                     88 ; genIPush
      00887D 4B 05            [ 1]   89 	push	#0x05
                           000013    90 	Sswspi$swspi_init$11 ==.
      00887F 4B 50            [ 1]   91 	push	#0x50
                           000015    92 	Sswspi$swspi_init$12 ==.
                                     93 ; genCall
      008881 CD 89 12         [ 4]   94 	call	_GPIO_Init
      008884 5B 04            [ 2]   95 	addw	sp, #4
                           00001A    96 	Sswspi$swspi_init$13 ==.
                           00001A    97 	Sswspi$swspi_init$14 ==.
                                     98 ;	./src/swspi.c: 15: GPIO_Init(DIN_GPIO,DIN_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     99 ; genIPush
      008886 4B E0            [ 1]  100 	push	#0xe0
                           00001C   101 	Sswspi$swspi_init$15 ==.
                                    102 ; genIPush
      008888 4B 20            [ 1]  103 	push	#0x20
                           00001E   104 	Sswspi$swspi_init$16 ==.
                                    105 ; genIPush
      00888A 4B 05            [ 1]  106 	push	#0x05
                           000020   107 	Sswspi$swspi_init$17 ==.
      00888C 4B 50            [ 1]  108 	push	#0x50
                           000022   109 	Sswspi$swspi_init$18 ==.
                                    110 ; genCall
      00888E CD 89 12         [ 4]  111 	call	_GPIO_Init
      008891 5B 04            [ 2]  112 	addw	sp, #4
                           000027   113 	Sswspi$swspi_init$19 ==.
                                    114 ; genLabel
      008893                        115 00101$:
                           000027   116 	Sswspi$swspi_init$20 ==.
                                    117 ;	./src/swspi.c: 16: }
                                    118 ; genEndFunction
                           000027   119 	Sswspi$swspi_init$21 ==.
                           000027   120 	XG$swspi_init$0$0 ==.
      008893 81               [ 4]  121 	ret
                           000028   122 	Sswspi$swspi_init$22 ==.
                           000028   123 	Sswspi$swspi_tx16$23 ==.
                                    124 ;	./src/swspi.c: 19: void swspi_tx16(uint16_t data){
                                    125 ; genLabel
                                    126 ;	-----------------------------------------
                                    127 ;	 function swspi_tx16
                                    128 ;	-----------------------------------------
                                    129 ;	Register assignment is optimal.
                                    130 ;	Stack space usage: 2 bytes.
      008894                        131 _swspi_tx16:
                           000028   132 	Sswspi$swspi_tx16$24 ==.
      008894 89               [ 2]  133 	pushw	x
                           000029   134 	Sswspi$swspi_tx16$25 ==.
                           000029   135 	Sswspi$swspi_tx16$26 ==.
                                    136 ;	./src/swspi.c: 20: uint16_t maska=0b1<<15; 
                                    137 ; genAssign
      008895 AE 80 00         [ 2]  138 	ldw	x, #0x8000
      008898 1F 01            [ 2]  139 	ldw	(0x01, sp), x
                           00002E   140 	Sswspi$swspi_tx16$27 ==.
                                    141 ;	./src/swspi.c: 21: CS_L;										
                                    142 ; genIPush
      00889A 4B 10            [ 1]  143 	push	#0x10
                           000030   144 	Sswspi$swspi_tx16$28 ==.
                                    145 ; genIPush
      00889C 4B 05            [ 1]  146 	push	#0x05
                           000032   147 	Sswspi$swspi_tx16$29 ==.
      00889E 4B 50            [ 1]  148 	push	#0x50
                           000034   149 	Sswspi$swspi_tx16$30 ==.
                                    150 ; genCall
      0088A0 CD 8A 35         [ 4]  151 	call	_GPIO_WriteLow
      0088A3 5B 03            [ 2]  152 	addw	sp, #3
                           000039   153 	Sswspi$swspi_tx16$31 ==.
                           000039   154 	Sswspi$swspi_tx16$32 ==.
                                    155 ;	./src/swspi.c: 22: while(maska){
                                    156 ; genLabel
      0088A5                        157 00104$:
                                    158 ; genIfx
      0088A5 1E 01            [ 2]  159 	ldw	x, (0x01, sp)
      0088A7 26 03            [ 1]  160 	jrne	00124$
      0088A9 CC 88 F2         [ 2]  161 	jp	00106$
      0088AC                        162 00124$:
                           000040   163 	Sswspi$swspi_tx16$33 ==.
                           000040   164 	Sswspi$swspi_tx16$34 ==.
                                    165 ;	./src/swspi.c: 23: if(maska & data){DIN_H;}else{DIN_L;}
                                    166 ; genAnd
      0088AC 7B 02            [ 1]  167 	ld	a, (0x02, sp)
      0088AE 14 06            [ 1]  168 	and	a, (0x06, sp)
      0088B0 97               [ 1]  169 	ld	xl, a
      0088B1 7B 01            [ 1]  170 	ld	a, (0x01, sp)
      0088B3 14 05            [ 1]  171 	and	a, (0x05, sp)
      0088B5 95               [ 1]  172 	ld	xh, a
                                    173 ; genIfx
      0088B6 5D               [ 2]  174 	tnzw	x
      0088B7 26 03            [ 1]  175 	jrne	00125$
      0088B9 CC 88 CA         [ 2]  176 	jp	00102$
      0088BC                        177 00125$:
                           000050   178 	Sswspi$swspi_tx16$35 ==.
                                    179 ; genIPush
      0088BC 4B 20            [ 1]  180 	push	#0x20
                           000052   181 	Sswspi$swspi_tx16$36 ==.
                                    182 ; genIPush
      0088BE 4B 05            [ 1]  183 	push	#0x05
                           000054   184 	Sswspi$swspi_tx16$37 ==.
      0088C0 4B 50            [ 1]  185 	push	#0x50
                           000056   186 	Sswspi$swspi_tx16$38 ==.
                                    187 ; genCall
      0088C2 CD 8A 2E         [ 4]  188 	call	_GPIO_WriteHigh
      0088C5 5B 03            [ 2]  189 	addw	sp, #3
                           00005B   190 	Sswspi$swspi_tx16$39 ==.
                           00005B   191 	Sswspi$swspi_tx16$40 ==.
                                    192 ; genGoto
      0088C7 CC 88 D5         [ 2]  193 	jp	00103$
                                    194 ; genLabel
      0088CA                        195 00102$:
                           00005E   196 	Sswspi$swspi_tx16$41 ==.
                                    197 ; genIPush
      0088CA 4B 20            [ 1]  198 	push	#0x20
                           000060   199 	Sswspi$swspi_tx16$42 ==.
                                    200 ; genIPush
      0088CC 4B 05            [ 1]  201 	push	#0x05
                           000062   202 	Sswspi$swspi_tx16$43 ==.
      0088CE 4B 50            [ 1]  203 	push	#0x50
                           000064   204 	Sswspi$swspi_tx16$44 ==.
                                    205 ; genCall
      0088D0 CD 8A 35         [ 4]  206 	call	_GPIO_WriteLow
      0088D3 5B 03            [ 2]  207 	addw	sp, #3
                           000069   208 	Sswspi$swspi_tx16$45 ==.
                           000069   209 	Sswspi$swspi_tx16$46 ==.
                                    210 ; genLabel
      0088D5                        211 00103$:
                           000069   212 	Sswspi$swspi_tx16$47 ==.
                                    213 ;	./src/swspi.c: 24: CLK_H;
                                    214 ; genIPush
      0088D5 4B 08            [ 1]  215 	push	#0x08
                           00006B   216 	Sswspi$swspi_tx16$48 ==.
                                    217 ; genIPush
      0088D7 4B 05            [ 1]  218 	push	#0x05
                           00006D   219 	Sswspi$swspi_tx16$49 ==.
      0088D9 4B 50            [ 1]  220 	push	#0x50
                           00006F   221 	Sswspi$swspi_tx16$50 ==.
                                    222 ; genCall
      0088DB CD 8A 2E         [ 4]  223 	call	_GPIO_WriteHigh
      0088DE 5B 03            [ 2]  224 	addw	sp, #3
                           000074   225 	Sswspi$swspi_tx16$51 ==.
                           000074   226 	Sswspi$swspi_tx16$52 ==.
                                    227 ;	./src/swspi.c: 25: maska = maska >> 1;
                                    228 ; genRightShiftLiteral
      0088E0 04 01            [ 1]  229 	srl	(0x01, sp)
      0088E2 06 02            [ 1]  230 	rrc	(0x02, sp)
                           000078   231 	Sswspi$swspi_tx16$53 ==.
                                    232 ;	./src/swspi.c: 26: CLK_L;
                                    233 ; genIPush
      0088E4 4B 08            [ 1]  234 	push	#0x08
                           00007A   235 	Sswspi$swspi_tx16$54 ==.
                                    236 ; genIPush
      0088E6 4B 05            [ 1]  237 	push	#0x05
                           00007C   238 	Sswspi$swspi_tx16$55 ==.
      0088E8 4B 50            [ 1]  239 	push	#0x50
                           00007E   240 	Sswspi$swspi_tx16$56 ==.
                                    241 ; genCall
      0088EA CD 8A 35         [ 4]  242 	call	_GPIO_WriteLow
      0088ED 5B 03            [ 2]  243 	addw	sp, #3
                           000083   244 	Sswspi$swspi_tx16$57 ==.
                           000083   245 	Sswspi$swspi_tx16$58 ==.
                                    246 ; genGoto
      0088EF CC 88 A5         [ 2]  247 	jp	00104$
                                    248 ; genLabel
      0088F2                        249 00106$:
                           000086   250 	Sswspi$swspi_tx16$59 ==.
                                    251 ;	./src/swspi.c: 28: CS_H;
                                    252 ; genIPush
      0088F2 4B 10            [ 1]  253 	push	#0x10
                           000088   254 	Sswspi$swspi_tx16$60 ==.
                                    255 ; genIPush
      0088F4 4B 05            [ 1]  256 	push	#0x05
                           00008A   257 	Sswspi$swspi_tx16$61 ==.
      0088F6 4B 50            [ 1]  258 	push	#0x50
                           00008C   259 	Sswspi$swspi_tx16$62 ==.
                                    260 ; genCall
      0088F8 CD 8A 2E         [ 4]  261 	call	_GPIO_WriteHigh
      0088FB 5B 03            [ 2]  262 	addw	sp, #3
                           000091   263 	Sswspi$swspi_tx16$63 ==.
                                    264 ; genLabel
      0088FD                        265 00107$:
                           000091   266 	Sswspi$swspi_tx16$64 ==.
                                    267 ;	./src/swspi.c: 29: }
                                    268 ; genEndFunction
      0088FD 85               [ 2]  269 	popw	x
                           000092   270 	Sswspi$swspi_tx16$65 ==.
                           000092   271 	Sswspi$swspi_tx16$66 ==.
                           000092   272 	XG$swspi_tx16$0$0 ==.
      0088FE 81               [ 4]  273 	ret
                           000093   274 	Sswspi$swspi_tx16$67 ==.
                                    275 	.area CODE
                                    276 	.area CONST
                                    277 	.area INITIALIZER
                                    278 	.area CABS (ABS)
                                    279 
                                    280 	.area .debug_line (NOLOAD)
      000CBB 00 00 00 E2            281 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000CBF                        282 Ldebug_line_start:
      000CBF 00 02                  283 	.dw	2
      000CC1 00 00 00 6E            284 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000CC5 01                     285 	.db	1
      000CC6 01                     286 	.db	1
      000CC7 FB                     287 	.db	-5
      000CC8 0F                     288 	.db	15
      000CC9 0A                     289 	.db	10
      000CCA 00                     290 	.db	0
      000CCB 01                     291 	.db	1
      000CCC 01                     292 	.db	1
      000CCD 01                     293 	.db	1
      000CCE 01                     294 	.db	1
      000CCF 00                     295 	.db	0
      000CD0 00                     296 	.db	0
      000CD1 00                     297 	.db	0
      000CD2 01                     298 	.db	1
      000CD3 43 3A 5C 50 72 6F 67   299 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000CFB 00                     300 	.db	0
      000CFC 43 3A 5C 50 72 6F 67   301 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000D1F 00                     302 	.db	0
      000D20 00                     303 	.db	0
      000D21 2E 2F 73 72 63 2F 73   304 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      000D2E 00                     305 	.db	0
      000D2F 00                     306 	.uleb128	0
      000D30 00                     307 	.uleb128	0
      000D31 00                     308 	.uleb128	0
      000D32 00                     309 	.db	0
      000D33                        310 Ldebug_line_stmt:
      000D33 00                     311 	.db	0
      000D34 05                     312 	.uleb128	5
      000D35 02                     313 	.db	2
      000D36 00 00 88 6C            314 	.dw	0,(Sswspi$swspi_init$0)
      000D3A 03                     315 	.db	3
      000D3B 0B                     316 	.sleb128	11
      000D3C 01                     317 	.db	1
      000D3D 09                     318 	.db	9
      000D3E 00 00                  319 	.dw	Sswspi$swspi_init$2-Sswspi$swspi_init$0
      000D40 03                     320 	.db	3
      000D41 01                     321 	.sleb128	1
      000D42 01                     322 	.db	1
      000D43 09                     323 	.db	9
      000D44 00 0D                  324 	.dw	Sswspi$swspi_init$8-Sswspi$swspi_init$2
      000D46 03                     325 	.db	3
      000D47 01                     326 	.sleb128	1
      000D48 01                     327 	.db	1
      000D49 09                     328 	.db	9
      000D4A 00 0D                  329 	.dw	Sswspi$swspi_init$14-Sswspi$swspi_init$8
      000D4C 03                     330 	.db	3
      000D4D 01                     331 	.sleb128	1
      000D4E 01                     332 	.db	1
      000D4F 09                     333 	.db	9
      000D50 00 0D                  334 	.dw	Sswspi$swspi_init$20-Sswspi$swspi_init$14
      000D52 03                     335 	.db	3
      000D53 01                     336 	.sleb128	1
      000D54 01                     337 	.db	1
      000D55 09                     338 	.db	9
      000D56 00 01                  339 	.dw	1+Sswspi$swspi_init$21-Sswspi$swspi_init$20
      000D58 00                     340 	.db	0
      000D59 01                     341 	.uleb128	1
      000D5A 01                     342 	.db	1
      000D5B 00                     343 	.db	0
      000D5C 05                     344 	.uleb128	5
      000D5D 02                     345 	.db	2
      000D5E 00 00 88 94            346 	.dw	0,(Sswspi$swspi_tx16$23)
      000D62 03                     347 	.db	3
      000D63 12                     348 	.sleb128	18
      000D64 01                     349 	.db	1
      000D65 09                     350 	.db	9
      000D66 00 01                  351 	.dw	Sswspi$swspi_tx16$26-Sswspi$swspi_tx16$23
      000D68 03                     352 	.db	3
      000D69 01                     353 	.sleb128	1
      000D6A 01                     354 	.db	1
      000D6B 09                     355 	.db	9
      000D6C 00 05                  356 	.dw	Sswspi$swspi_tx16$27-Sswspi$swspi_tx16$26
      000D6E 03                     357 	.db	3
      000D6F 01                     358 	.sleb128	1
      000D70 01                     359 	.db	1
      000D71 09                     360 	.db	9
      000D72 00 0B                  361 	.dw	Sswspi$swspi_tx16$32-Sswspi$swspi_tx16$27
      000D74 03                     362 	.db	3
      000D75 01                     363 	.sleb128	1
      000D76 01                     364 	.db	1
      000D77 09                     365 	.db	9
      000D78 00 07                  366 	.dw	Sswspi$swspi_tx16$34-Sswspi$swspi_tx16$32
      000D7A 03                     367 	.db	3
      000D7B 01                     368 	.sleb128	1
      000D7C 01                     369 	.db	1
      000D7D 09                     370 	.db	9
      000D7E 00 29                  371 	.dw	Sswspi$swspi_tx16$47-Sswspi$swspi_tx16$34
      000D80 03                     372 	.db	3
      000D81 01                     373 	.sleb128	1
      000D82 01                     374 	.db	1
      000D83 09                     375 	.db	9
      000D84 00 0B                  376 	.dw	Sswspi$swspi_tx16$52-Sswspi$swspi_tx16$47
      000D86 03                     377 	.db	3
      000D87 01                     378 	.sleb128	1
      000D88 01                     379 	.db	1
      000D89 09                     380 	.db	9
      000D8A 00 04                  381 	.dw	Sswspi$swspi_tx16$53-Sswspi$swspi_tx16$52
      000D8C 03                     382 	.db	3
      000D8D 01                     383 	.sleb128	1
      000D8E 01                     384 	.db	1
      000D8F 09                     385 	.db	9
      000D90 00 0E                  386 	.dw	Sswspi$swspi_tx16$59-Sswspi$swspi_tx16$53
      000D92 03                     387 	.db	3
      000D93 02                     388 	.sleb128	2
      000D94 01                     389 	.db	1
      000D95 09                     390 	.db	9
      000D96 00 0B                  391 	.dw	Sswspi$swspi_tx16$64-Sswspi$swspi_tx16$59
      000D98 03                     392 	.db	3
      000D99 01                     393 	.sleb128	1
      000D9A 01                     394 	.db	1
      000D9B 09                     395 	.db	9
      000D9C 00 02                  396 	.dw	1+Sswspi$swspi_tx16$66-Sswspi$swspi_tx16$64
      000D9E 00                     397 	.db	0
      000D9F 01                     398 	.uleb128	1
      000DA0 01                     399 	.db	1
      000DA1                        400 Ldebug_line_end:
                                    401 
                                    402 	.area .debug_loc (NOLOAD)
      001610                        403 Ldebug_loc_start:
      001610 00 00 88 FE            404 	.dw	0,(Sswspi$swspi_tx16$65)
      001614 00 00 88 FF            405 	.dw	0,(Sswspi$swspi_tx16$67)
      001618 00 02                  406 	.dw	2
      00161A 78                     407 	.db	120
      00161B 01                     408 	.sleb128	1
      00161C 00 00 88 FD            409 	.dw	0,(Sswspi$swspi_tx16$63)
      001620 00 00 88 FE            410 	.dw	0,(Sswspi$swspi_tx16$65)
      001624 00 02                  411 	.dw	2
      001626 78                     412 	.db	120
      001627 03                     413 	.sleb128	3
      001628 00 00 88 F8            414 	.dw	0,(Sswspi$swspi_tx16$62)
      00162C 00 00 88 FD            415 	.dw	0,(Sswspi$swspi_tx16$63)
      001630 00 02                  416 	.dw	2
      001632 78                     417 	.db	120
      001633 06                     418 	.sleb128	6
      001634 00 00 88 F6            419 	.dw	0,(Sswspi$swspi_tx16$61)
      001638 00 00 88 F8            420 	.dw	0,(Sswspi$swspi_tx16$62)
      00163C 00 02                  421 	.dw	2
      00163E 78                     422 	.db	120
      00163F 05                     423 	.sleb128	5
      001640 00 00 88 F4            424 	.dw	0,(Sswspi$swspi_tx16$60)
      001644 00 00 88 F6            425 	.dw	0,(Sswspi$swspi_tx16$61)
      001648 00 02                  426 	.dw	2
      00164A 78                     427 	.db	120
      00164B 04                     428 	.sleb128	4
      00164C 00 00 88 EF            429 	.dw	0,(Sswspi$swspi_tx16$57)
      001650 00 00 88 F4            430 	.dw	0,(Sswspi$swspi_tx16$60)
      001654 00 02                  431 	.dw	2
      001656 78                     432 	.db	120
      001657 03                     433 	.sleb128	3
      001658 00 00 88 EA            434 	.dw	0,(Sswspi$swspi_tx16$56)
      00165C 00 00 88 EF            435 	.dw	0,(Sswspi$swspi_tx16$57)
      001660 00 02                  436 	.dw	2
      001662 78                     437 	.db	120
      001663 06                     438 	.sleb128	6
      001664 00 00 88 E8            439 	.dw	0,(Sswspi$swspi_tx16$55)
      001668 00 00 88 EA            440 	.dw	0,(Sswspi$swspi_tx16$56)
      00166C 00 02                  441 	.dw	2
      00166E 78                     442 	.db	120
      00166F 05                     443 	.sleb128	5
      001670 00 00 88 E6            444 	.dw	0,(Sswspi$swspi_tx16$54)
      001674 00 00 88 E8            445 	.dw	0,(Sswspi$swspi_tx16$55)
      001678 00 02                  446 	.dw	2
      00167A 78                     447 	.db	120
      00167B 04                     448 	.sleb128	4
      00167C 00 00 88 E0            449 	.dw	0,(Sswspi$swspi_tx16$51)
      001680 00 00 88 E6            450 	.dw	0,(Sswspi$swspi_tx16$54)
      001684 00 02                  451 	.dw	2
      001686 78                     452 	.db	120
      001687 03                     453 	.sleb128	3
      001688 00 00 88 DB            454 	.dw	0,(Sswspi$swspi_tx16$50)
      00168C 00 00 88 E0            455 	.dw	0,(Sswspi$swspi_tx16$51)
      001690 00 02                  456 	.dw	2
      001692 78                     457 	.db	120
      001693 06                     458 	.sleb128	6
      001694 00 00 88 D9            459 	.dw	0,(Sswspi$swspi_tx16$49)
      001698 00 00 88 DB            460 	.dw	0,(Sswspi$swspi_tx16$50)
      00169C 00 02                  461 	.dw	2
      00169E 78                     462 	.db	120
      00169F 05                     463 	.sleb128	5
      0016A0 00 00 88 D7            464 	.dw	0,(Sswspi$swspi_tx16$48)
      0016A4 00 00 88 D9            465 	.dw	0,(Sswspi$swspi_tx16$49)
      0016A8 00 02                  466 	.dw	2
      0016AA 78                     467 	.db	120
      0016AB 04                     468 	.sleb128	4
      0016AC 00 00 88 D5            469 	.dw	0,(Sswspi$swspi_tx16$45)
      0016B0 00 00 88 D7            470 	.dw	0,(Sswspi$swspi_tx16$48)
      0016B4 00 02                  471 	.dw	2
      0016B6 78                     472 	.db	120
      0016B7 03                     473 	.sleb128	3
      0016B8 00 00 88 D0            474 	.dw	0,(Sswspi$swspi_tx16$44)
      0016BC 00 00 88 D5            475 	.dw	0,(Sswspi$swspi_tx16$45)
      0016C0 00 02                  476 	.dw	2
      0016C2 78                     477 	.db	120
      0016C3 06                     478 	.sleb128	6
      0016C4 00 00 88 CE            479 	.dw	0,(Sswspi$swspi_tx16$43)
      0016C8 00 00 88 D0            480 	.dw	0,(Sswspi$swspi_tx16$44)
      0016CC 00 02                  481 	.dw	2
      0016CE 78                     482 	.db	120
      0016CF 05                     483 	.sleb128	5
      0016D0 00 00 88 CC            484 	.dw	0,(Sswspi$swspi_tx16$42)
      0016D4 00 00 88 CE            485 	.dw	0,(Sswspi$swspi_tx16$43)
      0016D8 00 02                  486 	.dw	2
      0016DA 78                     487 	.db	120
      0016DB 04                     488 	.sleb128	4
      0016DC 00 00 88 C7            489 	.dw	0,(Sswspi$swspi_tx16$39)
      0016E0 00 00 88 CC            490 	.dw	0,(Sswspi$swspi_tx16$42)
      0016E4 00 02                  491 	.dw	2
      0016E6 78                     492 	.db	120
      0016E7 03                     493 	.sleb128	3
      0016E8 00 00 88 C2            494 	.dw	0,(Sswspi$swspi_tx16$38)
      0016EC 00 00 88 C7            495 	.dw	0,(Sswspi$swspi_tx16$39)
      0016F0 00 02                  496 	.dw	2
      0016F2 78                     497 	.db	120
      0016F3 06                     498 	.sleb128	6
      0016F4 00 00 88 C0            499 	.dw	0,(Sswspi$swspi_tx16$37)
      0016F8 00 00 88 C2            500 	.dw	0,(Sswspi$swspi_tx16$38)
      0016FC 00 02                  501 	.dw	2
      0016FE 78                     502 	.db	120
      0016FF 05                     503 	.sleb128	5
      001700 00 00 88 BE            504 	.dw	0,(Sswspi$swspi_tx16$36)
      001704 00 00 88 C0            505 	.dw	0,(Sswspi$swspi_tx16$37)
      001708 00 02                  506 	.dw	2
      00170A 78                     507 	.db	120
      00170B 04                     508 	.sleb128	4
      00170C 00 00 88 A5            509 	.dw	0,(Sswspi$swspi_tx16$31)
      001710 00 00 88 BE            510 	.dw	0,(Sswspi$swspi_tx16$36)
      001714 00 02                  511 	.dw	2
      001716 78                     512 	.db	120
      001717 03                     513 	.sleb128	3
      001718 00 00 88 A0            514 	.dw	0,(Sswspi$swspi_tx16$30)
      00171C 00 00 88 A5            515 	.dw	0,(Sswspi$swspi_tx16$31)
      001720 00 02                  516 	.dw	2
      001722 78                     517 	.db	120
      001723 06                     518 	.sleb128	6
      001724 00 00 88 9E            519 	.dw	0,(Sswspi$swspi_tx16$29)
      001728 00 00 88 A0            520 	.dw	0,(Sswspi$swspi_tx16$30)
      00172C 00 02                  521 	.dw	2
      00172E 78                     522 	.db	120
      00172F 05                     523 	.sleb128	5
      001730 00 00 88 9C            524 	.dw	0,(Sswspi$swspi_tx16$28)
      001734 00 00 88 9E            525 	.dw	0,(Sswspi$swspi_tx16$29)
      001738 00 02                  526 	.dw	2
      00173A 78                     527 	.db	120
      00173B 04                     528 	.sleb128	4
      00173C 00 00 88 95            529 	.dw	0,(Sswspi$swspi_tx16$25)
      001740 00 00 88 9C            530 	.dw	0,(Sswspi$swspi_tx16$28)
      001744 00 02                  531 	.dw	2
      001746 78                     532 	.db	120
      001747 03                     533 	.sleb128	3
      001748 00 00 88 94            534 	.dw	0,(Sswspi$swspi_tx16$24)
      00174C 00 00 88 95            535 	.dw	0,(Sswspi$swspi_tx16$25)
      001750 00 02                  536 	.dw	2
      001752 78                     537 	.db	120
      001753 01                     538 	.sleb128	1
      001754 00 00 00 00            539 	.dw	0,0
      001758 00 00 00 00            540 	.dw	0,0
      00175C 00 00 88 93            541 	.dw	0,(Sswspi$swspi_init$19)
      001760 00 00 88 94            542 	.dw	0,(Sswspi$swspi_init$22)
      001764 00 02                  543 	.dw	2
      001766 78                     544 	.db	120
      001767 01                     545 	.sleb128	1
      001768 00 00 88 8E            546 	.dw	0,(Sswspi$swspi_init$18)
      00176C 00 00 88 93            547 	.dw	0,(Sswspi$swspi_init$19)
      001770 00 02                  548 	.dw	2
      001772 78                     549 	.db	120
      001773 05                     550 	.sleb128	5
      001774 00 00 88 8C            551 	.dw	0,(Sswspi$swspi_init$17)
      001778 00 00 88 8E            552 	.dw	0,(Sswspi$swspi_init$18)
      00177C 00 02                  553 	.dw	2
      00177E 78                     554 	.db	120
      00177F 04                     555 	.sleb128	4
      001780 00 00 88 8A            556 	.dw	0,(Sswspi$swspi_init$16)
      001784 00 00 88 8C            557 	.dw	0,(Sswspi$swspi_init$17)
      001788 00 02                  558 	.dw	2
      00178A 78                     559 	.db	120
      00178B 03                     560 	.sleb128	3
      00178C 00 00 88 88            561 	.dw	0,(Sswspi$swspi_init$15)
      001790 00 00 88 8A            562 	.dw	0,(Sswspi$swspi_init$16)
      001794 00 02                  563 	.dw	2
      001796 78                     564 	.db	120
      001797 02                     565 	.sleb128	2
      001798 00 00 88 86            566 	.dw	0,(Sswspi$swspi_init$13)
      00179C 00 00 88 88            567 	.dw	0,(Sswspi$swspi_init$15)
      0017A0 00 02                  568 	.dw	2
      0017A2 78                     569 	.db	120
      0017A3 01                     570 	.sleb128	1
      0017A4 00 00 88 81            571 	.dw	0,(Sswspi$swspi_init$12)
      0017A8 00 00 88 86            572 	.dw	0,(Sswspi$swspi_init$13)
      0017AC 00 02                  573 	.dw	2
      0017AE 78                     574 	.db	120
      0017AF 05                     575 	.sleb128	5
      0017B0 00 00 88 7F            576 	.dw	0,(Sswspi$swspi_init$11)
      0017B4 00 00 88 81            577 	.dw	0,(Sswspi$swspi_init$12)
      0017B8 00 02                  578 	.dw	2
      0017BA 78                     579 	.db	120
      0017BB 04                     580 	.sleb128	4
      0017BC 00 00 88 7D            581 	.dw	0,(Sswspi$swspi_init$10)
      0017C0 00 00 88 7F            582 	.dw	0,(Sswspi$swspi_init$11)
      0017C4 00 02                  583 	.dw	2
      0017C6 78                     584 	.db	120
      0017C7 03                     585 	.sleb128	3
      0017C8 00 00 88 7B            586 	.dw	0,(Sswspi$swspi_init$9)
      0017CC 00 00 88 7D            587 	.dw	0,(Sswspi$swspi_init$10)
      0017D0 00 02                  588 	.dw	2
      0017D2 78                     589 	.db	120
      0017D3 02                     590 	.sleb128	2
      0017D4 00 00 88 79            591 	.dw	0,(Sswspi$swspi_init$7)
      0017D8 00 00 88 7B            592 	.dw	0,(Sswspi$swspi_init$9)
      0017DC 00 02                  593 	.dw	2
      0017DE 78                     594 	.db	120
      0017DF 01                     595 	.sleb128	1
      0017E0 00 00 88 74            596 	.dw	0,(Sswspi$swspi_init$6)
      0017E4 00 00 88 79            597 	.dw	0,(Sswspi$swspi_init$7)
      0017E8 00 02                  598 	.dw	2
      0017EA 78                     599 	.db	120
      0017EB 05                     600 	.sleb128	5
      0017EC 00 00 88 72            601 	.dw	0,(Sswspi$swspi_init$5)
      0017F0 00 00 88 74            602 	.dw	0,(Sswspi$swspi_init$6)
      0017F4 00 02                  603 	.dw	2
      0017F6 78                     604 	.db	120
      0017F7 04                     605 	.sleb128	4
      0017F8 00 00 88 70            606 	.dw	0,(Sswspi$swspi_init$4)
      0017FC 00 00 88 72            607 	.dw	0,(Sswspi$swspi_init$5)
      001800 00 02                  608 	.dw	2
      001802 78                     609 	.db	120
      001803 03                     610 	.sleb128	3
      001804 00 00 88 6E            611 	.dw	0,(Sswspi$swspi_init$3)
      001808 00 00 88 70            612 	.dw	0,(Sswspi$swspi_init$4)
      00180C 00 02                  613 	.dw	2
      00180E 78                     614 	.db	120
      00180F 02                     615 	.sleb128	2
      001810 00 00 88 6C            616 	.dw	0,(Sswspi$swspi_init$1)
      001814 00 00 88 6E            617 	.dw	0,(Sswspi$swspi_init$3)
      001818 00 02                  618 	.dw	2
      00181A 78                     619 	.db	120
      00181B 01                     620 	.sleb128	1
      00181C 00 00 00 00            621 	.dw	0,0
      001820 00 00 00 00            622 	.dw	0,0
                                    623 
                                    624 	.area .debug_abbrev (NOLOAD)
      000284                        625 Ldebug_abbrev:
      000284 04                     626 	.uleb128	4
      000285 05                     627 	.uleb128	5
      000286 00                     628 	.db	0
      000287 02                     629 	.uleb128	2
      000288 0A                     630 	.uleb128	10
      000289 03                     631 	.uleb128	3
      00028A 08                     632 	.uleb128	8
      00028B 49                     633 	.uleb128	73
      00028C 13                     634 	.uleb128	19
      00028D 00                     635 	.uleb128	0
      00028E 00                     636 	.uleb128	0
      00028F 03                     637 	.uleb128	3
      000290 2E                     638 	.uleb128	46
      000291 01                     639 	.db	1
      000292 01                     640 	.uleb128	1
      000293 13                     641 	.uleb128	19
      000294 03                     642 	.uleb128	3
      000295 08                     643 	.uleb128	8
      000296 11                     644 	.uleb128	17
      000297 01                     645 	.uleb128	1
      000298 12                     646 	.uleb128	18
      000299 01                     647 	.uleb128	1
      00029A 3F                     648 	.uleb128	63
      00029B 0C                     649 	.uleb128	12
      00029C 40                     650 	.uleb128	64
      00029D 06                     651 	.uleb128	6
      00029E 00                     652 	.uleb128	0
      00029F 00                     653 	.uleb128	0
      0002A0 07                     654 	.uleb128	7
      0002A1 34                     655 	.uleb128	52
      0002A2 00                     656 	.db	0
      0002A3 02                     657 	.uleb128	2
      0002A4 0A                     658 	.uleb128	10
      0002A5 03                     659 	.uleb128	3
      0002A6 08                     660 	.uleb128	8
      0002A7 49                     661 	.uleb128	73
      0002A8 13                     662 	.uleb128	19
      0002A9 00                     663 	.uleb128	0
      0002AA 00                     664 	.uleb128	0
      0002AB 01                     665 	.uleb128	1
      0002AC 11                     666 	.uleb128	17
      0002AD 01                     667 	.db	1
      0002AE 03                     668 	.uleb128	3
      0002AF 08                     669 	.uleb128	8
      0002B0 10                     670 	.uleb128	16
      0002B1 06                     671 	.uleb128	6
      0002B2 13                     672 	.uleb128	19
      0002B3 0B                     673 	.uleb128	11
      0002B4 25                     674 	.uleb128	37
      0002B5 08                     675 	.uleb128	8
      0002B6 00                     676 	.uleb128	0
      0002B7 00                     677 	.uleb128	0
      0002B8 06                     678 	.uleb128	6
      0002B9 0B                     679 	.uleb128	11
      0002BA 00                     680 	.db	0
      0002BB 11                     681 	.uleb128	17
      0002BC 01                     682 	.uleb128	1
      0002BD 12                     683 	.uleb128	18
      0002BE 01                     684 	.uleb128	1
      0002BF 00                     685 	.uleb128	0
      0002C0 00                     686 	.uleb128	0
      0002C1 02                     687 	.uleb128	2
      0002C2 2E                     688 	.uleb128	46
      0002C3 00                     689 	.db	0
      0002C4 03                     690 	.uleb128	3
      0002C5 08                     691 	.uleb128	8
      0002C6 11                     692 	.uleb128	17
      0002C7 01                     693 	.uleb128	1
      0002C8 12                     694 	.uleb128	18
      0002C9 01                     695 	.uleb128	1
      0002CA 3F                     696 	.uleb128	63
      0002CB 0C                     697 	.uleb128	12
      0002CC 40                     698 	.uleb128	64
      0002CD 06                     699 	.uleb128	6
      0002CE 00                     700 	.uleb128	0
      0002CF 00                     701 	.uleb128	0
      0002D0 05                     702 	.uleb128	5
      0002D1 0B                     703 	.uleb128	11
      0002D2 01                     704 	.db	1
      0002D3 01                     705 	.uleb128	1
      0002D4 13                     706 	.uleb128	19
      0002D5 11                     707 	.uleb128	17
      0002D6 01                     708 	.uleb128	1
      0002D7 12                     709 	.uleb128	18
      0002D8 01                     710 	.uleb128	1
      0002D9 00                     711 	.uleb128	0
      0002DA 00                     712 	.uleb128	0
      0002DB 08                     713 	.uleb128	8
      0002DC 24                     714 	.uleb128	36
      0002DD 00                     715 	.db	0
      0002DE 03                     716 	.uleb128	3
      0002DF 08                     717 	.uleb128	8
      0002E0 0B                     718 	.uleb128	11
      0002E1 0B                     719 	.uleb128	11
      0002E2 3E                     720 	.uleb128	62
      0002E3 0B                     721 	.uleb128	11
      0002E4 00                     722 	.uleb128	0
      0002E5 00                     723 	.uleb128	0
      0002E6 00                     724 	.uleb128	0
                                    725 
                                    726 	.area .debug_info (NOLOAD)
      001497 00 00 00 BA            727 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00149B                        728 Ldebug_info_start:
      00149B 00 02                  729 	.dw	2
      00149D 00 00 02 84            730 	.dw	0,(Ldebug_abbrev)
      0014A1 04                     731 	.db	4
      0014A2 01                     732 	.uleb128	1
      0014A3 2E 2F 73 72 63 2F 73   733 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      0014B0 00                     734 	.db	0
      0014B1 00 00 0C BB            735 	.dw	0,(Ldebug_line_start+-4)
      0014B5 01                     736 	.db	1
      0014B6 53 44 43 43 20 76 65   737 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0014CF 00                     738 	.db	0
      0014D0 02                     739 	.uleb128	2
      0014D1 73 77 73 70 69 5F 69   740 	.ascii "swspi_init"
             6E 69 74
      0014DB 00                     741 	.db	0
      0014DC 00 00 88 6C            742 	.dw	0,(_swspi_init)
      0014E0 00 00 88 94            743 	.dw	0,(XG$swspi_init$0$0+1)
      0014E4 01                     744 	.db	1
      0014E5 00 00 17 5C            745 	.dw	0,(Ldebug_loc_start+332)
      0014E9 03                     746 	.uleb128	3
      0014EA 00 00 00 AB            747 	.dw	0,171
      0014EE 73 77 73 70 69 5F 74   748 	.ascii "swspi_tx16"
             78 31 36
      0014F8 00                     749 	.db	0
      0014F9 00 00 88 94            750 	.dw	0,(_swspi_tx16)
      0014FD 00 00 88 FF            751 	.dw	0,(XG$swspi_tx16$0$0+1)
      001501 01                     752 	.db	1
      001502 00 00 16 10            753 	.dw	0,(Ldebug_loc_start)
      001506 04                     754 	.uleb128	4
      001507 02                     755 	.db	2
      001508 91                     756 	.db	145
      001509 02                     757 	.sleb128	2
      00150A 64 61 74 61            758 	.ascii "data"
      00150E 00                     759 	.db	0
      00150F 00 00 00 AB            760 	.dw	0,171
      001513 05                     761 	.uleb128	5
      001514 00 00 00 9C            762 	.dw	0,156
      001518 00 00 88 AC            763 	.dw	0,(Sswspi$swspi_tx16$33)
      00151C 00 00 88 EF            764 	.dw	0,(Sswspi$swspi_tx16$58)
      001520 06                     765 	.uleb128	6
      001521 00 00 88 BC            766 	.dw	0,(Sswspi$swspi_tx16$35)
      001525 00 00 88 C7            767 	.dw	0,(Sswspi$swspi_tx16$40)
      001529 06                     768 	.uleb128	6
      00152A 00 00 88 CA            769 	.dw	0,(Sswspi$swspi_tx16$41)
      00152E 00 00 88 D5            770 	.dw	0,(Sswspi$swspi_tx16$46)
      001532 00                     771 	.uleb128	0
      001533 07                     772 	.uleb128	7
      001534 02                     773 	.db	2
      001535 91                     774 	.db	145
      001536 7E                     775 	.sleb128	-2
      001537 6D 61 73 6B 61         776 	.ascii "maska"
      00153C 00                     777 	.db	0
      00153D 00 00 00 AB            778 	.dw	0,171
      001541 00                     779 	.uleb128	0
      001542 08                     780 	.uleb128	8
      001543 75 6E 73 69 67 6E 65   781 	.ascii "unsigned int"
             64 20 69 6E 74
      00154F 00                     782 	.db	0
      001550 02                     783 	.db	2
      001551 07                     784 	.db	7
      001552 00                     785 	.uleb128	0
      001553 00                     786 	.uleb128	0
      001554 00                     787 	.uleb128	0
      001555                        788 Ldebug_info_end:
                                    789 
                                    790 	.area .debug_pubnames (NOLOAD)
      000492 00 00 00 2C            791 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000496                        792 Ldebug_pubnames_start:
      000496 00 02                  793 	.dw	2
      000498 00 00 14 97            794 	.dw	0,(Ldebug_info_start-4)
      00049C 00 00 00 BE            795 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004A0 00 00 00 39            796 	.dw	0,57
      0004A4 73 77 73 70 69 5F 69   797 	.ascii "swspi_init"
             6E 69 74
      0004AE 00                     798 	.db	0
      0004AF 00 00 00 52            799 	.dw	0,82
      0004B3 73 77 73 70 69 5F 74   800 	.ascii "swspi_tx16"
             78 31 36
      0004BD 00                     801 	.db	0
      0004BE 00 00 00 00            802 	.dw	0,0
      0004C2                        803 Ldebug_pubnames_end:
                                    804 
                                    805 	.area .debug_frame (NOLOAD)
      001384 00 00                  806 	.dw	0
      001386 00 0E                  807 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001388                        808 Ldebug_CIE0_start:
      001388 FF FF                  809 	.dw	0xffff
      00138A FF FF                  810 	.dw	0xffff
      00138C 01                     811 	.db	1
      00138D 00                     812 	.db	0
      00138E 01                     813 	.uleb128	1
      00138F 7F                     814 	.sleb128	-1
      001390 09                     815 	.db	9
      001391 0C                     816 	.db	12
      001392 08                     817 	.uleb128	8
      001393 02                     818 	.uleb128	2
      001394 89                     819 	.db	137
      001395 01                     820 	.uleb128	1
      001396                        821 Ldebug_CIE0_end:
      001396 00 00 00 C9            822 	.dw	0,201
      00139A 00 00 13 84            823 	.dw	0,(Ldebug_CIE0_start-4)
      00139E 00 00 88 94            824 	.dw	0,(Sswspi$swspi_tx16$24)	;initial loc
      0013A2 00 00 00 6B            825 	.dw	0,Sswspi$swspi_tx16$67-Sswspi$swspi_tx16$24
      0013A6 01                     826 	.db	1
      0013A7 00 00 88 94            827 	.dw	0,(Sswspi$swspi_tx16$24)
      0013AB 0E                     828 	.db	14
      0013AC 02                     829 	.uleb128	2
      0013AD 01                     830 	.db	1
      0013AE 00 00 88 95            831 	.dw	0,(Sswspi$swspi_tx16$25)
      0013B2 0E                     832 	.db	14
      0013B3 04                     833 	.uleb128	4
      0013B4 01                     834 	.db	1
      0013B5 00 00 88 9C            835 	.dw	0,(Sswspi$swspi_tx16$28)
      0013B9 0E                     836 	.db	14
      0013BA 05                     837 	.uleb128	5
      0013BB 01                     838 	.db	1
      0013BC 00 00 88 9E            839 	.dw	0,(Sswspi$swspi_tx16$29)
      0013C0 0E                     840 	.db	14
      0013C1 06                     841 	.uleb128	6
      0013C2 01                     842 	.db	1
      0013C3 00 00 88 A0            843 	.dw	0,(Sswspi$swspi_tx16$30)
      0013C7 0E                     844 	.db	14
      0013C8 07                     845 	.uleb128	7
      0013C9 01                     846 	.db	1
      0013CA 00 00 88 A5            847 	.dw	0,(Sswspi$swspi_tx16$31)
      0013CE 0E                     848 	.db	14
      0013CF 04                     849 	.uleb128	4
      0013D0 01                     850 	.db	1
      0013D1 00 00 88 BE            851 	.dw	0,(Sswspi$swspi_tx16$36)
      0013D5 0E                     852 	.db	14
      0013D6 05                     853 	.uleb128	5
      0013D7 01                     854 	.db	1
      0013D8 00 00 88 C0            855 	.dw	0,(Sswspi$swspi_tx16$37)
      0013DC 0E                     856 	.db	14
      0013DD 06                     857 	.uleb128	6
      0013DE 01                     858 	.db	1
      0013DF 00 00 88 C2            859 	.dw	0,(Sswspi$swspi_tx16$38)
      0013E3 0E                     860 	.db	14
      0013E4 07                     861 	.uleb128	7
      0013E5 01                     862 	.db	1
      0013E6 00 00 88 C7            863 	.dw	0,(Sswspi$swspi_tx16$39)
      0013EA 0E                     864 	.db	14
      0013EB 04                     865 	.uleb128	4
      0013EC 01                     866 	.db	1
      0013ED 00 00 88 CC            867 	.dw	0,(Sswspi$swspi_tx16$42)
      0013F1 0E                     868 	.db	14
      0013F2 05                     869 	.uleb128	5
      0013F3 01                     870 	.db	1
      0013F4 00 00 88 CE            871 	.dw	0,(Sswspi$swspi_tx16$43)
      0013F8 0E                     872 	.db	14
      0013F9 06                     873 	.uleb128	6
      0013FA 01                     874 	.db	1
      0013FB 00 00 88 D0            875 	.dw	0,(Sswspi$swspi_tx16$44)
      0013FF 0E                     876 	.db	14
      001400 07                     877 	.uleb128	7
      001401 01                     878 	.db	1
      001402 00 00 88 D5            879 	.dw	0,(Sswspi$swspi_tx16$45)
      001406 0E                     880 	.db	14
      001407 04                     881 	.uleb128	4
      001408 01                     882 	.db	1
      001409 00 00 88 D7            883 	.dw	0,(Sswspi$swspi_tx16$48)
      00140D 0E                     884 	.db	14
      00140E 05                     885 	.uleb128	5
      00140F 01                     886 	.db	1
      001410 00 00 88 D9            887 	.dw	0,(Sswspi$swspi_tx16$49)
      001414 0E                     888 	.db	14
      001415 06                     889 	.uleb128	6
      001416 01                     890 	.db	1
      001417 00 00 88 DB            891 	.dw	0,(Sswspi$swspi_tx16$50)
      00141B 0E                     892 	.db	14
      00141C 07                     893 	.uleb128	7
      00141D 01                     894 	.db	1
      00141E 00 00 88 E0            895 	.dw	0,(Sswspi$swspi_tx16$51)
      001422 0E                     896 	.db	14
      001423 04                     897 	.uleb128	4
      001424 01                     898 	.db	1
      001425 00 00 88 E6            899 	.dw	0,(Sswspi$swspi_tx16$54)
      001429 0E                     900 	.db	14
      00142A 05                     901 	.uleb128	5
      00142B 01                     902 	.db	1
      00142C 00 00 88 E8            903 	.dw	0,(Sswspi$swspi_tx16$55)
      001430 0E                     904 	.db	14
      001431 06                     905 	.uleb128	6
      001432 01                     906 	.db	1
      001433 00 00 88 EA            907 	.dw	0,(Sswspi$swspi_tx16$56)
      001437 0E                     908 	.db	14
      001438 07                     909 	.uleb128	7
      001439 01                     910 	.db	1
      00143A 00 00 88 EF            911 	.dw	0,(Sswspi$swspi_tx16$57)
      00143E 0E                     912 	.db	14
      00143F 04                     913 	.uleb128	4
      001440 01                     914 	.db	1
      001441 00 00 88 F4            915 	.dw	0,(Sswspi$swspi_tx16$60)
      001445 0E                     916 	.db	14
      001446 05                     917 	.uleb128	5
      001447 01                     918 	.db	1
      001448 00 00 88 F6            919 	.dw	0,(Sswspi$swspi_tx16$61)
      00144C 0E                     920 	.db	14
      00144D 06                     921 	.uleb128	6
      00144E 01                     922 	.db	1
      00144F 00 00 88 F8            923 	.dw	0,(Sswspi$swspi_tx16$62)
      001453 0E                     924 	.db	14
      001454 07                     925 	.uleb128	7
      001455 01                     926 	.db	1
      001456 00 00 88 FD            927 	.dw	0,(Sswspi$swspi_tx16$63)
      00145A 0E                     928 	.db	14
      00145B 04                     929 	.uleb128	4
      00145C 01                     930 	.db	1
      00145D 00 00 88 FE            931 	.dw	0,(Sswspi$swspi_tx16$65)
      001461 0E                     932 	.db	14
      001462 02                     933 	.uleb128	2
                                    934 
                                    935 	.area .debug_frame (NOLOAD)
      001463 00 00                  936 	.dw	0
      001465 00 0E                  937 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001467                        938 Ldebug_CIE1_start:
      001467 FF FF                  939 	.dw	0xffff
      001469 FF FF                  940 	.dw	0xffff
      00146B 01                     941 	.db	1
      00146C 00                     942 	.db	0
      00146D 01                     943 	.uleb128	1
      00146E 7F                     944 	.sleb128	-1
      00146F 09                     945 	.db	9
      001470 0C                     946 	.db	12
      001471 08                     947 	.uleb128	8
      001472 02                     948 	.uleb128	2
      001473 89                     949 	.db	137
      001474 01                     950 	.uleb128	1
      001475                        951 Ldebug_CIE1_end:
      001475 00 00 00 7C            952 	.dw	0,124
      001479 00 00 14 63            953 	.dw	0,(Ldebug_CIE1_start-4)
      00147D 00 00 88 6C            954 	.dw	0,(Sswspi$swspi_init$1)	;initial loc
      001481 00 00 00 28            955 	.dw	0,Sswspi$swspi_init$22-Sswspi$swspi_init$1
      001485 01                     956 	.db	1
      001486 00 00 88 6C            957 	.dw	0,(Sswspi$swspi_init$1)
      00148A 0E                     958 	.db	14
      00148B 02                     959 	.uleb128	2
      00148C 01                     960 	.db	1
      00148D 00 00 88 6E            961 	.dw	0,(Sswspi$swspi_init$3)
      001491 0E                     962 	.db	14
      001492 03                     963 	.uleb128	3
      001493 01                     964 	.db	1
      001494 00 00 88 70            965 	.dw	0,(Sswspi$swspi_init$4)
      001498 0E                     966 	.db	14
      001499 04                     967 	.uleb128	4
      00149A 01                     968 	.db	1
      00149B 00 00 88 72            969 	.dw	0,(Sswspi$swspi_init$5)
      00149F 0E                     970 	.db	14
      0014A0 05                     971 	.uleb128	5
      0014A1 01                     972 	.db	1
      0014A2 00 00 88 74            973 	.dw	0,(Sswspi$swspi_init$6)
      0014A6 0E                     974 	.db	14
      0014A7 06                     975 	.uleb128	6
      0014A8 01                     976 	.db	1
      0014A9 00 00 88 79            977 	.dw	0,(Sswspi$swspi_init$7)
      0014AD 0E                     978 	.db	14
      0014AE 02                     979 	.uleb128	2
      0014AF 01                     980 	.db	1
      0014B0 00 00 88 7B            981 	.dw	0,(Sswspi$swspi_init$9)
      0014B4 0E                     982 	.db	14
      0014B5 03                     983 	.uleb128	3
      0014B6 01                     984 	.db	1
      0014B7 00 00 88 7D            985 	.dw	0,(Sswspi$swspi_init$10)
      0014BB 0E                     986 	.db	14
      0014BC 04                     987 	.uleb128	4
      0014BD 01                     988 	.db	1
      0014BE 00 00 88 7F            989 	.dw	0,(Sswspi$swspi_init$11)
      0014C2 0E                     990 	.db	14
      0014C3 05                     991 	.uleb128	5
      0014C4 01                     992 	.db	1
      0014C5 00 00 88 81            993 	.dw	0,(Sswspi$swspi_init$12)
      0014C9 0E                     994 	.db	14
      0014CA 06                     995 	.uleb128	6
      0014CB 01                     996 	.db	1
      0014CC 00 00 88 86            997 	.dw	0,(Sswspi$swspi_init$13)
      0014D0 0E                     998 	.db	14
      0014D1 02                     999 	.uleb128	2
      0014D2 01                    1000 	.db	1
      0014D3 00 00 88 88           1001 	.dw	0,(Sswspi$swspi_init$15)
      0014D7 0E                    1002 	.db	14
      0014D8 03                    1003 	.uleb128	3
      0014D9 01                    1004 	.db	1
      0014DA 00 00 88 8A           1005 	.dw	0,(Sswspi$swspi_init$16)
      0014DE 0E                    1006 	.db	14
      0014DF 04                    1007 	.uleb128	4
      0014E0 01                    1008 	.db	1
      0014E1 00 00 88 8C           1009 	.dw	0,(Sswspi$swspi_init$17)
      0014E5 0E                    1010 	.db	14
      0014E6 05                    1011 	.uleb128	5
      0014E7 01                    1012 	.db	1
      0014E8 00 00 88 8E           1013 	.dw	0,(Sswspi$swspi_init$18)
      0014EC 0E                    1014 	.db	14
      0014ED 06                    1015 	.uleb128	6
      0014EE 01                    1016 	.db	1
      0014EF 00 00 88 93           1017 	.dw	0,(Sswspi$swspi_init$19)
      0014F3 0E                    1018 	.db	14
      0014F4 02                    1019 	.uleb128	2
