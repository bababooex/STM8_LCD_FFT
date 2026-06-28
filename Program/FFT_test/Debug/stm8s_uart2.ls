   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 53 void UART2_DeInit(void)
  43                     ; 54 {
  45                     .text:	section	.text,new
  46  0000               _UART2_DeInit:
  50                     ; 57   (void) UART2->SR;
  52  0000 c65240        	ld	a,21056
  53                     ; 58   (void)UART2->DR;
  55  0003 c65241        	ld	a,21057
  56                     ; 60   UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
  58  0006 725f5243      	clr	21059
  59                     ; 61   UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
  61  000a 725f5242      	clr	21058
  62                     ; 63   UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
  64  000e 725f5244      	clr	21060
  65                     ; 64   UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
  67  0012 725f5245      	clr	21061
  68                     ; 65   UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
  70  0016 725f5246      	clr	21062
  71                     ; 66   UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
  73  001a 725f5247      	clr	21063
  74                     ; 67   UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
  76  001e 725f5248      	clr	21064
  77                     ; 68   UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
  79  0022 725f5249      	clr	21065
  80                     ; 69 }
  83  0026 81            	ret
 395                     .const:	section	.text
 396  0000               L21:
 397  0000 00098969      	dc.l	625001
 398  0004               L25:
 399  0004 00000064      	dc.l	100
 400                     ; 85 void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 400                     ; 86 {
 401                     .text:	section	.text,new
 402  0000               _UART2_Init:
 404  0000 520e          	subw	sp,#14
 405       0000000e      OFST:	set	14
 408                     ; 87   uint8_t BRR2_1 = 0, BRR2_2 = 0;
 412                     ; 88   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 416                     ; 91   assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 418  0002 96            	ldw	x,sp
 419  0003 1c0011        	addw	x,#OFST+3
 420  0006 cd0000        	call	c_ltor
 422  0009 ae0000        	ldw	x,#L21
 423  000c cd0000        	call	c_lcmp
 425  000f 2403          	jruge	L01
 426  0011 4f            	clr	a
 427  0012 2010          	jra	L41
 428  0014               L01:
 429  0014 ae005b        	ldw	x,#91
 430  0017 89            	pushw	x
 431  0018 ae0000        	ldw	x,#0
 432  001b 89            	pushw	x
 433  001c ae0008        	ldw	x,#L171
 434  001f cd0000        	call	_assert_failed
 436  0022 5b04          	addw	sp,#4
 437  0024               L41:
 438                     ; 92   assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 440  0024 0d15          	tnz	(OFST+7,sp)
 441  0026 2706          	jreq	L02
 442  0028 7b15          	ld	a,(OFST+7,sp)
 443  002a a110          	cp	a,#16
 444  002c 2603          	jrne	L61
 445  002e               L02:
 446  002e 4f            	clr	a
 447  002f 2010          	jra	L22
 448  0031               L61:
 449  0031 ae005c        	ldw	x,#92
 450  0034 89            	pushw	x
 451  0035 ae0000        	ldw	x,#0
 452  0038 89            	pushw	x
 453  0039 ae0008        	ldw	x,#L171
 454  003c cd0000        	call	_assert_failed
 456  003f 5b04          	addw	sp,#4
 457  0041               L22:
 458                     ; 93   assert_param(IS_UART2_STOPBITS_OK(StopBits));
 460  0041 0d16          	tnz	(OFST+8,sp)
 461  0043 2712          	jreq	L62
 462  0045 7b16          	ld	a,(OFST+8,sp)
 463  0047 a110          	cp	a,#16
 464  0049 270c          	jreq	L62
 465  004b 7b16          	ld	a,(OFST+8,sp)
 466  004d a120          	cp	a,#32
 467  004f 2706          	jreq	L62
 468  0051 7b16          	ld	a,(OFST+8,sp)
 469  0053 a130          	cp	a,#48
 470  0055 2603          	jrne	L42
 471  0057               L62:
 472  0057 4f            	clr	a
 473  0058 2010          	jra	L03
 474  005a               L42:
 475  005a ae005d        	ldw	x,#93
 476  005d 89            	pushw	x
 477  005e ae0000        	ldw	x,#0
 478  0061 89            	pushw	x
 479  0062 ae0008        	ldw	x,#L171
 480  0065 cd0000        	call	_assert_failed
 482  0068 5b04          	addw	sp,#4
 483  006a               L03:
 484                     ; 94   assert_param(IS_UART2_PARITY_OK(Parity));
 486  006a 0d17          	tnz	(OFST+9,sp)
 487  006c 270c          	jreq	L43
 488  006e 7b17          	ld	a,(OFST+9,sp)
 489  0070 a104          	cp	a,#4
 490  0072 2706          	jreq	L43
 491  0074 7b17          	ld	a,(OFST+9,sp)
 492  0076 a106          	cp	a,#6
 493  0078 2603          	jrne	L23
 494  007a               L43:
 495  007a 4f            	clr	a
 496  007b 2010          	jra	L63
 497  007d               L23:
 498  007d ae005e        	ldw	x,#94
 499  0080 89            	pushw	x
 500  0081 ae0000        	ldw	x,#0
 501  0084 89            	pushw	x
 502  0085 ae0008        	ldw	x,#L171
 503  0088 cd0000        	call	_assert_failed
 505  008b 5b04          	addw	sp,#4
 506  008d               L63:
 507                     ; 95   assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
 509  008d 7b19          	ld	a,(OFST+11,sp)
 510  008f a108          	cp	a,#8
 511  0091 2730          	jreq	L24
 512  0093 7b19          	ld	a,(OFST+11,sp)
 513  0095 a140          	cp	a,#64
 514  0097 272a          	jreq	L24
 515  0099 7b19          	ld	a,(OFST+11,sp)
 516  009b a104          	cp	a,#4
 517  009d 2724          	jreq	L24
 518  009f 7b19          	ld	a,(OFST+11,sp)
 519  00a1 a180          	cp	a,#128
 520  00a3 271e          	jreq	L24
 521  00a5 7b19          	ld	a,(OFST+11,sp)
 522  00a7 a10c          	cp	a,#12
 523  00a9 2718          	jreq	L24
 524  00ab 7b19          	ld	a,(OFST+11,sp)
 525  00ad a10c          	cp	a,#12
 526  00af 2712          	jreq	L24
 527  00b1 7b19          	ld	a,(OFST+11,sp)
 528  00b3 a144          	cp	a,#68
 529  00b5 270c          	jreq	L24
 530  00b7 7b19          	ld	a,(OFST+11,sp)
 531  00b9 a1c0          	cp	a,#192
 532  00bb 2706          	jreq	L24
 533  00bd 7b19          	ld	a,(OFST+11,sp)
 534  00bf a188          	cp	a,#136
 535  00c1 2603          	jrne	L04
 536  00c3               L24:
 537  00c3 4f            	clr	a
 538  00c4 2010          	jra	L44
 539  00c6               L04:
 540  00c6 ae005f        	ldw	x,#95
 541  00c9 89            	pushw	x
 542  00ca ae0000        	ldw	x,#0
 543  00cd 89            	pushw	x
 544  00ce ae0008        	ldw	x,#L171
 545  00d1 cd0000        	call	_assert_failed
 547  00d4 5b04          	addw	sp,#4
 548  00d6               L44:
 549                     ; 96   assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
 551  00d6 7b18          	ld	a,(OFST+10,sp)
 552  00d8 a488          	and	a,#136
 553  00da a188          	cp	a,#136
 554  00dc 271b          	jreq	L64
 555  00de 7b18          	ld	a,(OFST+10,sp)
 556  00e0 a444          	and	a,#68
 557  00e2 a144          	cp	a,#68
 558  00e4 2713          	jreq	L64
 559  00e6 7b18          	ld	a,(OFST+10,sp)
 560  00e8 a422          	and	a,#34
 561  00ea a122          	cp	a,#34
 562  00ec 270b          	jreq	L64
 563  00ee 7b18          	ld	a,(OFST+10,sp)
 564  00f0 a411          	and	a,#17
 565  00f2 a111          	cp	a,#17
 566  00f4 2703          	jreq	L64
 567  00f6 4f            	clr	a
 568  00f7 2010          	jra	L05
 569  00f9               L64:
 570  00f9 ae0060        	ldw	x,#96
 571  00fc 89            	pushw	x
 572  00fd ae0000        	ldw	x,#0
 573  0100 89            	pushw	x
 574  0101 ae0008        	ldw	x,#L171
 575  0104 cd0000        	call	_assert_failed
 577  0107 5b04          	addw	sp,#4
 578  0109               L05:
 579                     ; 99   UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
 581  0109 72195244      	bres	21060,#4
 582                     ; 101   UART2->CR1 |= (uint8_t)WordLength; 
 584  010d c65244        	ld	a,21060
 585  0110 1a15          	or	a,(OFST+7,sp)
 586  0112 c75244        	ld	21060,a
 587                     ; 104   UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
 589  0115 c65246        	ld	a,21062
 590  0118 a4cf          	and	a,#207
 591  011a c75246        	ld	21062,a
 592                     ; 106   UART2->CR3 |= (uint8_t)StopBits; 
 594  011d c65246        	ld	a,21062
 595  0120 1a16          	or	a,(OFST+8,sp)
 596  0122 c75246        	ld	21062,a
 597                     ; 109   UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
 599  0125 c65244        	ld	a,21060
 600  0128 a4f9          	and	a,#249
 601  012a c75244        	ld	21060,a
 602                     ; 111   UART2->CR1 |= (uint8_t)Parity;
 604  012d c65244        	ld	a,21060
 605  0130 1a17          	or	a,(OFST+9,sp)
 606  0132 c75244        	ld	21060,a
 607                     ; 114   UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
 609  0135 725f5242      	clr	21058
 610                     ; 116   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
 612  0139 c65243        	ld	a,21059
 613  013c a40f          	and	a,#15
 614  013e c75243        	ld	21059,a
 615                     ; 118   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
 617  0141 c65243        	ld	a,21059
 618  0144 a4f0          	and	a,#240
 619  0146 c75243        	ld	21059,a
 620                     ; 121   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 622  0149 96            	ldw	x,sp
 623  014a 1c0011        	addw	x,#OFST+3
 624  014d cd0000        	call	c_ltor
 626  0150 a604          	ld	a,#4
 627  0152 cd0000        	call	c_llsh
 629  0155 96            	ldw	x,sp
 630  0156 1c0001        	addw	x,#OFST-13
 631  0159 cd0000        	call	c_rtol
 634  015c cd0000        	call	_CLK_GetClockFreq
 636  015f 96            	ldw	x,sp
 637  0160 1c0001        	addw	x,#OFST-13
 638  0163 cd0000        	call	c_ludv
 640  0166 96            	ldw	x,sp
 641  0167 1c000b        	addw	x,#OFST-3
 642  016a cd0000        	call	c_rtol
 645                     ; 122   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 647  016d 96            	ldw	x,sp
 648  016e 1c0011        	addw	x,#OFST+3
 649  0171 cd0000        	call	c_ltor
 651  0174 a604          	ld	a,#4
 652  0176 cd0000        	call	c_llsh
 654  0179 96            	ldw	x,sp
 655  017a 1c0001        	addw	x,#OFST-13
 656  017d cd0000        	call	c_rtol
 659  0180 cd0000        	call	_CLK_GetClockFreq
 661  0183 a664          	ld	a,#100
 662  0185 cd0000        	call	c_smul
 664  0188 96            	ldw	x,sp
 665  0189 1c0001        	addw	x,#OFST-13
 666  018c cd0000        	call	c_ludv
 668  018f 96            	ldw	x,sp
 669  0190 1c0007        	addw	x,#OFST-7
 670  0193 cd0000        	call	c_rtol
 673                     ; 126   BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 673                     ; 127                                 << 4) / 100) & (uint8_t)0x0F); 
 675  0196 96            	ldw	x,sp
 676  0197 1c000b        	addw	x,#OFST-3
 677  019a cd0000        	call	c_ltor
 679  019d a664          	ld	a,#100
 680  019f cd0000        	call	c_smul
 682  01a2 96            	ldw	x,sp
 683  01a3 1c0001        	addw	x,#OFST-13
 684  01a6 cd0000        	call	c_rtol
 687  01a9 96            	ldw	x,sp
 688  01aa 1c0007        	addw	x,#OFST-7
 689  01ad cd0000        	call	c_ltor
 691  01b0 96            	ldw	x,sp
 692  01b1 1c0001        	addw	x,#OFST-13
 693  01b4 cd0000        	call	c_lsub
 695  01b7 a604          	ld	a,#4
 696  01b9 cd0000        	call	c_llsh
 698  01bc ae0004        	ldw	x,#L25
 699  01bf cd0000        	call	c_ludv
 701  01c2 b603          	ld	a,c_lreg+3
 702  01c4 a40f          	and	a,#15
 703  01c6 6b05          	ld	(OFST-9,sp),a
 705                     ; 128   BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 707  01c8 1e0d          	ldw	x,(OFST-1,sp)
 708  01ca 54            	srlw	x
 709  01cb 54            	srlw	x
 710  01cc 54            	srlw	x
 711  01cd 54            	srlw	x
 712  01ce 01            	rrwa	x,a
 713  01cf a4f0          	and	a,#240
 714  01d1 5f            	clrw	x
 715  01d2 6b06          	ld	(OFST-8,sp),a
 717                     ; 130   UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 719  01d4 7b05          	ld	a,(OFST-9,sp)
 720  01d6 1a06          	or	a,(OFST-8,sp)
 721  01d8 c75243        	ld	21059,a
 722                     ; 132   UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
 724  01db 7b0e          	ld	a,(OFST+0,sp)
 725  01dd c75242        	ld	21058,a
 726                     ; 135   UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
 728  01e0 c65245        	ld	a,21061
 729  01e3 a4f3          	and	a,#243
 730  01e5 c75245        	ld	21061,a
 731                     ; 137   UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
 733  01e8 c65246        	ld	a,21062
 734  01eb a4f8          	and	a,#248
 735  01ed c75246        	ld	21062,a
 736                     ; 139   UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
 736                     ; 140     UART2_CR3_CPHA | UART2_CR3_LBCL));
 738  01f0 7b18          	ld	a,(OFST+10,sp)
 739  01f2 a407          	and	a,#7
 740  01f4 ca5246        	or	a,21062
 741  01f7 c75246        	ld	21062,a
 742                     ; 142   if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
 744  01fa 7b19          	ld	a,(OFST+11,sp)
 745  01fc a504          	bcp	a,#4
 746  01fe 2706          	jreq	L371
 747                     ; 145     UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
 749  0200 72165245      	bset	21061,#3
 751  0204 2004          	jra	L571
 752  0206               L371:
 753                     ; 150     UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
 755  0206 72175245      	bres	21061,#3
 756  020a               L571:
 757                     ; 152   if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
 759  020a 7b19          	ld	a,(OFST+11,sp)
 760  020c a508          	bcp	a,#8
 761  020e 2706          	jreq	L771
 762                     ; 155     UART2->CR2 |= (uint8_t)UART2_CR2_REN;
 764  0210 72145245      	bset	21061,#2
 766  0214 2004          	jra	L102
 767  0216               L771:
 768                     ; 160     UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
 770  0216 72155245      	bres	21061,#2
 771  021a               L102:
 772                     ; 164   if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
 774  021a 7b18          	ld	a,(OFST+10,sp)
 775  021c a580          	bcp	a,#128
 776  021e 2706          	jreq	L302
 777                     ; 167     UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
 779  0220 72175246      	bres	21062,#3
 781  0224 200a          	jra	L502
 782  0226               L302:
 783                     ; 171     UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
 785  0226 7b18          	ld	a,(OFST+10,sp)
 786  0228 a408          	and	a,#8
 787  022a ca5246        	or	a,21062
 788  022d c75246        	ld	21062,a
 789  0230               L502:
 790                     ; 173 }
 793  0230 5b0e          	addw	sp,#14
 794  0232 81            	ret
 849                     ; 181 void UART2_Cmd(FunctionalState NewState)
 849                     ; 182 {
 850                     .text:	section	.text,new
 851  0000               _UART2_Cmd:
 855                     ; 183   if (NewState != DISABLE)
 857  0000 4d            	tnz	a
 858  0001 2706          	jreq	L532
 859                     ; 186     UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
 861  0003 721b5244      	bres	21060,#5
 863  0007 2004          	jra	L732
 864  0009               L532:
 865                     ; 191     UART2->CR1 |= UART2_CR1_UARTD; 
 867  0009 721a5244      	bset	21060,#5
 868  000d               L732:
 869                     ; 193 }
 872  000d 81            	ret
