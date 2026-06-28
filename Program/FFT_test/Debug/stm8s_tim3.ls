   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 51 void TIM3_DeInit(void)
  43                     ; 52 {
  45                     .text:	section	.text,new
  46  0000               _TIM3_DeInit:
  50                     ; 53   TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  52  0000 725f5320      	clr	21280
  53                     ; 54   TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  55  0004 725f5321      	clr	21281
  56                     ; 55   TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  58  0008 725f5323      	clr	21283
  59                     ; 58   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  61  000c 725f5327      	clr	21287
  62                     ; 61   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  64  0010 725f5327      	clr	21287
  65                     ; 62   TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  67  0014 725f5325      	clr	21285
  68                     ; 63   TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  70  0018 725f5326      	clr	21286
  71                     ; 64   TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  73  001c 725f5328      	clr	21288
  74                     ; 65   TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  76  0020 725f5329      	clr	21289
  77                     ; 66   TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  79  0024 725f532a      	clr	21290
  80                     ; 67   TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  82  0028 35ff532b      	mov	21291,#255
  83                     ; 68   TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  85  002c 35ff532c      	mov	21292,#255
  86                     ; 69   TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  88  0030 725f532d      	clr	21293
  89                     ; 70   TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  91  0034 725f532e      	clr	21294
  92                     ; 71   TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
  94  0038 725f532f      	clr	21295
  95                     ; 72   TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
  97  003c 725f5330      	clr	21296
  98                     ; 73   TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 100  0040 725f5322      	clr	21282
 101                     ; 74 }
 104  0044 81            	ret
 270                     ; 82 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 270                     ; 83                         uint16_t TIM3_Period)
 270                     ; 84 {
 271                     .text:	section	.text,new
 272  0000               _TIM3_TimeBaseInit:
 274  0000 88            	push	a
 275       00000000      OFST:	set	0
 278                     ; 86   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 280  0001 c7532a        	ld	21290,a
 281                     ; 88   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 283  0004 7b04          	ld	a,(OFST+4,sp)
 284  0006 c7532b        	ld	21291,a
 285                     ; 89   TIM3->ARRL = (uint8_t)(TIM3_Period);
 287  0009 7b05          	ld	a,(OFST+5,sp)
 288  000b c7532c        	ld	21292,a
 289                     ; 90 }
 292  000e 84            	pop	a
 293  000f 81            	ret
 449                     ; 100 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 449                     ; 101                   TIM3_OutputState_TypeDef TIM3_OutputState,
 449                     ; 102                   uint16_t TIM3_Pulse,
 449                     ; 103                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 449                     ; 104 {
 450                     .text:	section	.text,new
 451  0000               _TIM3_OC1Init:
 453  0000 89            	pushw	x
 454  0001 88            	push	a
 455       00000001      OFST:	set	1
 458                     ; 106   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 460  0002 9e            	ld	a,xh
 461  0003 4d            	tnz	a
 462  0004 2719          	jreq	L41
 463  0006 9e            	ld	a,xh
 464  0007 a110          	cp	a,#16
 465  0009 2714          	jreq	L41
 466  000b 9e            	ld	a,xh
 467  000c a120          	cp	a,#32
 468  000e 270f          	jreq	L41
 469  0010 9e            	ld	a,xh
 470  0011 a130          	cp	a,#48
 471  0013 270a          	jreq	L41
 472  0015 9e            	ld	a,xh
 473  0016 a160          	cp	a,#96
 474  0018 2705          	jreq	L41
 475  001a 9e            	ld	a,xh
 476  001b a170          	cp	a,#112
 477  001d 2603          	jrne	L21
 478  001f               L41:
 479  001f 4f            	clr	a
 480  0020 2010          	jra	L61
 481  0022               L21:
 482  0022 ae006a        	ldw	x,#106
 483  0025 89            	pushw	x
 484  0026 ae0000        	ldw	x,#0
 485  0029 89            	pushw	x
 486  002a ae0000        	ldw	x,#L102
 487  002d cd0000        	call	_assert_failed
 489  0030 5b04          	addw	sp,#4
 490  0032               L61:
 491                     ; 107   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 493  0032 0d03          	tnz	(OFST+2,sp)
 494  0034 2706          	jreq	L22
 495  0036 7b03          	ld	a,(OFST+2,sp)
 496  0038 a111          	cp	a,#17
 497  003a 2603          	jrne	L02
 498  003c               L22:
 499  003c 4f            	clr	a
 500  003d 2010          	jra	L42
 501  003f               L02:
 502  003f ae006b        	ldw	x,#107
 503  0042 89            	pushw	x
 504  0043 ae0000        	ldw	x,#0
 505  0046 89            	pushw	x
 506  0047 ae0000        	ldw	x,#L102
 507  004a cd0000        	call	_assert_failed
 509  004d 5b04          	addw	sp,#4
 510  004f               L42:
 511                     ; 108   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 513  004f 0d08          	tnz	(OFST+7,sp)
 514  0051 2706          	jreq	L03
 515  0053 7b08          	ld	a,(OFST+7,sp)
 516  0055 a122          	cp	a,#34
 517  0057 2603          	jrne	L62
 518  0059               L03:
 519  0059 4f            	clr	a
 520  005a 2010          	jra	L23
 521  005c               L62:
 522  005c ae006c        	ldw	x,#108
 523  005f 89            	pushw	x
 524  0060 ae0000        	ldw	x,#0
 525  0063 89            	pushw	x
 526  0064 ae0000        	ldw	x,#L102
 527  0067 cd0000        	call	_assert_failed
 529  006a 5b04          	addw	sp,#4
 530  006c               L23:
 531                     ; 111   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 533  006c c65327        	ld	a,21287
 534  006f a4fc          	and	a,#252
 535  0071 c75327        	ld	21287,a
 536                     ; 113   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 538  0074 7b08          	ld	a,(OFST+7,sp)
 539  0076 a402          	and	a,#2
 540  0078 6b01          	ld	(OFST+0,sp),a
 542  007a 7b03          	ld	a,(OFST+2,sp)
 543  007c a401          	and	a,#1
 544  007e 1a01          	or	a,(OFST+0,sp)
 545  0080 ca5327        	or	a,21287
 546  0083 c75327        	ld	21287,a
 547                     ; 116   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 549  0086 c65325        	ld	a,21285
 550  0089 a48f          	and	a,#143
 551  008b 1a02          	or	a,(OFST+1,sp)
 552  008d c75325        	ld	21285,a
 553                     ; 119   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 555  0090 7b06          	ld	a,(OFST+5,sp)
 556  0092 c7532d        	ld	21293,a
 557                     ; 120   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 559  0095 7b07          	ld	a,(OFST+6,sp)
 560  0097 c7532e        	ld	21294,a
 561                     ; 121 }
 564  009a 5b03          	addw	sp,#3
 565  009c 81            	ret
 628                     ; 131 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 628                     ; 132                   TIM3_OutputState_TypeDef TIM3_OutputState,
 628                     ; 133                   uint16_t TIM3_Pulse,
 628                     ; 134                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 628                     ; 135 {
 629                     .text:	section	.text,new
 630  0000               _TIM3_OC2Init:
 632  0000 89            	pushw	x
 633  0001 88            	push	a
 634       00000001      OFST:	set	1
 637                     ; 137   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 639  0002 9e            	ld	a,xh
 640  0003 4d            	tnz	a
 641  0004 2719          	jreq	L04
 642  0006 9e            	ld	a,xh
 643  0007 a110          	cp	a,#16
 644  0009 2714          	jreq	L04
 645  000b 9e            	ld	a,xh
 646  000c a120          	cp	a,#32
 647  000e 270f          	jreq	L04
 648  0010 9e            	ld	a,xh
 649  0011 a130          	cp	a,#48
 650  0013 270a          	jreq	L04
 651  0015 9e            	ld	a,xh
 652  0016 a160          	cp	a,#96
 653  0018 2705          	jreq	L04
 654  001a 9e            	ld	a,xh
 655  001b a170          	cp	a,#112
 656  001d 2603          	jrne	L63
 657  001f               L04:
 658  001f 4f            	clr	a
 659  0020 2010          	jra	L24
 660  0022               L63:
 661  0022 ae0089        	ldw	x,#137
 662  0025 89            	pushw	x
 663  0026 ae0000        	ldw	x,#0
 664  0029 89            	pushw	x
 665  002a ae0000        	ldw	x,#L102
 666  002d cd0000        	call	_assert_failed
 668  0030 5b04          	addw	sp,#4
 669  0032               L24:
 670                     ; 138   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 672  0032 0d03          	tnz	(OFST+2,sp)
 673  0034 2706          	jreq	L64
 674  0036 7b03          	ld	a,(OFST+2,sp)
 675  0038 a111          	cp	a,#17
 676  003a 2603          	jrne	L44
 677  003c               L64:
 678  003c 4f            	clr	a
 679  003d 2010          	jra	L05
 680  003f               L44:
 681  003f ae008a        	ldw	x,#138
 682  0042 89            	pushw	x
 683  0043 ae0000        	ldw	x,#0
 684  0046 89            	pushw	x
 685  0047 ae0000        	ldw	x,#L102
 686  004a cd0000        	call	_assert_failed
 688  004d 5b04          	addw	sp,#4
 689  004f               L05:
 690                     ; 139   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 692  004f 0d08          	tnz	(OFST+7,sp)
 693  0051 2706          	jreq	L45
 694  0053 7b08          	ld	a,(OFST+7,sp)
 695  0055 a122          	cp	a,#34
 696  0057 2603          	jrne	L25
 697  0059               L45:
 698  0059 4f            	clr	a
 699  005a 2010          	jra	L65
 700  005c               L25:
 701  005c ae008b        	ldw	x,#139
 702  005f 89            	pushw	x
 703  0060 ae0000        	ldw	x,#0
 704  0063 89            	pushw	x
 705  0064 ae0000        	ldw	x,#L102
 706  0067 cd0000        	call	_assert_failed
 708  006a 5b04          	addw	sp,#4
 709  006c               L65:
 710                     ; 143   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 712  006c c65327        	ld	a,21287
 713  006f a4cf          	and	a,#207
 714  0071 c75327        	ld	21287,a
 715                     ; 145   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 717  0074 7b08          	ld	a,(OFST+7,sp)
 718  0076 a420          	and	a,#32
 719  0078 6b01          	ld	(OFST+0,sp),a
 721  007a 7b03          	ld	a,(OFST+2,sp)
 722  007c a410          	and	a,#16
 723  007e 1a01          	or	a,(OFST+0,sp)
 724  0080 ca5327        	or	a,21287
 725  0083 c75327        	ld	21287,a
 726                     ; 149   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 728  0086 c65326        	ld	a,21286
 729  0089 a48f          	and	a,#143
 730  008b 1a02          	or	a,(OFST+1,sp)
 731  008d c75326        	ld	21286,a
 732                     ; 153   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 734  0090 7b06          	ld	a,(OFST+5,sp)
 735  0092 c7532f        	ld	21295,a
 736                     ; 154   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 738  0095 7b07          	ld	a,(OFST+6,sp)
 739  0097 c75330        	ld	21296,a
 740                     ; 155 }
 743  009a 5b03          	addw	sp,#3
 744  009c 81            	ret
 927                     ; 166 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 927                     ; 167                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 927                     ; 168                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 927                     ; 169                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 927                     ; 170                  uint8_t TIM3_ICFilter)
 927                     ; 171 {
 928                     .text:	section	.text,new
 929  0000               _TIM3_ICInit:
 931  0000 89            	pushw	x
 932       00000000      OFST:	set	0
 935                     ; 173   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 937  0001 9e            	ld	a,xh
 938  0002 4d            	tnz	a
 939  0003 2705          	jreq	L46
 940  0005 9e            	ld	a,xh
 941  0006 a101          	cp	a,#1
 942  0008 2603          	jrne	L26
 943  000a               L46:
 944  000a 4f            	clr	a
 945  000b 2010          	jra	L66
 946  000d               L26:
 947  000d ae00ad        	ldw	x,#173
 948  0010 89            	pushw	x
 949  0011 ae0000        	ldw	x,#0
 950  0014 89            	pushw	x
 951  0015 ae0000        	ldw	x,#L102
 952  0018 cd0000        	call	_assert_failed
 954  001b 5b04          	addw	sp,#4
 955  001d               L66:
 956                     ; 174   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 958  001d 0d02          	tnz	(OFST+2,sp)
 959  001f 2706          	jreq	L27
 960  0021 7b02          	ld	a,(OFST+2,sp)
 961  0023 a144          	cp	a,#68
 962  0025 2603          	jrne	L07
 963  0027               L27:
 964  0027 4f            	clr	a
 965  0028 2010          	jra	L47
 966  002a               L07:
 967  002a ae00ae        	ldw	x,#174
 968  002d 89            	pushw	x
 969  002e ae0000        	ldw	x,#0
 970  0031 89            	pushw	x
 971  0032 ae0000        	ldw	x,#L102
 972  0035 cd0000        	call	_assert_failed
 974  0038 5b04          	addw	sp,#4
 975  003a               L47:
 976                     ; 175   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 978  003a 7b05          	ld	a,(OFST+5,sp)
 979  003c a101          	cp	a,#1
 980  003e 270c          	jreq	L001
 981  0040 7b05          	ld	a,(OFST+5,sp)
 982  0042 a102          	cp	a,#2
 983  0044 2706          	jreq	L001
 984  0046 7b05          	ld	a,(OFST+5,sp)
 985  0048 a103          	cp	a,#3
 986  004a 2603          	jrne	L67
 987  004c               L001:
 988  004c 4f            	clr	a
 989  004d 2010          	jra	L201
 990  004f               L67:
 991  004f ae00af        	ldw	x,#175
 992  0052 89            	pushw	x
 993  0053 ae0000        	ldw	x,#0
 994  0056 89            	pushw	x
 995  0057 ae0000        	ldw	x,#L102
 996  005a cd0000        	call	_assert_failed
 998  005d 5b04          	addw	sp,#4
 999  005f               L201:
1000                     ; 176   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1002  005f 0d06          	tnz	(OFST+6,sp)
1003  0061 2712          	jreq	L601
1004  0063 7b06          	ld	a,(OFST+6,sp)
1005  0065 a104          	cp	a,#4
1006  0067 270c          	jreq	L601
1007  0069 7b06          	ld	a,(OFST+6,sp)
1008  006b a108          	cp	a,#8
1009  006d 2706          	jreq	L601
1010  006f 7b06          	ld	a,(OFST+6,sp)
1011  0071 a10c          	cp	a,#12
1012  0073 2603          	jrne	L401
1013  0075               L601:
1014  0075 4f            	clr	a
1015  0076 2010          	jra	L011
1016  0078               L401:
1017  0078 ae00b0        	ldw	x,#176
1018  007b 89            	pushw	x
1019  007c ae0000        	ldw	x,#0
1020  007f 89            	pushw	x
1021  0080 ae0000        	ldw	x,#L102
1022  0083 cd0000        	call	_assert_failed
1024  0086 5b04          	addw	sp,#4
1025  0088               L011:
1026                     ; 177   assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
1028  0088 7b07          	ld	a,(OFST+7,sp)
1029  008a a110          	cp	a,#16
1030  008c 2403          	jruge	L211
1031  008e 4f            	clr	a
1032  008f 2010          	jra	L411
1033  0091               L211:
1034  0091 ae00b1        	ldw	x,#177
1035  0094 89            	pushw	x
1036  0095 ae0000        	ldw	x,#0
1037  0098 89            	pushw	x
1038  0099 ae0000        	ldw	x,#L102
1039  009c cd0000        	call	_assert_failed
1041  009f 5b04          	addw	sp,#4
1042  00a1               L411:
1043                     ; 179   if (TIM3_Channel != TIM3_CHANNEL_2)
1045  00a1 7b01          	ld	a,(OFST+1,sp)
1046  00a3 a101          	cp	a,#1
1047  00a5 2714          	jreq	L533
1048                     ; 182     TI1_Config((uint8_t)TIM3_ICPolarity,
1048                     ; 183                (uint8_t)TIM3_ICSelection,
1048                     ; 184                (uint8_t)TIM3_ICFilter);
1050  00a7 7b07          	ld	a,(OFST+7,sp)
1051  00a9 88            	push	a
1052  00aa 7b06          	ld	a,(OFST+6,sp)
1053  00ac 97            	ld	xl,a
1054  00ad 7b03          	ld	a,(OFST+3,sp)
1055  00af 95            	ld	xh,a
1056  00b0 cd0000        	call	L3_TI1_Config
1058  00b3 84            	pop	a
1059                     ; 187     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1061  00b4 7b06          	ld	a,(OFST+6,sp)
1062  00b6 cd0000        	call	_TIM3_SetIC1Prescaler
1065  00b9 2012          	jra	L733
1066  00bb               L533:
1067                     ; 192     TI2_Config((uint8_t)TIM3_ICPolarity,
1067                     ; 193                (uint8_t)TIM3_ICSelection,
1067                     ; 194                (uint8_t)TIM3_ICFilter);
1069  00bb 7b07          	ld	a,(OFST+7,sp)
1070  00bd 88            	push	a
1071  00be 7b06          	ld	a,(OFST+6,sp)
1072  00c0 97            	ld	xl,a
1073  00c1 7b03          	ld	a,(OFST+3,sp)
1074  00c3 95            	ld	xh,a
1075  00c4 cd0000        	call	L5_TI2_Config
1077  00c7 84            	pop	a
1078                     ; 197     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1080  00c8 7b06          	ld	a,(OFST+6,sp)
1081  00ca cd0000        	call	_TIM3_SetIC2Prescaler
1083  00cd               L733:
1084                     ; 199 }
1087  00cd 85            	popw	x
1088  00ce 81            	ret
1179                     ; 210 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1179                     ; 211                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1179                     ; 212                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1179                     ; 213                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1179                     ; 214                      uint8_t TIM3_ICFilter)
1179                     ; 215 {
1180                     .text:	section	.text,new
1181  0000               _TIM3_PWMIConfig:
1183  0000 89            	pushw	x
1184  0001 89            	pushw	x
1185       00000002      OFST:	set	2
1188                     ; 216   uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1190                     ; 217   uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1192                     ; 220   assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1194  0002 9e            	ld	a,xh
1195  0003 4d            	tnz	a
1196  0004 2705          	jreq	L221
1197  0006 9e            	ld	a,xh
1198  0007 a101          	cp	a,#1
1199  0009 2603          	jrne	L021
1200  000b               L221:
1201  000b 4f            	clr	a
1202  000c 2010          	jra	L421
1203  000e               L021:
1204  000e ae00dc        	ldw	x,#220
1205  0011 89            	pushw	x
1206  0012 ae0000        	ldw	x,#0
1207  0015 89            	pushw	x
1208  0016 ae0000        	ldw	x,#L102
1209  0019 cd0000        	call	_assert_failed
1211  001c 5b04          	addw	sp,#4
1212  001e               L421:
1213                     ; 221   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1215  001e 0d04          	tnz	(OFST+2,sp)
1216  0020 2706          	jreq	L031
1217  0022 7b04          	ld	a,(OFST+2,sp)
1218  0024 a144          	cp	a,#68
1219  0026 2603          	jrne	L621
1220  0028               L031:
1221  0028 4f            	clr	a
1222  0029 2010          	jra	L231
1223  002b               L621:
1224  002b ae00dd        	ldw	x,#221
1225  002e 89            	pushw	x
1226  002f ae0000        	ldw	x,#0
1227  0032 89            	pushw	x
1228  0033 ae0000        	ldw	x,#L102
1229  0036 cd0000        	call	_assert_failed
1231  0039 5b04          	addw	sp,#4
1232  003b               L231:
1233                     ; 222   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1235  003b 7b07          	ld	a,(OFST+5,sp)
1236  003d a101          	cp	a,#1
1237  003f 270c          	jreq	L631
1238  0041 7b07          	ld	a,(OFST+5,sp)
1239  0043 a102          	cp	a,#2
1240  0045 2706          	jreq	L631
1241  0047 7b07          	ld	a,(OFST+5,sp)
1242  0049 a103          	cp	a,#3
1243  004b 2603          	jrne	L431
1244  004d               L631:
1245  004d 4f            	clr	a
1246  004e 2010          	jra	L041
1247  0050               L431:
1248  0050 ae00de        	ldw	x,#222
1249  0053 89            	pushw	x
1250  0054 ae0000        	ldw	x,#0
1251  0057 89            	pushw	x
1252  0058 ae0000        	ldw	x,#L102
1253  005b cd0000        	call	_assert_failed
1255  005e 5b04          	addw	sp,#4
1256  0060               L041:
1257                     ; 223   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1259  0060 0d08          	tnz	(OFST+6,sp)
1260  0062 2712          	jreq	L441
1261  0064 7b08          	ld	a,(OFST+6,sp)
1262  0066 a104          	cp	a,#4
1263  0068 270c          	jreq	L441
1264  006a 7b08          	ld	a,(OFST+6,sp)
1265  006c a108          	cp	a,#8
1266  006e 2706          	jreq	L441
1267  0070 7b08          	ld	a,(OFST+6,sp)
1268  0072 a10c          	cp	a,#12
1269  0074 2603          	jrne	L241
1270  0076               L441:
1271  0076 4f            	clr	a
1272  0077 2010          	jra	L641
1273  0079               L241:
1274  0079 ae00df        	ldw	x,#223
1275  007c 89            	pushw	x
1276  007d ae0000        	ldw	x,#0
1277  0080 89            	pushw	x
1278  0081 ae0000        	ldw	x,#L102
1279  0084 cd0000        	call	_assert_failed
1281  0087 5b04          	addw	sp,#4
1282  0089               L641:
1283                     ; 226   if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1285  0089 7b04          	ld	a,(OFST+2,sp)
1286  008b a144          	cp	a,#68
1287  008d 2706          	jreq	L104
1288                     ; 228     icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1290  008f a644          	ld	a,#68
1291  0091 6b01          	ld	(OFST-1,sp),a
1294  0093 2002          	jra	L304
1295  0095               L104:
1296                     ; 232     icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1298  0095 0f01          	clr	(OFST-1,sp)
1300  0097               L304:
1301                     ; 236   if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1303  0097 7b07          	ld	a,(OFST+5,sp)
1304  0099 a101          	cp	a,#1
1305  009b 2606          	jrne	L504
1306                     ; 238     icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1308  009d a602          	ld	a,#2
1309  009f 6b02          	ld	(OFST+0,sp),a
1312  00a1 2004          	jra	L704
1313  00a3               L504:
1314                     ; 242     icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1316  00a3 a601          	ld	a,#1
1317  00a5 6b02          	ld	(OFST+0,sp),a
1319  00a7               L704:
1320                     ; 245   if (TIM3_Channel != TIM3_CHANNEL_2)
1322  00a7 7b03          	ld	a,(OFST+1,sp)
1323  00a9 a101          	cp	a,#1
1324  00ab 2726          	jreq	L114
1325                     ; 248     TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1325                     ; 249                (uint8_t)TIM3_ICFilter);
1327  00ad 7b09          	ld	a,(OFST+7,sp)
1328  00af 88            	push	a
1329  00b0 7b08          	ld	a,(OFST+6,sp)
1330  00b2 97            	ld	xl,a
1331  00b3 7b05          	ld	a,(OFST+3,sp)
1332  00b5 95            	ld	xh,a
1333  00b6 cd0000        	call	L3_TI1_Config
1335  00b9 84            	pop	a
1336                     ; 252     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1338  00ba 7b08          	ld	a,(OFST+6,sp)
1339  00bc cd0000        	call	_TIM3_SetIC1Prescaler
1341                     ; 255     TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1343  00bf 7b09          	ld	a,(OFST+7,sp)
1344  00c1 88            	push	a
1345  00c2 7b03          	ld	a,(OFST+1,sp)
1346  00c4 97            	ld	xl,a
1347  00c5 7b02          	ld	a,(OFST+0,sp)
1348  00c7 95            	ld	xh,a
1349  00c8 cd0000        	call	L5_TI2_Config
1351  00cb 84            	pop	a
1352                     ; 258     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1354  00cc 7b08          	ld	a,(OFST+6,sp)
1355  00ce cd0000        	call	_TIM3_SetIC2Prescaler
1358  00d1 2024          	jra	L314
1359  00d3               L114:
1360                     ; 263     TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1360                     ; 264                (uint8_t)TIM3_ICFilter);
1362  00d3 7b09          	ld	a,(OFST+7,sp)
1363  00d5 88            	push	a
1364  00d6 7b08          	ld	a,(OFST+6,sp)
1365  00d8 97            	ld	xl,a
1366  00d9 7b05          	ld	a,(OFST+3,sp)
1367  00db 95            	ld	xh,a
1368  00dc cd0000        	call	L5_TI2_Config
1370  00df 84            	pop	a
1371                     ; 267     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1373  00e0 7b08          	ld	a,(OFST+6,sp)
1374  00e2 cd0000        	call	_TIM3_SetIC2Prescaler
1376                     ; 270     TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1378  00e5 7b09          	ld	a,(OFST+7,sp)
1379  00e7 88            	push	a
1380  00e8 7b03          	ld	a,(OFST+1,sp)
1381  00ea 97            	ld	xl,a
1382  00eb 7b02          	ld	a,(OFST+0,sp)
1383  00ed 95            	ld	xh,a
1384  00ee cd0000        	call	L3_TI1_Config
1386  00f1 84            	pop	a
1387                     ; 273     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1389  00f2 7b08          	ld	a,(OFST+6,sp)
1390  00f4 cd0000        	call	_TIM3_SetIC1Prescaler
1392  00f7               L314:
1393                     ; 275 }
1396  00f7 5b04          	addw	sp,#4
1397  00f9 81            	ret
1453                     ; 283 void TIM3_Cmd(FunctionalState NewState)
1453                     ; 284 {
1454                     .text:	section	.text,new
1455  0000               _TIM3_Cmd:
1457  0000 88            	push	a
1458       00000000      OFST:	set	0
1461                     ; 286   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1463  0001 4d            	tnz	a
1464  0002 2704          	jreq	L451
1465  0004 a101          	cp	a,#1
1466  0006 2603          	jrne	L251
1467  0008               L451:
1468  0008 4f            	clr	a
1469  0009 2010          	jra	L651
1470  000b               L251:
1471  000b ae011e        	ldw	x,#286
1472  000e 89            	pushw	x
1473  000f ae0000        	ldw	x,#0
1474  0012 89            	pushw	x
1475  0013 ae0000        	ldw	x,#L102
1476  0016 cd0000        	call	_assert_failed
1478  0019 5b04          	addw	sp,#4
1479  001b               L651:
1480                     ; 289   if (NewState != DISABLE)
1482  001b 0d01          	tnz	(OFST+1,sp)
1483  001d 2706          	jreq	L344
1484                     ; 291     TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1486  001f 72105320      	bset	21280,#0
1488  0023 2004          	jra	L544
1489  0025               L344:
1490                     ; 295     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1492  0025 72115320      	bres	21280,#0
1493  0029               L544:
1494                     ; 297 }
1497  0029 84            	pop	a
1498  002a 81            	ret
1571                     ; 311 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1571                     ; 312 {
1572                     .text:	section	.text,new
1573  0000               _TIM3_ITConfig:
1575  0000 89            	pushw	x
1576       00000000      OFST:	set	0
1579                     ; 314   assert_param(IS_TIM3_IT_OK(TIM3_IT));
1581  0001 9e            	ld	a,xh
1582  0002 4d            	tnz	a
1583  0003 2708          	jreq	L261
1584  0005 9e            	ld	a,xh
1585  0006 a108          	cp	a,#8
1586  0008 2403          	jruge	L261
1587  000a 4f            	clr	a
1588  000b 2010          	jra	L461
1589  000d               L261:
1590  000d ae013a        	ldw	x,#314
1591  0010 89            	pushw	x
1592  0011 ae0000        	ldw	x,#0
1593  0014 89            	pushw	x
1594  0015 ae0000        	ldw	x,#L102
1595  0018 cd0000        	call	_assert_failed
1597  001b 5b04          	addw	sp,#4
1598  001d               L461:
1599                     ; 315   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1601  001d 0d02          	tnz	(OFST+2,sp)
1602  001f 2706          	jreq	L071
1603  0021 7b02          	ld	a,(OFST+2,sp)
1604  0023 a101          	cp	a,#1
1605  0025 2603          	jrne	L661
1606  0027               L071:
1607  0027 4f            	clr	a
1608  0028 2010          	jra	L271
1609  002a               L661:
1610  002a ae013b        	ldw	x,#315
1611  002d 89            	pushw	x
1612  002e ae0000        	ldw	x,#0
1613  0031 89            	pushw	x
1614  0032 ae0000        	ldw	x,#L102
1615  0035 cd0000        	call	_assert_failed
1617  0038 5b04          	addw	sp,#4
1618  003a               L271:
1619                     ; 317   if (NewState != DISABLE)
1621  003a 0d02          	tnz	(OFST+2,sp)
1622  003c 270a          	jreq	L305
1623                     ; 320     TIM3->IER |= (uint8_t)TIM3_IT;
1625  003e c65321        	ld	a,21281
1626  0041 1a01          	or	a,(OFST+1,sp)
1627  0043 c75321        	ld	21281,a
1629  0046 2009          	jra	L505
1630  0048               L305:
1631                     ; 325     TIM3->IER &= (uint8_t)(~TIM3_IT);
1633  0048 7b01          	ld	a,(OFST+1,sp)
1634  004a 43            	cpl	a
1635  004b c45321        	and	a,21281
1636  004e c75321        	ld	21281,a
1637  0051               L505:
1638                     ; 327 }
1641  0051 85            	popw	x
1642  0052 81            	ret
1679                     ; 335 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1679                     ; 336 {
1680                     .text:	section	.text,new
1681  0000               _TIM3_UpdateDisableConfig:
1683  0000 88            	push	a
1684       00000000      OFST:	set	0
1687                     ; 338   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1689  0001 4d            	tnz	a
1690  0002 2704          	jreq	L002
1691  0004 a101          	cp	a,#1
1692  0006 2603          	jrne	L671
1693  0008               L002:
1694  0008 4f            	clr	a
1695  0009 2010          	jra	L202
1696  000b               L671:
1697  000b ae0152        	ldw	x,#338
1698  000e 89            	pushw	x
1699  000f ae0000        	ldw	x,#0
1700  0012 89            	pushw	x
1701  0013 ae0000        	ldw	x,#L102
1702  0016 cd0000        	call	_assert_failed
1704  0019 5b04          	addw	sp,#4
1705  001b               L202:
1706                     ; 341   if (NewState != DISABLE)
1708  001b 0d01          	tnz	(OFST+1,sp)
1709  001d 2706          	jreq	L525
1710                     ; 343     TIM3->CR1 |= TIM3_CR1_UDIS;
1712  001f 72125320      	bset	21280,#1
1714  0023 2004          	jra	L725
1715  0025               L525:
1716                     ; 347     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1718  0025 72135320      	bres	21280,#1
1719  0029               L725:
1720                     ; 349 }
1723  0029 84            	pop	a
1724  002a 81            	ret
1783                     ; 359 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1783                     ; 360 {
1784                     .text:	section	.text,new
1785  0000               _TIM3_UpdateRequestConfig:
1787  0000 88            	push	a
1788       00000000      OFST:	set	0
1791                     ; 362   assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1793  0001 4d            	tnz	a
1794  0002 2704          	jreq	L012
1795  0004 a101          	cp	a,#1
1796  0006 2603          	jrne	L602
1797  0008               L012:
1798  0008 4f            	clr	a
1799  0009 2010          	jra	L212
1800  000b               L602:
1801  000b ae016a        	ldw	x,#362
1802  000e 89            	pushw	x
1803  000f ae0000        	ldw	x,#0
1804  0012 89            	pushw	x
1805  0013 ae0000        	ldw	x,#L102
1806  0016 cd0000        	call	_assert_failed
1808  0019 5b04          	addw	sp,#4
1809  001b               L212:
1810                     ; 365   if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1812  001b 0d01          	tnz	(OFST+1,sp)
1813  001d 2706          	jreq	L755
1814                     ; 367     TIM3->CR1 |= TIM3_CR1_URS;
1816  001f 72145320      	bset	21280,#2
1818  0023 2004          	jra	L165
1819  0025               L755:
1820                     ; 371     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1822  0025 72155320      	bres	21280,#2
1823  0029               L165:
1824                     ; 373 }
1827  0029 84            	pop	a
1828  002a 81            	ret
1886                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1886                     ; 384 {
1887                     .text:	section	.text,new
1888  0000               _TIM3_SelectOnePulseMode:
1890  0000 88            	push	a
1891       00000000      OFST:	set	0
1894                     ; 386   assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1896  0001 a101          	cp	a,#1
1897  0003 2703          	jreq	L022
1898  0005 4d            	tnz	a
1899  0006 2603          	jrne	L612
1900  0008               L022:
1901  0008 4f            	clr	a
1902  0009 2010          	jra	L222
1903  000b               L612:
1904  000b ae0182        	ldw	x,#386
1905  000e 89            	pushw	x
1906  000f ae0000        	ldw	x,#0
1907  0012 89            	pushw	x
1908  0013 ae0000        	ldw	x,#L102
1909  0016 cd0000        	call	_assert_failed
1911  0019 5b04          	addw	sp,#4
1912  001b               L222:
1913                     ; 389   if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1915  001b 0d01          	tnz	(OFST+1,sp)
1916  001d 2706          	jreq	L116
1917                     ; 391     TIM3->CR1 |= TIM3_CR1_OPM;
1919  001f 72165320      	bset	21280,#3
1921  0023 2004          	jra	L316
1922  0025               L116:
1923                     ; 395     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1925  0025 72175320      	bres	21280,#3
1926  0029               L316:
1927                     ; 397 }
1930  0029 84            	pop	a
1931  002a 81            	ret
2000                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
2000                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
2000                     ; 429 {
2001                     .text:	section	.text,new
2002  0000               _TIM3_PrescalerConfig:
2004  0000 89            	pushw	x
2005       00000000      OFST:	set	0
2008                     ; 431   assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
2010  0001 9f            	ld	a,xl
2011  0002 4d            	tnz	a
2012  0003 2705          	jreq	L032
2013  0005 9f            	ld	a,xl
2014  0006 a101          	cp	a,#1
2015  0008 2603          	jrne	L622
2016  000a               L032:
2017  000a 4f            	clr	a
2018  000b 2010          	jra	L232
2019  000d               L622:
2020  000d ae01af        	ldw	x,#431
2021  0010 89            	pushw	x
2022  0011 ae0000        	ldw	x,#0
2023  0014 89            	pushw	x
2024  0015 ae0000        	ldw	x,#L102
2025  0018 cd0000        	call	_assert_failed
2027  001b 5b04          	addw	sp,#4
2028  001d               L232:
2029                     ; 432   assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
2031  001d 0d01          	tnz	(OFST+1,sp)
2032  001f 275a          	jreq	L632
2033  0021 7b01          	ld	a,(OFST+1,sp)
2034  0023 a101          	cp	a,#1
2035  0025 2754          	jreq	L632
2036  0027 7b01          	ld	a,(OFST+1,sp)
2037  0029 a102          	cp	a,#2
2038  002b 274e          	jreq	L632
2039  002d 7b01          	ld	a,(OFST+1,sp)
2040  002f a103          	cp	a,#3
2041  0031 2748          	jreq	L632
2042  0033 7b01          	ld	a,(OFST+1,sp)
2043  0035 a104          	cp	a,#4
2044  0037 2742          	jreq	L632
2045  0039 7b01          	ld	a,(OFST+1,sp)
2046  003b a105          	cp	a,#5
2047  003d 273c          	jreq	L632
2048  003f 7b01          	ld	a,(OFST+1,sp)
2049  0041 a106          	cp	a,#6
2050  0043 2736          	jreq	L632
2051  0045 7b01          	ld	a,(OFST+1,sp)
2052  0047 a107          	cp	a,#7
2053  0049 2730          	jreq	L632
2054  004b 7b01          	ld	a,(OFST+1,sp)
2055  004d a108          	cp	a,#8
2056  004f 272a          	jreq	L632
2057  0051 7b01          	ld	a,(OFST+1,sp)
2058  0053 a109          	cp	a,#9
2059  0055 2724          	jreq	L632
2060  0057 7b01          	ld	a,(OFST+1,sp)
2061  0059 a10a          	cp	a,#10
2062  005b 271e          	jreq	L632
2063  005d 7b01          	ld	a,(OFST+1,sp)
2064  005f a10b          	cp	a,#11
2065  0061 2718          	jreq	L632
2066  0063 7b01          	ld	a,(OFST+1,sp)
2067  0065 a10c          	cp	a,#12
2068  0067 2712          	jreq	L632
2069  0069 7b01          	ld	a,(OFST+1,sp)
2070  006b a10d          	cp	a,#13
2071  006d 270c          	jreq	L632
2072  006f 7b01          	ld	a,(OFST+1,sp)
2073  0071 a10e          	cp	a,#14
2074  0073 2706          	jreq	L632
2075  0075 7b01          	ld	a,(OFST+1,sp)
2076  0077 a10f          	cp	a,#15
2077  0079 2603          	jrne	L432
2078  007b               L632:
2079  007b 4f            	clr	a
2080  007c 2010          	jra	L042
2081  007e               L432:
2082  007e ae01b0        	ldw	x,#432
2083  0081 89            	pushw	x
2084  0082 ae0000        	ldw	x,#0
2085  0085 89            	pushw	x
2086  0086 ae0000        	ldw	x,#L102
2087  0089 cd0000        	call	_assert_failed
2089  008c 5b04          	addw	sp,#4
2090  008e               L042:
2091                     ; 435   TIM3->PSCR = (uint8_t)Prescaler;
2093  008e 7b01          	ld	a,(OFST+1,sp)
2094  0090 c7532a        	ld	21290,a
2095                     ; 438   TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
2097  0093 7b02          	ld	a,(OFST+2,sp)
2098  0095 c75324        	ld	21284,a
2099                     ; 439 }
2102  0098 85            	popw	x
2103  0099 81            	ret
2162                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2162                     ; 451 {
2163                     .text:	section	.text,new
2164  0000               _TIM3_ForcedOC1Config:
2166  0000 88            	push	a
2167       00000000      OFST:	set	0
2170                     ; 453   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2172  0001 a150          	cp	a,#80
2173  0003 2704          	jreq	L642
2174  0005 a140          	cp	a,#64
2175  0007 2603          	jrne	L442
2176  0009               L642:
2177  0009 4f            	clr	a
2178  000a 2010          	jra	L052
2179  000c               L442:
2180  000c ae01c5        	ldw	x,#453
2181  000f 89            	pushw	x
2182  0010 ae0000        	ldw	x,#0
2183  0013 89            	pushw	x
2184  0014 ae0000        	ldw	x,#L102
2185  0017 cd0000        	call	_assert_failed
2187  001a 5b04          	addw	sp,#4
2188  001c               L052:
2189                     ; 456   TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2191  001c c65325        	ld	a,21285
2192  001f a48f          	and	a,#143
2193  0021 1a01          	or	a,(OFST+1,sp)
2194  0023 c75325        	ld	21285,a
2195                     ; 457 }
2198  0026 84            	pop	a
2199  0027 81            	ret
2236                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2236                     ; 469 {
2237                     .text:	section	.text,new
2238  0000               _TIM3_ForcedOC2Config:
2240  0000 88            	push	a
2241       00000000      OFST:	set	0
2244                     ; 471   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2246  0001 a150          	cp	a,#80
2247  0003 2704          	jreq	L652
2248  0005 a140          	cp	a,#64
2249  0007 2603          	jrne	L452
2250  0009               L652:
2251  0009 4f            	clr	a
2252  000a 2010          	jra	L062
2253  000c               L452:
2254  000c ae01d7        	ldw	x,#471
2255  000f 89            	pushw	x
2256  0010 ae0000        	ldw	x,#0
2257  0013 89            	pushw	x
2258  0014 ae0000        	ldw	x,#L102
2259  0017 cd0000        	call	_assert_failed
2261  001a 5b04          	addw	sp,#4
2262  001c               L062:
2263                     ; 474   TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2265  001c c65326        	ld	a,21286
2266  001f a48f          	and	a,#143
2267  0021 1a01          	or	a,(OFST+1,sp)
2268  0023 c75326        	ld	21286,a
2269                     ; 475 }
2272  0026 84            	pop	a
2273  0027 81            	ret
2310                     ; 483 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2310                     ; 484 {
2311                     .text:	section	.text,new
2312  0000               _TIM3_ARRPreloadConfig:
2314  0000 88            	push	a
2315       00000000      OFST:	set	0
2318                     ; 486   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2320  0001 4d            	tnz	a
2321  0002 2704          	jreq	L662
2322  0004 a101          	cp	a,#1
2323  0006 2603          	jrne	L462
2324  0008               L662:
2325  0008 4f            	clr	a
2326  0009 2010          	jra	L072
2327  000b               L462:
2328  000b ae01e6        	ldw	x,#486
2329  000e 89            	pushw	x
2330  000f ae0000        	ldw	x,#0
2331  0012 89            	pushw	x
2332  0013 ae0000        	ldw	x,#L102
2333  0016 cd0000        	call	_assert_failed
2335  0019 5b04          	addw	sp,#4
2336  001b               L072:
2337                     ; 489   if (NewState != DISABLE)
2339  001b 0d01          	tnz	(OFST+1,sp)
2340  001d 2706          	jreq	L137
2341                     ; 491     TIM3->CR1 |= TIM3_CR1_ARPE;
2343  001f 721e5320      	bset	21280,#7
2345  0023 2004          	jra	L337
2346  0025               L137:
2347                     ; 495     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2349  0025 721f5320      	bres	21280,#7
2350  0029               L337:
2351                     ; 497 }
2354  0029 84            	pop	a
2355  002a 81            	ret
2392                     ; 505 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2392                     ; 506 {
2393                     .text:	section	.text,new
2394  0000               _TIM3_OC1PreloadConfig:
2396  0000 88            	push	a
2397       00000000      OFST:	set	0
2400                     ; 508   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2402  0001 4d            	tnz	a
2403  0002 2704          	jreq	L672
2404  0004 a101          	cp	a,#1
2405  0006 2603          	jrne	L472
2406  0008               L672:
2407  0008 4f            	clr	a
2408  0009 2010          	jra	L003
2409  000b               L472:
2410  000b ae01fc        	ldw	x,#508
2411  000e 89            	pushw	x
2412  000f ae0000        	ldw	x,#0
2413  0012 89            	pushw	x
2414  0013 ae0000        	ldw	x,#L102
2415  0016 cd0000        	call	_assert_failed
2417  0019 5b04          	addw	sp,#4
2418  001b               L003:
2419                     ; 511   if (NewState != DISABLE)
2421  001b 0d01          	tnz	(OFST+1,sp)
2422  001d 2706          	jreq	L357
2423                     ; 513     TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2425  001f 72165325      	bset	21285,#3
2427  0023 2004          	jra	L557
2428  0025               L357:
2429                     ; 517     TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2431  0025 72175325      	bres	21285,#3
2432  0029               L557:
2433                     ; 519 }
2436  0029 84            	pop	a
2437  002a 81            	ret
2474                     ; 527 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2474                     ; 528 {
2475                     .text:	section	.text,new
2476  0000               _TIM3_OC2PreloadConfig:
2478  0000 88            	push	a
2479       00000000      OFST:	set	0
2482                     ; 530   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2484  0001 4d            	tnz	a
2485  0002 2704          	jreq	L603
2486  0004 a101          	cp	a,#1
2487  0006 2603          	jrne	L403
2488  0008               L603:
2489  0008 4f            	clr	a
2490  0009 2010          	jra	L013
2491  000b               L403:
2492  000b ae0212        	ldw	x,#530
2493  000e 89            	pushw	x
2494  000f ae0000        	ldw	x,#0
2495  0012 89            	pushw	x
2496  0013 ae0000        	ldw	x,#L102
2497  0016 cd0000        	call	_assert_failed
2499  0019 5b04          	addw	sp,#4
2500  001b               L013:
2501                     ; 533   if (NewState != DISABLE)
2503  001b 0d01          	tnz	(OFST+1,sp)
2504  001d 2706          	jreq	L577
2505                     ; 535     TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2507  001f 72165326      	bset	21286,#3
2509  0023 2004          	jra	L777
2510  0025               L577:
2511                     ; 539     TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2513  0025 72175326      	bres	21286,#3
2514  0029               L777:
2515                     ; 541 }
2518  0029 84            	pop	a
2519  002a 81            	ret
2585                     ; 552 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2585                     ; 553 {
2586                     .text:	section	.text,new
2587  0000               _TIM3_GenerateEvent:
2589  0000 88            	push	a
2590       00000000      OFST:	set	0
2593                     ; 555   assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2595  0001 4d            	tnz	a
2596  0002 2703          	jreq	L413
2597  0004 4f            	clr	a
2598  0005 2010          	jra	L613
2599  0007               L413:
2600  0007 ae022b        	ldw	x,#555
2601  000a 89            	pushw	x
2602  000b ae0000        	ldw	x,#0
2603  000e 89            	pushw	x
2604  000f ae0000        	ldw	x,#L102
2605  0012 cd0000        	call	_assert_failed
2607  0015 5b04          	addw	sp,#4
2608  0017               L613:
2609                     ; 558   TIM3->EGR = (uint8_t)TIM3_EventSource;
2611  0017 7b01          	ld	a,(OFST+1,sp)
2612  0019 c75324        	ld	21284,a
2613                     ; 559 }
2616  001c 84            	pop	a
2617  001d 81            	ret
2654                     ; 569 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2654                     ; 570 {
2655                     .text:	section	.text,new
2656  0000               _TIM3_OC1PolarityConfig:
2658  0000 88            	push	a
2659       00000000      OFST:	set	0
2662                     ; 572   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2664  0001 4d            	tnz	a
2665  0002 2704          	jreq	L423
2666  0004 a122          	cp	a,#34
2667  0006 2603          	jrne	L223
2668  0008               L423:
2669  0008 4f            	clr	a
2670  0009 2010          	jra	L623
2671  000b               L223:
2672  000b ae023c        	ldw	x,#572
2673  000e 89            	pushw	x
2674  000f ae0000        	ldw	x,#0
2675  0012 89            	pushw	x
2676  0013 ae0000        	ldw	x,#L102
2677  0016 cd0000        	call	_assert_failed
2679  0019 5b04          	addw	sp,#4
2680  001b               L623:
2681                     ; 575   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2683  001b 0d01          	tnz	(OFST+1,sp)
2684  001d 2706          	jreq	L7401
2685                     ; 577     TIM3->CCER1 |= TIM3_CCER1_CC1P;
2687  001f 72125327      	bset	21287,#1
2689  0023 2004          	jra	L1501
2690  0025               L7401:
2691                     ; 581     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2693  0025 72135327      	bres	21287,#1
2694  0029               L1501:
2695                     ; 583 }
2698  0029 84            	pop	a
2699  002a 81            	ret
2736                     ; 593 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2736                     ; 594 {
2737                     .text:	section	.text,new
2738  0000               _TIM3_OC2PolarityConfig:
2740  0000 88            	push	a
2741       00000000      OFST:	set	0
2744                     ; 596   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2746  0001 4d            	tnz	a
2747  0002 2704          	jreq	L433
2748  0004 a122          	cp	a,#34
2749  0006 2603          	jrne	L233
2750  0008               L433:
2751  0008 4f            	clr	a
2752  0009 2010          	jra	L633
2753  000b               L233:
2754  000b ae0254        	ldw	x,#596
2755  000e 89            	pushw	x
2756  000f ae0000        	ldw	x,#0
2757  0012 89            	pushw	x
2758  0013 ae0000        	ldw	x,#L102
2759  0016 cd0000        	call	_assert_failed
2761  0019 5b04          	addw	sp,#4
2762  001b               L633:
2763                     ; 599   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2765  001b 0d01          	tnz	(OFST+1,sp)
2766  001d 2706          	jreq	L1701
2767                     ; 601     TIM3->CCER1 |= TIM3_CCER1_CC2P;
2769  001f 721a5327      	bset	21287,#5
2771  0023 2004          	jra	L3701
2772  0025               L1701:
2773                     ; 605     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2775  0025 721b5327      	bres	21287,#5
2776  0029               L3701:
2777                     ; 607 }
2780  0029 84            	pop	a
2781  002a 81            	ret
2827                     ; 619 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2827                     ; 620 {
2828                     .text:	section	.text,new
2829  0000               _TIM3_CCxCmd:
2831  0000 89            	pushw	x
2832       00000000      OFST:	set	0
2835                     ; 622   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2837  0001 9e            	ld	a,xh
2838  0002 4d            	tnz	a
2839  0003 2705          	jreq	L443
2840  0005 9e            	ld	a,xh
2841  0006 a101          	cp	a,#1
2842  0008 2603          	jrne	L243
2843  000a               L443:
2844  000a 4f            	clr	a
2845  000b 2010          	jra	L643
2846  000d               L243:
2847  000d ae026e        	ldw	x,#622
2848  0010 89            	pushw	x
2849  0011 ae0000        	ldw	x,#0
2850  0014 89            	pushw	x
2851  0015 ae0000        	ldw	x,#L102
2852  0018 cd0000        	call	_assert_failed
2854  001b 5b04          	addw	sp,#4
2855  001d               L643:
2856                     ; 623   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2858  001d 0d02          	tnz	(OFST+2,sp)
2859  001f 2706          	jreq	L253
2860  0021 7b02          	ld	a,(OFST+2,sp)
2861  0023 a101          	cp	a,#1
2862  0025 2603          	jrne	L053
2863  0027               L253:
2864  0027 4f            	clr	a
2865  0028 2010          	jra	L453
2866  002a               L053:
2867  002a ae026f        	ldw	x,#623
2868  002d 89            	pushw	x
2869  002e ae0000        	ldw	x,#0
2870  0031 89            	pushw	x
2871  0032 ae0000        	ldw	x,#L102
2872  0035 cd0000        	call	_assert_failed
2874  0038 5b04          	addw	sp,#4
2875  003a               L453:
2876                     ; 625   if (TIM3_Channel == TIM3_CHANNEL_1)
2878  003a 0d01          	tnz	(OFST+1,sp)
2879  003c 2610          	jrne	L7111
2880                     ; 628     if (NewState != DISABLE)
2882  003e 0d02          	tnz	(OFST+2,sp)
2883  0040 2706          	jreq	L1211
2884                     ; 630       TIM3->CCER1 |= TIM3_CCER1_CC1E;
2886  0042 72105327      	bset	21287,#0
2888  0046 2014          	jra	L5211
2889  0048               L1211:
2890                     ; 634       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2892  0048 72115327      	bres	21287,#0
2893  004c 200e          	jra	L5211
2894  004e               L7111:
2895                     ; 641     if (NewState != DISABLE)
2897  004e 0d02          	tnz	(OFST+2,sp)
2898  0050 2706          	jreq	L7211
2899                     ; 643       TIM3->CCER1 |= TIM3_CCER1_CC2E;
2901  0052 72185327      	bset	21287,#4
2903  0056 2004          	jra	L5211
2904  0058               L7211:
2905                     ; 647       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2907  0058 72195327      	bres	21287,#4
2908  005c               L5211:
2909                     ; 650 }
2912  005c 85            	popw	x
2913  005d 81            	ret
2959                     ; 671 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2959                     ; 672 {
2960                     .text:	section	.text,new
2961  0000               _TIM3_SelectOCxM:
2963  0000 89            	pushw	x
2964       00000000      OFST:	set	0
2967                     ; 674   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2969  0001 9e            	ld	a,xh
2970  0002 4d            	tnz	a
2971  0003 2705          	jreq	L263
2972  0005 9e            	ld	a,xh
2973  0006 a101          	cp	a,#1
2974  0008 2603          	jrne	L063
2975  000a               L263:
2976  000a 4f            	clr	a
2977  000b 2010          	jra	L463
2978  000d               L063:
2979  000d ae02a2        	ldw	x,#674
2980  0010 89            	pushw	x
2981  0011 ae0000        	ldw	x,#0
2982  0014 89            	pushw	x
2983  0015 ae0000        	ldw	x,#L102
2984  0018 cd0000        	call	_assert_failed
2986  001b 5b04          	addw	sp,#4
2987  001d               L463:
2988                     ; 675   assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2990  001d 0d02          	tnz	(OFST+2,sp)
2991  001f 272a          	jreq	L073
2992  0021 7b02          	ld	a,(OFST+2,sp)
2993  0023 a110          	cp	a,#16
2994  0025 2724          	jreq	L073
2995  0027 7b02          	ld	a,(OFST+2,sp)
2996  0029 a120          	cp	a,#32
2997  002b 271e          	jreq	L073
2998  002d 7b02          	ld	a,(OFST+2,sp)
2999  002f a130          	cp	a,#48
3000  0031 2718          	jreq	L073
3001  0033 7b02          	ld	a,(OFST+2,sp)
3002  0035 a160          	cp	a,#96
3003  0037 2712          	jreq	L073
3004  0039 7b02          	ld	a,(OFST+2,sp)
3005  003b a170          	cp	a,#112
3006  003d 270c          	jreq	L073
3007  003f 7b02          	ld	a,(OFST+2,sp)
3008  0041 a150          	cp	a,#80
3009  0043 2706          	jreq	L073
3010  0045 7b02          	ld	a,(OFST+2,sp)
3011  0047 a140          	cp	a,#64
3012  0049 2603          	jrne	L663
3013  004b               L073:
3014  004b 4f            	clr	a
3015  004c 2010          	jra	L273
3016  004e               L663:
3017  004e ae02a3        	ldw	x,#675
3018  0051 89            	pushw	x
3019  0052 ae0000        	ldw	x,#0
3020  0055 89            	pushw	x
3021  0056 ae0000        	ldw	x,#L102
3022  0059 cd0000        	call	_assert_failed
3024  005c 5b04          	addw	sp,#4
3025  005e               L273:
3026                     ; 677   if (TIM3_Channel == TIM3_CHANNEL_1)
3028  005e 0d01          	tnz	(OFST+1,sp)
3029  0060 2610          	jrne	L5511
3030                     ; 680     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3032  0062 72115327      	bres	21287,#0
3033                     ; 683     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
3035  0066 c65325        	ld	a,21285
3036  0069 a48f          	and	a,#143
3037  006b 1a02          	or	a,(OFST+2,sp)
3038  006d c75325        	ld	21285,a
3040  0070 200e          	jra	L7511
3041  0072               L5511:
3042                     ; 688     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
3044  0072 72195327      	bres	21287,#4
3045                     ; 691     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
3047  0076 c65326        	ld	a,21286
3048  0079 a48f          	and	a,#143
3049  007b 1a02          	or	a,(OFST+2,sp)
3050  007d c75326        	ld	21286,a
3051  0080               L7511:
3052                     ; 693 }
3055  0080 85            	popw	x
3056  0081 81            	ret
3088                     ; 701 void TIM3_SetCounter(uint16_t Counter)
3088                     ; 702 {
3089                     .text:	section	.text,new
3090  0000               _TIM3_SetCounter:
3094                     ; 704   TIM3->CNTRH = (uint8_t)(Counter >> 8);
3096  0000 9e            	ld	a,xh
3097  0001 c75328        	ld	21288,a
3098                     ; 705   TIM3->CNTRL = (uint8_t)(Counter);
3100  0004 9f            	ld	a,xl
3101  0005 c75329        	ld	21289,a
3102                     ; 706 }
3105  0008 81            	ret
3137                     ; 714 void TIM3_SetAutoreload(uint16_t Autoreload)
3137                     ; 715 {
3138                     .text:	section	.text,new
3139  0000               _TIM3_SetAutoreload:
3143                     ; 717   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
3145  0000 9e            	ld	a,xh
3146  0001 c7532b        	ld	21291,a
3147                     ; 718   TIM3->ARRL = (uint8_t)(Autoreload);
3149  0004 9f            	ld	a,xl
3150  0005 c7532c        	ld	21292,a
3151                     ; 719 }
3154  0008 81            	ret
3186                     ; 727 void TIM3_SetCompare1(uint16_t Compare1)
3186                     ; 728 {
3187                     .text:	section	.text,new
3188  0000               _TIM3_SetCompare1:
3192                     ; 730   TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
3194  0000 9e            	ld	a,xh
3195  0001 c7532d        	ld	21293,a
3196                     ; 731   TIM3->CCR1L = (uint8_t)(Compare1);
3198  0004 9f            	ld	a,xl
3199  0005 c7532e        	ld	21294,a
3200                     ; 732 }
3203  0008 81            	ret
3235                     ; 740 void TIM3_SetCompare2(uint16_t Compare2)
3235                     ; 741 {
3236                     .text:	section	.text,new
3237  0000               _TIM3_SetCompare2:
3241                     ; 743   TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3243  0000 9e            	ld	a,xh
3244  0001 c7532f        	ld	21295,a
3245                     ; 744   TIM3->CCR2L = (uint8_t)(Compare2);
3247  0004 9f            	ld	a,xl
3248  0005 c75330        	ld	21296,a
3249                     ; 745 }
3252  0008 81            	ret
3289                     ; 757 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3289                     ; 758 {
3290                     .text:	section	.text,new
3291  0000               _TIM3_SetIC1Prescaler:
3293  0000 88            	push	a
3294       00000000      OFST:	set	0
3297                     ; 760   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3299  0001 4d            	tnz	a
3300  0002 270c          	jreq	L014
3301  0004 a104          	cp	a,#4
3302  0006 2708          	jreq	L014
3303  0008 a108          	cp	a,#8
3304  000a 2704          	jreq	L014
3305  000c a10c          	cp	a,#12
3306  000e 2603          	jrne	L604
3307  0010               L014:
3308  0010 4f            	clr	a
3309  0011 2010          	jra	L214
3310  0013               L604:
3311  0013 ae02f8        	ldw	x,#760
3312  0016 89            	pushw	x
3313  0017 ae0000        	ldw	x,#0
3314  001a 89            	pushw	x
3315  001b ae0000        	ldw	x,#L102
3316  001e cd0000        	call	_assert_failed
3318  0021 5b04          	addw	sp,#4
3319  0023               L214:
3320                     ; 763   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3322  0023 c65325        	ld	a,21285
3323  0026 a4f3          	and	a,#243
3324  0028 1a01          	or	a,(OFST+1,sp)
3325  002a c75325        	ld	21285,a
3326                     ; 764 }
3329  002d 84            	pop	a
3330  002e 81            	ret
3367                     ; 776 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3367                     ; 777 {
3368                     .text:	section	.text,new
3369  0000               _TIM3_SetIC2Prescaler:
3371  0000 88            	push	a
3372       00000000      OFST:	set	0
3375                     ; 779   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3377  0001 4d            	tnz	a
3378  0002 270c          	jreq	L024
3379  0004 a104          	cp	a,#4
3380  0006 2708          	jreq	L024
3381  0008 a108          	cp	a,#8
3382  000a 2704          	jreq	L024
3383  000c a10c          	cp	a,#12
3384  000e 2603          	jrne	L614
3385  0010               L024:
3386  0010 4f            	clr	a
3387  0011 2010          	jra	L224
3388  0013               L614:
3389  0013 ae030b        	ldw	x,#779
3390  0016 89            	pushw	x
3391  0017 ae0000        	ldw	x,#0
3392  001a 89            	pushw	x
3393  001b ae0000        	ldw	x,#L102
3394  001e cd0000        	call	_assert_failed
3396  0021 5b04          	addw	sp,#4
3397  0023               L224:
3398                     ; 782   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3400  0023 c65326        	ld	a,21286
3401  0026 a4f3          	and	a,#243
3402  0028 1a01          	or	a,(OFST+1,sp)
3403  002a c75326        	ld	21286,a
3404                     ; 783 }
3407  002d 84            	pop	a
3408  002e 81            	ret
3454                     ; 790 uint16_t TIM3_GetCapture1(void)
3454                     ; 791 {
3455                     .text:	section	.text,new
3456  0000               _TIM3_GetCapture1:
3458  0000 5204          	subw	sp,#4
3459       00000004      OFST:	set	4
3462                     ; 793   uint16_t tmpccr1 = 0;
3464                     ; 794   uint8_t tmpccr1l=0, tmpccr1h=0;
3468                     ; 796   tmpccr1h = TIM3->CCR1H;
3470  0002 c6532d        	ld	a,21293
3471  0005 6b02          	ld	(OFST-2,sp),a
3473                     ; 797   tmpccr1l = TIM3->CCR1L;
3475  0007 c6532e        	ld	a,21294
3476  000a 6b01          	ld	(OFST-3,sp),a
3478                     ; 799   tmpccr1 = (uint16_t)(tmpccr1l);
3480  000c 7b01          	ld	a,(OFST-3,sp)
3481  000e 5f            	clrw	x
3482  000f 97            	ld	xl,a
3483  0010 1f03          	ldw	(OFST-1,sp),x
3485                     ; 800   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3487  0012 7b02          	ld	a,(OFST-2,sp)
3488  0014 5f            	clrw	x
3489  0015 97            	ld	xl,a
3490  0016 4f            	clr	a
3491  0017 02            	rlwa	x,a
3492  0018 01            	rrwa	x,a
3493  0019 1a04          	or	a,(OFST+0,sp)
3494  001b 01            	rrwa	x,a
3495  001c 1a03          	or	a,(OFST-1,sp)
3496  001e 01            	rrwa	x,a
3497  001f 1f03          	ldw	(OFST-1,sp),x
3499                     ; 802   return (uint16_t)tmpccr1;
3501  0021 1e03          	ldw	x,(OFST-1,sp)
3504  0023 5b04          	addw	sp,#4
3505  0025 81            	ret
3551                     ; 810 uint16_t TIM3_GetCapture2(void)
3551                     ; 811 {
3552                     .text:	section	.text,new
3553  0000               _TIM3_GetCapture2:
3555  0000 5204          	subw	sp,#4
3556       00000004      OFST:	set	4
3559                     ; 813   uint16_t tmpccr2 = 0;
3561                     ; 814   uint8_t tmpccr2l=0, tmpccr2h=0;
3565                     ; 816   tmpccr2h = TIM3->CCR2H;
3567  0002 c6532f        	ld	a,21295
3568  0005 6b02          	ld	(OFST-2,sp),a
3570                     ; 817   tmpccr2l = TIM3->CCR2L;
3572  0007 c65330        	ld	a,21296
3573  000a 6b01          	ld	(OFST-3,sp),a
3575                     ; 819   tmpccr2 = (uint16_t)(tmpccr2l);
3577  000c 7b01          	ld	a,(OFST-3,sp)
3578  000e 5f            	clrw	x
3579  000f 97            	ld	xl,a
3580  0010 1f03          	ldw	(OFST-1,sp),x
3582                     ; 820   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3584  0012 7b02          	ld	a,(OFST-2,sp)
3585  0014 5f            	clrw	x
3586  0015 97            	ld	xl,a
3587  0016 4f            	clr	a
3588  0017 02            	rlwa	x,a
3589  0018 01            	rrwa	x,a
3590  0019 1a04          	or	a,(OFST+0,sp)
3591  001b 01            	rrwa	x,a
3592  001c 1a03          	or	a,(OFST-1,sp)
3593  001e 01            	rrwa	x,a
3594  001f 1f03          	ldw	(OFST-1,sp),x
3596                     ; 822   return (uint16_t)tmpccr2;
3598  0021 1e03          	ldw	x,(OFST-1,sp)
3601  0023 5b04          	addw	sp,#4
3602  0025 81            	ret
3634                     ; 830 uint16_t TIM3_GetCounter(void)
3634                     ; 831 {
3635                     .text:	section	.text,new
3636  0000               _TIM3_GetCounter:
3638  0000 89            	pushw	x
3639       00000002      OFST:	set	2
3642                     ; 832   uint16_t tmpcntr = 0;
3644                     ; 834   tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3646  0001 c65328        	ld	a,21288
3647  0004 5f            	clrw	x
3648  0005 97            	ld	xl,a
3649  0006 4f            	clr	a
3650  0007 02            	rlwa	x,a
3651  0008 1f01          	ldw	(OFST-1,sp),x
3653                     ; 836   return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3655  000a c65329        	ld	a,21289
3656  000d 5f            	clrw	x
3657  000e 97            	ld	xl,a
3658  000f 01            	rrwa	x,a
3659  0010 1a02          	or	a,(OFST+0,sp)
3660  0012 01            	rrwa	x,a
3661  0013 1a01          	or	a,(OFST-1,sp)
3662  0015 01            	rrwa	x,a
3665  0016 5b02          	addw	sp,#2
3666  0018 81            	ret
3690                     ; 844 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3690                     ; 845 {
3691                     .text:	section	.text,new
3692  0000               _TIM3_GetPrescaler:
3696                     ; 847   return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3698  0000 c6532a        	ld	a,21290
3701  0003 81            	ret
3823                     ; 861 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3823                     ; 862 {
3824                     .text:	section	.text,new
3825  0000               _TIM3_GetFlagStatus:
3827  0000 89            	pushw	x
3828  0001 89            	pushw	x
3829       00000002      OFST:	set	2
3832                     ; 863   FlagStatus bitstatus = RESET;
3834                     ; 864   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3838                     ; 867   assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3840  0002 a30001        	cpw	x,#1
3841  0005 2714          	jreq	L044
3842  0007 a30002        	cpw	x,#2
3843  000a 270f          	jreq	L044
3844  000c a30004        	cpw	x,#4
3845  000f 270a          	jreq	L044
3846  0011 a30200        	cpw	x,#512
3847  0014 2705          	jreq	L044
3848  0016 a30400        	cpw	x,#1024
3849  0019 2603          	jrne	L634
3850  001b               L044:
3851  001b 4f            	clr	a
3852  001c 2010          	jra	L244
3853  001e               L634:
3854  001e ae0363        	ldw	x,#867
3855  0021 89            	pushw	x
3856  0022 ae0000        	ldw	x,#0
3857  0025 89            	pushw	x
3858  0026 ae0000        	ldw	x,#L102
3859  0029 cd0000        	call	_assert_failed
3861  002c 5b04          	addw	sp,#4
3862  002e               L244:
3863                     ; 869   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3865  002e c65322        	ld	a,21282
3866  0031 1404          	and	a,(OFST+2,sp)
3867  0033 6b01          	ld	(OFST-1,sp),a
3869                     ; 870   tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3871  0035 7b03          	ld	a,(OFST+1,sp)
3872  0037 6b02          	ld	(OFST+0,sp),a
3874                     ; 872   if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3876  0039 c65323        	ld	a,21283
3877  003c 1402          	and	a,(OFST+0,sp)
3878  003e 1a01          	or	a,(OFST-1,sp)
3879  0040 2706          	jreq	L5341
3880                     ; 874     bitstatus = SET;
3882  0042 a601          	ld	a,#1
3883  0044 6b02          	ld	(OFST+0,sp),a
3886  0046 2002          	jra	L7341
3887  0048               L5341:
3888                     ; 878     bitstatus = RESET;
3890  0048 0f02          	clr	(OFST+0,sp)
3892  004a               L7341:
3893                     ; 880   return (FlagStatus)bitstatus;
3895  004a 7b02          	ld	a,(OFST+0,sp)
3898  004c 5b04          	addw	sp,#4
3899  004e 81            	ret
3935                     ; 894 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3935                     ; 895 {
3936                     .text:	section	.text,new
3937  0000               _TIM3_ClearFlag:
3939  0000 89            	pushw	x
3940       00000000      OFST:	set	0
3943                     ; 897   assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3945  0001 01            	rrwa	x,a
3946  0002 a4f8          	and	a,#248
3947  0004 01            	rrwa	x,a
3948  0005 a4f9          	and	a,#249
3949  0007 01            	rrwa	x,a
3950  0008 a30000        	cpw	x,#0
3951  000b 2607          	jrne	L644
3952  000d 1e01          	ldw	x,(OFST+1,sp)
3953  000f 2703          	jreq	L644
3954  0011 4f            	clr	a
3955  0012 2010          	jra	L054
3956  0014               L644:
3957  0014 ae0381        	ldw	x,#897
3958  0017 89            	pushw	x
3959  0018 ae0000        	ldw	x,#0
3960  001b 89            	pushw	x
3961  001c ae0000        	ldw	x,#L102
3962  001f cd0000        	call	_assert_failed
3964  0022 5b04          	addw	sp,#4
3965  0024               L054:
3966                     ; 900   TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3968  0024 7b02          	ld	a,(OFST+2,sp)
3969  0026 43            	cpl	a
3970  0027 c75322        	ld	21282,a
3971                     ; 901   TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3973  002a 7b01          	ld	a,(OFST+1,sp)
3974  002c 43            	cpl	a
3975  002d c75323        	ld	21283,a
3976                     ; 902 }
3979  0030 85            	popw	x
3980  0031 81            	ret
4041                     ; 913 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
4041                     ; 914 {
4042                     .text:	section	.text,new
4043  0000               _TIM3_GetITStatus:
4045  0000 88            	push	a
4046  0001 89            	pushw	x
4047       00000002      OFST:	set	2
4050                     ; 915   ITStatus bitstatus = RESET;
4052                     ; 916   uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
4056                     ; 919   assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
4058  0002 a101          	cp	a,#1
4059  0004 2708          	jreq	L654
4060  0006 a102          	cp	a,#2
4061  0008 2704          	jreq	L654
4062  000a a104          	cp	a,#4
4063  000c 2603          	jrne	L454
4064  000e               L654:
4065  000e 4f            	clr	a
4066  000f 2010          	jra	L064
4067  0011               L454:
4068  0011 ae0397        	ldw	x,#919
4069  0014 89            	pushw	x
4070  0015 ae0000        	ldw	x,#0
4071  0018 89            	pushw	x
4072  0019 ae0000        	ldw	x,#L102
4073  001c cd0000        	call	_assert_failed
4075  001f 5b04          	addw	sp,#4
4076  0021               L064:
4077                     ; 921   TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
4079  0021 c65322        	ld	a,21282
4080  0024 1403          	and	a,(OFST+1,sp)
4081  0026 6b01          	ld	(OFST-1,sp),a
4083                     ; 923   TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
4085  0028 c65321        	ld	a,21281
4086  002b 1403          	and	a,(OFST+1,sp)
4087  002d 6b02          	ld	(OFST+0,sp),a
4089                     ; 925   if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
4091  002f 0d01          	tnz	(OFST-1,sp)
4092  0031 270a          	jreq	L5051
4094  0033 0d02          	tnz	(OFST+0,sp)
4095  0035 2706          	jreq	L5051
4096                     ; 927     bitstatus = SET;
4098  0037 a601          	ld	a,#1
4099  0039 6b02          	ld	(OFST+0,sp),a
4102  003b 2002          	jra	L7051
4103  003d               L5051:
4104                     ; 931     bitstatus = RESET;
4106  003d 0f02          	clr	(OFST+0,sp)
4108  003f               L7051:
4109                     ; 933   return (ITStatus)(bitstatus);
4111  003f 7b02          	ld	a,(OFST+0,sp)
4114  0041 5b03          	addw	sp,#3
4115  0043 81            	ret
4152                     ; 945 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
4152                     ; 946 {
4153                     .text:	section	.text,new
4154  0000               _TIM3_ClearITPendingBit:
4156  0000 88            	push	a
4157       00000000      OFST:	set	0
4160                     ; 948   assert_param(IS_TIM3_IT_OK(TIM3_IT));
4162  0001 4d            	tnz	a
4163  0002 2707          	jreq	L464
4164  0004 a108          	cp	a,#8
4165  0006 2403          	jruge	L464
4166  0008 4f            	clr	a
4167  0009 2010          	jra	L664
4168  000b               L464:
4169  000b ae03b4        	ldw	x,#948
4170  000e 89            	pushw	x
4171  000f ae0000        	ldw	x,#0
4172  0012 89            	pushw	x
4173  0013 ae0000        	ldw	x,#L102
4174  0016 cd0000        	call	_assert_failed
4176  0019 5b04          	addw	sp,#4
4177  001b               L664:
4178                     ; 951   TIM3->SR1 = (uint8_t)(~TIM3_IT);
4180  001b 7b01          	ld	a,(OFST+1,sp)
4181  001d 43            	cpl	a
4182  001e c75322        	ld	21282,a
4183                     ; 952 }
4186  0021 84            	pop	a
4187  0022 81            	ret
4233                     ; 970 static void TI1_Config(uint8_t TIM3_ICPolarity,
4233                     ; 971                        uint8_t TIM3_ICSelection,
4233                     ; 972                        uint8_t TIM3_ICFilter)
4233                     ; 973 {
4234                     .text:	section	.text,new
4235  0000               L3_TI1_Config:
4237  0000 89            	pushw	x
4238  0001 88            	push	a
4239       00000001      OFST:	set	1
4242                     ; 975   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
4244  0002 72115327      	bres	21287,#0
4245                     ; 978   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
4247  0006 7b06          	ld	a,(OFST+5,sp)
4248  0008 97            	ld	xl,a
4249  0009 a610          	ld	a,#16
4250  000b 42            	mul	x,a
4251  000c 9f            	ld	a,xl
4252  000d 1a03          	or	a,(OFST+2,sp)
4253  000f 6b01          	ld	(OFST+0,sp),a
4255  0011 c65325        	ld	a,21285
4256  0014 a40c          	and	a,#12
4257  0016 1a01          	or	a,(OFST+0,sp)
4258  0018 c75325        	ld	21285,a
4259                     ; 981   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4261  001b 0d02          	tnz	(OFST+1,sp)
4262  001d 2706          	jreq	L7451
4263                     ; 983     TIM3->CCER1 |= TIM3_CCER1_CC1P;
4265  001f 72125327      	bset	21287,#1
4267  0023 2004          	jra	L1551
4268  0025               L7451:
4269                     ; 987     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
4271  0025 72135327      	bres	21287,#1
4272  0029               L1551:
4273                     ; 990   TIM3->CCER1 |= TIM3_CCER1_CC1E;
4275  0029 72105327      	bset	21287,#0
4276                     ; 991 }
4279  002d 5b03          	addw	sp,#3
4280  002f 81            	ret
4326                     ; 1009 static void TI2_Config(uint8_t TIM3_ICPolarity,
4326                     ; 1010                        uint8_t TIM3_ICSelection,
4326                     ; 1011                        uint8_t TIM3_ICFilter)
4326                     ; 1012 {
4327                     .text:	section	.text,new
4328  0000               L5_TI2_Config:
4330  0000 89            	pushw	x
4331  0001 88            	push	a
4332       00000001      OFST:	set	1
4335                     ; 1014   TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4337  0002 72195327      	bres	21287,#4
4338                     ; 1017   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4338                     ; 1018                                                               TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4338                     ; 1019                                                                                                 ((uint8_t)( TIM3_ICFilter << 4))));
4340  0006 7b06          	ld	a,(OFST+5,sp)
4341  0008 97            	ld	xl,a
4342  0009 a610          	ld	a,#16
4343  000b 42            	mul	x,a
4344  000c 9f            	ld	a,xl
4345  000d 1a03          	or	a,(OFST+2,sp)
4346  000f 6b01          	ld	(OFST+0,sp),a
4348  0011 c65326        	ld	a,21286
4349  0014 a40c          	and	a,#12
4350  0016 1a01          	or	a,(OFST+0,sp)
4351  0018 c75326        	ld	21286,a
4352                     ; 1022   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4354  001b 0d02          	tnz	(OFST+1,sp)
4355  001d 2706          	jreq	L3751
4356                     ; 1024     TIM3->CCER1 |= TIM3_CCER1_CC2P;
4358  001f 721a5327      	bset	21287,#5
4360  0023 2004          	jra	L5751
4361  0025               L3751:
4362                     ; 1028     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4364  0025 721b5327      	bres	21287,#5
4365  0029               L5751:
4366                     ; 1032   TIM3->CCER1 |= TIM3_CCER1_CC2E;
4368  0029 72185327      	bset	21287,#4
4369                     ; 1033 }
4372  002d 5b03          	addw	sp,#3
4373  002f 81            	ret
4386                     	xdef	_TIM3_ClearITPendingBit
4387                     	xdef	_TIM3_GetITStatus
4388                     	xdef	_TIM3_ClearFlag
4389                     	xdef	_TIM3_GetFlagStatus
4390                     	xdef	_TIM3_GetPrescaler
4391                     	xdef	_TIM3_GetCounter
4392                     	xdef	_TIM3_GetCapture2
4393                     	xdef	_TIM3_GetCapture1
4394                     	xdef	_TIM3_SetIC2Prescaler
4395                     	xdef	_TIM3_SetIC1Prescaler
4396                     	xdef	_TIM3_SetCompare2
4397                     	xdef	_TIM3_SetCompare1
4398                     	xdef	_TIM3_SetAutoreload
4399                     	xdef	_TIM3_SetCounter
4400                     	xdef	_TIM3_SelectOCxM
4401                     	xdef	_TIM3_CCxCmd
4402                     	xdef	_TIM3_OC2PolarityConfig
4403                     	xdef	_TIM3_OC1PolarityConfig
4404                     	xdef	_TIM3_GenerateEvent
4405                     	xdef	_TIM3_OC2PreloadConfig
4406                     	xdef	_TIM3_OC1PreloadConfig
4407                     	xdef	_TIM3_ARRPreloadConfig
4408                     	xdef	_TIM3_ForcedOC2Config
4409                     	xdef	_TIM3_ForcedOC1Config
4410                     	xdef	_TIM3_PrescalerConfig
4411                     	xdef	_TIM3_SelectOnePulseMode
4412                     	xdef	_TIM3_UpdateRequestConfig
4413                     	xdef	_TIM3_UpdateDisableConfig
4414                     	xdef	_TIM3_ITConfig
4415                     	xdef	_TIM3_Cmd
4416                     	xdef	_TIM3_PWMIConfig
4417                     	xdef	_TIM3_ICInit
4418                     	xdef	_TIM3_OC2Init
4419                     	xdef	_TIM3_OC1Init
4420                     	xdef	_TIM3_TimeBaseInit
4421                     	xdef	_TIM3_DeInit
4422                     	xref	_assert_failed
4423                     .const:	section	.text
4424  0000               L102:
4425  0000 7372635c7374  	dc.b	"src\stm8s_tim3.c",0
4445                     	end
