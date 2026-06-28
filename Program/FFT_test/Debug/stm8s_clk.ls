   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
  21  0004               _CLKPrescTable:
  22  0004 01            	dc.b	1
  23  0005 02            	dc.b	2
  24  0006 04            	dc.b	4
  25  0007 08            	dc.b	8
  26  0008 0a            	dc.b	10
  27  0009 10            	dc.b	16
  28  000a 14            	dc.b	20
  29  000b 28            	dc.b	40
  58                     ; 72 void CLK_DeInit(void)
  58                     ; 73 {
  60                     .text:	section	.text,new
  61  0000               _CLK_DeInit:
  65                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  67  0000 350150c0      	mov	20672,#1
  68                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  70  0004 725f50c1      	clr	20673
  71                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  73  0008 35e150c4      	mov	20676,#225
  74                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  76  000c 725f50c5      	clr	20677
  77                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  79  0010 351850c6      	mov	20678,#24
  80                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  82  0014 35ff50c7      	mov	20679,#255
  83                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  85  0018 35ff50ca      	mov	20682,#255
  86                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  88  001c 725f50c8      	clr	20680
  89                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  91  0020 725f50c9      	clr	20681
  93  0024               L52:
  94                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  96  0024 c650c9        	ld	a,20681
  97  0027 a501          	bcp	a,#1
  98  0029 26f9          	jrne	L52
  99                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 101  002b 725f50c9      	clr	20681
 102                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 104  002f 725f50cc      	clr	20684
 105                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 107  0033 725f50cd      	clr	20685
 108                     ; 88 }
 111  0037 81            	ret
 168                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 168                     ; 100 {
 169                     .text:	section	.text,new
 170  0000               _CLK_FastHaltWakeUpCmd:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 178  0001 4d            	tnz	a
 179  0002 2704          	jreq	L21
 180  0004 a101          	cp	a,#1
 181  0006 2603          	jrne	L01
 182  0008               L21:
 183  0008 4f            	clr	a
 184  0009 2010          	jra	L41
 185  000b               L01:
 186  000b ae0066        	ldw	x,#102
 187  000e 89            	pushw	x
 188  000f ae0000        	ldw	x,#0
 189  0012 89            	pushw	x
 190  0013 ae000c        	ldw	x,#L75
 191  0016 cd0000        	call	_assert_failed
 193  0019 5b04          	addw	sp,#4
 194  001b               L41:
 195                     ; 104   if (NewState != DISABLE)
 197  001b 0d01          	tnz	(OFST+1,sp)
 198  001d 2706          	jreq	L16
 199                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 201  001f 721450c0      	bset	20672,#2
 203  0023 2004          	jra	L36
 204  0025               L16:
 205                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 207  0025 721550c0      	bres	20672,#2
 208  0029               L36:
 209                     ; 114 }
 212  0029 84            	pop	a
 213  002a 81            	ret
 249                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 249                     ; 122 {
 250                     .text:	section	.text,new
 251  0000               _CLK_HSECmd:
 253  0000 88            	push	a
 254       00000000      OFST:	set	0
 257                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 259  0001 4d            	tnz	a
 260  0002 2704          	jreq	L22
 261  0004 a101          	cp	a,#1
 262  0006 2603          	jrne	L02
 263  0008               L22:
 264  0008 4f            	clr	a
 265  0009 2010          	jra	L42
 266  000b               L02:
 267  000b ae007c        	ldw	x,#124
 268  000e 89            	pushw	x
 269  000f ae0000        	ldw	x,#0
 270  0012 89            	pushw	x
 271  0013 ae000c        	ldw	x,#L75
 272  0016 cd0000        	call	_assert_failed
 274  0019 5b04          	addw	sp,#4
 275  001b               L42:
 276                     ; 126   if (NewState != DISABLE)
 278  001b 0d01          	tnz	(OFST+1,sp)
 279  001d 2706          	jreq	L301
 280                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 282  001f 721050c1      	bset	20673,#0
 284  0023 2004          	jra	L501
 285  0025               L301:
 286                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 288  0025 721150c1      	bres	20673,#0
 289  0029               L501:
 290                     ; 136 }
 293  0029 84            	pop	a
 294  002a 81            	ret
 330                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 330                     ; 144 {
 331                     .text:	section	.text,new
 332  0000               _CLK_HSICmd:
 334  0000 88            	push	a
 335       00000000      OFST:	set	0
 338                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 340  0001 4d            	tnz	a
 341  0002 2704          	jreq	L23
 342  0004 a101          	cp	a,#1
 343  0006 2603          	jrne	L03
 344  0008               L23:
 345  0008 4f            	clr	a
 346  0009 2010          	jra	L43
 347  000b               L03:
 348  000b ae0092        	ldw	x,#146
 349  000e 89            	pushw	x
 350  000f ae0000        	ldw	x,#0
 351  0012 89            	pushw	x
 352  0013 ae000c        	ldw	x,#L75
 353  0016 cd0000        	call	_assert_failed
 355  0019 5b04          	addw	sp,#4
 356  001b               L43:
 357                     ; 148   if (NewState != DISABLE)
 359  001b 0d01          	tnz	(OFST+1,sp)
 360  001d 2706          	jreq	L521
 361                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 363  001f 721050c0      	bset	20672,#0
 365  0023 2004          	jra	L721
 366  0025               L521:
 367                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 369  0025 721150c0      	bres	20672,#0
 370  0029               L721:
 371                     ; 158 }
 374  0029 84            	pop	a
 375  002a 81            	ret
 411                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 411                     ; 167 {
 412                     .text:	section	.text,new
 413  0000               _CLK_LSICmd:
 415  0000 88            	push	a
 416       00000000      OFST:	set	0
 419                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 421  0001 4d            	tnz	a
 422  0002 2704          	jreq	L24
 423  0004 a101          	cp	a,#1
 424  0006 2603          	jrne	L04
 425  0008               L24:
 426  0008 4f            	clr	a
 427  0009 2010          	jra	L44
 428  000b               L04:
 429  000b ae00a9        	ldw	x,#169
 430  000e 89            	pushw	x
 431  000f ae0000        	ldw	x,#0
 432  0012 89            	pushw	x
 433  0013 ae000c        	ldw	x,#L75
 434  0016 cd0000        	call	_assert_failed
 436  0019 5b04          	addw	sp,#4
 437  001b               L44:
 438                     ; 171   if (NewState != DISABLE)
 440  001b 0d01          	tnz	(OFST+1,sp)
 441  001d 2706          	jreq	L741
 442                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 444  001f 721650c0      	bset	20672,#3
 446  0023 2004          	jra	L151
 447  0025               L741:
 448                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 450  0025 721750c0      	bres	20672,#3
 451  0029               L151:
 452                     ; 181 }
 455  0029 84            	pop	a
 456  002a 81            	ret
 492                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 492                     ; 190 {
 493                     .text:	section	.text,new
 494  0000               _CLK_CCOCmd:
 496  0000 88            	push	a
 497       00000000      OFST:	set	0
 500                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 502  0001 4d            	tnz	a
 503  0002 2704          	jreq	L25
 504  0004 a101          	cp	a,#1
 505  0006 2603          	jrne	L05
 506  0008               L25:
 507  0008 4f            	clr	a
 508  0009 2010          	jra	L45
 509  000b               L05:
 510  000b ae00c0        	ldw	x,#192
 511  000e 89            	pushw	x
 512  000f ae0000        	ldw	x,#0
 513  0012 89            	pushw	x
 514  0013 ae000c        	ldw	x,#L75
 515  0016 cd0000        	call	_assert_failed
 517  0019 5b04          	addw	sp,#4
 518  001b               L45:
 519                     ; 194   if (NewState != DISABLE)
 521  001b 0d01          	tnz	(OFST+1,sp)
 522  001d 2706          	jreq	L171
 523                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 525  001f 721050c9      	bset	20681,#0
 527  0023 2004          	jra	L371
 528  0025               L171:
 529                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 531  0025 721150c9      	bres	20681,#0
 532  0029               L371:
 533                     ; 204 }
 536  0029 84            	pop	a
 537  002a 81            	ret
 573                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 573                     ; 214 {
 574                     .text:	section	.text,new
 575  0000               _CLK_ClockSwitchCmd:
 577  0000 88            	push	a
 578       00000000      OFST:	set	0
 581                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 583  0001 4d            	tnz	a
 584  0002 2704          	jreq	L26
 585  0004 a101          	cp	a,#1
 586  0006 2603          	jrne	L06
 587  0008               L26:
 588  0008 4f            	clr	a
 589  0009 2010          	jra	L46
 590  000b               L06:
 591  000b ae00d8        	ldw	x,#216
 592  000e 89            	pushw	x
 593  000f ae0000        	ldw	x,#0
 594  0012 89            	pushw	x
 595  0013 ae000c        	ldw	x,#L75
 596  0016 cd0000        	call	_assert_failed
 598  0019 5b04          	addw	sp,#4
 599  001b               L46:
 600                     ; 218   if (NewState != DISABLE )
 602  001b 0d01          	tnz	(OFST+1,sp)
 603  001d 2706          	jreq	L312
 604                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 606  001f 721250c5      	bset	20677,#1
 608  0023 2004          	jra	L512
 609  0025               L312:
 610                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 612  0025 721350c5      	bres	20677,#1
 613  0029               L512:
 614                     ; 228 }
 617  0029 84            	pop	a
 618  002a 81            	ret
 655                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 655                     ; 239 {
 656                     .text:	section	.text,new
 657  0000               _CLK_SlowActiveHaltWakeUpCmd:
 659  0000 88            	push	a
 660       00000000      OFST:	set	0
 663                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 665  0001 4d            	tnz	a
 666  0002 2704          	jreq	L27
 667  0004 a101          	cp	a,#1
 668  0006 2603          	jrne	L07
 669  0008               L27:
 670  0008 4f            	clr	a
 671  0009 2010          	jra	L47
 672  000b               L07:
 673  000b ae00f1        	ldw	x,#241
 674  000e 89            	pushw	x
 675  000f ae0000        	ldw	x,#0
 676  0012 89            	pushw	x
 677  0013 ae000c        	ldw	x,#L75
 678  0016 cd0000        	call	_assert_failed
 680  0019 5b04          	addw	sp,#4
 681  001b               L47:
 682                     ; 243   if (NewState != DISABLE)
 684  001b 0d01          	tnz	(OFST+1,sp)
 685  001d 2706          	jreq	L532
 686                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 688  001f 721a50c0      	bset	20672,#5
 690  0023 2004          	jra	L732
 691  0025               L532:
 692                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 694  0025 721b50c0      	bres	20672,#5
 695  0029               L732:
 696                     ; 253 }
 699  0029 84            	pop	a
 700  002a 81            	ret
 860                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 860                     ; 264 {
 861                     .text:	section	.text,new
 862  0000               _CLK_PeripheralClockConfig:
 864  0000 89            	pushw	x
 865       00000000      OFST:	set	0
 868                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0001 9f            	ld	a,xl
 871  0002 4d            	tnz	a
 872  0003 2705          	jreq	L201
 873  0005 9f            	ld	a,xl
 874  0006 a101          	cp	a,#1
 875  0008 2603          	jrne	L001
 876  000a               L201:
 877  000a 4f            	clr	a
 878  000b 2010          	jra	L401
 879  000d               L001:
 880  000d ae010a        	ldw	x,#266
 881  0010 89            	pushw	x
 882  0011 ae0000        	ldw	x,#0
 883  0014 89            	pushw	x
 884  0015 ae000c        	ldw	x,#L75
 885  0018 cd0000        	call	_assert_failed
 887  001b 5b04          	addw	sp,#4
 888  001d               L401:
 889                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 891  001d 0d01          	tnz	(OFST+1,sp)
 892  001f 274e          	jreq	L011
 893  0021 7b01          	ld	a,(OFST+1,sp)
 894  0023 a101          	cp	a,#1
 895  0025 2748          	jreq	L011
 896  0027 7b01          	ld	a,(OFST+1,sp)
 897  0029 a103          	cp	a,#3
 898  002b 2742          	jreq	L011
 899  002d 7b01          	ld	a,(OFST+1,sp)
 900  002f a103          	cp	a,#3
 901  0031 273c          	jreq	L011
 902  0033 7b01          	ld	a,(OFST+1,sp)
 903  0035 a103          	cp	a,#3
 904  0037 2736          	jreq	L011
 905  0039 7b01          	ld	a,(OFST+1,sp)
 906  003b a104          	cp	a,#4
 907  003d 2730          	jreq	L011
 908  003f 7b01          	ld	a,(OFST+1,sp)
 909  0041 a105          	cp	a,#5
 910  0043 272a          	jreq	L011
 911  0045 7b01          	ld	a,(OFST+1,sp)
 912  0047 a105          	cp	a,#5
 913  0049 2724          	jreq	L011
 914  004b 7b01          	ld	a,(OFST+1,sp)
 915  004d a104          	cp	a,#4
 916  004f 271e          	jreq	L011
 917  0051 7b01          	ld	a,(OFST+1,sp)
 918  0053 a106          	cp	a,#6
 919  0055 2718          	jreq	L011
 920  0057 7b01          	ld	a,(OFST+1,sp)
 921  0059 a107          	cp	a,#7
 922  005b 2712          	jreq	L011
 923  005d 7b01          	ld	a,(OFST+1,sp)
 924  005f a117          	cp	a,#23
 925  0061 270c          	jreq	L011
 926  0063 7b01          	ld	a,(OFST+1,sp)
 927  0065 a113          	cp	a,#19
 928  0067 2706          	jreq	L011
 929  0069 7b01          	ld	a,(OFST+1,sp)
 930  006b a112          	cp	a,#18
 931  006d 2603          	jrne	L601
 932  006f               L011:
 933  006f 4f            	clr	a
 934  0070 2010          	jra	L211
 935  0072               L601:
 936  0072 ae010b        	ldw	x,#267
 937  0075 89            	pushw	x
 938  0076 ae0000        	ldw	x,#0
 939  0079 89            	pushw	x
 940  007a ae000c        	ldw	x,#L75
 941  007d cd0000        	call	_assert_failed
 943  0080 5b04          	addw	sp,#4
 944  0082               L211:
 945                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 947  0082 7b01          	ld	a,(OFST+1,sp)
 948  0084 a510          	bcp	a,#16
 949  0086 2633          	jrne	L323
 950                     ; 271     if (NewState != DISABLE)
 952  0088 0d02          	tnz	(OFST+2,sp)
 953  008a 2717          	jreq	L523
 954                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 956  008c 7b01          	ld	a,(OFST+1,sp)
 957  008e a40f          	and	a,#15
 958  0090 5f            	clrw	x
 959  0091 97            	ld	xl,a
 960  0092 a601          	ld	a,#1
 961  0094 5d            	tnzw	x
 962  0095 2704          	jreq	L411
 963  0097               L611:
 964  0097 48            	sll	a
 965  0098 5a            	decw	x
 966  0099 26fc          	jrne	L611
 967  009b               L411:
 968  009b ca50c7        	or	a,20679
 969  009e c750c7        	ld	20679,a
 971  00a1 2049          	jra	L133
 972  00a3               L523:
 973                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 975  00a3 7b01          	ld	a,(OFST+1,sp)
 976  00a5 a40f          	and	a,#15
 977  00a7 5f            	clrw	x
 978  00a8 97            	ld	xl,a
 979  00a9 a601          	ld	a,#1
 980  00ab 5d            	tnzw	x
 981  00ac 2704          	jreq	L021
 982  00ae               L221:
 983  00ae 48            	sll	a
 984  00af 5a            	decw	x
 985  00b0 26fc          	jrne	L221
 986  00b2               L021:
 987  00b2 43            	cpl	a
 988  00b3 c450c7        	and	a,20679
 989  00b6 c750c7        	ld	20679,a
 990  00b9 2031          	jra	L133
 991  00bb               L323:
 992                     ; 284     if (NewState != DISABLE)
 994  00bb 0d02          	tnz	(OFST+2,sp)
 995  00bd 2717          	jreq	L333
 996                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 998  00bf 7b01          	ld	a,(OFST+1,sp)
 999  00c1 a40f          	and	a,#15
1000  00c3 5f            	clrw	x
1001  00c4 97            	ld	xl,a
1002  00c5 a601          	ld	a,#1
1003  00c7 5d            	tnzw	x
1004  00c8 2704          	jreq	L421
1005  00ca               L621:
1006  00ca 48            	sll	a
1007  00cb 5a            	decw	x
1008  00cc 26fc          	jrne	L621
1009  00ce               L421:
1010  00ce ca50ca        	or	a,20682
1011  00d1 c750ca        	ld	20682,a
1013  00d4 2016          	jra	L133
1014  00d6               L333:
1015                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1017  00d6 7b01          	ld	a,(OFST+1,sp)
1018  00d8 a40f          	and	a,#15
1019  00da 5f            	clrw	x
1020  00db 97            	ld	xl,a
1021  00dc a601          	ld	a,#1
1022  00de 5d            	tnzw	x
1023  00df 2704          	jreq	L031
1024  00e1               L231:
1025  00e1 48            	sll	a
1026  00e2 5a            	decw	x
1027  00e3 26fc          	jrne	L231
1028  00e5               L031:
1029  00e5 43            	cpl	a
1030  00e6 c450ca        	and	a,20682
1031  00e9 c750ca        	ld	20682,a
1032  00ec               L133:
1033                     ; 295 }
1036  00ec 85            	popw	x
1037  00ed 81            	ret
1224                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1224                     ; 310 {
1225                     .text:	section	.text,new
1226  0000               _CLK_ClockSwitchConfig:
1228  0000 89            	pushw	x
1229  0001 5204          	subw	sp,#4
1230       00000004      OFST:	set	4
1233                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1235  0003 aeffff        	ldw	x,#65535
1236  0006 1f03          	ldw	(OFST-1,sp),x
1238                     ; 313   ErrorStatus Swif = ERROR;
1240                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1242  0008 7b06          	ld	a,(OFST+2,sp)
1243  000a a1e1          	cp	a,#225
1244  000c 270c          	jreq	L041
1245  000e 7b06          	ld	a,(OFST+2,sp)
1246  0010 a1d2          	cp	a,#210
1247  0012 2706          	jreq	L041
1248  0014 7b06          	ld	a,(OFST+2,sp)
1249  0016 a1b4          	cp	a,#180
1250  0018 2603          	jrne	L631
1251  001a               L041:
1252  001a 4f            	clr	a
1253  001b 2010          	jra	L241
1254  001d               L631:
1255  001d ae013c        	ldw	x,#316
1256  0020 89            	pushw	x
1257  0021 ae0000        	ldw	x,#0
1258  0024 89            	pushw	x
1259  0025 ae000c        	ldw	x,#L75
1260  0028 cd0000        	call	_assert_failed
1262  002b 5b04          	addw	sp,#4
1263  002d               L241:
1264                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1266  002d 0d05          	tnz	(OFST+1,sp)
1267  002f 2706          	jreq	L641
1268  0031 7b05          	ld	a,(OFST+1,sp)
1269  0033 a101          	cp	a,#1
1270  0035 2603          	jrne	L441
1271  0037               L641:
1272  0037 4f            	clr	a
1273  0038 2010          	jra	L051
1274  003a               L441:
1275  003a ae013d        	ldw	x,#317
1276  003d 89            	pushw	x
1277  003e ae0000        	ldw	x,#0
1278  0041 89            	pushw	x
1279  0042 ae000c        	ldw	x,#L75
1280  0045 cd0000        	call	_assert_failed
1282  0048 5b04          	addw	sp,#4
1283  004a               L051:
1284                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1286  004a 0d09          	tnz	(OFST+5,sp)
1287  004c 2706          	jreq	L451
1288  004e 7b09          	ld	a,(OFST+5,sp)
1289  0050 a101          	cp	a,#1
1290  0052 2603          	jrne	L251
1291  0054               L451:
1292  0054 4f            	clr	a
1293  0055 2010          	jra	L651
1294  0057               L251:
1295  0057 ae013e        	ldw	x,#318
1296  005a 89            	pushw	x
1297  005b ae0000        	ldw	x,#0
1298  005e 89            	pushw	x
1299  005f ae000c        	ldw	x,#L75
1300  0062 cd0000        	call	_assert_failed
1302  0065 5b04          	addw	sp,#4
1303  0067               L651:
1304                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1306  0067 0d0a          	tnz	(OFST+6,sp)
1307  0069 2706          	jreq	L261
1308  006b 7b0a          	ld	a,(OFST+6,sp)
1309  006d a101          	cp	a,#1
1310  006f 2603          	jrne	L061
1311  0071               L261:
1312  0071 4f            	clr	a
1313  0072 2010          	jra	L461
1314  0074               L061:
1315  0074 ae013f        	ldw	x,#319
1316  0077 89            	pushw	x
1317  0078 ae0000        	ldw	x,#0
1318  007b 89            	pushw	x
1319  007c ae000c        	ldw	x,#L75
1320  007f cd0000        	call	_assert_failed
1322  0082 5b04          	addw	sp,#4
1323  0084               L461:
1324                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1326  0084 c650c3        	ld	a,20675
1327  0087 6b01          	ld	(OFST-3,sp),a
1329                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1331  0089 7b05          	ld	a,(OFST+1,sp)
1332  008b a101          	cp	a,#1
1333  008d 264b          	jrne	L544
1334                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1336  008f 721250c5      	bset	20677,#1
1337                     ; 331     if (ITState != DISABLE)
1339  0093 0d09          	tnz	(OFST+5,sp)
1340  0095 2706          	jreq	L744
1341                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1343  0097 721450c5      	bset	20677,#2
1345  009b 2004          	jra	L154
1346  009d               L744:
1347                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1349  009d 721550c5      	bres	20677,#2
1350  00a1               L154:
1351                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1353  00a1 7b06          	ld	a,(OFST+2,sp)
1354  00a3 c750c4        	ld	20676,a
1356  00a6 2007          	jra	L754
1357  00a8               L354:
1358                     ; 346       DownCounter--;
1360  00a8 1e03          	ldw	x,(OFST-1,sp)
1361  00aa 1d0001        	subw	x,#1
1362  00ad 1f03          	ldw	(OFST-1,sp),x
1364  00af               L754:
1365                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1367  00af c650c5        	ld	a,20677
1368  00b2 a501          	bcp	a,#1
1369  00b4 2704          	jreq	L364
1371  00b6 1e03          	ldw	x,(OFST-1,sp)
1372  00b8 26ee          	jrne	L354
1373  00ba               L364:
1374                     ; 349     if(DownCounter != 0)
1376  00ba 1e03          	ldw	x,(OFST-1,sp)
1377  00bc 2706          	jreq	L564
1378                     ; 351       Swif = SUCCESS;
1380  00be a601          	ld	a,#1
1381  00c0 6b02          	ld	(OFST-2,sp),a
1384  00c2 2002          	jra	L174
1385  00c4               L564:
1386                     ; 355       Swif = ERROR;
1388  00c4 0f02          	clr	(OFST-2,sp)
1390  00c6               L174:
1391                     ; 390   if(Swif != ERROR)
1393  00c6 0d02          	tnz	(OFST-2,sp)
1394  00c8 2767          	jreq	L515
1395                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1397  00ca 0d0a          	tnz	(OFST+6,sp)
1398  00cc 2645          	jrne	L715
1400  00ce 7b01          	ld	a,(OFST-3,sp)
1401  00d0 a1e1          	cp	a,#225
1402  00d2 263f          	jrne	L715
1403                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1405  00d4 721150c0      	bres	20672,#0
1407  00d8 2057          	jra	L515
1408  00da               L544:
1409                     ; 361     if (ITState != DISABLE)
1411  00da 0d09          	tnz	(OFST+5,sp)
1412  00dc 2706          	jreq	L374
1413                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1415  00de 721450c5      	bset	20677,#2
1417  00e2 2004          	jra	L574
1418  00e4               L374:
1419                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1421  00e4 721550c5      	bres	20677,#2
1422  00e8               L574:
1423                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1425  00e8 7b06          	ld	a,(OFST+2,sp)
1426  00ea c750c4        	ld	20676,a
1428  00ed 2007          	jra	L305
1429  00ef               L774:
1430                     ; 376       DownCounter--;
1432  00ef 1e03          	ldw	x,(OFST-1,sp)
1433  00f1 1d0001        	subw	x,#1
1434  00f4 1f03          	ldw	(OFST-1,sp),x
1436  00f6               L305:
1437                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1439  00f6 c650c5        	ld	a,20677
1440  00f9 a508          	bcp	a,#8
1441  00fb 2704          	jreq	L705
1443  00fd 1e03          	ldw	x,(OFST-1,sp)
1444  00ff 26ee          	jrne	L774
1445  0101               L705:
1446                     ; 379     if(DownCounter != 0)
1448  0101 1e03          	ldw	x,(OFST-1,sp)
1449  0103 270a          	jreq	L115
1450                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1452  0105 721250c5      	bset	20677,#1
1453                     ; 383       Swif = SUCCESS;
1455  0109 a601          	ld	a,#1
1456  010b 6b02          	ld	(OFST-2,sp),a
1459  010d 20b7          	jra	L174
1460  010f               L115:
1461                     ; 387       Swif = ERROR;
1463  010f 0f02          	clr	(OFST-2,sp)
1465  0111 20b3          	jra	L174
1466  0113               L715:
1467                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1469  0113 0d0a          	tnz	(OFST+6,sp)
1470  0115 260c          	jrne	L325
1472  0117 7b01          	ld	a,(OFST-3,sp)
1473  0119 a1d2          	cp	a,#210
1474  011b 2606          	jrne	L325
1475                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1477  011d 721750c0      	bres	20672,#3
1479  0121 200e          	jra	L515
1480  0123               L325:
1481                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1483  0123 0d0a          	tnz	(OFST+6,sp)
1484  0125 260a          	jrne	L515
1486  0127 7b01          	ld	a,(OFST-3,sp)
1487  0129 a1b4          	cp	a,#180
1488  012b 2604          	jrne	L515
1489                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1491  012d 721150c1      	bres	20673,#0
1492  0131               L515:
1493                     ; 406   return(Swif);
1495  0131 7b02          	ld	a,(OFST-2,sp)
1498  0133 5b06          	addw	sp,#6
1499  0135 81            	ret
1638                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1638                     ; 416 {
1639                     .text:	section	.text,new
1640  0000               _CLK_HSIPrescalerConfig:
1642  0000 88            	push	a
1643       00000000      OFST:	set	0
1646                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1648  0001 4d            	tnz	a
1649  0002 270c          	jreq	L271
1650  0004 a108          	cp	a,#8
1651  0006 2708          	jreq	L271
1652  0008 a110          	cp	a,#16
1653  000a 2704          	jreq	L271
1654  000c a118          	cp	a,#24
1655  000e 2603          	jrne	L071
1656  0010               L271:
1657  0010 4f            	clr	a
1658  0011 2010          	jra	L471
1659  0013               L071:
1660  0013 ae01a2        	ldw	x,#418
1661  0016 89            	pushw	x
1662  0017 ae0000        	ldw	x,#0
1663  001a 89            	pushw	x
1664  001b ae000c        	ldw	x,#L75
1665  001e cd0000        	call	_assert_failed
1667  0021 5b04          	addw	sp,#4
1668  0023               L471:
1669                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1671  0023 c650c6        	ld	a,20678
1672  0026 a4e7          	and	a,#231
1673  0028 c750c6        	ld	20678,a
1674                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1676  002b c650c6        	ld	a,20678
1677  002e 1a01          	or	a,(OFST+1,sp)
1678  0030 c750c6        	ld	20678,a
1679                     ; 425 }
1682  0033 84            	pop	a
1683  0034 81            	ret
1819                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1819                     ; 437 {
1820                     .text:	section	.text,new
1821  0000               _CLK_CCOConfig:
1823  0000 88            	push	a
1824       00000000      OFST:	set	0
1827                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1829  0001 4d            	tnz	a
1830  0002 2730          	jreq	L202
1831  0004 a104          	cp	a,#4
1832  0006 272c          	jreq	L202
1833  0008 a102          	cp	a,#2
1834  000a 2728          	jreq	L202
1835  000c a108          	cp	a,#8
1836  000e 2724          	jreq	L202
1837  0010 a10a          	cp	a,#10
1838  0012 2720          	jreq	L202
1839  0014 a10c          	cp	a,#12
1840  0016 271c          	jreq	L202
1841  0018 a10e          	cp	a,#14
1842  001a 2718          	jreq	L202
1843  001c a110          	cp	a,#16
1844  001e 2714          	jreq	L202
1845  0020 a112          	cp	a,#18
1846  0022 2710          	jreq	L202
1847  0024 a114          	cp	a,#20
1848  0026 270c          	jreq	L202
1849  0028 a116          	cp	a,#22
1850  002a 2708          	jreq	L202
1851  002c a118          	cp	a,#24
1852  002e 2704          	jreq	L202
1853  0030 a11a          	cp	a,#26
1854  0032 2603          	jrne	L002
1855  0034               L202:
1856  0034 4f            	clr	a
1857  0035 2010          	jra	L402
1858  0037               L002:
1859  0037 ae01b7        	ldw	x,#439
1860  003a 89            	pushw	x
1861  003b ae0000        	ldw	x,#0
1862  003e 89            	pushw	x
1863  003f ae000c        	ldw	x,#L75
1864  0042 cd0000        	call	_assert_failed
1866  0045 5b04          	addw	sp,#4
1867  0047               L402:
1868                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1870  0047 c650c9        	ld	a,20681
1871  004a a4e1          	and	a,#225
1872  004c c750c9        	ld	20681,a
1873                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1875  004f c650c9        	ld	a,20681
1876  0052 1a01          	or	a,(OFST+1,sp)
1877  0054 c750c9        	ld	20681,a
1878                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1880  0057 721050c9      	bset	20681,#0
1881                     ; 449 }
1884  005b 84            	pop	a
1885  005c 81            	ret
1951                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1951                     ; 460 {
1952                     .text:	section	.text,new
1953  0000               _CLK_ITConfig:
1955  0000 89            	pushw	x
1956       00000000      OFST:	set	0
1959                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1961  0001 9f            	ld	a,xl
1962  0002 4d            	tnz	a
1963  0003 2705          	jreq	L212
1964  0005 9f            	ld	a,xl
1965  0006 a101          	cp	a,#1
1966  0008 2603          	jrne	L012
1967  000a               L212:
1968  000a 4f            	clr	a
1969  000b 2010          	jra	L412
1970  000d               L012:
1971  000d ae01ce        	ldw	x,#462
1972  0010 89            	pushw	x
1973  0011 ae0000        	ldw	x,#0
1974  0014 89            	pushw	x
1975  0015 ae000c        	ldw	x,#L75
1976  0018 cd0000        	call	_assert_failed
1978  001b 5b04          	addw	sp,#4
1979  001d               L412:
1980                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1982  001d 7b01          	ld	a,(OFST+1,sp)
1983  001f a10c          	cp	a,#12
1984  0021 2706          	jreq	L022
1985  0023 7b01          	ld	a,(OFST+1,sp)
1986  0025 a11c          	cp	a,#28
1987  0027 2603          	jrne	L612
1988  0029               L022:
1989  0029 4f            	clr	a
1990  002a 2010          	jra	L222
1991  002c               L612:
1992  002c ae01cf        	ldw	x,#463
1993  002f 89            	pushw	x
1994  0030 ae0000        	ldw	x,#0
1995  0033 89            	pushw	x
1996  0034 ae000c        	ldw	x,#L75
1997  0037 cd0000        	call	_assert_failed
1999  003a 5b04          	addw	sp,#4
2000  003c               L222:
2001                     ; 465   if (NewState != DISABLE)
2003  003c 0d02          	tnz	(OFST+2,sp)
2004  003e 271a          	jreq	L527
2005                     ; 467     switch (CLK_IT)
2007  0040 7b01          	ld	a,(OFST+1,sp)
2009                     ; 475     default:
2009                     ; 476       break;
2010  0042 a00c          	sub	a,#12
2011  0044 270a          	jreq	L166
2012  0046 a010          	sub	a,#16
2013  0048 2624          	jrne	L337
2014                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2014                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2016  004a 721450c5      	bset	20677,#2
2017                     ; 471       break;
2019  004e 201e          	jra	L337
2020  0050               L166:
2021                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2021                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2023  0050 721450c8      	bset	20680,#2
2024                     ; 474       break;
2026  0054 2018          	jra	L337
2027  0056               L366:
2028                     ; 475     default:
2028                     ; 476       break;
2030  0056 2016          	jra	L337
2031  0058               L137:
2033  0058 2014          	jra	L337
2034  005a               L527:
2035                     ; 481     switch (CLK_IT)
2037  005a 7b01          	ld	a,(OFST+1,sp)
2039                     ; 489     default:
2039                     ; 490       break;
2040  005c a00c          	sub	a,#12
2041  005e 270a          	jreq	L766
2042  0060 a010          	sub	a,#16
2043  0062 260a          	jrne	L337
2044                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2044                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2046  0064 721550c5      	bres	20677,#2
2047                     ; 485       break;
2049  0068 2004          	jra	L337
2050  006a               L766:
2051                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2051                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2053  006a 721550c8      	bres	20680,#2
2054                     ; 488       break;
2055  006e               L337:
2056                     ; 493 }
2059  006e 85            	popw	x
2060  006f 81            	ret
2061  0070               L176:
2062                     ; 489     default:
2062                     ; 490       break;
2064  0070 20fc          	jra	L337
2065  0072               L737:
2066  0072 20fa          	jra	L337
2102                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2102                     ; 501 {
2103                     .text:	section	.text,new
2104  0000               _CLK_SYSCLKConfig:
2106  0000 88            	push	a
2107       00000000      OFST:	set	0
2110                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2112  0001 4d            	tnz	a
2113  0002 272c          	jreq	L032
2114  0004 a108          	cp	a,#8
2115  0006 2728          	jreq	L032
2116  0008 a110          	cp	a,#16
2117  000a 2724          	jreq	L032
2118  000c a118          	cp	a,#24
2119  000e 2720          	jreq	L032
2120  0010 a180          	cp	a,#128
2121  0012 271c          	jreq	L032
2122  0014 a181          	cp	a,#129
2123  0016 2718          	jreq	L032
2124  0018 a182          	cp	a,#130
2125  001a 2714          	jreq	L032
2126  001c a183          	cp	a,#131
2127  001e 2710          	jreq	L032
2128  0020 a184          	cp	a,#132
2129  0022 270c          	jreq	L032
2130  0024 a185          	cp	a,#133
2131  0026 2708          	jreq	L032
2132  0028 a186          	cp	a,#134
2133  002a 2704          	jreq	L032
2134  002c a187          	cp	a,#135
2135  002e 2603          	jrne	L622
2136  0030               L032:
2137  0030 4f            	clr	a
2138  0031 2010          	jra	L232
2139  0033               L622:
2140  0033 ae01f7        	ldw	x,#503
2141  0036 89            	pushw	x
2142  0037 ae0000        	ldw	x,#0
2143  003a 89            	pushw	x
2144  003b ae000c        	ldw	x,#L75
2145  003e cd0000        	call	_assert_failed
2147  0041 5b04          	addw	sp,#4
2148  0043               L232:
2149                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2151  0043 7b01          	ld	a,(OFST+1,sp)
2152  0045 a580          	bcp	a,#128
2153  0047 2614          	jrne	L757
2154                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2156  0049 c650c6        	ld	a,20678
2157  004c a4e7          	and	a,#231
2158  004e c750c6        	ld	20678,a
2159                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2161  0051 7b01          	ld	a,(OFST+1,sp)
2162  0053 a418          	and	a,#24
2163  0055 ca50c6        	or	a,20678
2164  0058 c750c6        	ld	20678,a
2166  005b 2012          	jra	L167
2167  005d               L757:
2168                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2170  005d c650c6        	ld	a,20678
2171  0060 a4f8          	and	a,#248
2172  0062 c750c6        	ld	20678,a
2173                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2175  0065 7b01          	ld	a,(OFST+1,sp)
2176  0067 a407          	and	a,#7
2177  0069 ca50c6        	or	a,20678
2178  006c c750c6        	ld	20678,a
2179  006f               L167:
2180                     ; 515 }
2183  006f 84            	pop	a
2184  0070 81            	ret
2241                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2241                     ; 524 {
2242                     .text:	section	.text,new
2243  0000               _CLK_SWIMConfig:
2245  0000 88            	push	a
2246       00000000      OFST:	set	0
2249                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2251  0001 4d            	tnz	a
2252  0002 2704          	jreq	L042
2253  0004 a101          	cp	a,#1
2254  0006 2603          	jrne	L632
2255  0008               L042:
2256  0008 4f            	clr	a
2257  0009 2010          	jra	L242
2258  000b               L632:
2259  000b ae020e        	ldw	x,#526
2260  000e 89            	pushw	x
2261  000f ae0000        	ldw	x,#0
2262  0012 89            	pushw	x
2263  0013 ae000c        	ldw	x,#L75
2264  0016 cd0000        	call	_assert_failed
2266  0019 5b04          	addw	sp,#4
2267  001b               L242:
2268                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2270  001b 0d01          	tnz	(OFST+1,sp)
2271  001d 2706          	jreq	L1101
2272                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2274  001f 721050cd      	bset	20685,#0
2276  0023 2004          	jra	L3101
2277  0025               L1101:
2278                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2280  0025 721150cd      	bres	20685,#0
2281  0029               L3101:
2282                     ; 538 }
2285  0029 84            	pop	a
2286  002a 81            	ret
2310                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2310                     ; 548 {
2311                     .text:	section	.text,new
2312  0000               _CLK_ClockSecuritySystemEnable:
2316                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2318  0000 721050c8      	bset	20680,#0
2319                     ; 551 }
2322  0004 81            	ret
2347                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2347                     ; 560 {
2348                     .text:	section	.text,new
2349  0000               _CLK_GetSYSCLKSource:
2353                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2355  0000 c650c3        	ld	a,20675
2358  0003 81            	ret
2415                     ; 569 uint32_t CLK_GetClockFreq(void)
2415                     ; 570 {
2416                     .text:	section	.text,new
2417  0000               _CLK_GetClockFreq:
2419  0000 5209          	subw	sp,#9
2420       00000009      OFST:	set	9
2423                     ; 571   uint32_t clockfrequency = 0;
2425                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2427                     ; 573   uint8_t tmp = 0, presc = 0;
2431                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2433  0002 c650c3        	ld	a,20675
2434  0005 6b09          	ld	(OFST+0,sp),a
2436                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2438  0007 7b09          	ld	a,(OFST+0,sp)
2439  0009 a1e1          	cp	a,#225
2440  000b 2641          	jrne	L1601
2441                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2443  000d c650c6        	ld	a,20678
2444  0010 a418          	and	a,#24
2445  0012 6b09          	ld	(OFST+0,sp),a
2447                     ; 581     tmp = (uint8_t)(tmp >> 3);
2449  0014 0409          	srl	(OFST+0,sp)
2450  0016 0409          	srl	(OFST+0,sp)
2451  0018 0409          	srl	(OFST+0,sp)
2453                     ; 582     presc = HSIDivFactor[tmp];
2455  001a 7b09          	ld	a,(OFST+0,sp)
2456  001c 5f            	clrw	x
2457  001d 97            	ld	xl,a
2458  001e d60000        	ld	a,(_HSIDivFactor,x)
2459  0021 6b09          	ld	(OFST+0,sp),a
2461                     ; 583     clockfrequency = HSI_VALUE / presc;
2463  0023 7b09          	ld	a,(OFST+0,sp)
2464  0025 b703          	ld	c_lreg+3,a
2465  0027 3f02          	clr	c_lreg+2
2466  0029 3f01          	clr	c_lreg+1
2467  002b 3f00          	clr	c_lreg
2468  002d 96            	ldw	x,sp
2469  002e 1c0001        	addw	x,#OFST-8
2470  0031 cd0000        	call	c_rtol
2473  0034 ae2400        	ldw	x,#9216
2474  0037 bf02          	ldw	c_lreg+2,x
2475  0039 ae00f4        	ldw	x,#244
2476  003c bf00          	ldw	c_lreg,x
2477  003e 96            	ldw	x,sp
2478  003f 1c0001        	addw	x,#OFST-8
2479  0042 cd0000        	call	c_ludv
2481  0045 96            	ldw	x,sp
2482  0046 1c0005        	addw	x,#OFST-4
2483  0049 cd0000        	call	c_rtol
2487  004c 201c          	jra	L3601
2488  004e               L1601:
2489                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2491  004e 7b09          	ld	a,(OFST+0,sp)
2492  0050 a1d2          	cp	a,#210
2493  0052 260c          	jrne	L5601
2494                     ; 587     clockfrequency = LSI_VALUE;
2496  0054 aef400        	ldw	x,#62464
2497  0057 1f07          	ldw	(OFST-2,sp),x
2498  0059 ae0001        	ldw	x,#1
2499  005c 1f05          	ldw	(OFST-4,sp),x
2502  005e 200a          	jra	L3601
2503  0060               L5601:
2504                     ; 591     clockfrequency = HSE_VALUE;
2506  0060 ae2400        	ldw	x,#9216
2507  0063 1f07          	ldw	(OFST-2,sp),x
2508  0065 ae00f4        	ldw	x,#244
2509  0068 1f05          	ldw	(OFST-4,sp),x
2511  006a               L3601:
2512                     ; 594   return((uint32_t)clockfrequency);
2514  006a 96            	ldw	x,sp
2515  006b 1c0005        	addw	x,#OFST-4
2516  006e cd0000        	call	c_ltor
2520  0071 5b09          	addw	sp,#9
2521  0073 81            	ret
2621                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2621                     ; 605 {
2622                     .text:	section	.text,new
2623  0000               _CLK_AdjustHSICalibrationValue:
2625  0000 88            	push	a
2626       00000000      OFST:	set	0
2629                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2631  0001 4d            	tnz	a
2632  0002 271c          	jreq	L652
2633  0004 a101          	cp	a,#1
2634  0006 2718          	jreq	L652
2635  0008 a102          	cp	a,#2
2636  000a 2714          	jreq	L652
2637  000c a103          	cp	a,#3
2638  000e 2710          	jreq	L652
2639  0010 a104          	cp	a,#4
2640  0012 270c          	jreq	L652
2641  0014 a105          	cp	a,#5
2642  0016 2708          	jreq	L652
2643  0018 a106          	cp	a,#6
2644  001a 2704          	jreq	L652
2645  001c a107          	cp	a,#7
2646  001e 2603          	jrne	L452
2647  0020               L652:
2648  0020 4f            	clr	a
2649  0021 2010          	jra	L062
2650  0023               L452:
2651  0023 ae025f        	ldw	x,#607
2652  0026 89            	pushw	x
2653  0027 ae0000        	ldw	x,#0
2654  002a 89            	pushw	x
2655  002b ae000c        	ldw	x,#L75
2656  002e cd0000        	call	_assert_failed
2658  0031 5b04          	addw	sp,#4
2659  0033               L062:
2660                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2662  0033 c650cc        	ld	a,20684
2663  0036 a4f8          	and	a,#248
2664  0038 1a01          	or	a,(OFST+1,sp)
2665  003a c750cc        	ld	20684,a
2666                     ; 611 }
2669  003d 84            	pop	a
2670  003e 81            	ret
2694                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2694                     ; 623 {
2695                     .text:	section	.text,new
2696  0000               _CLK_SYSCLKEmergencyClear:
2700                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2702  0000 721150c5      	bres	20677,#0
2703                     ; 625 }
2706  0004 81            	ret
2856                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2856                     ; 635 {
2857                     .text:	section	.text,new
2858  0000               _CLK_GetFlagStatus:
2860  0000 89            	pushw	x
2861  0001 5203          	subw	sp,#3
2862       00000003      OFST:	set	3
2865                     ; 636   uint16_t statusreg = 0;
2867                     ; 637   uint8_t tmpreg = 0;
2869                     ; 638   FlagStatus bitstatus = RESET;
2871                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2873  0003 a30110        	cpw	x,#272
2874  0006 2728          	jreq	L072
2875  0008 a30102        	cpw	x,#258
2876  000b 2723          	jreq	L072
2877  000d a30202        	cpw	x,#514
2878  0010 271e          	jreq	L072
2879  0012 a30308        	cpw	x,#776
2880  0015 2719          	jreq	L072
2881  0017 a30301        	cpw	x,#769
2882  001a 2714          	jreq	L072
2883  001c a30408        	cpw	x,#1032
2884  001f 270f          	jreq	L072
2885  0021 a30402        	cpw	x,#1026
2886  0024 270a          	jreq	L072
2887  0026 a30504        	cpw	x,#1284
2888  0029 2705          	jreq	L072
2889  002b a30502        	cpw	x,#1282
2890  002e 2603          	jrne	L662
2891  0030               L072:
2892  0030 4f            	clr	a
2893  0031 2010          	jra	L272
2894  0033               L662:
2895  0033 ae0281        	ldw	x,#641
2896  0036 89            	pushw	x
2897  0037 ae0000        	ldw	x,#0
2898  003a 89            	pushw	x
2899  003b ae000c        	ldw	x,#L75
2900  003e cd0000        	call	_assert_failed
2902  0041 5b04          	addw	sp,#4
2903  0043               L272:
2904                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2906  0043 7b04          	ld	a,(OFST+1,sp)
2907  0045 97            	ld	xl,a
2908  0046 7b05          	ld	a,(OFST+2,sp)
2909  0048 9f            	ld	a,xl
2910  0049 a4ff          	and	a,#255
2911  004b 97            	ld	xl,a
2912  004c 4f            	clr	a
2913  004d 02            	rlwa	x,a
2914  004e 1f01          	ldw	(OFST-2,sp),x
2915  0050 01            	rrwa	x,a
2917                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2919  0051 1e01          	ldw	x,(OFST-2,sp)
2920  0053 a30100        	cpw	x,#256
2921  0056 2607          	jrne	L7221
2922                     ; 649     tmpreg = CLK->ICKR;
2924  0058 c650c0        	ld	a,20672
2925  005b 6b03          	ld	(OFST+0,sp),a
2928  005d 202f          	jra	L1321
2929  005f               L7221:
2930                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2932  005f 1e01          	ldw	x,(OFST-2,sp)
2933  0061 a30200        	cpw	x,#512
2934  0064 2607          	jrne	L3321
2935                     ; 653     tmpreg = CLK->ECKR;
2937  0066 c650c1        	ld	a,20673
2938  0069 6b03          	ld	(OFST+0,sp),a
2941  006b 2021          	jra	L1321
2942  006d               L3321:
2943                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2945  006d 1e01          	ldw	x,(OFST-2,sp)
2946  006f a30300        	cpw	x,#768
2947  0072 2607          	jrne	L7321
2948                     ; 657     tmpreg = CLK->SWCR;
2950  0074 c650c5        	ld	a,20677
2951  0077 6b03          	ld	(OFST+0,sp),a
2954  0079 2013          	jra	L1321
2955  007b               L7321:
2956                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2958  007b 1e01          	ldw	x,(OFST-2,sp)
2959  007d a30400        	cpw	x,#1024
2960  0080 2607          	jrne	L3421
2961                     ; 661     tmpreg = CLK->CSSR;
2963  0082 c650c8        	ld	a,20680
2964  0085 6b03          	ld	(OFST+0,sp),a
2967  0087 2005          	jra	L1321
2968  0089               L3421:
2969                     ; 665     tmpreg = CLK->CCOR;
2971  0089 c650c9        	ld	a,20681
2972  008c 6b03          	ld	(OFST+0,sp),a
2974  008e               L1321:
2975                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2977  008e 7b05          	ld	a,(OFST+2,sp)
2978  0090 1503          	bcp	a,(OFST+0,sp)
2979  0092 2706          	jreq	L7421
2980                     ; 670     bitstatus = SET;
2982  0094 a601          	ld	a,#1
2983  0096 6b03          	ld	(OFST+0,sp),a
2986  0098 2002          	jra	L1521
2987  009a               L7421:
2988                     ; 674     bitstatus = RESET;
2990  009a 0f03          	clr	(OFST+0,sp)
2992  009c               L1521:
2993                     ; 678   return((FlagStatus)bitstatus);
2995  009c 7b03          	ld	a,(OFST+0,sp)
2998  009e 5b05          	addw	sp,#5
2999  00a0 81            	ret
3046                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3046                     ; 688 {
3047                     .text:	section	.text,new
3048  0000               _CLK_GetITStatus:
3050  0000 88            	push	a
3051  0001 88            	push	a
3052       00000001      OFST:	set	1
3055                     ; 689   ITStatus bitstatus = RESET;
3057                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3059  0002 a10c          	cp	a,#12
3060  0004 2704          	jreq	L003
3061  0006 a11c          	cp	a,#28
3062  0008 2603          	jrne	L672
3063  000a               L003:
3064  000a 4f            	clr	a
3065  000b 2010          	jra	L203
3066  000d               L672:
3067  000d ae02b4        	ldw	x,#692
3068  0010 89            	pushw	x
3069  0011 ae0000        	ldw	x,#0
3070  0014 89            	pushw	x
3071  0015 ae000c        	ldw	x,#L75
3072  0018 cd0000        	call	_assert_failed
3074  001b 5b04          	addw	sp,#4
3075  001d               L203:
3076                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3078  001d 7b02          	ld	a,(OFST+1,sp)
3079  001f a11c          	cp	a,#28
3080  0021 2613          	jrne	L5721
3081                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3083  0023 c650c5        	ld	a,20677
3084  0026 1402          	and	a,(OFST+1,sp)
3085  0028 a10c          	cp	a,#12
3086  002a 2606          	jrne	L7721
3087                     ; 699       bitstatus = SET;
3089  002c a601          	ld	a,#1
3090  002e 6b01          	ld	(OFST+0,sp),a
3093  0030 2015          	jra	L3031
3094  0032               L7721:
3095                     ; 703       bitstatus = RESET;
3097  0032 0f01          	clr	(OFST+0,sp)
3099  0034 2011          	jra	L3031
3100  0036               L5721:
3101                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3103  0036 c650c8        	ld	a,20680
3104  0039 1402          	and	a,(OFST+1,sp)
3105  003b a10c          	cp	a,#12
3106  003d 2606          	jrne	L5031
3107                     ; 711       bitstatus = SET;
3109  003f a601          	ld	a,#1
3110  0041 6b01          	ld	(OFST+0,sp),a
3113  0043 2002          	jra	L3031
3114  0045               L5031:
3115                     ; 715       bitstatus = RESET;
3117  0045 0f01          	clr	(OFST+0,sp)
3119  0047               L3031:
3120                     ; 720   return bitstatus;
3122  0047 7b01          	ld	a,(OFST+0,sp)
3125  0049 85            	popw	x
3126  004a 81            	ret
3163                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3163                     ; 730 {
3164                     .text:	section	.text,new
3165  0000               _CLK_ClearITPendingBit:
3167  0000 88            	push	a
3168       00000000      OFST:	set	0
3171                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3173  0001 a10c          	cp	a,#12
3174  0003 2704          	jreq	L013
3175  0005 a11c          	cp	a,#28
3176  0007 2603          	jrne	L603
3177  0009               L013:
3178  0009 4f            	clr	a
3179  000a 2010          	jra	L213
3180  000c               L603:
3181  000c ae02dc        	ldw	x,#732
3182  000f 89            	pushw	x
3183  0010 ae0000        	ldw	x,#0
3184  0013 89            	pushw	x
3185  0014 ae000c        	ldw	x,#L75
3186  0017 cd0000        	call	_assert_failed
3188  001a 5b04          	addw	sp,#4
3189  001c               L213:
3190                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3192  001c 7b01          	ld	a,(OFST+1,sp)
3193  001e a10c          	cp	a,#12
3194  0020 2606          	jrne	L7231
3195                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3197  0022 721750c8      	bres	20680,#3
3199  0026 2004          	jra	L1331
3200  0028               L7231:
3201                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3203  0028 721750c5      	bres	20677,#3
3204  002c               L1331:
3205                     ; 745 }
3208  002c 84            	pop	a
3209  002d 81            	ret
3244                     	xdef	_CLKPrescTable
3245                     	xdef	_HSIDivFactor
3246                     	xdef	_CLK_ClearITPendingBit
3247                     	xdef	_CLK_GetITStatus
3248                     	xdef	_CLK_GetFlagStatus
3249                     	xdef	_CLK_GetSYSCLKSource
3250                     	xdef	_CLK_GetClockFreq
3251                     	xdef	_CLK_AdjustHSICalibrationValue
3252                     	xdef	_CLK_SYSCLKEmergencyClear
3253                     	xdef	_CLK_ClockSecuritySystemEnable
3254                     	xdef	_CLK_SWIMConfig
3255                     	xdef	_CLK_SYSCLKConfig
3256                     	xdef	_CLK_ITConfig
3257                     	xdef	_CLK_CCOConfig
3258                     	xdef	_CLK_HSIPrescalerConfig
3259                     	xdef	_CLK_ClockSwitchConfig
3260                     	xdef	_CLK_PeripheralClockConfig
3261                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3262                     	xdef	_CLK_FastHaltWakeUpCmd
3263                     	xdef	_CLK_ClockSwitchCmd
3264                     	xdef	_CLK_CCOCmd
3265                     	xdef	_CLK_LSICmd
3266                     	xdef	_CLK_HSICmd
3267                     	xdef	_CLK_HSECmd
3268                     	xdef	_CLK_DeInit
3269                     	xref	_assert_failed
3270                     	switch	.const
3271  000c               L75:
3272  000c 7372635c7374  	dc.b	"src\stm8s_clk.c",0
3273                     	xref.b	c_lreg
3274                     	xref.b	c_x
3294                     	xref	c_ltor
3295                     	xref	c_ludv
3296                     	xref	c_rtol
3297                     	end