1001                     ; 210 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
1001                     ; 211 {
1002                     .text:	section	.text,new
1003  0000               _UART2_ITConfig:
1005  0000 89            	pushw	x
1006  0001 89            	pushw	x
1007       00000002      OFST:	set	2
1010                     ; 212   uint8_t uartreg = 0, itpos = 0x00;
1014                     ; 215   assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
1016  0002 a30100        	cpw	x,#256
1017  0005 271e          	jreq	L26
1018  0007 a30277        	cpw	x,#631
1019  000a 2719          	jreq	L26
1020  000c a30266        	cpw	x,#614
1021  000f 2714          	jreq	L26
1022  0011 a30205        	cpw	x,#517
1023  0014 270f          	jreq	L26
1024  0016 a30244        	cpw	x,#580
1025  0019 270a          	jreq	L26
1026  001b a30412        	cpw	x,#1042
1027  001e 2705          	jreq	L26
1028  0020 a30346        	cpw	x,#838
1029  0023 2603          	jrne	L06
1030  0025               L26:
1031  0025 4f            	clr	a
1032  0026 2010          	jra	L46
1033  0028               L06:
1034  0028 ae00d7        	ldw	x,#215
1035  002b 89            	pushw	x
1036  002c ae0000        	ldw	x,#0
1037  002f 89            	pushw	x
1038  0030 ae0008        	ldw	x,#L171
1039  0033 cd0000        	call	_assert_failed
1041  0036 5b04          	addw	sp,#4
1042  0038               L46:
1043                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1045  0038 0d07          	tnz	(OFST+5,sp)
1046  003a 2706          	jreq	L07
1047  003c 7b07          	ld	a,(OFST+5,sp)
1048  003e a101          	cp	a,#1
1049  0040 2603          	jrne	L66
1050  0042               L07:
1051  0042 4f            	clr	a
1052  0043 2010          	jra	L27
1053  0045               L66:
1054  0045 ae00d8        	ldw	x,#216
1055  0048 89            	pushw	x
1056  0049 ae0000        	ldw	x,#0
1057  004c 89            	pushw	x
1058  004d ae0008        	ldw	x,#L171
1059  0050 cd0000        	call	_assert_failed
1061  0053 5b04          	addw	sp,#4
1062  0055               L27:
1063                     ; 219   uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
1065  0055 7b03          	ld	a,(OFST+1,sp)
1066  0057 6b01          	ld	(OFST-1,sp),a
1068                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
1070  0059 7b04          	ld	a,(OFST+2,sp)
1071  005b a40f          	and	a,#15
1072  005d 5f            	clrw	x
1073  005e 97            	ld	xl,a
1074  005f a601          	ld	a,#1
1075  0061 5d            	tnzw	x
1076  0062 2704          	jreq	L47
1077  0064               L67:
1078  0064 48            	sll	a
1079  0065 5a            	decw	x
1080  0066 26fc          	jrne	L67
1081  0068               L47:
1082  0068 6b02          	ld	(OFST+0,sp),a
1084                     ; 224   if (NewState != DISABLE)
1086  006a 0d07          	tnz	(OFST+5,sp)
1087  006c 273a          	jreq	L513
1088                     ; 227     if (uartreg == 0x01)
1090  006e 7b01          	ld	a,(OFST-1,sp)
1091  0070 a101          	cp	a,#1
1092  0072 260a          	jrne	L713
1093                     ; 229       UART2->CR1 |= itpos;
1095  0074 c65244        	ld	a,21060
1096  0077 1a02          	or	a,(OFST+0,sp)
1097  0079 c75244        	ld	21060,a
1099  007c 2066          	jra	L333
1100  007e               L713:
1101                     ; 231     else if (uartreg == 0x02)
1103  007e 7b01          	ld	a,(OFST-1,sp)
1104  0080 a102          	cp	a,#2
1105  0082 260a          	jrne	L323
1106                     ; 233       UART2->CR2 |= itpos;
1108  0084 c65245        	ld	a,21061
1109  0087 1a02          	or	a,(OFST+0,sp)
1110  0089 c75245        	ld	21061,a
1112  008c 2056          	jra	L333
1113  008e               L323:
1114                     ; 235     else if (uartreg == 0x03)
1116  008e 7b01          	ld	a,(OFST-1,sp)
1117  0090 a103          	cp	a,#3
1118  0092 260a          	jrne	L723
1119                     ; 237       UART2->CR4 |= itpos;
1121  0094 c65247        	ld	a,21063
1122  0097 1a02          	or	a,(OFST+0,sp)
1123  0099 c75247        	ld	21063,a
1125  009c 2046          	jra	L333
1126  009e               L723:
1127                     ; 241       UART2->CR6 |= itpos;
1129  009e c65249        	ld	a,21065
1130  00a1 1a02          	or	a,(OFST+0,sp)
1131  00a3 c75249        	ld	21065,a
1132  00a6 203c          	jra	L333
1133  00a8               L513:
1134                     ; 247     if (uartreg == 0x01)
1136  00a8 7b01          	ld	a,(OFST-1,sp)
1137  00aa a101          	cp	a,#1
1138  00ac 260b          	jrne	L533
1139                     ; 249       UART2->CR1 &= (uint8_t)(~itpos);
1141  00ae 7b02          	ld	a,(OFST+0,sp)
1142  00b0 43            	cpl	a
1143  00b1 c45244        	and	a,21060
1144  00b4 c75244        	ld	21060,a
1146  00b7 202b          	jra	L333
1147  00b9               L533:
1148                     ; 251     else if (uartreg == 0x02)
1150  00b9 7b01          	ld	a,(OFST-1,sp)
1151  00bb a102          	cp	a,#2
1152  00bd 260b          	jrne	L143
1153                     ; 253       UART2->CR2 &= (uint8_t)(~itpos);
1155  00bf 7b02          	ld	a,(OFST+0,sp)
1156  00c1 43            	cpl	a
1157  00c2 c45245        	and	a,21061
1158  00c5 c75245        	ld	21061,a
1160  00c8 201a          	jra	L333
1161  00ca               L143:
1162                     ; 255     else if (uartreg == 0x03)
1164  00ca 7b01          	ld	a,(OFST-1,sp)
1165  00cc a103          	cp	a,#3
1166  00ce 260b          	jrne	L543
1167                     ; 257       UART2->CR4 &= (uint8_t)(~itpos);
1169  00d0 7b02          	ld	a,(OFST+0,sp)
1170  00d2 43            	cpl	a
1171  00d3 c45247        	and	a,21063
1172  00d6 c75247        	ld	21063,a
1174  00d9 2009          	jra	L333
1175  00db               L543:
1176                     ; 261       UART2->CR6 &= (uint8_t)(~itpos);
1178  00db 7b02          	ld	a,(OFST+0,sp)
1179  00dd 43            	cpl	a
1180  00de c45249        	and	a,21065
1181  00e1 c75249        	ld	21065,a
1182  00e4               L333:
1183                     ; 264 }
1186  00e4 5b04          	addw	sp,#4
1187  00e6 81            	ret
1245                     ; 272 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1245                     ; 273 {
1246                     .text:	section	.text,new
1247  0000               _UART2_IrDAConfig:
1249  0000 88            	push	a
1250       00000000      OFST:	set	0
1253                     ; 274   assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1255  0001 a101          	cp	a,#1
1256  0003 2703          	jreq	L401
1257  0005 4d            	tnz	a
1258  0006 2603          	jrne	L201
1259  0008               L401:
1260  0008 4f            	clr	a
1261  0009 2010          	jra	L601
1262  000b               L201:
1263  000b ae0112        	ldw	x,#274
1264  000e 89            	pushw	x
1265  000f ae0000        	ldw	x,#0
1266  0012 89            	pushw	x
1267  0013 ae0008        	ldw	x,#L171
1268  0016 cd0000        	call	_assert_failed
1270  0019 5b04          	addw	sp,#4
1271  001b               L601:
1272                     ; 276   if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1274  001b 0d01          	tnz	(OFST+1,sp)
1275  001d 2706          	jreq	L773
1276                     ; 278     UART2->CR5 |= UART2_CR5_IRLP;
1278  001f 72145248      	bset	21064,#2
1280  0023 2004          	jra	L104
1281  0025               L773:
1282                     ; 282     UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
1284  0025 72155248      	bres	21064,#2
1285  0029               L104:
1286                     ; 284 }
1289  0029 84            	pop	a
1290  002a 81            	ret
1326                     ; 292 void UART2_IrDACmd(FunctionalState NewState)
1326                     ; 293 {
1327                     .text:	section	.text,new
1328  0000               _UART2_IrDACmd:
1330  0000 88            	push	a
1331       00000000      OFST:	set	0
1334                     ; 295   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1336  0001 4d            	tnz	a
1337  0002 2704          	jreq	L411
1338  0004 a101          	cp	a,#1
1339  0006 2603          	jrne	L211
1340  0008               L411:
1341  0008 4f            	clr	a
1342  0009 2010          	jra	L611
1343  000b               L211:
1344  000b ae0127        	ldw	x,#295
1345  000e 89            	pushw	x
1346  000f ae0000        	ldw	x,#0
1347  0012 89            	pushw	x
1348  0013 ae0008        	ldw	x,#L171
1349  0016 cd0000        	call	_assert_failed
1351  0019 5b04          	addw	sp,#4
1352  001b               L611:
1353                     ; 297   if (NewState != DISABLE)
1355  001b 0d01          	tnz	(OFST+1,sp)
1356  001d 2706          	jreq	L124
1357                     ; 300     UART2->CR5 |= UART2_CR5_IREN;
1359  001f 72125248      	bset	21064,#1
1361  0023 2004          	jra	L324
1362  0025               L124:
1363                     ; 305     UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
1365  0025 72135248      	bres	21064,#1
1366  0029               L324:
1367                     ; 307 }
1370  0029 84            	pop	a
1371  002a 81            	ret
1431                     ; 316 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1431                     ; 317 {
1432                     .text:	section	.text,new
1433  0000               _UART2_LINBreakDetectionConfig:
1435  0000 88            	push	a
1436       00000000      OFST:	set	0
1439                     ; 319   assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1441  0001 4d            	tnz	a
1442  0002 2704          	jreq	L421
1443  0004 a101          	cp	a,#1
1444  0006 2603          	jrne	L221
1445  0008               L421:
1446  0008 4f            	clr	a
1447  0009 2010          	jra	L621
1448  000b               L221:
1449  000b ae013f        	ldw	x,#319
1450  000e 89            	pushw	x
1451  000f ae0000        	ldw	x,#0
1452  0012 89            	pushw	x
1453  0013 ae0008        	ldw	x,#L171
1454  0016 cd0000        	call	_assert_failed
1456  0019 5b04          	addw	sp,#4
1457  001b               L621:
1458                     ; 321   if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1460  001b 0d01          	tnz	(OFST+1,sp)
1461  001d 2706          	jreq	L354
1462                     ; 323     UART2->CR4 |= UART2_CR4_LBDL;
1464  001f 721a5247      	bset	21063,#5
1466  0023 2004          	jra	L554
1467  0025               L354:
1468                     ; 327     UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
1470  0025 721b5247      	bres	21063,#5
1471  0029               L554:
1472                     ; 329 }
1475  0029 84            	pop	a
1476  002a 81            	ret
1598                     ; 341 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
1598                     ; 342                      UART2_LinAutosync_TypeDef UART2_Autosync, 
1598                     ; 343                      UART2_LinDivUp_TypeDef UART2_DivUp)
1598                     ; 344 {
1599                     .text:	section	.text,new
1600  0000               _UART2_LINConfig:
1602  0000 89            	pushw	x
1603       00000000      OFST:	set	0
1606                     ; 346   assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1608  0001 9e            	ld	a,xh
1609  0002 4d            	tnz	a
1610  0003 2705          	jreq	L431
1611  0005 9e            	ld	a,xh
1612  0006 a101          	cp	a,#1
1613  0008 2603          	jrne	L231
1614  000a               L431:
1615  000a 4f            	clr	a
1616  000b 2010          	jra	L631
1617  000d               L231:
1618  000d ae015a        	ldw	x,#346
1619  0010 89            	pushw	x
1620  0011 ae0000        	ldw	x,#0
1621  0014 89            	pushw	x
1622  0015 ae0008        	ldw	x,#L171
1623  0018 cd0000        	call	_assert_failed
1625  001b 5b04          	addw	sp,#4
1626  001d               L631:
1627                     ; 347   assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1629  001d 7b02          	ld	a,(OFST+2,sp)
1630  001f a101          	cp	a,#1
1631  0021 2704          	jreq	L241
1632  0023 0d02          	tnz	(OFST+2,sp)
1633  0025 2603          	jrne	L041
1634  0027               L241:
1635  0027 4f            	clr	a
1636  0028 2010          	jra	L441
1637  002a               L041:
1638  002a ae015b        	ldw	x,#347
1639  002d 89            	pushw	x
1640  002e ae0000        	ldw	x,#0
1641  0031 89            	pushw	x
1642  0032 ae0008        	ldw	x,#L171
1643  0035 cd0000        	call	_assert_failed
1645  0038 5b04          	addw	sp,#4
1646  003a               L441:
1647                     ; 348   assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1649  003a 0d05          	tnz	(OFST+5,sp)
1650  003c 2706          	jreq	L051
1651  003e 7b05          	ld	a,(OFST+5,sp)
1652  0040 a101          	cp	a,#1
1653  0042 2603          	jrne	L641
1654  0044               L051:
1655  0044 4f            	clr	a
1656  0045 2010          	jra	L251
1657  0047               L641:
1658  0047 ae015c        	ldw	x,#348
1659  004a 89            	pushw	x
1660  004b ae0000        	ldw	x,#0
1661  004e 89            	pushw	x
1662  004f ae0008        	ldw	x,#L171
1663  0052 cd0000        	call	_assert_failed
1665  0055 5b04          	addw	sp,#4
1666  0057               L251:
1667                     ; 350   if (UART2_Mode != UART2_LIN_MODE_MASTER)
1669  0057 0d01          	tnz	(OFST+1,sp)
1670  0059 2706          	jreq	L535
1671                     ; 352     UART2->CR6 |=  UART2_CR6_LSLV;
1673  005b 721a5249      	bset	21065,#5
1675  005f 2004          	jra	L735
1676  0061               L535:
1677                     ; 356     UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
1679  0061 721b5249      	bres	21065,#5
1680  0065               L735:
1681                     ; 359   if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1683  0065 0d02          	tnz	(OFST+2,sp)
1684  0067 2706          	jreq	L145
1685                     ; 361     UART2->CR6 |=  UART2_CR6_LASE ;
1687  0069 72185249      	bset	21065,#4
1689  006d 2004          	jra	L345
1690  006f               L145:
1691                     ; 365     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
1693  006f 72195249      	bres	21065,#4
1694  0073               L345:
1695                     ; 368   if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1697  0073 0d05          	tnz	(OFST+5,sp)
1698  0075 2706          	jreq	L545
1699                     ; 370     UART2->CR6 |=  UART2_CR6_LDUM;
1701  0077 721e5249      	bset	21065,#7
1703  007b 2004          	jra	L745
1704  007d               L545:
1705                     ; 374     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
1707  007d 721f5249      	bres	21065,#7
1708  0081               L745:
1709                     ; 376 }
1712  0081 85            	popw	x
1713  0082 81            	ret
1749                     ; 384 void UART2_LINCmd(FunctionalState NewState)
1749                     ; 385 {
1750                     .text:	section	.text,new
1751  0000               _UART2_LINCmd:
1753  0000 88            	push	a
1754       00000000      OFST:	set	0
1757                     ; 386   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1759  0001 4d            	tnz	a
1760  0002 2704          	jreq	L061
1761  0004 a101          	cp	a,#1
1762  0006 2603          	jrne	L651
1763  0008               L061:
1764  0008 4f            	clr	a
1765  0009 2010          	jra	L261
1766  000b               L651:
1767  000b ae0182        	ldw	x,#386
1768  000e 89            	pushw	x
1769  000f ae0000        	ldw	x,#0
1770  0012 89            	pushw	x
1771  0013 ae0008        	ldw	x,#L171
1772  0016 cd0000        	call	_assert_failed
1774  0019 5b04          	addw	sp,#4
1775  001b               L261:
1776                     ; 388   if (NewState != DISABLE)
1778  001b 0d01          	tnz	(OFST+1,sp)
1779  001d 2706          	jreq	L765
1780                     ; 391     UART2->CR3 |= UART2_CR3_LINEN;
1782  001f 721c5246      	bset	21062,#6
1784  0023 2004          	jra	L175
1785  0025               L765:
1786                     ; 396     UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
1788  0025 721d5246      	bres	21062,#6
1789  0029               L175:
1790                     ; 398 }
1793  0029 84            	pop	a
1794  002a 81            	ret
1830                     ; 406 void UART2_SmartCardCmd(FunctionalState NewState)
1830                     ; 407 {
1831                     .text:	section	.text,new
1832  0000               _UART2_SmartCardCmd:
1834  0000 88            	push	a
1835       00000000      OFST:	set	0
1838                     ; 409   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1840  0001 4d            	tnz	a
1841  0002 2704          	jreq	L071
1842  0004 a101          	cp	a,#1
1843  0006 2603          	jrne	L661
1844  0008               L071:
1845  0008 4f            	clr	a
1846  0009 2010          	jra	L271
1847  000b               L661:
1848  000b ae0199        	ldw	x,#409
1849  000e 89            	pushw	x
1850  000f ae0000        	ldw	x,#0
1851  0012 89            	pushw	x
1852  0013 ae0008        	ldw	x,#L171
1853  0016 cd0000        	call	_assert_failed
1855  0019 5b04          	addw	sp,#4
1856  001b               L271:
1857                     ; 411   if (NewState != DISABLE)
1859  001b 0d01          	tnz	(OFST+1,sp)
1860  001d 2706          	jreq	L116
1861                     ; 414     UART2->CR5 |= UART2_CR5_SCEN;
1863  001f 721a5248      	bset	21064,#5
1865  0023 2004          	jra	L316
1866  0025               L116:
1867                     ; 419     UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
1869  0025 721b5248      	bres	21064,#5
1870  0029               L316:
1871                     ; 421 }
1874  0029 84            	pop	a
1875  002a 81            	ret
1912                     ; 429 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1912                     ; 430 {
1913                     .text:	section	.text,new
1914  0000               _UART2_SmartCardNACKCmd:
1916  0000 88            	push	a
1917       00000000      OFST:	set	0
1920                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1922  0001 4d            	tnz	a
1923  0002 2704          	jreq	L002
1924  0004 a101          	cp	a,#1
1925  0006 2603          	jrne	L671
1926  0008               L002:
1927  0008 4f            	clr	a
1928  0009 2010          	jra	L202
1929  000b               L671:
1930  000b ae01b0        	ldw	x,#432
1931  000e 89            	pushw	x
1932  000f ae0000        	ldw	x,#0
1933  0012 89            	pushw	x
1934  0013 ae0008        	ldw	x,#L171
1935  0016 cd0000        	call	_assert_failed
1937  0019 5b04          	addw	sp,#4
1938  001b               L202:
1939                     ; 434   if (NewState != DISABLE)
1941  001b 0d01          	tnz	(OFST+1,sp)
1942  001d 2706          	jreq	L336
1943                     ; 437     UART2->CR5 |= UART2_CR5_NACK;
1945  001f 72185248      	bset	21064,#4
1947  0023 2004          	jra	L536
1948  0025               L336:
1949                     ; 442     UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
1951  0025 72195248      	bres	21064,#4
1952  0029               L536:
1953                     ; 444 }
1956  0029 84            	pop	a
1957  002a 81            	ret
2015                     ; 452 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
2015                     ; 453 {
2016                     .text:	section	.text,new
2017  0000               _UART2_WakeUpConfig:
2019  0000 88            	push	a
2020       00000000      OFST:	set	0
2023                     ; 454   assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
2025  0001 4d            	tnz	a
2026  0002 2704          	jreq	L012
2027  0004 a108          	cp	a,#8
2028  0006 2603          	jrne	L602
2029  0008               L012:
2030  0008 4f            	clr	a
2031  0009 2010          	jra	L212
2032  000b               L602:
2033  000b ae01c6        	ldw	x,#454
2034  000e 89            	pushw	x
2035  000f ae0000        	ldw	x,#0
2036  0012 89            	pushw	x
2037  0013 ae0008        	ldw	x,#L171
2038  0016 cd0000        	call	_assert_failed
2040  0019 5b04          	addw	sp,#4
2041  001b               L212:
2042                     ; 456   UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
2044  001b 72175244      	bres	21060,#3
2045                     ; 457   UART2->CR1 |= (uint8_t)UART2_WakeUp;
2047  001f c65244        	ld	a,21060
2048  0022 1a01          	or	a,(OFST+1,sp)
2049  0024 c75244        	ld	21060,a
2050                     ; 458 }
2053  0027 84            	pop	a
2054  0028 81            	ret
2091                     ; 466 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
2091                     ; 467 {
2092                     .text:	section	.text,new
2093  0000               _UART2_ReceiverWakeUpCmd:
2095  0000 88            	push	a
2096       00000000      OFST:	set	0
2099                     ; 468   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2101  0001 4d            	tnz	a
2102  0002 2704          	jreq	L022
2103  0004 a101          	cp	a,#1
2104  0006 2603          	jrne	L612
2105  0008               L022:
2106  0008 4f            	clr	a
2107  0009 2010          	jra	L222
2108  000b               L612:
2109  000b ae01d4        	ldw	x,#468
2110  000e 89            	pushw	x
2111  000f ae0000        	ldw	x,#0
2112  0012 89            	pushw	x
2113  0013 ae0008        	ldw	x,#L171
2114  0016 cd0000        	call	_assert_failed
2116  0019 5b04          	addw	sp,#4
2117  001b               L222:
2118                     ; 470   if (NewState != DISABLE)
2120  001b 0d01          	tnz	(OFST+1,sp)
2121  001d 2706          	jreq	L307
2122                     ; 473     UART2->CR2 |= UART2_CR2_RWU;
2124  001f 72125245      	bset	21061,#1
2126  0023 2004          	jra	L507
2127  0025               L307:
2128                     ; 478     UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
2130  0025 72135245      	bres	21061,#1
2131  0029               L507:
2132                     ; 480 }
2135  0029 84            	pop	a
2136  002a 81            	ret
2159                     ; 487 uint8_t UART2_ReceiveData8(void)
2159                     ; 488 {
2160                     .text:	section	.text,new
2161  0000               _UART2_ReceiveData8:
2165                     ; 489   return ((uint8_t)UART2->DR);
2167  0000 c65241        	ld	a,21057
2170  0003 81            	ret
2202                     ; 497 uint16_t UART2_ReceiveData9(void)
2202                     ; 498 {
2203                     .text:	section	.text,new
2204  0000               _UART2_ReceiveData9:
2206  0000 89            	pushw	x
2207       00000002      OFST:	set	2
2210                     ; 499   uint16_t temp = 0;
2212                     ; 501   temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
2214  0001 c65244        	ld	a,21060
2215  0004 5f            	clrw	x
2216  0005 a480          	and	a,#128
2217  0007 5f            	clrw	x
2218  0008 02            	rlwa	x,a
2219  0009 58            	sllw	x
2220  000a 1f01          	ldw	(OFST-1,sp),x
2222                     ; 503   return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
2224  000c c65241        	ld	a,21057
2225  000f 5f            	clrw	x
2226  0010 97            	ld	xl,a
2227  0011 01            	rrwa	x,a
2228  0012 1a02          	or	a,(OFST+0,sp)
2229  0014 01            	rrwa	x,a
2230  0015 1a01          	or	a,(OFST-1,sp)
2231  0017 01            	rrwa	x,a
2232  0018 01            	rrwa	x,a
2233  0019 a4ff          	and	a,#255
2234  001b 01            	rrwa	x,a
2235  001c a401          	and	a,#1
2236  001e 01            	rrwa	x,a
2239  001f 5b02          	addw	sp,#2
2240  0021 81            	ret
2272                     ; 511 void UART2_SendData8(uint8_t Data)
2272                     ; 512 {
2273                     .text:	section	.text,new
2274  0000               _UART2_SendData8:
2278                     ; 514   UART2->DR = Data;
2280  0000 c75241        	ld	21057,a
2281                     ; 515 }
2284  0003 81            	ret
2316                     ; 522 void UART2_SendData9(uint16_t Data)
2316                     ; 523 {
2317                     .text:	section	.text,new
2318  0000               _UART2_SendData9:
2320  0000 89            	pushw	x
2321       00000000      OFST:	set	0
2324                     ; 525   UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
2326  0001 721d5244      	bres	21060,#6
2327                     ; 528   UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
2329  0005 54            	srlw	x
2330  0006 54            	srlw	x
2331  0007 9f            	ld	a,xl
2332  0008 a440          	and	a,#64
2333  000a ca5244        	or	a,21060
2334  000d c75244        	ld	21060,a
2335                     ; 531   UART2->DR   = (uint8_t)(Data);                    
2337  0010 7b02          	ld	a,(OFST+2,sp)
2338  0012 c75241        	ld	21057,a
2339                     ; 532 }
2342  0015 85            	popw	x
2343  0016 81            	ret
2366                     ; 539 void UART2_SendBreak(void)
2366                     ; 540 {
2367                     .text:	section	.text,new
2368  0000               _UART2_SendBreak:
2372                     ; 541   UART2->CR2 |= UART2_CR2_SBK;
2374  0000 72105245      	bset	21061,#0
2375                     ; 542 }
2378  0004 81            	ret
2411                     ; 549 void UART2_SetAddress(uint8_t UART2_Address)
2411                     ; 550 {
2412                     .text:	section	.text,new
2413  0000               _UART2_SetAddress:
2415  0000 88            	push	a
2416       00000000      OFST:	set	0
2419                     ; 552   assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
2421  0001 a110          	cp	a,#16
2422  0003 2403          	jruge	L042
2423  0005 4f            	clr	a
2424  0006 2010          	jra	L242
2425  0008               L042:
2426  0008 ae0228        	ldw	x,#552
2427  000b 89            	pushw	x
2428  000c ae0000        	ldw	x,#0
2429  000f 89            	pushw	x
2430  0010 ae0008        	ldw	x,#L171
2431  0013 cd0000        	call	_assert_failed
2433  0016 5b04          	addw	sp,#4
2434  0018               L242:
2435                     ; 555   UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
2437  0018 c65247        	ld	a,21063
2438  001b a4f0          	and	a,#240
2439  001d c75247        	ld	21063,a
2440                     ; 557   UART2->CR4 |= UART2_Address;
2442  0020 c65247        	ld	a,21063
2443  0023 1a01          	or	a,(OFST+1,sp)
2444  0025 c75247        	ld	21063,a
2445                     ; 558 }
2448  0028 84            	pop	a
2449  0029 81            	ret
2481                     ; 566 void UART2_SetGuardTime(uint8_t UART2_GuardTime)
2481                     ; 567 {
2482                     .text:	section	.text,new
2483  0000               _UART2_SetGuardTime:
2487                     ; 569   UART2->GTR = UART2_GuardTime;
2489  0000 c7524a        	ld	21066,a
2490                     ; 570 }
2493  0003 81            	ret
2525                     ; 594 void UART2_SetPrescaler(uint8_t UART2_Prescaler)
2525                     ; 595 {
2526                     .text:	section	.text,new
2527  0000               _UART2_SetPrescaler:
2531                     ; 597   UART2->PSCR = UART2_Prescaler;
2533  0000 c7524b        	ld	21067,a
2534                     ; 598 }
2537  0003 81            	ret
2695                     ; 606 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2695                     ; 607 {
2696                     .text:	section	.text,new
2697  0000               _UART2_GetFlagStatus:
2699  0000 89            	pushw	x
2700  0001 88            	push	a
2701       00000001      OFST:	set	1
2704                     ; 608   FlagStatus status = RESET;
2706                     ; 611   assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2708  0002 a30080        	cpw	x,#128
2709  0005 2737          	jreq	L452
2710  0007 a30040        	cpw	x,#64
2711  000a 2732          	jreq	L452
2712  000c a30020        	cpw	x,#32
2713  000f 272d          	jreq	L452
2714  0011 a30010        	cpw	x,#16
2715  0014 2728          	jreq	L452
2716  0016 a30008        	cpw	x,#8
2717  0019 2723          	jreq	L452
2718  001b a30004        	cpw	x,#4
2719  001e 271e          	jreq	L452
2720  0020 a30002        	cpw	x,#2
2721  0023 2719          	jreq	L452
2722  0025 a30001        	cpw	x,#1
2723  0028 2714          	jreq	L452
2724  002a a30101        	cpw	x,#257
2725  002d 270f          	jreq	L452
2726  002f a30301        	cpw	x,#769
2727  0032 270a          	jreq	L452
2728  0034 a30302        	cpw	x,#770
2729  0037 2705          	jreq	L452
2730  0039 a30210        	cpw	x,#528
2731  003c 2603          	jrne	L252
2732  003e               L452:
2733  003e 4f            	clr	a
2734  003f 2010          	jra	L652
2735  0041               L252:
2736  0041 ae0263        	ldw	x,#611
2737  0044 89            	pushw	x
2738  0045 ae0000        	ldw	x,#0
2739  0048 89            	pushw	x
2740  0049 ae0008        	ldw	x,#L171
2741  004c cd0000        	call	_assert_failed
2743  004f 5b04          	addw	sp,#4
2744  0051               L652:
2745                     ; 614   if (UART2_FLAG == UART2_FLAG_LBDF)
2747  0051 1e02          	ldw	x,(OFST+1,sp)
2748  0053 a30210        	cpw	x,#528
2749  0056 2611          	jrne	L5211
2750                     ; 616     if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2752  0058 c65247        	ld	a,21063
2753  005b 1503          	bcp	a,(OFST+2,sp)
2754  005d 2706          	jreq	L7211
2755                     ; 619       status = SET;
2757  005f a601          	ld	a,#1
2758  0061 6b01          	ld	(OFST+0,sp),a
2761  0063 2039          	jra	L3311
2762  0065               L7211:
2763                     ; 624       status = RESET;
2765  0065 0f01          	clr	(OFST+0,sp)
2767  0067 2035          	jra	L3311
2768  0069               L5211:
2769                     ; 627   else if (UART2_FLAG == UART2_FLAG_SBK)
2771  0069 1e02          	ldw	x,(OFST+1,sp)
2772  006b a30101        	cpw	x,#257
2773  006e 2611          	jrne	L5311
2774                     ; 629     if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2776  0070 c65245        	ld	a,21061
2777  0073 1503          	bcp	a,(OFST+2,sp)
2778  0075 2706          	jreq	L7311
2779                     ; 632       status = SET;
2781  0077 a601          	ld	a,#1
2782  0079 6b01          	ld	(OFST+0,sp),a
2785  007b 2021          	jra	L3311
2786  007d               L7311:
2787                     ; 637       status = RESET;
2789  007d 0f01          	clr	(OFST+0,sp)
2791  007f 201d          	jra	L3311
2792  0081               L5311:
2793                     ; 640   else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2795  0081 1e02          	ldw	x,(OFST+1,sp)
2796  0083 a30302        	cpw	x,#770
2797  0086 2707          	jreq	L7411
2799  0088 1e02          	ldw	x,(OFST+1,sp)
2800  008a a30301        	cpw	x,#769
2801  008d 2614          	jrne	L5411
2802  008f               L7411:
2803                     ; 642     if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2805  008f c65249        	ld	a,21065
2806  0092 1503          	bcp	a,(OFST+2,sp)
2807  0094 2706          	jreq	L1511
2808                     ; 645       status = SET;
2810  0096 a601          	ld	a,#1
2811  0098 6b01          	ld	(OFST+0,sp),a
2814  009a 2002          	jra	L3311
2815  009c               L1511:
2816                     ; 650       status = RESET;
2818  009c 0f01          	clr	(OFST+0,sp)
2820  009e               L3311:
2821                     ; 668   return  status;
2823  009e 7b01          	ld	a,(OFST+0,sp)
2826  00a0 5b03          	addw	sp,#3
2827  00a2 81            	ret
2828  00a3               L5411:
2829                     ; 655     if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2831  00a3 c65240        	ld	a,21056
2832  00a6 1503          	bcp	a,(OFST+2,sp)
2833  00a8 2706          	jreq	L7511
2834                     ; 658       status = SET;
2836  00aa a601          	ld	a,#1
2837  00ac 6b01          	ld	(OFST+0,sp),a
2840  00ae 20ee          	jra	L3311
2841  00b0               L7511:
2842                     ; 663       status = RESET;
2844  00b0 0f01          	clr	(OFST+0,sp)
2846  00b2 20ea          	jra	L3311
2882                     ; 699 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2882                     ; 700 {
2883                     .text:	section	.text,new
2884  0000               _UART2_ClearFlag:
2886  0000 89            	pushw	x
2887       00000000      OFST:	set	0
2890                     ; 701   assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2892  0001 a30020        	cpw	x,#32
2893  0004 270f          	jreq	L462
2894  0006 a30302        	cpw	x,#770
2895  0009 270a          	jreq	L462
2896  000b a30301        	cpw	x,#769
2897  000e 2705          	jreq	L462
2898  0010 a30210        	cpw	x,#528
2899  0013 2603          	jrne	L262
2900  0015               L462:
2901  0015 4f            	clr	a
2902  0016 2010          	jra	L662
2903  0018               L262:
2904  0018 ae02bd        	ldw	x,#701
2905  001b 89            	pushw	x
2906  001c ae0000        	ldw	x,#0
2907  001f 89            	pushw	x
2908  0020 ae0008        	ldw	x,#L171
2909  0023 cd0000        	call	_assert_failed
2911  0026 5b04          	addw	sp,#4
2912  0028               L662:
2913                     ; 704   if (UART2_FLAG == UART2_FLAG_RXNE)
2915  0028 1e01          	ldw	x,(OFST+1,sp)
2916  002a a30020        	cpw	x,#32
2917  002d 2606          	jrne	L1021
2918                     ; 706     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2920  002f 35df5240      	mov	21056,#223
2922  0033 201e          	jra	L3021
2923  0035               L1021:
2924                     ; 709   else if (UART2_FLAG == UART2_FLAG_LBDF)
2926  0035 1e01          	ldw	x,(OFST+1,sp)
2927  0037 a30210        	cpw	x,#528
2928  003a 2606          	jrne	L5021
2929                     ; 711     UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
2931  003c 72195247      	bres	21063,#4
2933  0040 2011          	jra	L3021
2934  0042               L5021:
2935                     ; 714   else if (UART2_FLAG == UART2_FLAG_LHDF)
2937  0042 1e01          	ldw	x,(OFST+1,sp)
2938  0044 a30302        	cpw	x,#770
2939  0047 2606          	jrne	L1121
2940                     ; 716     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2942  0049 72135249      	bres	21065,#1
2944  004d 2004          	jra	L3021
2945  004f               L1121:
2946                     ; 721     UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
2948  004f 72115249      	bres	21065,#0
2949  0053               L3021:
2950                     ; 723 }
2953  0053 85            	popw	x
2954  0054 81            	ret
3029                     ; 738 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
3029                     ; 739 {
3030                     .text:	section	.text,new
3031  0000               _UART2_GetITStatus:
3033  0000 89            	pushw	x
3034  0001 89            	pushw	x
3035       00000002      OFST:	set	2
3038                     ; 740   ITStatus pendingbitstatus = RESET;
3040                     ; 741   uint8_t itpos = 0;
3042                     ; 742   uint8_t itmask1 = 0;
3044                     ; 743   uint8_t itmask2 = 0;
3046                     ; 744   uint8_t enablestatus = 0;
3048                     ; 747   assert_param(IS_UART2_GET_IT_OK(UART2_IT));
3050  0002 a30277        	cpw	x,#631
3051  0005 2723          	jreq	L472
3052  0007 a30266        	cpw	x,#614
3053  000a 271e          	jreq	L472
3054  000c a30255        	cpw	x,#597
3055  000f 2719          	jreq	L472
3056  0011 a30244        	cpw	x,#580
3057  0014 2714          	jreq	L472
3058  0016 a30235        	cpw	x,#565
3059  0019 270f          	jreq	L472
3060  001b a30346        	cpw	x,#838
3061  001e 270a          	jreq	L472
3062  0020 a30412        	cpw	x,#1042
3063  0023 2705          	jreq	L472
3064  0025 a30100        	cpw	x,#256
3065  0028 2603          	jrne	L272
3066  002a               L472:
3067  002a 4f            	clr	a
3068  002b 2010          	jra	L672
3069  002d               L272:
3070  002d ae02eb        	ldw	x,#747
3071  0030 89            	pushw	x
3072  0031 ae0000        	ldw	x,#0
3073  0034 89            	pushw	x
3074  0035 ae0008        	ldw	x,#L171
3075  0038 cd0000        	call	_assert_failed
3077  003b 5b04          	addw	sp,#4
3078  003d               L672:
3079                     ; 750   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
3081  003d 7b04          	ld	a,(OFST+2,sp)
3082  003f a40f          	and	a,#15
3083  0041 5f            	clrw	x
3084  0042 97            	ld	xl,a
3085  0043 a601          	ld	a,#1
3086  0045 5d            	tnzw	x
3087  0046 2704          	jreq	L003
3088  0048               L203:
3089  0048 48            	sll	a
3090  0049 5a            	decw	x
3091  004a 26fc          	jrne	L203
3092  004c               L003:
3093  004c 6b01          	ld	(OFST-1,sp),a
3095                     ; 752   itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
3097  004e 7b04          	ld	a,(OFST+2,sp)
3098  0050 4e            	swap	a
3099  0051 a40f          	and	a,#15
3100  0053 6b02          	ld	(OFST+0,sp),a
3102                     ; 754   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
3104  0055 7b02          	ld	a,(OFST+0,sp)
3105  0057 5f            	clrw	x
3106  0058 97            	ld	xl,a
3107  0059 a601          	ld	a,#1
3108  005b 5d            	tnzw	x
3109  005c 2704          	jreq	L403
3110  005e               L603:
3111  005e 48            	sll	a
3112  005f 5a            	decw	x
3113  0060 26fc          	jrne	L603
3114  0062               L403:
3115  0062 6b02          	ld	(OFST+0,sp),a
3117                     ; 757   if (UART2_IT == UART2_IT_PE)
3119  0064 1e03          	ldw	x,(OFST+1,sp)
3120  0066 a30100        	cpw	x,#256
3121  0069 261c          	jrne	L7421
3122                     ; 760     enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
3124  006b c65244        	ld	a,21060
3125  006e 1402          	and	a,(OFST+0,sp)
3126  0070 6b02          	ld	(OFST+0,sp),a
3128                     ; 763     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
3130  0072 c65240        	ld	a,21056
3131  0075 1501          	bcp	a,(OFST-1,sp)
3132  0077 270a          	jreq	L1521
3134  0079 0d02          	tnz	(OFST+0,sp)
3135  007b 2706          	jreq	L1521
3136                     ; 766       pendingbitstatus = SET;
3138  007d a601          	ld	a,#1
3139  007f 6b02          	ld	(OFST+0,sp),a
3142  0081 2064          	jra	L5521
3143  0083               L1521:
3144                     ; 771       pendingbitstatus = RESET;
3146  0083 0f02          	clr	(OFST+0,sp)
3148  0085 2060          	jra	L5521
3149  0087               L7421:
3150                     ; 774   else if (UART2_IT == UART2_IT_LBDF)
3152  0087 1e03          	ldw	x,(OFST+1,sp)
3153  0089 a30346        	cpw	x,#838
3154  008c 261c          	jrne	L7521
3155                     ; 777     enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
3157  008e c65247        	ld	a,21063
3158  0091 1402          	and	a,(OFST+0,sp)
3159  0093 6b02          	ld	(OFST+0,sp),a
3161                     ; 779     if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
3163  0095 c65247        	ld	a,21063
3164  0098 1501          	bcp	a,(OFST-1,sp)
3165  009a 270a          	jreq	L1621
3167  009c 0d02          	tnz	(OFST+0,sp)
3168  009e 2706          	jreq	L1621
3169                     ; 782       pendingbitstatus = SET;
3171  00a0 a601          	ld	a,#1
3172  00a2 6b02          	ld	(OFST+0,sp),a
3175  00a4 2041          	jra	L5521
3176  00a6               L1621:
3177                     ; 787       pendingbitstatus = RESET;
3179  00a6 0f02          	clr	(OFST+0,sp)
3181  00a8 203d          	jra	L5521
3182  00aa               L7521:
3183                     ; 790   else if (UART2_IT == UART2_IT_LHDF)
3185  00aa 1e03          	ldw	x,(OFST+1,sp)
3186  00ac a30412        	cpw	x,#1042
3187  00af 261c          	jrne	L7621
3188                     ; 793     enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
3190  00b1 c65249        	ld	a,21065
3191  00b4 1402          	and	a,(OFST+0,sp)
3192  00b6 6b02          	ld	(OFST+0,sp),a
3194                     ; 795     if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
3196  00b8 c65249        	ld	a,21065
3197  00bb 1501          	bcp	a,(OFST-1,sp)
3198  00bd 270a          	jreq	L1721
3200  00bf 0d02          	tnz	(OFST+0,sp)
3201  00c1 2706          	jreq	L1721
3202                     ; 798       pendingbitstatus = SET;
3204  00c3 a601          	ld	a,#1
3205  00c5 6b02          	ld	(OFST+0,sp),a
3208  00c7 201e          	jra	L5521
3209  00c9               L1721:
3210                     ; 803       pendingbitstatus = RESET;
3212  00c9 0f02          	clr	(OFST+0,sp)
3214  00cb 201a          	jra	L5521
3215  00cd               L7621:
3216                     ; 809     enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
3218  00cd c65245        	ld	a,21061
3219  00d0 1402          	and	a,(OFST+0,sp)
3220  00d2 6b02          	ld	(OFST+0,sp),a
3222                     ; 811     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
3224  00d4 c65240        	ld	a,21056
3225  00d7 1501          	bcp	a,(OFST-1,sp)
3226  00d9 270a          	jreq	L7721
3228  00db 0d02          	tnz	(OFST+0,sp)
3229  00dd 2706          	jreq	L7721
3230                     ; 814       pendingbitstatus = SET;
3232  00df a601          	ld	a,#1
3233  00e1 6b02          	ld	(OFST+0,sp),a
3236  00e3 2002          	jra	L5521
3237  00e5               L7721:
3238                     ; 819       pendingbitstatus = RESET;
3240  00e5 0f02          	clr	(OFST+0,sp)
3242  00e7               L5521:
3243                     ; 823   return  pendingbitstatus;
3245  00e7 7b02          	ld	a,(OFST+0,sp)
3248  00e9 5b04          	addw	sp,#4
3249  00eb 81            	ret
3286                     ; 852 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
3286                     ; 853 {
3287                     .text:	section	.text,new
3288  0000               _UART2_ClearITPendingBit:
3290  0000 89            	pushw	x
3291       00000000      OFST:	set	0
3294                     ; 854   assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
3296  0001 a30255        	cpw	x,#597
3297  0004 270a          	jreq	L413
3298  0006 a30412        	cpw	x,#1042
3299  0009 2705          	jreq	L413
3300  000b a30346        	cpw	x,#838
3301  000e 2603          	jrne	L213
3302  0010               L413:
3303  0010 4f            	clr	a
3304  0011 2010          	jra	L613
3305  0013               L213:
3306  0013 ae0356        	ldw	x,#854
3307  0016 89            	pushw	x
3308  0017 ae0000        	ldw	x,#0
3309  001a 89            	pushw	x
3310  001b ae0008        	ldw	x,#L171
3311  001e cd0000        	call	_assert_failed
3313  0021 5b04          	addw	sp,#4
3314  0023               L613:
3315                     ; 857   if (UART2_IT == UART2_IT_RXNE)
3317  0023 1e01          	ldw	x,(OFST+1,sp)
3318  0025 a30255        	cpw	x,#597
3319  0028 2606          	jrne	L1231
3320                     ; 859     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
3322  002a 35df5240      	mov	21056,#223
3324  002e 2011          	jra	L3231
3325  0030               L1231:
3326                     ; 862   else if (UART2_IT == UART2_IT_LBDF)
3328  0030 1e01          	ldw	x,(OFST+1,sp)
3329  0032 a30346        	cpw	x,#838
3330  0035 2606          	jrne	L5231
3331                     ; 864     UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
3333  0037 72195247      	bres	21063,#4
3335  003b 2004          	jra	L3231
3336  003d               L5231:
3337                     ; 869     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
3339  003d 72135249      	bres	21065,#1
3340  0041               L3231:
3341                     ; 871 }
3344  0041 85            	popw	x
3345  0042 81            	ret
3358                     	xdef	_UART2_ClearITPendingBit
3359                     	xdef	_UART2_GetITStatus
3360                     	xdef	_UART2_ClearFlag
3361                     	xdef	_UART2_GetFlagStatus
3362                     	xdef	_UART2_SetPrescaler
3363                     	xdef	_UART2_SetGuardTime
3364                     	xdef	_UART2_SetAddress
3365                     	xdef	_UART2_SendBreak
3366                     	xdef	_UART2_SendData9
3367                     	xdef	_UART2_SendData8
3368                     	xdef	_UART2_ReceiveData9
3369                     	xdef	_UART2_ReceiveData8
3370                     	xdef	_UART2_ReceiverWakeUpCmd
3371                     	xdef	_UART2_WakeUpConfig
3372                     	xdef	_UART2_SmartCardNACKCmd
3373                     	xdef	_UART2_SmartCardCmd
3374                     	xdef	_UART2_LINCmd
3375                     	xdef	_UART2_LINConfig
3376                     	xdef	_UART2_LINBreakDetectionConfig
3377                     	xdef	_UART2_IrDACmd
3378                     	xdef	_UART2_IrDAConfig
3379                     	xdef	_UART2_ITConfig
3380                     	xdef	_UART2_Cmd
3381                     	xdef	_UART2_Init
3382                     	xdef	_UART2_DeInit
3383                     	xref	_assert_failed
3384                     	xref	_CLK_GetClockFreq
3385                     	switch	.const
3386  0008               L171:
3387  0008 7372635c7374  	dc.b	"src\stm8s_uart2.c",0
3388                     	xref.b	c_lreg
3389                     	xref.b	c_x
3409                     	xref	c_lsub
3410                     	xref	c_smul
3411                     	xref	c_ludv
3412                     	xref	c_rtol
3413                     	xref	c_llsh
3414                     	xref	c_lcmp
3415                     	xref	c_ltor
3416                     	end
