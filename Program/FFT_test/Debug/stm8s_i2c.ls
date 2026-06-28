   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 67 void I2C_DeInit(void)
  43                     ; 68 {
  45                     .text:	section	.text,new
  46  0000               _I2C_DeInit:
  50                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  52  0000 725f5210      	clr	21008
  53                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  55  0004 725f5211      	clr	21009
  56                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  58  0008 725f5212      	clr	21010
  59                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  61  000c 725f5213      	clr	21011
  62                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  64  0010 725f5214      	clr	21012
  65                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  67  0014 725f521a      	clr	21018
  68                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  70  0018 725f521b      	clr	21019
  71                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  73  001c 725f521c      	clr	21020
  74                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  76  0020 3502521d      	mov	21021,#2
  77                     ; 78 }
  80  0024 81            	ret
 248                     .const:	section	.text
 249  0000               L44:
 250  0000 00061a81      	dc.l	400001
 251  0004               L05:
 252  0004 000186a1      	dc.l	100001
 253  0008               L25:
 254  0008 000f4240      	dc.l	1000000
 255                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 255                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 255                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 255                     ; 99 {
 256                     .text:	section	.text,new
 257  0000               _I2C_Init:
 259  0000 5209          	subw	sp,#9
 260       00000009      OFST:	set	9
 263                     ; 100   uint16_t result = 0x0004;
 265                     ; 101   uint16_t tmpval = 0;
 267                     ; 102   uint8_t tmpccrh = 0;
 269  0002 0f07          	clr	(OFST-2,sp)
 271                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 273  0004 0d13          	tnz	(OFST+10,sp)
 274  0006 270c          	jreq	L21
 275  0008 7b13          	ld	a,(OFST+10,sp)
 276  000a a101          	cp	a,#1
 277  000c 2706          	jreq	L21
 278  000e 7b13          	ld	a,(OFST+10,sp)
 279  0010 a102          	cp	a,#2
 280  0012 2603          	jrne	L01
 281  0014               L21:
 282  0014 4f            	clr	a
 283  0015 2010          	jra	L41
 284  0017               L01:
 285  0017 ae0069        	ldw	x,#105
 286  001a 89            	pushw	x
 287  001b ae0000        	ldw	x,#0
 288  001e 89            	pushw	x
 289  001f ae000c        	ldw	x,#L511
 290  0022 cd0000        	call	_assert_failed
 292  0025 5b04          	addw	sp,#4
 293  0027               L41:
 294                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 296  0027 0d14          	tnz	(OFST+11,sp)
 297  0029 2706          	jreq	L02
 298  002b 7b14          	ld	a,(OFST+11,sp)
 299  002d a180          	cp	a,#128
 300  002f 2603          	jrne	L61
 301  0031               L02:
 302  0031 4f            	clr	a
 303  0032 2010          	jra	L22
 304  0034               L61:
 305  0034 ae006a        	ldw	x,#106
 306  0037 89            	pushw	x
 307  0038 ae0000        	ldw	x,#0
 308  003b 89            	pushw	x
 309  003c ae000c        	ldw	x,#L511
 310  003f cd0000        	call	_assert_failed
 312  0042 5b04          	addw	sp,#4
 313  0044               L22:
 314                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 316  0044 1e10          	ldw	x,(OFST+7,sp)
 317  0046 a30400        	cpw	x,#1024
 318  0049 2403          	jruge	L42
 319  004b 4f            	clr	a
 320  004c 2010          	jra	L62
 321  004e               L42:
 322  004e ae006b        	ldw	x,#107
 323  0051 89            	pushw	x
 324  0052 ae0000        	ldw	x,#0
 325  0055 89            	pushw	x
 326  0056 ae000c        	ldw	x,#L511
 327  0059 cd0000        	call	_assert_failed
 329  005c 5b04          	addw	sp,#4
 330  005e               L62:
 331                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 333  005e 0d12          	tnz	(OFST+9,sp)
 334  0060 2706          	jreq	L23
 335  0062 7b12          	ld	a,(OFST+9,sp)
 336  0064 a140          	cp	a,#64
 337  0066 2603          	jrne	L03
 338  0068               L23:
 339  0068 4f            	clr	a
 340  0069 2010          	jra	L43
 341  006b               L03:
 342  006b ae006c        	ldw	x,#108
 343  006e 89            	pushw	x
 344  006f ae0000        	ldw	x,#0
 345  0072 89            	pushw	x
 346  0073 ae000c        	ldw	x,#L511
 347  0076 cd0000        	call	_assert_failed
 349  0079 5b04          	addw	sp,#4
 350  007b               L43:
 351                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 353  007b 0d15          	tnz	(OFST+12,sp)
 354  007d 2709          	jreq	L63
 355  007f 7b15          	ld	a,(OFST+12,sp)
 356  0081 a111          	cp	a,#17
 357  0083 2403          	jruge	L63
 358  0085 4f            	clr	a
 359  0086 2010          	jra	L04
 360  0088               L63:
 361  0088 ae006d        	ldw	x,#109
 362  008b 89            	pushw	x
 363  008c ae0000        	ldw	x,#0
 364  008f 89            	pushw	x
 365  0090 ae000c        	ldw	x,#L511
 366  0093 cd0000        	call	_assert_failed
 368  0096 5b04          	addw	sp,#4
 369  0098               L04:
 370                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 372  0098 96            	ldw	x,sp
 373  0099 1c000c        	addw	x,#OFST+3
 374  009c cd0000        	call	c_lzmp
 376  009f 2712          	jreq	L24
 377  00a1 96            	ldw	x,sp
 378  00a2 1c000c        	addw	x,#OFST+3
 379  00a5 cd0000        	call	c_ltor
 381  00a8 ae0000        	ldw	x,#L44
 382  00ab cd0000        	call	c_lcmp
 384  00ae 2403          	jruge	L24
 385  00b0 4f            	clr	a
 386  00b1 2010          	jra	L64
 387  00b3               L24:
 388  00b3 ae006e        	ldw	x,#110
 389  00b6 89            	pushw	x
 390  00b7 ae0000        	ldw	x,#0
 391  00ba 89            	pushw	x
 392  00bb ae000c        	ldw	x,#L511
 393  00be cd0000        	call	_assert_failed
 395  00c1 5b04          	addw	sp,#4
 396  00c3               L64:
 397                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 399  00c3 c65212        	ld	a,21010
 400  00c6 a4c0          	and	a,#192
 401  00c8 c75212        	ld	21010,a
 402                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 404  00cb c65212        	ld	a,21010
 405  00ce 1a15          	or	a,(OFST+12,sp)
 406  00d0 c75212        	ld	21010,a
 407                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 409  00d3 72115210      	bres	21008,#0
 410                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 412  00d7 c6521c        	ld	a,21020
 413  00da a430          	and	a,#48
 414  00dc c7521c        	ld	21020,a
 415                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 417  00df 725f521b      	clr	21019
 418                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 420  00e3 96            	ldw	x,sp
 421  00e4 1c000c        	addw	x,#OFST+3
 422  00e7 cd0000        	call	c_ltor
 424  00ea ae0004        	ldw	x,#L05
 425  00ed cd0000        	call	c_lcmp
 427  00f0 2403          	jruge	L45
 428  00f2 cc017f        	jp	L711
 429  00f5               L45:
 430                     ; 131     tmpccrh = I2C_CCRH_FS;
 432  00f5 a680          	ld	a,#128
 433  00f7 6b07          	ld	(OFST-2,sp),a
 435                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 437  00f9 0d12          	tnz	(OFST+9,sp)
 438  00fb 2630          	jrne	L121
 439                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 441  00fd 96            	ldw	x,sp
 442  00fe 1c000c        	addw	x,#OFST+3
 443  0101 cd0000        	call	c_ltor
 445  0104 a603          	ld	a,#3
 446  0106 cd0000        	call	c_smul
 448  0109 96            	ldw	x,sp
 449  010a 1c0001        	addw	x,#OFST-8
 450  010d cd0000        	call	c_rtol
 453  0110 7b15          	ld	a,(OFST+12,sp)
 454  0112 b703          	ld	c_lreg+3,a
 455  0114 3f02          	clr	c_lreg+2
 456  0116 3f01          	clr	c_lreg+1
 457  0118 3f00          	clr	c_lreg
 458  011a ae0008        	ldw	x,#L25
 459  011d cd0000        	call	c_lmul
 461  0120 96            	ldw	x,sp
 462  0121 1c0001        	addw	x,#OFST-8
 463  0124 cd0000        	call	c_ludv
 465  0127 be02          	ldw	x,c_lreg+2
 466  0129 1f08          	ldw	(OFST-1,sp),x
 469  012b 2034          	jra	L321
 470  012d               L121:
 471                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 473  012d 96            	ldw	x,sp
 474  012e 1c000c        	addw	x,#OFST+3
 475  0131 cd0000        	call	c_ltor
 477  0134 a619          	ld	a,#25
 478  0136 cd0000        	call	c_smul
 480  0139 96            	ldw	x,sp
 481  013a 1c0001        	addw	x,#OFST-8
 482  013d cd0000        	call	c_rtol
 485  0140 7b15          	ld	a,(OFST+12,sp)
 486  0142 b703          	ld	c_lreg+3,a
 487  0144 3f02          	clr	c_lreg+2
 488  0146 3f01          	clr	c_lreg+1
 489  0148 3f00          	clr	c_lreg
 490  014a ae0008        	ldw	x,#L25
 491  014d cd0000        	call	c_lmul
 493  0150 96            	ldw	x,sp
 494  0151 1c0001        	addw	x,#OFST-8
 495  0154 cd0000        	call	c_ludv
 497  0157 be02          	ldw	x,c_lreg+2
 498  0159 1f08          	ldw	(OFST-1,sp),x
 500                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 502  015b 7b07          	ld	a,(OFST-2,sp)
 503  015d aa40          	or	a,#64
 504  015f 6b07          	ld	(OFST-2,sp),a
 506  0161               L321:
 507                     ; 147     if (result < (uint16_t)0x01)
 509  0161 1e08          	ldw	x,(OFST-1,sp)
 510  0163 2605          	jrne	L521
 511                     ; 150       result = (uint16_t)0x0001;
 513  0165 ae0001        	ldw	x,#1
 514  0168 1f08          	ldw	(OFST-1,sp),x
 516  016a               L521:
 517                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 519  016a 7b15          	ld	a,(OFST+12,sp)
 520  016c 97            	ld	xl,a
 521  016d a603          	ld	a,#3
 522  016f 42            	mul	x,a
 523  0170 a60a          	ld	a,#10
 524  0172 cd0000        	call	c_sdivx
 526  0175 5c            	incw	x
 527  0176 1f05          	ldw	(OFST-4,sp),x
 529                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 531  0178 7b06          	ld	a,(OFST-3,sp)
 532  017a c7521d        	ld	21021,a
 534  017d 2043          	jra	L721
 535  017f               L711:
 536                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 538  017f 96            	ldw	x,sp
 539  0180 1c000c        	addw	x,#OFST+3
 540  0183 cd0000        	call	c_ltor
 542  0186 3803          	sll	c_lreg+3
 543  0188 3902          	rlc	c_lreg+2
 544  018a 3901          	rlc	c_lreg+1
 545  018c 3900          	rlc	c_lreg
 546  018e 96            	ldw	x,sp
 547  018f 1c0001        	addw	x,#OFST-8
 548  0192 cd0000        	call	c_rtol
 551  0195 7b15          	ld	a,(OFST+12,sp)
 552  0197 b703          	ld	c_lreg+3,a
 553  0199 3f02          	clr	c_lreg+2
 554  019b 3f01          	clr	c_lreg+1
 555  019d 3f00          	clr	c_lreg
 556  019f ae0008        	ldw	x,#L25
 557  01a2 cd0000        	call	c_lmul
 559  01a5 96            	ldw	x,sp
 560  01a6 1c0001        	addw	x,#OFST-8
 561  01a9 cd0000        	call	c_ludv
 563  01ac be02          	ldw	x,c_lreg+2
 564  01ae 1f08          	ldw	(OFST-1,sp),x
 566                     ; 167     if (result < (uint16_t)0x0004)
 568  01b0 1e08          	ldw	x,(OFST-1,sp)
 569  01b2 a30004        	cpw	x,#4
 570  01b5 2405          	jruge	L131
 571                     ; 170       result = (uint16_t)0x0004;
 573  01b7 ae0004        	ldw	x,#4
 574  01ba 1f08          	ldw	(OFST-1,sp),x
 576  01bc               L131:
 577                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 579  01bc 7b15          	ld	a,(OFST+12,sp)
 580  01be 4c            	inc	a
 581  01bf c7521d        	ld	21021,a
 582  01c2               L721:
 583                     ; 181   I2C->CCRL = (uint8_t)result;
 585  01c2 7b09          	ld	a,(OFST+0,sp)
 586  01c4 c7521b        	ld	21019,a
 587                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 589  01c7 7b08          	ld	a,(OFST-1,sp)
 590  01c9 a40f          	and	a,#15
 591  01cb 1a07          	or	a,(OFST-2,sp)
 592  01cd c7521c        	ld	21020,a
 593                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 595  01d0 72105210      	bset	21008,#0
 596                     ; 188   I2C_AcknowledgeConfig(Ack);
 598  01d4 7b13          	ld	a,(OFST+10,sp)
 599  01d6 cd0000        	call	_I2C_AcknowledgeConfig
 601                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 603  01d9 7b11          	ld	a,(OFST+8,sp)
 604  01db c75213        	ld	21011,a
 605                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 605                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 607  01de 1e10          	ldw	x,(OFST+7,sp)
 608  01e0 4f            	clr	a
 609  01e1 01            	rrwa	x,a
 610  01e2 48            	sll	a
 611  01e3 59            	rlcw	x
 612  01e4 01            	rrwa	x,a
 613  01e5 a406          	and	a,#6
 614  01e7 5f            	clrw	x
 615  01e8 6b04          	ld	(OFST-5,sp),a
 617  01ea 7b14          	ld	a,(OFST+11,sp)
 618  01ec aa40          	or	a,#64
 619  01ee 1a04          	or	a,(OFST-5,sp)
 620  01f0 c75214        	ld	21012,a
 621                     ; 194 }
 624  01f3 5b09          	addw	sp,#9
 625  01f5 81            	ret
 681                     ; 202 void I2C_Cmd(FunctionalState NewState)
 681                     ; 203 {
 682                     .text:	section	.text,new
 683  0000               _I2C_Cmd:
 685  0000 88            	push	a
 686       00000000      OFST:	set	0
 689                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 691  0001 4d            	tnz	a
 692  0002 2704          	jreq	L26
 693  0004 a101          	cp	a,#1
 694  0006 2603          	jrne	L06
 695  0008               L26:
 696  0008 4f            	clr	a
 697  0009 2010          	jra	L46
 698  000b               L06:
 699  000b ae00cd        	ldw	x,#205
 700  000e 89            	pushw	x
 701  000f ae0000        	ldw	x,#0
 702  0012 89            	pushw	x
 703  0013 ae000c        	ldw	x,#L511
 704  0016 cd0000        	call	_assert_failed
 706  0019 5b04          	addw	sp,#4
 707  001b               L46:
 708                     ; 207   if (NewState != DISABLE)
 710  001b 0d01          	tnz	(OFST+1,sp)
 711  001d 2706          	jreq	L161
 712                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 714  001f 72105210      	bset	21008,#0
 716  0023 2004          	jra	L361
 717  0025               L161:
 718                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 720  0025 72115210      	bres	21008,#0
 721  0029               L361:
 722                     ; 217 }
 725  0029 84            	pop	a
 726  002a 81            	ret
 762                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 762                     ; 226 {
 763                     .text:	section	.text,new
 764  0000               _I2C_GeneralCallCmd:
 766  0000 88            	push	a
 767       00000000      OFST:	set	0
 770                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 772  0001 4d            	tnz	a
 773  0002 2704          	jreq	L27
 774  0004 a101          	cp	a,#1
 775  0006 2603          	jrne	L07
 776  0008               L27:
 777  0008 4f            	clr	a
 778  0009 2010          	jra	L47
 779  000b               L07:
 780  000b ae00e4        	ldw	x,#228
 781  000e 89            	pushw	x
 782  000f ae0000        	ldw	x,#0
 783  0012 89            	pushw	x
 784  0013 ae000c        	ldw	x,#L511
 785  0016 cd0000        	call	_assert_failed
 787  0019 5b04          	addw	sp,#4
 788  001b               L47:
 789                     ; 230   if (NewState != DISABLE)
 791  001b 0d01          	tnz	(OFST+1,sp)
 792  001d 2706          	jreq	L302
 793                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 795  001f 721c5210      	bset	21008,#6
 797  0023 2004          	jra	L502
 798  0025               L302:
 799                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 801  0025 721d5210      	bres	21008,#6
 802  0029               L502:
 803                     ; 240 }
 806  0029 84            	pop	a
 807  002a 81            	ret
 843                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 843                     ; 251 {
 844                     .text:	section	.text,new
 845  0000               _I2C_GenerateSTART:
 847  0000 88            	push	a
 848       00000000      OFST:	set	0
 851                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 853  0001 4d            	tnz	a
 854  0002 2704          	jreq	L201
 855  0004 a101          	cp	a,#1
 856  0006 2603          	jrne	L001
 857  0008               L201:
 858  0008 4f            	clr	a
 859  0009 2010          	jra	L401
 860  000b               L001:
 861  000b ae00fd        	ldw	x,#253
 862  000e 89            	pushw	x
 863  000f ae0000        	ldw	x,#0
 864  0012 89            	pushw	x
 865  0013 ae000c        	ldw	x,#L511
 866  0016 cd0000        	call	_assert_failed
 868  0019 5b04          	addw	sp,#4
 869  001b               L401:
 870                     ; 255   if (NewState != DISABLE)
 872  001b 0d01          	tnz	(OFST+1,sp)
 873  001d 2706          	jreq	L522
 874                     ; 258     I2C->CR2 |= I2C_CR2_START;
 876  001f 72105211      	bset	21009,#0
 878  0023 2004          	jra	L722
 879  0025               L522:
 880                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 882  0025 72115211      	bres	21009,#0
 883  0029               L722:
 884                     ; 265 }
 887  0029 84            	pop	a
 888  002a 81            	ret
 924                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 924                     ; 274 {
 925                     .text:	section	.text,new
 926  0000               _I2C_GenerateSTOP:
 928  0000 88            	push	a
 929       00000000      OFST:	set	0
 932                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 934  0001 4d            	tnz	a
 935  0002 2704          	jreq	L211
 936  0004 a101          	cp	a,#1
 937  0006 2603          	jrne	L011
 938  0008               L211:
 939  0008 4f            	clr	a
 940  0009 2010          	jra	L411
 941  000b               L011:
 942  000b ae0114        	ldw	x,#276
 943  000e 89            	pushw	x
 944  000f ae0000        	ldw	x,#0
 945  0012 89            	pushw	x
 946  0013 ae000c        	ldw	x,#L511
 947  0016 cd0000        	call	_assert_failed
 949  0019 5b04          	addw	sp,#4
 950  001b               L411:
 951                     ; 278   if (NewState != DISABLE)
 953  001b 0d01          	tnz	(OFST+1,sp)
 954  001d 2706          	jreq	L742
 955                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 957  001f 72125211      	bset	21009,#1
 959  0023 2004          	jra	L152
 960  0025               L742:
 961                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 963  0025 72135211      	bres	21009,#1
 964  0029               L152:
 965                     ; 288 }
 968  0029 84            	pop	a
 969  002a 81            	ret
1006                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1006                     ; 297 {
1007                     .text:	section	.text,new
1008  0000               _I2C_SoftwareResetCmd:
1010  0000 88            	push	a
1011       00000000      OFST:	set	0
1014                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1016  0001 4d            	tnz	a
1017  0002 2704          	jreq	L221
1018  0004 a101          	cp	a,#1
1019  0006 2603          	jrne	L021
1020  0008               L221:
1021  0008 4f            	clr	a
1022  0009 2010          	jra	L421
1023  000b               L021:
1024  000b ae012b        	ldw	x,#299
1025  000e 89            	pushw	x
1026  000f ae0000        	ldw	x,#0
1027  0012 89            	pushw	x
1028  0013 ae000c        	ldw	x,#L511
1029  0016 cd0000        	call	_assert_failed
1031  0019 5b04          	addw	sp,#4
1032  001b               L421:
1033                     ; 301   if (NewState != DISABLE)
1035  001b 0d01          	tnz	(OFST+1,sp)
1036  001d 2706          	jreq	L172
1037                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1039  001f 721e5211      	bset	21009,#7
1041  0023 2004          	jra	L372
1042  0025               L172:
1043                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1045  0025 721f5211      	bres	21009,#7
1046  0029               L372:
1047                     ; 311 }
1050  0029 84            	pop	a
1051  002a 81            	ret
1088                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1088                     ; 321 {
1089                     .text:	section	.text,new
1090  0000               _I2C_StretchClockCmd:
1092  0000 88            	push	a
1093       00000000      OFST:	set	0
1096                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1098  0001 4d            	tnz	a
1099  0002 2704          	jreq	L231
1100  0004 a101          	cp	a,#1
1101  0006 2603          	jrne	L031
1102  0008               L231:
1103  0008 4f            	clr	a
1104  0009 2010          	jra	L431
1105  000b               L031:
1106  000b ae0143        	ldw	x,#323
1107  000e 89            	pushw	x
1108  000f ae0000        	ldw	x,#0
1109  0012 89            	pushw	x
1110  0013 ae000c        	ldw	x,#L511
1111  0016 cd0000        	call	_assert_failed
1113  0019 5b04          	addw	sp,#4
1114  001b               L431:
1115                     ; 325   if (NewState != DISABLE)
1117  001b 0d01          	tnz	(OFST+1,sp)
1118  001d 2706          	jreq	L313
1119                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1121  001f 721f5210      	bres	21008,#7
1123  0023 2004          	jra	L513
1124  0025               L313:
1125                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1127  0025 721e5210      	bset	21008,#7
1128  0029               L513:
1129                     ; 336 }
1132  0029 84            	pop	a
1133  002a 81            	ret
1170                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1170                     ; 346 {
1171                     .text:	section	.text,new
1172  0000               _I2C_AcknowledgeConfig:
1174  0000 88            	push	a
1175       00000000      OFST:	set	0
1178                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1180  0001 4d            	tnz	a
1181  0002 2708          	jreq	L241
1182  0004 a101          	cp	a,#1
1183  0006 2704          	jreq	L241
1184  0008 a102          	cp	a,#2
1185  000a 2603          	jrne	L041
1186  000c               L241:
1187  000c 4f            	clr	a
1188  000d 2010          	jra	L441
1189  000f               L041:
1190  000f ae015c        	ldw	x,#348
1191  0012 89            	pushw	x
1192  0013 ae0000        	ldw	x,#0
1193  0016 89            	pushw	x
1194  0017 ae000c        	ldw	x,#L511
1195  001a cd0000        	call	_assert_failed
1197  001d 5b04          	addw	sp,#4
1198  001f               L441:
1199                     ; 350   if (Ack == I2C_ACK_NONE)
1201  001f 0d01          	tnz	(OFST+1,sp)
1202  0021 2606          	jrne	L533
1203                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1205  0023 72155211      	bres	21009,#2
1207  0027 2014          	jra	L733
1208  0029               L533:
1209                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1211  0029 72145211      	bset	21009,#2
1212                     ; 360     if (Ack == I2C_ACK_CURR)
1214  002d 7b01          	ld	a,(OFST+1,sp)
1215  002f a101          	cp	a,#1
1216  0031 2606          	jrne	L143
1217                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1219  0033 72175211      	bres	21009,#3
1221  0037 2004          	jra	L733
1222  0039               L143:
1223                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1225  0039 72165211      	bset	21009,#3
1226  003d               L733:
1227                     ; 371 }
1230  003d 84            	pop	a
1231  003e 81            	ret
1304                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1304                     ; 382 {
1305                     .text:	section	.text,new
1306  0000               _I2C_ITConfig:
1308  0000 89            	pushw	x
1309       00000000      OFST:	set	0
1312                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1314  0001 9e            	ld	a,xh
1315  0002 a101          	cp	a,#1
1316  0004 271e          	jreq	L251
1317  0006 9e            	ld	a,xh
1318  0007 a102          	cp	a,#2
1319  0009 2719          	jreq	L251
1320  000b 9e            	ld	a,xh
1321  000c a104          	cp	a,#4
1322  000e 2714          	jreq	L251
1323  0010 9e            	ld	a,xh
1324  0011 a103          	cp	a,#3
1325  0013 270f          	jreq	L251
1326  0015 9e            	ld	a,xh
1327  0016 a105          	cp	a,#5
1328  0018 270a          	jreq	L251
1329  001a 9e            	ld	a,xh
1330  001b a106          	cp	a,#6
1331  001d 2705          	jreq	L251
1332  001f 9e            	ld	a,xh
1333  0020 a107          	cp	a,#7
1334  0022 2603          	jrne	L051
1335  0024               L251:
1336  0024 4f            	clr	a
1337  0025 2010          	jra	L451
1338  0027               L051:
1339  0027 ae0180        	ldw	x,#384
1340  002a 89            	pushw	x
1341  002b ae0000        	ldw	x,#0
1342  002e 89            	pushw	x
1343  002f ae000c        	ldw	x,#L511
1344  0032 cd0000        	call	_assert_failed
1346  0035 5b04          	addw	sp,#4
1347  0037               L451:
1348                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1350  0037 0d02          	tnz	(OFST+2,sp)
1351  0039 2706          	jreq	L061
1352  003b 7b02          	ld	a,(OFST+2,sp)
1353  003d a101          	cp	a,#1
1354  003f 2603          	jrne	L651
1355  0041               L061:
1356  0041 4f            	clr	a
1357  0042 2010          	jra	L261
1358  0044               L651:
1359  0044 ae0181        	ldw	x,#385
1360  0047 89            	pushw	x
1361  0048 ae0000        	ldw	x,#0
1362  004b 89            	pushw	x
1363  004c ae000c        	ldw	x,#L511
1364  004f cd0000        	call	_assert_failed
1366  0052 5b04          	addw	sp,#4
1367  0054               L261:
1368                     ; 387   if (NewState != DISABLE)
1370  0054 0d02          	tnz	(OFST+2,sp)
1371  0056 270a          	jreq	L104
1372                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1374  0058 c6521a        	ld	a,21018
1375  005b 1a01          	or	a,(OFST+1,sp)
1376  005d c7521a        	ld	21018,a
1378  0060 2009          	jra	L304
1379  0062               L104:
1380                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1382  0062 7b01          	ld	a,(OFST+1,sp)
1383  0064 43            	cpl	a
1384  0065 c4521a        	and	a,21018
1385  0068 c7521a        	ld	21018,a
1386  006b               L304:
1387                     ; 397 }
1390  006b 85            	popw	x
1391  006c 81            	ret
1428                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1428                     ; 406 {
1429                     .text:	section	.text,new
1430  0000               _I2C_FastModeDutyCycleConfig:
1432  0000 88            	push	a
1433       00000000      OFST:	set	0
1436                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1438  0001 4d            	tnz	a
1439  0002 2704          	jreq	L071
1440  0004 a140          	cp	a,#64
1441  0006 2603          	jrne	L661
1442  0008               L071:
1443  0008 4f            	clr	a
1444  0009 2010          	jra	L271
1445  000b               L661:
1446  000b ae0198        	ldw	x,#408
1447  000e 89            	pushw	x
1448  000f ae0000        	ldw	x,#0
1449  0012 89            	pushw	x
1450  0013 ae000c        	ldw	x,#L511
1451  0016 cd0000        	call	_assert_failed
1453  0019 5b04          	addw	sp,#4
1454  001b               L271:
1455                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1457  001b 7b01          	ld	a,(OFST+1,sp)
1458  001d a140          	cp	a,#64
1459  001f 2606          	jrne	L324
1460                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1462  0021 721c521c      	bset	21020,#6
1464  0025 2004          	jra	L524
1465  0027               L324:
1466                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1468  0027 721d521c      	bres	21020,#6
1469  002b               L524:
1470                     ; 420 }
1473  002b 84            	pop	a
1474  002c 81            	ret
1497                     ; 427 uint8_t I2C_ReceiveData(void)
1497                     ; 428 {
1498                     .text:	section	.text,new
1499  0000               _I2C_ReceiveData:
1503                     ; 430   return ((uint8_t)I2C->DR);
1505  0000 c65216        	ld	a,21014
1508  0003 81            	ret
1572                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1572                     ; 441 {
1573                     .text:	section	.text,new
1574  0000               _I2C_Send7bitAddress:
1576  0000 89            	pushw	x
1577       00000000      OFST:	set	0
1580                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1582  0001 9e            	ld	a,xh
1583  0002 a501          	bcp	a,#1
1584  0004 2603          	jrne	L002
1585  0006 4f            	clr	a
1586  0007 2010          	jra	L202
1587  0009               L002:
1588  0009 ae01bb        	ldw	x,#443
1589  000c 89            	pushw	x
1590  000d ae0000        	ldw	x,#0
1591  0010 89            	pushw	x
1592  0011 ae000c        	ldw	x,#L511
1593  0014 cd0000        	call	_assert_failed
1595  0017 5b04          	addw	sp,#4
1596  0019               L202:
1597                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1599  0019 0d02          	tnz	(OFST+2,sp)
1600  001b 2706          	jreq	L602
1601  001d 7b02          	ld	a,(OFST+2,sp)
1602  001f a101          	cp	a,#1
1603  0021 2603          	jrne	L402
1604  0023               L602:
1605  0023 4f            	clr	a
1606  0024 2010          	jra	L012
1607  0026               L402:
1608  0026 ae01bc        	ldw	x,#444
1609  0029 89            	pushw	x
1610  002a ae0000        	ldw	x,#0
1611  002d 89            	pushw	x
1612  002e ae000c        	ldw	x,#L511
1613  0031 cd0000        	call	_assert_failed
1615  0034 5b04          	addw	sp,#4
1616  0036               L012:
1617                     ; 447   Address &= (uint8_t)0xFE;
1619  0036 7b01          	ld	a,(OFST+1,sp)
1620  0038 a4fe          	and	a,#254
1621  003a 6b01          	ld	(OFST+1,sp),a
1622                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1624  003c 7b01          	ld	a,(OFST+1,sp)
1625  003e 1a02          	or	a,(OFST+2,sp)
1626  0040 c75216        	ld	21014,a
1627                     ; 451 }
1630  0043 85            	popw	x
1631  0044 81            	ret
1663                     ; 458 void I2C_SendData(uint8_t Data)
1663                     ; 459 {
1664                     .text:	section	.text,new
1665  0000               _I2C_SendData:
1669                     ; 461   I2C->DR = Data;
1671  0000 c75216        	ld	21014,a
1672                     ; 462 }
1675  0003 81            	ret
1896                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1896                     ; 579 {
1897                     .text:	section	.text,new
1898  0000               _I2C_CheckEvent:
1900  0000 89            	pushw	x
1901  0001 5206          	subw	sp,#6
1902       00000006      OFST:	set	6
1905                     ; 580   __IO uint16_t lastevent = 0x00;
1907  0003 5f            	clrw	x
1908  0004 1f04          	ldw	(OFST-2,sp),x
1910                     ; 581   uint8_t flag1 = 0x00 ;
1912                     ; 582   uint8_t flag2 = 0x00;
1914                     ; 583   ErrorStatus status = ERROR;
1916                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1918  0006 1e07          	ldw	x,(OFST+1,sp)
1919  0008 a30682        	cpw	x,#1666
1920  000b 2769          	jreq	L022
1921  000d 1e07          	ldw	x,(OFST+1,sp)
1922  000f a30202        	cpw	x,#514
1923  0012 2762          	jreq	L022
1924  0014 1e07          	ldw	x,(OFST+1,sp)
1925  0016 a31200        	cpw	x,#4608
1926  0019 275b          	jreq	L022
1927  001b 1e07          	ldw	x,(OFST+1,sp)
1928  001d a30240        	cpw	x,#576
1929  0020 2754          	jreq	L022
1930  0022 1e07          	ldw	x,(OFST+1,sp)
1931  0024 a30350        	cpw	x,#848
1932  0027 274d          	jreq	L022
1933  0029 1e07          	ldw	x,(OFST+1,sp)
1934  002b a30684        	cpw	x,#1668
1935  002e 2746          	jreq	L022
1936  0030 1e07          	ldw	x,(OFST+1,sp)
1937  0032 a30794        	cpw	x,#1940
1938  0035 273f          	jreq	L022
1939  0037 1e07          	ldw	x,(OFST+1,sp)
1940  0039 a30004        	cpw	x,#4
1941  003c 2738          	jreq	L022
1942  003e 1e07          	ldw	x,(OFST+1,sp)
1943  0040 a30010        	cpw	x,#16
1944  0043 2731          	jreq	L022
1945  0045 1e07          	ldw	x,(OFST+1,sp)
1946  0047 a30301        	cpw	x,#769
1947  004a 272a          	jreq	L022
1948  004c 1e07          	ldw	x,(OFST+1,sp)
1949  004e a30782        	cpw	x,#1922
1950  0051 2723          	jreq	L022
1951  0053 1e07          	ldw	x,(OFST+1,sp)
1952  0055 a30302        	cpw	x,#770
1953  0058 271c          	jreq	L022
1954  005a 1e07          	ldw	x,(OFST+1,sp)
1955  005c a30340        	cpw	x,#832
1956  005f 2715          	jreq	L022
1957  0061 1e07          	ldw	x,(OFST+1,sp)
1958  0063 a30784        	cpw	x,#1924
1959  0066 270e          	jreq	L022
1960  0068 1e07          	ldw	x,(OFST+1,sp)
1961  006a a30780        	cpw	x,#1920
1962  006d 2707          	jreq	L022
1963  006f 1e07          	ldw	x,(OFST+1,sp)
1964  0071 a30308        	cpw	x,#776
1965  0074 2603          	jrne	L612
1966  0076               L022:
1967  0076 4f            	clr	a
1968  0077 2010          	jra	L222
1969  0079               L612:
1970  0079 ae024a        	ldw	x,#586
1971  007c 89            	pushw	x
1972  007d ae0000        	ldw	x,#0
1973  0080 89            	pushw	x
1974  0081 ae000c        	ldw	x,#L511
1975  0084 cd0000        	call	_assert_failed
1977  0087 5b04          	addw	sp,#4
1978  0089               L222:
1979                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1981  0089 1e07          	ldw	x,(OFST+1,sp)
1982  008b a30004        	cpw	x,#4
1983  008e 260b          	jrne	L706
1984                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1986  0090 c65218        	ld	a,21016
1987  0093 a404          	and	a,#4
1988  0095 5f            	clrw	x
1989  0096 97            	ld	xl,a
1990  0097 1f04          	ldw	(OFST-2,sp),x
1993  0099 201f          	jra	L116
1994  009b               L706:
1995                     ; 594     flag1 = I2C->SR1;
1997  009b c65217        	ld	a,21015
1998  009e 6b03          	ld	(OFST-3,sp),a
2000                     ; 595     flag2 = I2C->SR3;
2002  00a0 c65219        	ld	a,21017
2003  00a3 6b06          	ld	(OFST+0,sp),a
2005                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2007  00a5 7b03          	ld	a,(OFST-3,sp)
2008  00a7 5f            	clrw	x
2009  00a8 97            	ld	xl,a
2010  00a9 1f01          	ldw	(OFST-5,sp),x
2012  00ab 7b06          	ld	a,(OFST+0,sp)
2013  00ad 5f            	clrw	x
2014  00ae 97            	ld	xl,a
2015  00af 4f            	clr	a
2016  00b0 02            	rlwa	x,a
2017  00b1 01            	rrwa	x,a
2018  00b2 1a02          	or	a,(OFST-4,sp)
2019  00b4 01            	rrwa	x,a
2020  00b5 1a01          	or	a,(OFST-5,sp)
2021  00b7 01            	rrwa	x,a
2022  00b8 1f04          	ldw	(OFST-2,sp),x
2024  00ba               L116:
2025                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2027  00ba 1e04          	ldw	x,(OFST-2,sp)
2028  00bc 01            	rrwa	x,a
2029  00bd 1408          	and	a,(OFST+2,sp)
2030  00bf 01            	rrwa	x,a
2031  00c0 1407          	and	a,(OFST+1,sp)
2032  00c2 01            	rrwa	x,a
2033  00c3 1307          	cpw	x,(OFST+1,sp)
2034  00c5 2606          	jrne	L316
2035                     ; 602     status = SUCCESS;
2037  00c7 a601          	ld	a,#1
2038  00c9 6b06          	ld	(OFST+0,sp),a
2041  00cb 2002          	jra	L516
2042  00cd               L316:
2043                     ; 607     status = ERROR;
2045  00cd 0f06          	clr	(OFST+0,sp)
2047  00cf               L516:
2048                     ; 611   return status;
2050  00cf 7b06          	ld	a,(OFST+0,sp)
2053  00d1 5b08          	addw	sp,#8
2054  00d3 81            	ret
2103                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2103                     ; 629 {
2104                     .text:	section	.text,new
2105  0000               _I2C_GetLastEvent:
2107  0000 5206          	subw	sp,#6
2108       00000006      OFST:	set	6
2111                     ; 630   __IO uint16_t lastevent = 0;
2113  0002 5f            	clrw	x
2114  0003 1f05          	ldw	(OFST-1,sp),x
2116                     ; 631   uint16_t flag1 = 0;
2118                     ; 632   uint16_t flag2 = 0;
2120                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2122  0005 c65218        	ld	a,21016
2123  0008 a504          	bcp	a,#4
2124  000a 2707          	jreq	L146
2125                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2127  000c ae0004        	ldw	x,#4
2128  000f 1f05          	ldw	(OFST-1,sp),x
2131  0011 201b          	jra	L346
2132  0013               L146:
2133                     ; 641     flag1 = I2C->SR1;
2135  0013 c65217        	ld	a,21015
2136  0016 5f            	clrw	x
2137  0017 97            	ld	xl,a
2138  0018 1f01          	ldw	(OFST-5,sp),x
2140                     ; 642     flag2 = I2C->SR3;
2142  001a c65219        	ld	a,21017
2143  001d 5f            	clrw	x
2144  001e 97            	ld	xl,a
2145  001f 1f03          	ldw	(OFST-3,sp),x
2147                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2149  0021 1e03          	ldw	x,(OFST-3,sp)
2150  0023 4f            	clr	a
2151  0024 02            	rlwa	x,a
2152  0025 01            	rrwa	x,a
2153  0026 1a02          	or	a,(OFST-4,sp)
2154  0028 01            	rrwa	x,a
2155  0029 1a01          	or	a,(OFST-5,sp)
2156  002b 01            	rrwa	x,a
2157  002c 1f05          	ldw	(OFST-1,sp),x
2159  002e               L346:
2160                     ; 648   return (I2C_Event_TypeDef)lastevent;
2162  002e 1e05          	ldw	x,(OFST-1,sp)
2165  0030 5b06          	addw	sp,#6
2166  0032 81            	ret
2378                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2378                     ; 680 {
2379                     .text:	section	.text,new
2380  0000               _I2C_GetFlagStatus:
2382  0000 89            	pushw	x
2383  0001 89            	pushw	x
2384       00000002      OFST:	set	2
2387                     ; 681   uint8_t tempreg = 0;
2389  0002 0f02          	clr	(OFST+0,sp)
2391                     ; 682   uint8_t regindex = 0;
2393                     ; 683   FlagStatus bitstatus = RESET;
2395                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2397  0004 a30180        	cpw	x,#384
2398  0007 274b          	jreq	L232
2399  0009 a30140        	cpw	x,#320
2400  000c 2746          	jreq	L232
2401  000e a30110        	cpw	x,#272
2402  0011 2741          	jreq	L232
2403  0013 a30108        	cpw	x,#264
2404  0016 273c          	jreq	L232
2405  0018 a30104        	cpw	x,#260
2406  001b 2737          	jreq	L232
2407  001d a30102        	cpw	x,#258
2408  0020 2732          	jreq	L232
2409  0022 a30101        	cpw	x,#257
2410  0025 272d          	jreq	L232
2411  0027 a30220        	cpw	x,#544
2412  002a 2728          	jreq	L232
2413  002c a30208        	cpw	x,#520
2414  002f 2723          	jreq	L232
2415  0031 a30204        	cpw	x,#516
2416  0034 271e          	jreq	L232
2417  0036 a30202        	cpw	x,#514
2418  0039 2719          	jreq	L232
2419  003b a30201        	cpw	x,#513
2420  003e 2714          	jreq	L232
2421  0040 a30310        	cpw	x,#784
2422  0043 270f          	jreq	L232
2423  0045 a30304        	cpw	x,#772
2424  0048 270a          	jreq	L232
2425  004a a30302        	cpw	x,#770
2426  004d 2705          	jreq	L232
2427  004f a30301        	cpw	x,#769
2428  0052 2603          	jrne	L032
2429  0054               L232:
2430  0054 4f            	clr	a
2431  0055 2010          	jra	L432
2432  0057               L032:
2433  0057 ae02ae        	ldw	x,#686
2434  005a 89            	pushw	x
2435  005b ae0000        	ldw	x,#0
2436  005e 89            	pushw	x
2437  005f ae000c        	ldw	x,#L511
2438  0062 cd0000        	call	_assert_failed
2440  0065 5b04          	addw	sp,#4
2441  0067               L432:
2442                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2444  0067 7b03          	ld	a,(OFST+1,sp)
2445  0069 6b01          	ld	(OFST-1,sp),a
2447                     ; 691   switch (regindex)
2449  006b 7b01          	ld	a,(OFST-1,sp)
2451                     ; 708     default:
2451                     ; 709       break;
2452  006d 4a            	dec	a
2453  006e 2708          	jreq	L546
2454  0070 4a            	dec	a
2455  0071 270c          	jreq	L746
2456  0073 4a            	dec	a
2457  0074 2710          	jreq	L156
2458  0076 2013          	jra	L167
2459  0078               L546:
2460                     ; 694     case 0x01:
2460                     ; 695       tempreg = (uint8_t)I2C->SR1;
2462  0078 c65217        	ld	a,21015
2463  007b 6b02          	ld	(OFST+0,sp),a
2465                     ; 696       break;
2467  007d 200c          	jra	L167
2468  007f               L746:
2469                     ; 699     case 0x02:
2469                     ; 700       tempreg = (uint8_t)I2C->SR2;
2471  007f c65218        	ld	a,21016
2472  0082 6b02          	ld	(OFST+0,sp),a
2474                     ; 701       break;
2476  0084 2005          	jra	L167
2477  0086               L156:
2478                     ; 704     case 0x03:
2478                     ; 705       tempreg = (uint8_t)I2C->SR3;
2480  0086 c65219        	ld	a,21017
2481  0089 6b02          	ld	(OFST+0,sp),a
2483                     ; 706       break;
2485  008b               L356:
2486                     ; 708     default:
2486                     ; 709       break;
2488  008b               L167:
2489                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2491  008b 7b04          	ld	a,(OFST+2,sp)
2492  008d 1502          	bcp	a,(OFST+0,sp)
2493  008f 2706          	jreq	L367
2494                     ; 716     bitstatus = SET;
2496  0091 a601          	ld	a,#1
2497  0093 6b02          	ld	(OFST+0,sp),a
2500  0095 2002          	jra	L567
2501  0097               L367:
2502                     ; 721     bitstatus = RESET;
2504  0097 0f02          	clr	(OFST+0,sp)
2506  0099               L567:
2507                     ; 724   return bitstatus;
2509  0099 7b02          	ld	a,(OFST+0,sp)
2512  009b 5b04          	addw	sp,#4
2513  009d 81            	ret
2556                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2556                     ; 760 {
2557                     .text:	section	.text,new
2558  0000               _I2C_ClearFlag:
2560  0000 89            	pushw	x
2561  0001 89            	pushw	x
2562       00000002      OFST:	set	2
2565                     ; 761   uint16_t flagpos = 0;
2567                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2569  0002 01            	rrwa	x,a
2570  0003 9f            	ld	a,xl
2571  0004 a4fd          	and	a,#253
2572  0006 97            	ld	xl,a
2573  0007 4f            	clr	a
2574  0008 02            	rlwa	x,a
2575  0009 5d            	tnzw	x
2576  000a 2607          	jrne	L042
2577  000c 1e03          	ldw	x,(OFST+1,sp)
2578  000e 2703          	jreq	L042
2579  0010 4f            	clr	a
2580  0011 2010          	jra	L242
2581  0013               L042:
2582  0013 ae02fb        	ldw	x,#763
2583  0016 89            	pushw	x
2584  0017 ae0000        	ldw	x,#0
2585  001a 89            	pushw	x
2586  001b ae000c        	ldw	x,#L511
2587  001e cd0000        	call	_assert_failed
2589  0021 5b04          	addw	sp,#4
2590  0023               L242:
2591                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2593  0023 7b03          	ld	a,(OFST+1,sp)
2594  0025 97            	ld	xl,a
2595  0026 7b04          	ld	a,(OFST+2,sp)
2596  0028 a4ff          	and	a,#255
2597  002a 5f            	clrw	x
2598  002b 02            	rlwa	x,a
2599  002c 1f01          	ldw	(OFST-1,sp),x
2600  002e 01            	rrwa	x,a
2602                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2604  002f 7b02          	ld	a,(OFST+0,sp)
2605  0031 43            	cpl	a
2606  0032 c75218        	ld	21016,a
2607                     ; 769 }
2610  0035 5b04          	addw	sp,#4
2611  0037 81            	ret
2776                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2776                     ; 792 {
2777                     .text:	section	.text,new
2778  0000               _I2C_GetITStatus:
2780  0000 89            	pushw	x
2781  0001 5204          	subw	sp,#4
2782       00000004      OFST:	set	4
2785                     ; 793   ITStatus bitstatus = RESET;
2787                     ; 794   __IO uint8_t enablestatus = 0;
2789  0003 0f03          	clr	(OFST-1,sp)
2791                     ; 795   uint16_t tempregister = 0;
2793                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2795  0005 a31680        	cpw	x,#5760
2796  0008 2737          	jreq	L052
2797  000a a31640        	cpw	x,#5696
2798  000d 2732          	jreq	L052
2799  000f a31210        	cpw	x,#4624
2800  0012 272d          	jreq	L052
2801  0014 a31208        	cpw	x,#4616
2802  0017 2728          	jreq	L052
2803  0019 a31204        	cpw	x,#4612
2804  001c 2723          	jreq	L052
2805  001e a31202        	cpw	x,#4610
2806  0021 271e          	jreq	L052
2807  0023 a31201        	cpw	x,#4609
2808  0026 2719          	jreq	L052
2809  0028 a32220        	cpw	x,#8736
2810  002b 2714          	jreq	L052
2811  002d a32108        	cpw	x,#8456
2812  0030 270f          	jreq	L052
2813  0032 a32104        	cpw	x,#8452
2814  0035 270a          	jreq	L052
2815  0037 a32102        	cpw	x,#8450
2816  003a 2705          	jreq	L052
2817  003c a32101        	cpw	x,#8449
2818  003f 2603          	jrne	L642
2819  0041               L052:
2820  0041 4f            	clr	a
2821  0042 2010          	jra	L252
2822  0044               L642:
2823  0044 ae031e        	ldw	x,#798
2824  0047 89            	pushw	x
2825  0048 ae0000        	ldw	x,#0
2826  004b 89            	pushw	x
2827  004c ae000c        	ldw	x,#L511
2828  004f cd0000        	call	_assert_failed
2830  0052 5b04          	addw	sp,#4
2831  0054               L252:
2832                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2834  0054 7b05          	ld	a,(OFST+1,sp)
2835  0056 a407          	and	a,#7
2836  0058 5f            	clrw	x
2837  0059 97            	ld	xl,a
2838  005a 1f01          	ldw	(OFST-3,sp),x
2840                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2842  005c c6521a        	ld	a,21018
2843  005f 1402          	and	a,(OFST-2,sp)
2844  0061 6b03          	ld	(OFST-1,sp),a
2846                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2848  0063 7b05          	ld	a,(OFST+1,sp)
2849  0065 97            	ld	xl,a
2850  0066 7b06          	ld	a,(OFST+2,sp)
2851  0068 9f            	ld	a,xl
2852  0069 a430          	and	a,#48
2853  006b 97            	ld	xl,a
2854  006c 4f            	clr	a
2855  006d 02            	rlwa	x,a
2856  006e a30100        	cpw	x,#256
2857  0071 2615          	jrne	L3701
2858                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2860  0073 c65217        	ld	a,21015
2861  0076 1506          	bcp	a,(OFST+2,sp)
2862  0078 270a          	jreq	L5701
2864  007a 0d03          	tnz	(OFST-1,sp)
2865  007c 2706          	jreq	L5701
2866                     ; 811       bitstatus = SET;
2868  007e a601          	ld	a,#1
2869  0080 6b04          	ld	(OFST+0,sp),a
2872  0082 2017          	jra	L1011
2873  0084               L5701:
2874                     ; 816       bitstatus = RESET;
2876  0084 0f04          	clr	(OFST+0,sp)
2878  0086 2013          	jra	L1011
2879  0088               L3701:
2880                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2882  0088 c65218        	ld	a,21016
2883  008b 1506          	bcp	a,(OFST+2,sp)
2884  008d 270a          	jreq	L3011
2886  008f 0d03          	tnz	(OFST-1,sp)
2887  0091 2706          	jreq	L3011
2888                     ; 825       bitstatus = SET;
2890  0093 a601          	ld	a,#1
2891  0095 6b04          	ld	(OFST+0,sp),a
2894  0097 2002          	jra	L1011
2895  0099               L3011:
2896                     ; 830       bitstatus = RESET;
2898  0099 0f04          	clr	(OFST+0,sp)
2900  009b               L1011:
2901                     ; 834   return  bitstatus;
2903  009b 7b04          	ld	a,(OFST+0,sp)
2906  009d 5b06          	addw	sp,#6
2907  009f 81            	ret
2951                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2951                     ; 872 {
2952                     .text:	section	.text,new
2953  0000               _I2C_ClearITPendingBit:
2955  0000 89            	pushw	x
2956  0001 89            	pushw	x
2957       00000002      OFST:	set	2
2960                     ; 873   uint16_t flagpos = 0;
2962                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2964  0002 a32220        	cpw	x,#8736
2965  0005 2714          	jreq	L062
2966  0007 a32108        	cpw	x,#8456
2967  000a 270f          	jreq	L062
2968  000c a32104        	cpw	x,#8452
2969  000f 270a          	jreq	L062
2970  0011 a32102        	cpw	x,#8450
2971  0014 2705          	jreq	L062
2972  0016 a32101        	cpw	x,#8449
2973  0019 2603          	jrne	L652
2974  001b               L062:
2975  001b 4f            	clr	a
2976  001c 2010          	jra	L262
2977  001e               L652:
2978  001e ae036c        	ldw	x,#876
2979  0021 89            	pushw	x
2980  0022 ae0000        	ldw	x,#0
2981  0025 89            	pushw	x
2982  0026 ae000c        	ldw	x,#L511
2983  0029 cd0000        	call	_assert_failed
2985  002c 5b04          	addw	sp,#4
2986  002e               L262:
2987                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2989  002e 7b03          	ld	a,(OFST+1,sp)
2990  0030 97            	ld	xl,a
2991  0031 7b04          	ld	a,(OFST+2,sp)
2992  0033 a4ff          	and	a,#255
2993  0035 5f            	clrw	x
2994  0036 02            	rlwa	x,a
2995  0037 1f01          	ldw	(OFST-1,sp),x
2996  0039 01            	rrwa	x,a
2998                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3000  003a 7b02          	ld	a,(OFST+0,sp)
3001  003c 43            	cpl	a
3002  003d c75218        	ld	21016,a
3003                     ; 883 }
3006  0040 5b04          	addw	sp,#4
3007  0042 81            	ret
3020                     	xdef	_I2C_ClearITPendingBit
3021                     	xdef	_I2C_GetITStatus
3022                     	xdef	_I2C_ClearFlag
3023                     	xdef	_I2C_GetFlagStatus
3024                     	xdef	_I2C_GetLastEvent
3025                     	xdef	_I2C_CheckEvent
3026                     	xdef	_I2C_SendData
3027                     	xdef	_I2C_Send7bitAddress
3028                     	xdef	_I2C_ReceiveData
3029                     	xdef	_I2C_ITConfig
3030                     	xdef	_I2C_FastModeDutyCycleConfig
3031                     	xdef	_I2C_AcknowledgeConfig
3032                     	xdef	_I2C_StretchClockCmd
3033                     	xdef	_I2C_SoftwareResetCmd
3034                     	xdef	_I2C_GenerateSTOP
3035                     	xdef	_I2C_GenerateSTART
3036                     	xdef	_I2C_GeneralCallCmd
3037                     	xdef	_I2C_Cmd
3038                     	xdef	_I2C_Init
3039                     	xdef	_I2C_DeInit
3040                     	xref	_assert_failed
3041                     	switch	.const
3042  000c               L511:
3043  000c 7372635c7374  	dc.b	"src\stm8s_i2c.c",0
3044                     	xref.b	c_lreg
3045                     	xref.b	c_x
3065                     	xref	c_sdivx
3066                     	xref	c_ludv
3067                     	xref	c_rtol
3068                     	xref	c_smul
3069                     	xref	c_lmul
3070                     	xref	c_lcmp
3071                     	xref	c_ltor
3072                     	xref	c_lzmp
3073                     	end
