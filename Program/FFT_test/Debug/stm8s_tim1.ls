   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 58 void TIM1_DeInit(void)
  43                     ; 59 {
  45                     .text:	section	.text,new
  46  0000               _TIM1_DeInit:
  50                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  52  0000 725f5250      	clr	21072
  53                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  55  0004 725f5251      	clr	21073
  56                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  58  0008 725f5252      	clr	21074
  59                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  61  000c 725f5253      	clr	21075
  62                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  64  0010 725f5254      	clr	21076
  65                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  67  0014 725f5256      	clr	21078
  68                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  70  0018 725f525c      	clr	21084
  71                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  73  001c 725f525d      	clr	21085
  74                     ; 70   TIM1->CCMR1 = 0x01;
  76  0020 35015258      	mov	21080,#1
  77                     ; 71   TIM1->CCMR2 = 0x01;
  79  0024 35015259      	mov	21081,#1
  80                     ; 72   TIM1->CCMR3 = 0x01;
  82  0028 3501525a      	mov	21082,#1
  83                     ; 73   TIM1->CCMR4 = 0x01;
  85  002c 3501525b      	mov	21083,#1
  86                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  88  0030 725f525c      	clr	21084
  89                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  91  0034 725f525d      	clr	21085
  92                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  94  0038 725f5258      	clr	21080
  95                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  97  003c 725f5259      	clr	21081
  98                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 100  0040 725f525a      	clr	21082
 101                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 103  0044 725f525b      	clr	21083
 104                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 106  0048 725f525e      	clr	21086
 107                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 109  004c 725f525f      	clr	21087
 110                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 112  0050 725f5260      	clr	21088
 113                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 115  0054 725f5261      	clr	21089
 116                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 118  0058 35ff5262      	mov	21090,#255
 119                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 121  005c 35ff5263      	mov	21091,#255
 122                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 124  0060 725f5265      	clr	21093
 125                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 127  0064 725f5266      	clr	21094
 128                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 130  0068 725f5267      	clr	21095
 131                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 133  006c 725f5268      	clr	21096
 134                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 136  0070 725f5269      	clr	21097
 137                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 139  0074 725f526a      	clr	21098
 140                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 142  0078 725f526b      	clr	21099
 143                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 145  007c 725f526c      	clr	21100
 146                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 148  0080 725f526f      	clr	21103
 149                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 151  0084 35015257      	mov	21079,#1
 152                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 154  0088 725f526e      	clr	21102
 155                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 157  008c 725f526d      	clr	21101
 158                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 160  0090 725f5264      	clr	21092
 161                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 163  0094 725f5255      	clr	21077
 164                     ; 101 }
 167  0098 81            	ret
 271                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 271                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 271                     ; 113                        uint16_t TIM1_Period,
 271                     ; 114                        uint8_t TIM1_RepetitionCounter)
 271                     ; 115 {
 272                     .text:	section	.text,new
 273  0000               _TIM1_TimeBaseInit:
 275  0000 89            	pushw	x
 276       00000000      OFST:	set	0
 279                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 281  0001 0d05          	tnz	(OFST+5,sp)
 282  0003 2718          	jreq	L21
 283  0005 7b05          	ld	a,(OFST+5,sp)
 284  0007 a110          	cp	a,#16
 285  0009 2712          	jreq	L21
 286  000b 7b05          	ld	a,(OFST+5,sp)
 287  000d a120          	cp	a,#32
 288  000f 270c          	jreq	L21
 289  0011 7b05          	ld	a,(OFST+5,sp)
 290  0013 a140          	cp	a,#64
 291  0015 2706          	jreq	L21
 292  0017 7b05          	ld	a,(OFST+5,sp)
 293  0019 a160          	cp	a,#96
 294  001b 2603          	jrne	L01
 295  001d               L21:
 296  001d 4f            	clr	a
 297  001e 2010          	jra	L41
 298  0020               L01:
 299  0020 ae0075        	ldw	x,#117
 300  0023 89            	pushw	x
 301  0024 ae0000        	ldw	x,#0
 302  0027 89            	pushw	x
 303  0028 ae0000        	ldw	x,#L37
 304  002b cd0000        	call	_assert_failed
 306  002e 5b04          	addw	sp,#4
 307  0030               L41:
 308                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 310  0030 7b06          	ld	a,(OFST+6,sp)
 311  0032 c75262        	ld	21090,a
 312                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 314  0035 7b07          	ld	a,(OFST+7,sp)
 315  0037 c75263        	ld	21091,a
 316                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 318  003a 7b01          	ld	a,(OFST+1,sp)
 319  003c c75260        	ld	21088,a
 320                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 322  003f 7b02          	ld	a,(OFST+2,sp)
 323  0041 c75261        	ld	21089,a
 324                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 324                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 326  0044 c65250        	ld	a,21072
 327  0047 a48f          	and	a,#143
 328  0049 1a05          	or	a,(OFST+5,sp)
 329  004b c75250        	ld	21072,a
 330                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 332  004e 7b08          	ld	a,(OFST+8,sp)
 333  0050 c75264        	ld	21092,a
 334                     ; 133 }
 337  0053 85            	popw	x
 338  0054 81            	ret
 622                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 622                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 622                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 622                     ; 157                   uint16_t TIM1_Pulse,
 622                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 622                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 622                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 622                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 622                     ; 162 {
 623                     .text:	section	.text,new
 624  0000               _TIM1_OC1Init:
 626  0000 89            	pushw	x
 627  0001 5203          	subw	sp,#3
 628       00000003      OFST:	set	3
 631                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 633  0003 9e            	ld	a,xh
 634  0004 4d            	tnz	a
 635  0005 2719          	jreq	L22
 636  0007 9e            	ld	a,xh
 637  0008 a110          	cp	a,#16
 638  000a 2714          	jreq	L22
 639  000c 9e            	ld	a,xh
 640  000d a120          	cp	a,#32
 641  000f 270f          	jreq	L22
 642  0011 9e            	ld	a,xh
 643  0012 a130          	cp	a,#48
 644  0014 270a          	jreq	L22
 645  0016 9e            	ld	a,xh
 646  0017 a160          	cp	a,#96
 647  0019 2705          	jreq	L22
 648  001b 9e            	ld	a,xh
 649  001c a170          	cp	a,#112
 650  001e 2603          	jrne	L02
 651  0020               L22:
 652  0020 4f            	clr	a
 653  0021 2010          	jra	L42
 654  0023               L02:
 655  0023 ae00a4        	ldw	x,#164
 656  0026 89            	pushw	x
 657  0027 ae0000        	ldw	x,#0
 658  002a 89            	pushw	x
 659  002b ae0000        	ldw	x,#L37
 660  002e cd0000        	call	_assert_failed
 662  0031 5b04          	addw	sp,#4
 663  0033               L42:
 664                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 666  0033 0d05          	tnz	(OFST+2,sp)
 667  0035 2706          	jreq	L03
 668  0037 7b05          	ld	a,(OFST+2,sp)
 669  0039 a111          	cp	a,#17
 670  003b 2603          	jrne	L62
 671  003d               L03:
 672  003d 4f            	clr	a
 673  003e 2010          	jra	L23
 674  0040               L62:
 675  0040 ae00a5        	ldw	x,#165
 676  0043 89            	pushw	x
 677  0044 ae0000        	ldw	x,#0
 678  0047 89            	pushw	x
 679  0048 ae0000        	ldw	x,#L37
 680  004b cd0000        	call	_assert_failed
 682  004e 5b04          	addw	sp,#4
 683  0050               L23:
 684                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 686  0050 0d08          	tnz	(OFST+5,sp)
 687  0052 2706          	jreq	L63
 688  0054 7b08          	ld	a,(OFST+5,sp)
 689  0056 a144          	cp	a,#68
 690  0058 2603          	jrne	L43
 691  005a               L63:
 692  005a 4f            	clr	a
 693  005b 2010          	jra	L04
 694  005d               L43:
 695  005d ae00a6        	ldw	x,#166
 696  0060 89            	pushw	x
 697  0061 ae0000        	ldw	x,#0
 698  0064 89            	pushw	x
 699  0065 ae0000        	ldw	x,#L37
 700  0068 cd0000        	call	_assert_failed
 702  006b 5b04          	addw	sp,#4
 703  006d               L04:
 704                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 706  006d 0d0b          	tnz	(OFST+8,sp)
 707  006f 2706          	jreq	L44
 708  0071 7b0b          	ld	a,(OFST+8,sp)
 709  0073 a122          	cp	a,#34
 710  0075 2603          	jrne	L24
 711  0077               L44:
 712  0077 4f            	clr	a
 713  0078 2010          	jra	L64
 714  007a               L24:
 715  007a ae00a7        	ldw	x,#167
 716  007d 89            	pushw	x
 717  007e ae0000        	ldw	x,#0
 718  0081 89            	pushw	x
 719  0082 ae0000        	ldw	x,#L37
 720  0085 cd0000        	call	_assert_failed
 722  0088 5b04          	addw	sp,#4
 723  008a               L64:
 724                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 726  008a 0d0c          	tnz	(OFST+9,sp)
 727  008c 2706          	jreq	L25
 728  008e 7b0c          	ld	a,(OFST+9,sp)
 729  0090 a188          	cp	a,#136
 730  0092 2603          	jrne	L05
 731  0094               L25:
 732  0094 4f            	clr	a
 733  0095 2010          	jra	L45
 734  0097               L05:
 735  0097 ae00a8        	ldw	x,#168
 736  009a 89            	pushw	x
 737  009b ae0000        	ldw	x,#0
 738  009e 89            	pushw	x
 739  009f ae0000        	ldw	x,#L37
 740  00a2 cd0000        	call	_assert_failed
 742  00a5 5b04          	addw	sp,#4
 743  00a7               L45:
 744                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 746  00a7 7b0d          	ld	a,(OFST+10,sp)
 747  00a9 a155          	cp	a,#85
 748  00ab 2704          	jreq	L06
 749  00ad 0d0d          	tnz	(OFST+10,sp)
 750  00af 2603          	jrne	L65
 751  00b1               L06:
 752  00b1 4f            	clr	a
 753  00b2 2010          	jra	L26
 754  00b4               L65:
 755  00b4 ae00a9        	ldw	x,#169
 756  00b7 89            	pushw	x
 757  00b8 ae0000        	ldw	x,#0
 758  00bb 89            	pushw	x
 759  00bc ae0000        	ldw	x,#L37
 760  00bf cd0000        	call	_assert_failed
 762  00c2 5b04          	addw	sp,#4
 763  00c4               L26:
 764                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 766  00c4 7b0e          	ld	a,(OFST+11,sp)
 767  00c6 a12a          	cp	a,#42
 768  00c8 2704          	jreq	L66
 769  00ca 0d0e          	tnz	(OFST+11,sp)
 770  00cc 2603          	jrne	L46
 771  00ce               L66:
 772  00ce 4f            	clr	a
 773  00cf 2010          	jra	L07
 774  00d1               L46:
 775  00d1 ae00aa        	ldw	x,#170
 776  00d4 89            	pushw	x
 777  00d5 ae0000        	ldw	x,#0
 778  00d8 89            	pushw	x
 779  00d9 ae0000        	ldw	x,#L37
 780  00dc cd0000        	call	_assert_failed
 782  00df 5b04          	addw	sp,#4
 783  00e1               L07:
 784                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 784                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 786  00e1 c6525c        	ld	a,21084
 787  00e4 a4f0          	and	a,#240
 788  00e6 c7525c        	ld	21084,a
 789                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 789                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 789                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 789                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 791  00e9 7b0c          	ld	a,(OFST+9,sp)
 792  00eb a408          	and	a,#8
 793  00ed 6b03          	ld	(OFST+0,sp),a
 795  00ef 7b0b          	ld	a,(OFST+8,sp)
 796  00f1 a402          	and	a,#2
 797  00f3 1a03          	or	a,(OFST+0,sp)
 798  00f5 6b02          	ld	(OFST-1,sp),a
 800  00f7 7b08          	ld	a,(OFST+5,sp)
 801  00f9 a404          	and	a,#4
 802  00fb 6b01          	ld	(OFST-2,sp),a
 804  00fd 7b05          	ld	a,(OFST+2,sp)
 805  00ff a401          	and	a,#1
 806  0101 1a01          	or	a,(OFST-2,sp)
 807  0103 1a02          	or	a,(OFST-1,sp)
 808  0105 ca525c        	or	a,21084
 809  0108 c7525c        	ld	21084,a
 810                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 810                     ; 185                           (uint8_t)TIM1_OCMode);
 812  010b c65258        	ld	a,21080
 813  010e a48f          	and	a,#143
 814  0110 1a04          	or	a,(OFST+1,sp)
 815  0112 c75258        	ld	21080,a
 816                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 818  0115 c6526f        	ld	a,21103
 819  0118 a4fc          	and	a,#252
 820  011a c7526f        	ld	21103,a
 821                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 821                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 823  011d 7b0e          	ld	a,(OFST+11,sp)
 824  011f a402          	and	a,#2
 825  0121 6b03          	ld	(OFST+0,sp),a
 827  0123 7b0d          	ld	a,(OFST+10,sp)
 828  0125 a401          	and	a,#1
 829  0127 1a03          	or	a,(OFST+0,sp)
 830  0129 ca526f        	or	a,21103
 831  012c c7526f        	ld	21103,a
 832                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 834  012f 7b09          	ld	a,(OFST+6,sp)
 835  0131 c75265        	ld	21093,a
 836                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 838  0134 7b0a          	ld	a,(OFST+7,sp)
 839  0136 c75266        	ld	21094,a
 840                     ; 196 }
 843  0139 5b05          	addw	sp,#5
 844  013b 81            	ret
 947                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 947                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 947                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 947                     ; 220                   uint16_t TIM1_Pulse,
 947                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 947                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 947                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 947                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 947                     ; 225 {
 948                     .text:	section	.text,new
 949  0000               _TIM1_OC2Init:
 951  0000 89            	pushw	x
 952  0001 5203          	subw	sp,#3
 953       00000003      OFST:	set	3
 956                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 958  0003 9e            	ld	a,xh
 959  0004 4d            	tnz	a
 960  0005 2719          	jreq	L67
 961  0007 9e            	ld	a,xh
 962  0008 a110          	cp	a,#16
 963  000a 2714          	jreq	L67
 964  000c 9e            	ld	a,xh
 965  000d a120          	cp	a,#32
 966  000f 270f          	jreq	L67
 967  0011 9e            	ld	a,xh
 968  0012 a130          	cp	a,#48
 969  0014 270a          	jreq	L67
 970  0016 9e            	ld	a,xh
 971  0017 a160          	cp	a,#96
 972  0019 2705          	jreq	L67
 973  001b 9e            	ld	a,xh
 974  001c a170          	cp	a,#112
 975  001e 2603          	jrne	L47
 976  0020               L67:
 977  0020 4f            	clr	a
 978  0021 2010          	jra	L001
 979  0023               L47:
 980  0023 ae00e3        	ldw	x,#227
 981  0026 89            	pushw	x
 982  0027 ae0000        	ldw	x,#0
 983  002a 89            	pushw	x
 984  002b ae0000        	ldw	x,#L37
 985  002e cd0000        	call	_assert_failed
 987  0031 5b04          	addw	sp,#4
 988  0033               L001:
 989                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 991  0033 0d05          	tnz	(OFST+2,sp)
 992  0035 2706          	jreq	L401
 993  0037 7b05          	ld	a,(OFST+2,sp)
 994  0039 a111          	cp	a,#17
 995  003b 2603          	jrne	L201
 996  003d               L401:
 997  003d 4f            	clr	a
 998  003e 2010          	jra	L601
 999  0040               L201:
1000  0040 ae00e4        	ldw	x,#228
1001  0043 89            	pushw	x
1002  0044 ae0000        	ldw	x,#0
1003  0047 89            	pushw	x
1004  0048 ae0000        	ldw	x,#L37
1005  004b cd0000        	call	_assert_failed
1007  004e 5b04          	addw	sp,#4
1008  0050               L601:
1009                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1011  0050 0d08          	tnz	(OFST+5,sp)
1012  0052 2706          	jreq	L211
1013  0054 7b08          	ld	a,(OFST+5,sp)
1014  0056 a144          	cp	a,#68
1015  0058 2603          	jrne	L011
1016  005a               L211:
1017  005a 4f            	clr	a
1018  005b 2010          	jra	L411
1019  005d               L011:
1020  005d ae00e5        	ldw	x,#229
1021  0060 89            	pushw	x
1022  0061 ae0000        	ldw	x,#0
1023  0064 89            	pushw	x
1024  0065 ae0000        	ldw	x,#L37
1025  0068 cd0000        	call	_assert_failed
1027  006b 5b04          	addw	sp,#4
1028  006d               L411:
1029                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1031  006d 0d0b          	tnz	(OFST+8,sp)
1032  006f 2706          	jreq	L021
1033  0071 7b0b          	ld	a,(OFST+8,sp)
1034  0073 a122          	cp	a,#34
1035  0075 2603          	jrne	L611
1036  0077               L021:
1037  0077 4f            	clr	a
1038  0078 2010          	jra	L221
1039  007a               L611:
1040  007a ae00e6        	ldw	x,#230
1041  007d 89            	pushw	x
1042  007e ae0000        	ldw	x,#0
1043  0081 89            	pushw	x
1044  0082 ae0000        	ldw	x,#L37
1045  0085 cd0000        	call	_assert_failed
1047  0088 5b04          	addw	sp,#4
1048  008a               L221:
1049                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1051  008a 0d0c          	tnz	(OFST+9,sp)
1052  008c 2706          	jreq	L621
1053  008e 7b0c          	ld	a,(OFST+9,sp)
1054  0090 a188          	cp	a,#136
1055  0092 2603          	jrne	L421
1056  0094               L621:
1057  0094 4f            	clr	a
1058  0095 2010          	jra	L031
1059  0097               L421:
1060  0097 ae00e7        	ldw	x,#231
1061  009a 89            	pushw	x
1062  009b ae0000        	ldw	x,#0
1063  009e 89            	pushw	x
1064  009f ae0000        	ldw	x,#L37
1065  00a2 cd0000        	call	_assert_failed
1067  00a5 5b04          	addw	sp,#4
1068  00a7               L031:
1069                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1071  00a7 7b0d          	ld	a,(OFST+10,sp)
1072  00a9 a155          	cp	a,#85
1073  00ab 2704          	jreq	L431
1074  00ad 0d0d          	tnz	(OFST+10,sp)
1075  00af 2603          	jrne	L231
1076  00b1               L431:
1077  00b1 4f            	clr	a
1078  00b2 2010          	jra	L631
1079  00b4               L231:
1080  00b4 ae00e8        	ldw	x,#232
1081  00b7 89            	pushw	x
1082  00b8 ae0000        	ldw	x,#0
1083  00bb 89            	pushw	x
1084  00bc ae0000        	ldw	x,#L37
1085  00bf cd0000        	call	_assert_failed
1087  00c2 5b04          	addw	sp,#4
1088  00c4               L631:
1089                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1091  00c4 7b0e          	ld	a,(OFST+11,sp)
1092  00c6 a12a          	cp	a,#42
1093  00c8 2704          	jreq	L241
1094  00ca 0d0e          	tnz	(OFST+11,sp)
1095  00cc 2603          	jrne	L041
1096  00ce               L241:
1097  00ce 4f            	clr	a
1098  00cf 2010          	jra	L441
1099  00d1               L041:
1100  00d1 ae00e9        	ldw	x,#233
1101  00d4 89            	pushw	x
1102  00d5 ae0000        	ldw	x,#0
1103  00d8 89            	pushw	x
1104  00d9 ae0000        	ldw	x,#L37
1105  00dc cd0000        	call	_assert_failed
1107  00df 5b04          	addw	sp,#4
1108  00e1               L441:
1109                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1109                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1111  00e1 c6525c        	ld	a,21084
1112  00e4 a40f          	and	a,#15
1113  00e6 c7525c        	ld	21084,a
1114                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1114                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1114                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1114                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1116  00e9 7b0c          	ld	a,(OFST+9,sp)
1117  00eb a480          	and	a,#128
1118  00ed 6b03          	ld	(OFST+0,sp),a
1120  00ef 7b0b          	ld	a,(OFST+8,sp)
1121  00f1 a420          	and	a,#32
1122  00f3 1a03          	or	a,(OFST+0,sp)
1123  00f5 6b02          	ld	(OFST-1,sp),a
1125  00f7 7b08          	ld	a,(OFST+5,sp)
1126  00f9 a440          	and	a,#64
1127  00fb 6b01          	ld	(OFST-2,sp),a
1129  00fd 7b05          	ld	a,(OFST+2,sp)
1130  00ff a410          	and	a,#16
1131  0101 1a01          	or	a,(OFST-2,sp)
1132  0103 1a02          	or	a,(OFST-1,sp)
1133  0105 ca525c        	or	a,21084
1134  0108 c7525c        	ld	21084,a
1135                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1135                     ; 249                           (uint8_t)TIM1_OCMode);
1137  010b c65259        	ld	a,21081
1138  010e a48f          	and	a,#143
1139  0110 1a04          	or	a,(OFST+1,sp)
1140  0112 c75259        	ld	21081,a
1141                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1143  0115 c6526f        	ld	a,21103
1144  0118 a4f3          	and	a,#243
1145  011a c7526f        	ld	21103,a
1146                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1146                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1148  011d 7b0e          	ld	a,(OFST+11,sp)
1149  011f a408          	and	a,#8
1150  0121 6b03          	ld	(OFST+0,sp),a
1152  0123 7b0d          	ld	a,(OFST+10,sp)
1153  0125 a404          	and	a,#4
1154  0127 1a03          	or	a,(OFST+0,sp)
1155  0129 ca526f        	or	a,21103
1156  012c c7526f        	ld	21103,a
1157                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1159  012f 7b09          	ld	a,(OFST+6,sp)
1160  0131 c75267        	ld	21095,a
1161                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1163  0134 7b0a          	ld	a,(OFST+7,sp)
1164  0136 c75268        	ld	21096,a
1165                     ; 260 }
1168  0139 5b05          	addw	sp,#5
1169  013b 81            	ret
1272                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1272                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1272                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1272                     ; 284                   uint16_t TIM1_Pulse,
1272                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1272                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1272                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1272                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1272                     ; 289 {
1273                     .text:	section	.text,new
1274  0000               _TIM1_OC3Init:
1276  0000 89            	pushw	x
1277  0001 5203          	subw	sp,#3
1278       00000003      OFST:	set	3
1281                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1283  0003 9e            	ld	a,xh
1284  0004 4d            	tnz	a
1285  0005 2719          	jreq	L251
1286  0007 9e            	ld	a,xh
1287  0008 a110          	cp	a,#16
1288  000a 2714          	jreq	L251
1289  000c 9e            	ld	a,xh
1290  000d a120          	cp	a,#32
1291  000f 270f          	jreq	L251
1292  0011 9e            	ld	a,xh
1293  0012 a130          	cp	a,#48
1294  0014 270a          	jreq	L251
1295  0016 9e            	ld	a,xh
1296  0017 a160          	cp	a,#96
1297  0019 2705          	jreq	L251
1298  001b 9e            	ld	a,xh
1299  001c a170          	cp	a,#112
1300  001e 2603          	jrne	L051
1301  0020               L251:
1302  0020 4f            	clr	a
1303  0021 2010          	jra	L451
1304  0023               L051:
1305  0023 ae0123        	ldw	x,#291
1306  0026 89            	pushw	x
1307  0027 ae0000        	ldw	x,#0
1308  002a 89            	pushw	x
1309  002b ae0000        	ldw	x,#L37
1310  002e cd0000        	call	_assert_failed
1312  0031 5b04          	addw	sp,#4
1313  0033               L451:
1314                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1316  0033 0d05          	tnz	(OFST+2,sp)
1317  0035 2706          	jreq	L061
1318  0037 7b05          	ld	a,(OFST+2,sp)
1319  0039 a111          	cp	a,#17
1320  003b 2603          	jrne	L651
1321  003d               L061:
1322  003d 4f            	clr	a
1323  003e 2010          	jra	L261
1324  0040               L651:
1325  0040 ae0124        	ldw	x,#292
1326  0043 89            	pushw	x
1327  0044 ae0000        	ldw	x,#0
1328  0047 89            	pushw	x
1329  0048 ae0000        	ldw	x,#L37
1330  004b cd0000        	call	_assert_failed
1332  004e 5b04          	addw	sp,#4
1333  0050               L261:
1334                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1336  0050 0d08          	tnz	(OFST+5,sp)
1337  0052 2706          	jreq	L661
1338  0054 7b08          	ld	a,(OFST+5,sp)
1339  0056 a144          	cp	a,#68
1340  0058 2603          	jrne	L461
1341  005a               L661:
1342  005a 4f            	clr	a
1343  005b 2010          	jra	L071
1344  005d               L461:
1345  005d ae0125        	ldw	x,#293
1346  0060 89            	pushw	x
1347  0061 ae0000        	ldw	x,#0
1348  0064 89            	pushw	x
1349  0065 ae0000        	ldw	x,#L37
1350  0068 cd0000        	call	_assert_failed
1352  006b 5b04          	addw	sp,#4
1353  006d               L071:
1354                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1356  006d 0d0b          	tnz	(OFST+8,sp)
1357  006f 2706          	jreq	L471
1358  0071 7b0b          	ld	a,(OFST+8,sp)
1359  0073 a122          	cp	a,#34
1360  0075 2603          	jrne	L271
1361  0077               L471:
1362  0077 4f            	clr	a
1363  0078 2010          	jra	L671
1364  007a               L271:
1365  007a ae0126        	ldw	x,#294
1366  007d 89            	pushw	x
1367  007e ae0000        	ldw	x,#0
1368  0081 89            	pushw	x
1369  0082 ae0000        	ldw	x,#L37
1370  0085 cd0000        	call	_assert_failed
1372  0088 5b04          	addw	sp,#4
1373  008a               L671:
1374                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1376  008a 0d0c          	tnz	(OFST+9,sp)
1377  008c 2706          	jreq	L202
1378  008e 7b0c          	ld	a,(OFST+9,sp)
1379  0090 a188          	cp	a,#136
1380  0092 2603          	jrne	L002
1381  0094               L202:
1382  0094 4f            	clr	a
1383  0095 2010          	jra	L402
1384  0097               L002:
1385  0097 ae0127        	ldw	x,#295
1386  009a 89            	pushw	x
1387  009b ae0000        	ldw	x,#0
1388  009e 89            	pushw	x
1389  009f ae0000        	ldw	x,#L37
1390  00a2 cd0000        	call	_assert_failed
1392  00a5 5b04          	addw	sp,#4
1393  00a7               L402:
1394                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1396  00a7 7b0d          	ld	a,(OFST+10,sp)
1397  00a9 a155          	cp	a,#85
1398  00ab 2704          	jreq	L012
1399  00ad 0d0d          	tnz	(OFST+10,sp)
1400  00af 2603          	jrne	L602
1401  00b1               L012:
1402  00b1 4f            	clr	a
1403  00b2 2010          	jra	L212
1404  00b4               L602:
1405  00b4 ae0128        	ldw	x,#296
1406  00b7 89            	pushw	x
1407  00b8 ae0000        	ldw	x,#0
1408  00bb 89            	pushw	x
1409  00bc ae0000        	ldw	x,#L37
1410  00bf cd0000        	call	_assert_failed
1412  00c2 5b04          	addw	sp,#4
1413  00c4               L212:
1414                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1416  00c4 7b0e          	ld	a,(OFST+11,sp)
1417  00c6 a12a          	cp	a,#42
1418  00c8 2704          	jreq	L612
1419  00ca 0d0e          	tnz	(OFST+11,sp)
1420  00cc 2603          	jrne	L412
1421  00ce               L612:
1422  00ce 4f            	clr	a
1423  00cf 2010          	jra	L022
1424  00d1               L412:
1425  00d1 ae0129        	ldw	x,#297
1426  00d4 89            	pushw	x
1427  00d5 ae0000        	ldw	x,#0
1428  00d8 89            	pushw	x
1429  00d9 ae0000        	ldw	x,#L37
1430  00dc cd0000        	call	_assert_failed
1432  00df 5b04          	addw	sp,#4
1433  00e1               L022:
1434                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1434                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1436  00e1 c6525d        	ld	a,21085
1437  00e4 a4f0          	and	a,#240
1438  00e6 c7525d        	ld	21085,a
1439                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1439                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1439                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1439                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1441  00e9 7b0c          	ld	a,(OFST+9,sp)
1442  00eb a408          	and	a,#8
1443  00ed 6b03          	ld	(OFST+0,sp),a
1445  00ef 7b0b          	ld	a,(OFST+8,sp)
1446  00f1 a402          	and	a,#2
1447  00f3 1a03          	or	a,(OFST+0,sp)
1448  00f5 6b02          	ld	(OFST-1,sp),a
1450  00f7 7b08          	ld	a,(OFST+5,sp)
1451  00f9 a404          	and	a,#4
1452  00fb 6b01          	ld	(OFST-2,sp),a
1454  00fd 7b05          	ld	a,(OFST+2,sp)
1455  00ff a401          	and	a,#1
1456  0101 1a01          	or	a,(OFST-2,sp)
1457  0103 1a02          	or	a,(OFST-1,sp)
1458  0105 ca525d        	or	a,21085
1459  0108 c7525d        	ld	21085,a
1460                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1460                     ; 312                           (uint8_t)TIM1_OCMode);
1462  010b c6525a        	ld	a,21082
1463  010e a48f          	and	a,#143
1464  0110 1a04          	or	a,(OFST+1,sp)
1465  0112 c7525a        	ld	21082,a
1466                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1468  0115 c6526f        	ld	a,21103
1469  0118 a4cf          	and	a,#207
1470  011a c7526f        	ld	21103,a
1471                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1471                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1473  011d 7b0e          	ld	a,(OFST+11,sp)
1474  011f a420          	and	a,#32
1475  0121 6b03          	ld	(OFST+0,sp),a
1477  0123 7b0d          	ld	a,(OFST+10,sp)
1478  0125 a410          	and	a,#16
1479  0127 1a03          	or	a,(OFST+0,sp)
1480  0129 ca526f        	or	a,21103
1481  012c c7526f        	ld	21103,a
1482                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1484  012f 7b09          	ld	a,(OFST+6,sp)
1485  0131 c75269        	ld	21097,a
1486                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1488  0134 7b0a          	ld	a,(OFST+7,sp)
1489  0136 c7526a        	ld	21098,a
1490                     ; 323 }
1493  0139 5b05          	addw	sp,#5
1494  013b 81            	ret
1567                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1567                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1567                     ; 340                   uint16_t TIM1_Pulse,
1567                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1567                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1567                     ; 343 {
1568                     .text:	section	.text,new
1569  0000               _TIM1_OC4Init:
1571  0000 89            	pushw	x
1572  0001 88            	push	a
1573       00000001      OFST:	set	1
1576                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1578  0002 9e            	ld	a,xh
1579  0003 4d            	tnz	a
1580  0004 2719          	jreq	L622
1581  0006 9e            	ld	a,xh
1582  0007 a110          	cp	a,#16
1583  0009 2714          	jreq	L622
1584  000b 9e            	ld	a,xh
1585  000c a120          	cp	a,#32
1586  000e 270f          	jreq	L622
1587  0010 9e            	ld	a,xh
1588  0011 a130          	cp	a,#48
1589  0013 270a          	jreq	L622
1590  0015 9e            	ld	a,xh
1591  0016 a160          	cp	a,#96
1592  0018 2705          	jreq	L622
1593  001a 9e            	ld	a,xh
1594  001b a170          	cp	a,#112
1595  001d 2603          	jrne	L422
1596  001f               L622:
1597  001f 4f            	clr	a
1598  0020 2010          	jra	L032
1599  0022               L422:
1600  0022 ae0159        	ldw	x,#345
1601  0025 89            	pushw	x
1602  0026 ae0000        	ldw	x,#0
1603  0029 89            	pushw	x
1604  002a ae0000        	ldw	x,#L37
1605  002d cd0000        	call	_assert_failed
1607  0030 5b04          	addw	sp,#4
1608  0032               L032:
1609                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1611  0032 0d03          	tnz	(OFST+2,sp)
1612  0034 2706          	jreq	L432
1613  0036 7b03          	ld	a,(OFST+2,sp)
1614  0038 a111          	cp	a,#17
1615  003a 2603          	jrne	L232
1616  003c               L432:
1617  003c 4f            	clr	a
1618  003d 2010          	jra	L632
1619  003f               L232:
1620  003f ae015a        	ldw	x,#346
1621  0042 89            	pushw	x
1622  0043 ae0000        	ldw	x,#0
1623  0046 89            	pushw	x
1624  0047 ae0000        	ldw	x,#L37
1625  004a cd0000        	call	_assert_failed
1627  004d 5b04          	addw	sp,#4
1628  004f               L632:
1629                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1631  004f 0d08          	tnz	(OFST+7,sp)
1632  0051 2706          	jreq	L242
1633  0053 7b08          	ld	a,(OFST+7,sp)
1634  0055 a122          	cp	a,#34
1635  0057 2603          	jrne	L042
1636  0059               L242:
1637  0059 4f            	clr	a
1638  005a 2010          	jra	L442
1639  005c               L042:
1640  005c ae015b        	ldw	x,#347
1641  005f 89            	pushw	x
1642  0060 ae0000        	ldw	x,#0
1643  0063 89            	pushw	x
1644  0064 ae0000        	ldw	x,#L37
1645  0067 cd0000        	call	_assert_failed
1647  006a 5b04          	addw	sp,#4
1648  006c               L442:
1649                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1651  006c 7b09          	ld	a,(OFST+8,sp)
1652  006e a155          	cp	a,#85
1653  0070 2704          	jreq	L052
1654  0072 0d09          	tnz	(OFST+8,sp)
1655  0074 2603          	jrne	L642
1656  0076               L052:
1657  0076 4f            	clr	a
1658  0077 2010          	jra	L252
1659  0079               L642:
1660  0079 ae015c        	ldw	x,#348
1661  007c 89            	pushw	x
1662  007d ae0000        	ldw	x,#0
1663  0080 89            	pushw	x
1664  0081 ae0000        	ldw	x,#L37
1665  0084 cd0000        	call	_assert_failed
1667  0087 5b04          	addw	sp,#4
1668  0089               L252:
1669                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1671  0089 c6525d        	ld	a,21085
1672  008c a4cf          	and	a,#207
1673  008e c7525d        	ld	21085,a
1674                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1674                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1676  0091 7b08          	ld	a,(OFST+7,sp)
1677  0093 a420          	and	a,#32
1678  0095 6b01          	ld	(OFST+0,sp),a
1680  0097 7b03          	ld	a,(OFST+2,sp)
1681  0099 a410          	and	a,#16
1682  009b 1a01          	or	a,(OFST+0,sp)
1683  009d ca525d        	or	a,21085
1684  00a0 c7525d        	ld	21085,a
1685                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1685                     ; 358                           TIM1_OCMode);
1687  00a3 c6525b        	ld	a,21083
1688  00a6 a48f          	and	a,#143
1689  00a8 1a02          	or	a,(OFST+1,sp)
1690  00aa c7525b        	ld	21083,a
1691                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1693  00ad 0d09          	tnz	(OFST+8,sp)
1694  00af 270a          	jreq	L124
1695                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1697  00b1 c6526f        	ld	a,21103
1698  00b4 aadf          	or	a,#223
1699  00b6 c7526f        	ld	21103,a
1701  00b9 2004          	jra	L324
1702  00bb               L124:
1703                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1705  00bb 721d526f      	bres	21103,#6
1706  00bf               L324:
1707                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1709  00bf 7b06          	ld	a,(OFST+5,sp)
1710  00c1 c7526b        	ld	21099,a
1711                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1713  00c4 7b07          	ld	a,(OFST+6,sp)
1714  00c6 c7526c        	ld	21100,a
1715                     ; 373 }
1718  00c9 5b03          	addw	sp,#3
1719  00cb 81            	ret
1923                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1923                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1923                     ; 390                      uint8_t TIM1_DeadTime,
1923                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1923                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1923                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1923                     ; 394 {
1924                     .text:	section	.text,new
1925  0000               _TIM1_BDTRConfig:
1927  0000 89            	pushw	x
1928  0001 88            	push	a
1929       00000001      OFST:	set	1
1932                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1934  0002 9e            	ld	a,xh
1935  0003 a104          	cp	a,#4
1936  0005 2704          	jreq	L062
1937  0007 9e            	ld	a,xh
1938  0008 4d            	tnz	a
1939  0009 2603          	jrne	L652
1940  000b               L062:
1941  000b 4f            	clr	a
1942  000c 2010          	jra	L262
1943  000e               L652:
1944  000e ae018c        	ldw	x,#396
1945  0011 89            	pushw	x
1946  0012 ae0000        	ldw	x,#0
1947  0015 89            	pushw	x
1948  0016 ae0000        	ldw	x,#L37
1949  0019 cd0000        	call	_assert_failed
1951  001c 5b04          	addw	sp,#4
1952  001e               L262:
1953                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1955  001e 0d03          	tnz	(OFST+2,sp)
1956  0020 2712          	jreq	L662
1957  0022 7b03          	ld	a,(OFST+2,sp)
1958  0024 a101          	cp	a,#1
1959  0026 270c          	jreq	L662
1960  0028 7b03          	ld	a,(OFST+2,sp)
1961  002a a102          	cp	a,#2
1962  002c 2706          	jreq	L662
1963  002e 7b03          	ld	a,(OFST+2,sp)
1964  0030 a103          	cp	a,#3
1965  0032 2603          	jrne	L462
1966  0034               L662:
1967  0034 4f            	clr	a
1968  0035 2010          	jra	L072
1969  0037               L462:
1970  0037 ae018d        	ldw	x,#397
1971  003a 89            	pushw	x
1972  003b ae0000        	ldw	x,#0
1973  003e 89            	pushw	x
1974  003f ae0000        	ldw	x,#L37
1975  0042 cd0000        	call	_assert_failed
1977  0045 5b04          	addw	sp,#4
1978  0047               L072:
1979                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1981  0047 7b07          	ld	a,(OFST+6,sp)
1982  0049 a110          	cp	a,#16
1983  004b 2704          	jreq	L472
1984  004d 0d07          	tnz	(OFST+6,sp)
1985  004f 2603          	jrne	L272
1986  0051               L472:
1987  0051 4f            	clr	a
1988  0052 2010          	jra	L672
1989  0054               L272:
1990  0054 ae018e        	ldw	x,#398
1991  0057 89            	pushw	x
1992  0058 ae0000        	ldw	x,#0
1993  005b 89            	pushw	x
1994  005c ae0000        	ldw	x,#L37
1995  005f cd0000        	call	_assert_failed
1997  0062 5b04          	addw	sp,#4
1998  0064               L672:
1999                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2001  0064 0d08          	tnz	(OFST+7,sp)
2002  0066 2706          	jreq	L203
2003  0068 7b08          	ld	a,(OFST+7,sp)
2004  006a a120          	cp	a,#32
2005  006c 2603          	jrne	L003
2006  006e               L203:
2007  006e 4f            	clr	a
2008  006f 2010          	jra	L403
2009  0071               L003:
2010  0071 ae018f        	ldw	x,#399
2011  0074 89            	pushw	x
2012  0075 ae0000        	ldw	x,#0
2013  0078 89            	pushw	x
2014  0079 ae0000        	ldw	x,#L37
2015  007c cd0000        	call	_assert_failed
2017  007f 5b04          	addw	sp,#4
2018  0081               L403:
2019                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2021  0081 7b09          	ld	a,(OFST+8,sp)
2022  0083 a140          	cp	a,#64
2023  0085 2704          	jreq	L013
2024  0087 0d09          	tnz	(OFST+8,sp)
2025  0089 2603          	jrne	L603
2026  008b               L013:
2027  008b 4f            	clr	a
2028  008c 2010          	jra	L213
2029  008e               L603:
2030  008e ae0190        	ldw	x,#400
2031  0091 89            	pushw	x
2032  0092 ae0000        	ldw	x,#0
2033  0095 89            	pushw	x
2034  0096 ae0000        	ldw	x,#L37
2035  0099 cd0000        	call	_assert_failed
2037  009c 5b04          	addw	sp,#4
2038  009e               L213:
2039                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2041  009e 7b06          	ld	a,(OFST+5,sp)
2042  00a0 c7526e        	ld	21102,a
2043                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2043                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2043                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2045  00a3 7b07          	ld	a,(OFST+6,sp)
2046  00a5 1a08          	or	a,(OFST+7,sp)
2047  00a7 1a09          	or	a,(OFST+8,sp)
2048  00a9 6b01          	ld	(OFST+0,sp),a
2050  00ab 7b02          	ld	a,(OFST+1,sp)
2051  00ad 1a03          	or	a,(OFST+2,sp)
2052  00af 1a01          	or	a,(OFST+0,sp)
2053  00b1 c7526d        	ld	21101,a
2054                     ; 409 }
2057  00b4 5b03          	addw	sp,#3
2058  00b6 81            	ret
2259                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2259                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2259                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2259                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2259                     ; 427                  uint8_t TIM1_ICFilter)
2259                     ; 428 {
2260                     .text:	section	.text,new
2261  0000               _TIM1_ICInit:
2263  0000 89            	pushw	x
2264       00000000      OFST:	set	0
2267                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2269  0001 9e            	ld	a,xh
2270  0002 4d            	tnz	a
2271  0003 270f          	jreq	L023
2272  0005 9e            	ld	a,xh
2273  0006 a101          	cp	a,#1
2274  0008 270a          	jreq	L023
2275  000a 9e            	ld	a,xh
2276  000b a102          	cp	a,#2
2277  000d 2705          	jreq	L023
2278  000f 9e            	ld	a,xh
2279  0010 a103          	cp	a,#3
2280  0012 2603          	jrne	L613
2281  0014               L023:
2282  0014 4f            	clr	a
2283  0015 2010          	jra	L223
2284  0017               L613:
2285  0017 ae01ae        	ldw	x,#430
2286  001a 89            	pushw	x
2287  001b ae0000        	ldw	x,#0
2288  001e 89            	pushw	x
2289  001f ae0000        	ldw	x,#L37
2290  0022 cd0000        	call	_assert_failed
2292  0025 5b04          	addw	sp,#4
2293  0027               L223:
2294                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2296  0027 0d02          	tnz	(OFST+2,sp)
2297  0029 2706          	jreq	L623
2298  002b 7b02          	ld	a,(OFST+2,sp)
2299  002d a101          	cp	a,#1
2300  002f 2603          	jrne	L423
2301  0031               L623:
2302  0031 4f            	clr	a
2303  0032 2010          	jra	L033
2304  0034               L423:
2305  0034 ae01af        	ldw	x,#431
2306  0037 89            	pushw	x
2307  0038 ae0000        	ldw	x,#0
2308  003b 89            	pushw	x
2309  003c ae0000        	ldw	x,#L37
2310  003f cd0000        	call	_assert_failed
2312  0042 5b04          	addw	sp,#4
2313  0044               L033:
2314                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2316  0044 7b05          	ld	a,(OFST+5,sp)
2317  0046 a101          	cp	a,#1
2318  0048 270c          	jreq	L433
2319  004a 7b05          	ld	a,(OFST+5,sp)
2320  004c a102          	cp	a,#2
2321  004e 2706          	jreq	L433
2322  0050 7b05          	ld	a,(OFST+5,sp)
2323  0052 a103          	cp	a,#3
2324  0054 2603          	jrne	L233
2325  0056               L433:
2326  0056 4f            	clr	a
2327  0057 2010          	jra	L633
2328  0059               L233:
2329  0059 ae01b0        	ldw	x,#432
2330  005c 89            	pushw	x
2331  005d ae0000        	ldw	x,#0
2332  0060 89            	pushw	x
2333  0061 ae0000        	ldw	x,#L37
2334  0064 cd0000        	call	_assert_failed
2336  0067 5b04          	addw	sp,#4
2337  0069               L633:
2338                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2340  0069 0d06          	tnz	(OFST+6,sp)
2341  006b 2712          	jreq	L243
2342  006d 7b06          	ld	a,(OFST+6,sp)
2343  006f a104          	cp	a,#4
2344  0071 270c          	jreq	L243
2345  0073 7b06          	ld	a,(OFST+6,sp)
2346  0075 a108          	cp	a,#8
2347  0077 2706          	jreq	L243
2348  0079 7b06          	ld	a,(OFST+6,sp)
2349  007b a10c          	cp	a,#12
2350  007d 2603          	jrne	L043
2351  007f               L243:
2352  007f 4f            	clr	a
2353  0080 2010          	jra	L443
2354  0082               L043:
2355  0082 ae01b1        	ldw	x,#433
2356  0085 89            	pushw	x
2357  0086 ae0000        	ldw	x,#0
2358  0089 89            	pushw	x
2359  008a ae0000        	ldw	x,#L37
2360  008d cd0000        	call	_assert_failed
2362  0090 5b04          	addw	sp,#4
2363  0092               L443:
2364                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2366  0092 7b07          	ld	a,(OFST+7,sp)
2367  0094 a110          	cp	a,#16
2368  0096 2403          	jruge	L643
2369  0098 4f            	clr	a
2370  0099 2010          	jra	L053
2371  009b               L643:
2372  009b ae01b2        	ldw	x,#434
2373  009e 89            	pushw	x
2374  009f ae0000        	ldw	x,#0
2375  00a2 89            	pushw	x
2376  00a3 ae0000        	ldw	x,#L37
2377  00a6 cd0000        	call	_assert_failed
2379  00a9 5b04          	addw	sp,#4
2380  00ab               L053:
2381                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2383  00ab 0d01          	tnz	(OFST+1,sp)
2384  00ad 2614          	jrne	L746
2385                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2385                     ; 440                (uint8_t)TIM1_ICSelection,
2385                     ; 441                (uint8_t)TIM1_ICFilter);
2387  00af 7b07          	ld	a,(OFST+7,sp)
2388  00b1 88            	push	a
2389  00b2 7b06          	ld	a,(OFST+6,sp)
2390  00b4 97            	ld	xl,a
2391  00b5 7b03          	ld	a,(OFST+3,sp)
2392  00b7 95            	ld	xh,a
2393  00b8 cd0000        	call	L3_TI1_Config
2395  00bb 84            	pop	a
2396                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2398  00bc 7b06          	ld	a,(OFST+6,sp)
2399  00be cd0000        	call	_TIM1_SetIC1Prescaler
2402  00c1 2046          	jra	L156
2403  00c3               L746:
2404                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2406  00c3 7b01          	ld	a,(OFST+1,sp)
2407  00c5 a101          	cp	a,#1
2408  00c7 2614          	jrne	L356
2409                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2409                     ; 449                (uint8_t)TIM1_ICSelection,
2409                     ; 450                (uint8_t)TIM1_ICFilter);
2411  00c9 7b07          	ld	a,(OFST+7,sp)
2412  00cb 88            	push	a
2413  00cc 7b06          	ld	a,(OFST+6,sp)
2414  00ce 97            	ld	xl,a
2415  00cf 7b03          	ld	a,(OFST+3,sp)
2416  00d1 95            	ld	xh,a
2417  00d2 cd0000        	call	L5_TI2_Config
2419  00d5 84            	pop	a
2420                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2422  00d6 7b06          	ld	a,(OFST+6,sp)
2423  00d8 cd0000        	call	_TIM1_SetIC2Prescaler
2426  00db 202c          	jra	L156
2427  00dd               L356:
2428                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2430  00dd 7b01          	ld	a,(OFST+1,sp)
2431  00df a102          	cp	a,#2
2432  00e1 2614          	jrne	L756
2433                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2433                     ; 458                (uint8_t)TIM1_ICSelection,
2433                     ; 459                (uint8_t)TIM1_ICFilter);
2435  00e3 7b07          	ld	a,(OFST+7,sp)
2436  00e5 88            	push	a
2437  00e6 7b06          	ld	a,(OFST+6,sp)
2438  00e8 97            	ld	xl,a
2439  00e9 7b03          	ld	a,(OFST+3,sp)
2440  00eb 95            	ld	xh,a
2441  00ec cd0000        	call	L7_TI3_Config
2443  00ef 84            	pop	a
2444                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2446  00f0 7b06          	ld	a,(OFST+6,sp)
2447  00f2 cd0000        	call	_TIM1_SetIC3Prescaler
2450  00f5 2012          	jra	L156
2451  00f7               L756:
2452                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2452                     ; 467                (uint8_t)TIM1_ICSelection,
2452                     ; 468                (uint8_t)TIM1_ICFilter);
2454  00f7 7b07          	ld	a,(OFST+7,sp)
2455  00f9 88            	push	a
2456  00fa 7b06          	ld	a,(OFST+6,sp)
2457  00fc 97            	ld	xl,a
2458  00fd 7b03          	ld	a,(OFST+3,sp)
2459  00ff 95            	ld	xh,a
2460  0100 cd0000        	call	L11_TI4_Config
2462  0103 84            	pop	a
2463                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2465  0104 7b06          	ld	a,(OFST+6,sp)
2466  0106 cd0000        	call	_TIM1_SetIC4Prescaler
2468  0109               L156:
2469                     ; 472 }
2472  0109 85            	popw	x
2473  010a 81            	ret
2564                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2564                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2564                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2564                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2564                     ; 492                      uint8_t TIM1_ICFilter)
2564                     ; 493 {
2565                     .text:	section	.text,new
2566  0000               _TIM1_PWMIConfig:
2568  0000 89            	pushw	x
2569  0001 89            	pushw	x
2570       00000002      OFST:	set	2
2573                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2575                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2577                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2579  0002 9e            	ld	a,xh
2580  0003 4d            	tnz	a
2581  0004 2705          	jreq	L653
2582  0006 9e            	ld	a,xh
2583  0007 a101          	cp	a,#1
2584  0009 2603          	jrne	L453
2585  000b               L653:
2586  000b 4f            	clr	a
2587  000c 2010          	jra	L063
2588  000e               L453:
2589  000e ae01f2        	ldw	x,#498
2590  0011 89            	pushw	x
2591  0012 ae0000        	ldw	x,#0
2592  0015 89            	pushw	x
2593  0016 ae0000        	ldw	x,#L37
2594  0019 cd0000        	call	_assert_failed
2596  001c 5b04          	addw	sp,#4
2597  001e               L063:
2598                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2600  001e 0d04          	tnz	(OFST+2,sp)
2601  0020 2706          	jreq	L463
2602  0022 7b04          	ld	a,(OFST+2,sp)
2603  0024 a101          	cp	a,#1
2604  0026 2603          	jrne	L263
2605  0028               L463:
2606  0028 4f            	clr	a
2607  0029 2010          	jra	L663
2608  002b               L263:
2609  002b ae01f3        	ldw	x,#499
2610  002e 89            	pushw	x
2611  002f ae0000        	ldw	x,#0
2612  0032 89            	pushw	x
2613  0033 ae0000        	ldw	x,#L37
2614  0036 cd0000        	call	_assert_failed
2616  0039 5b04          	addw	sp,#4
2617  003b               L663:
2618                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2620  003b 7b07          	ld	a,(OFST+5,sp)
2621  003d a101          	cp	a,#1
2622  003f 270c          	jreq	L273
2623  0041 7b07          	ld	a,(OFST+5,sp)
2624  0043 a102          	cp	a,#2
2625  0045 2706          	jreq	L273
2626  0047 7b07          	ld	a,(OFST+5,sp)
2627  0049 a103          	cp	a,#3
2628  004b 2603          	jrne	L073
2629  004d               L273:
2630  004d 4f            	clr	a
2631  004e 2010          	jra	L473
2632  0050               L073:
2633  0050 ae01f4        	ldw	x,#500
2634  0053 89            	pushw	x
2635  0054 ae0000        	ldw	x,#0
2636  0057 89            	pushw	x
2637  0058 ae0000        	ldw	x,#L37
2638  005b cd0000        	call	_assert_failed
2640  005e 5b04          	addw	sp,#4
2641  0060               L473:
2642                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2644  0060 0d08          	tnz	(OFST+6,sp)
2645  0062 2712          	jreq	L004
2646  0064 7b08          	ld	a,(OFST+6,sp)
2647  0066 a104          	cp	a,#4
2648  0068 270c          	jreq	L004
2649  006a 7b08          	ld	a,(OFST+6,sp)
2650  006c a108          	cp	a,#8
2651  006e 2706          	jreq	L004
2652  0070 7b08          	ld	a,(OFST+6,sp)
2653  0072 a10c          	cp	a,#12
2654  0074 2603          	jrne	L673
2655  0076               L004:
2656  0076 4f            	clr	a
2657  0077 2010          	jra	L204
2658  0079               L673:
2659  0079 ae01f5        	ldw	x,#501
2660  007c 89            	pushw	x
2661  007d ae0000        	ldw	x,#0
2662  0080 89            	pushw	x
2663  0081 ae0000        	ldw	x,#L37
2664  0084 cd0000        	call	_assert_failed
2666  0087 5b04          	addw	sp,#4
2667  0089               L204:
2668                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2670  0089 7b04          	ld	a,(OFST+2,sp)
2671  008b a101          	cp	a,#1
2672  008d 2706          	jreq	L327
2673                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2675  008f a601          	ld	a,#1
2676  0091 6b01          	ld	(OFST-1,sp),a
2679  0093 2002          	jra	L527
2680  0095               L327:
2681                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2683  0095 0f01          	clr	(OFST-1,sp)
2685  0097               L527:
2686                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2688  0097 7b07          	ld	a,(OFST+5,sp)
2689  0099 a101          	cp	a,#1
2690  009b 2606          	jrne	L727
2691                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2693  009d a602          	ld	a,#2
2694  009f 6b02          	ld	(OFST+0,sp),a
2697  00a1 2004          	jra	L137
2698  00a3               L727:
2699                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2701  00a3 a601          	ld	a,#1
2702  00a5 6b02          	ld	(OFST+0,sp),a
2704  00a7               L137:
2705                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2707  00a7 0d03          	tnz	(OFST+1,sp)
2708  00a9 2626          	jrne	L337
2709                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2709                     ; 527                (uint8_t)TIM1_ICFilter);
2711  00ab 7b09          	ld	a,(OFST+7,sp)
2712  00ad 88            	push	a
2713  00ae 7b08          	ld	a,(OFST+6,sp)
2714  00b0 97            	ld	xl,a
2715  00b1 7b05          	ld	a,(OFST+3,sp)
2716  00b3 95            	ld	xh,a
2717  00b4 cd0000        	call	L3_TI1_Config
2719  00b7 84            	pop	a
2720                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2722  00b8 7b08          	ld	a,(OFST+6,sp)
2723  00ba cd0000        	call	_TIM1_SetIC1Prescaler
2725                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2727  00bd 7b09          	ld	a,(OFST+7,sp)
2728  00bf 88            	push	a
2729  00c0 7b03          	ld	a,(OFST+1,sp)
2730  00c2 97            	ld	xl,a
2731  00c3 7b02          	ld	a,(OFST+0,sp)
2732  00c5 95            	ld	xh,a
2733  00c6 cd0000        	call	L5_TI2_Config
2735  00c9 84            	pop	a
2736                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2738  00ca 7b08          	ld	a,(OFST+6,sp)
2739  00cc cd0000        	call	_TIM1_SetIC2Prescaler
2742  00cf 2024          	jra	L537
2743  00d1               L337:
2744                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2744                     ; 542                (uint8_t)TIM1_ICFilter);
2746  00d1 7b09          	ld	a,(OFST+7,sp)
2747  00d3 88            	push	a
2748  00d4 7b08          	ld	a,(OFST+6,sp)
2749  00d6 97            	ld	xl,a
2750  00d7 7b05          	ld	a,(OFST+3,sp)
2751  00d9 95            	ld	xh,a
2752  00da cd0000        	call	L5_TI2_Config
2754  00dd 84            	pop	a
2755                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2757  00de 7b08          	ld	a,(OFST+6,sp)
2758  00e0 cd0000        	call	_TIM1_SetIC2Prescaler
2760                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2762  00e3 7b09          	ld	a,(OFST+7,sp)
2763  00e5 88            	push	a
2764  00e6 7b03          	ld	a,(OFST+1,sp)
2765  00e8 97            	ld	xl,a
2766  00e9 7b02          	ld	a,(OFST+0,sp)
2767  00eb 95            	ld	xh,a
2768  00ec cd0000        	call	L3_TI1_Config
2770  00ef 84            	pop	a
2771                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2773  00f0 7b08          	ld	a,(OFST+6,sp)
2774  00f2 cd0000        	call	_TIM1_SetIC1Prescaler
2776  00f5               L537:
2777                     ; 553 }
2780  00f5 5b04          	addw	sp,#4
2781  00f7 81            	ret
2837                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2837                     ; 562 {
2838                     .text:	section	.text,new
2839  0000               _TIM1_Cmd:
2841  0000 88            	push	a
2842       00000000      OFST:	set	0
2845                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2847  0001 4d            	tnz	a
2848  0002 2704          	jreq	L014
2849  0004 a101          	cp	a,#1
2850  0006 2603          	jrne	L604
2851  0008               L014:
2852  0008 4f            	clr	a
2853  0009 2010          	jra	L214
2854  000b               L604:
2855  000b ae0234        	ldw	x,#564
2856  000e 89            	pushw	x
2857  000f ae0000        	ldw	x,#0
2858  0012 89            	pushw	x
2859  0013 ae0000        	ldw	x,#L37
2860  0016 cd0000        	call	_assert_failed
2862  0019 5b04          	addw	sp,#4
2863  001b               L214:
2864                     ; 567   if (NewState != DISABLE)
2866  001b 0d01          	tnz	(OFST+1,sp)
2867  001d 2706          	jreq	L567
2868                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2870  001f 72105250      	bset	21072,#0
2872  0023 2004          	jra	L767
2873  0025               L567:
2874                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2876  0025 72115250      	bres	21072,#0
2877  0029               L767:
2878                     ; 575 }
2881  0029 84            	pop	a
2882  002a 81            	ret
2919                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2919                     ; 584 {
2920                     .text:	section	.text,new
2921  0000               _TIM1_CtrlPWMOutputs:
2923  0000 88            	push	a
2924       00000000      OFST:	set	0
2927                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2929  0001 4d            	tnz	a
2930  0002 2704          	jreq	L024
2931  0004 a101          	cp	a,#1
2932  0006 2603          	jrne	L614
2933  0008               L024:
2934  0008 4f            	clr	a
2935  0009 2010          	jra	L224
2936  000b               L614:
2937  000b ae024a        	ldw	x,#586
2938  000e 89            	pushw	x
2939  000f ae0000        	ldw	x,#0
2940  0012 89            	pushw	x
2941  0013 ae0000        	ldw	x,#L37
2942  0016 cd0000        	call	_assert_failed
2944  0019 5b04          	addw	sp,#4
2945  001b               L224:
2946                     ; 590   if (NewState != DISABLE)
2948  001b 0d01          	tnz	(OFST+1,sp)
2949  001d 2706          	jreq	L7001
2950                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2952  001f 721e526d      	bset	21101,#7
2954  0023 2004          	jra	L1101
2955  0025               L7001:
2956                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2958  0025 721f526d      	bres	21101,#7
2959  0029               L1101:
2960                     ; 598 }
2963  0029 84            	pop	a
2964  002a 81            	ret
3072                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3072                     ; 618 {
3073                     .text:	section	.text,new
3074  0000               _TIM1_ITConfig:
3076  0000 89            	pushw	x
3077       00000000      OFST:	set	0
3080                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3082  0001 9e            	ld	a,xh
3083  0002 4d            	tnz	a
3084  0003 2703          	jreq	L624
3085  0005 4f            	clr	a
3086  0006 2010          	jra	L034
3087  0008               L624:
3088  0008 ae026c        	ldw	x,#620
3089  000b 89            	pushw	x
3090  000c ae0000        	ldw	x,#0
3091  000f 89            	pushw	x
3092  0010 ae0000        	ldw	x,#L37
3093  0013 cd0000        	call	_assert_failed
3095  0016 5b04          	addw	sp,#4
3096  0018               L034:
3097                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3099  0018 0d02          	tnz	(OFST+2,sp)
3100  001a 2706          	jreq	L434
3101  001c 7b02          	ld	a,(OFST+2,sp)
3102  001e a101          	cp	a,#1
3103  0020 2603          	jrne	L234
3104  0022               L434:
3105  0022 4f            	clr	a
3106  0023 2010          	jra	L634
3107  0025               L234:
3108  0025 ae026d        	ldw	x,#621
3109  0028 89            	pushw	x
3110  0029 ae0000        	ldw	x,#0
3111  002c 89            	pushw	x
3112  002d ae0000        	ldw	x,#L37
3113  0030 cd0000        	call	_assert_failed
3115  0033 5b04          	addw	sp,#4
3116  0035               L634:
3117                     ; 623   if (NewState != DISABLE)
3119  0035 0d02          	tnz	(OFST+2,sp)
3120  0037 270a          	jreq	L1601
3121                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3123  0039 c65254        	ld	a,21076
3124  003c 1a01          	or	a,(OFST+1,sp)
3125  003e c75254        	ld	21076,a
3127  0041 2009          	jra	L3601
3128  0043               L1601:
3129                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3131  0043 7b01          	ld	a,(OFST+1,sp)
3132  0045 43            	cpl	a
3133  0046 c45254        	and	a,21076
3134  0049 c75254        	ld	21076,a
3135  004c               L3601:
3136                     ; 633 }
3139  004c 85            	popw	x
3140  004d 81            	ret
3164                     ; 640 void TIM1_InternalClockConfig(void)
3164                     ; 641 {
3165                     .text:	section	.text,new
3166  0000               _TIM1_InternalClockConfig:
3170                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3172  0000 c65252        	ld	a,21074
3173  0003 a4f8          	and	a,#248
3174  0005 c75252        	ld	21074,a
3175                     ; 644 }
3178  0008 81            	ret
3294                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3294                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3294                     ; 664                               uint8_t ExtTRGFilter)
3294                     ; 665 {
3295                     .text:	section	.text,new
3296  0000               _TIM1_ETRClockMode1Config:
3298  0000 89            	pushw	x
3299       00000000      OFST:	set	0
3302                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3304  0001 9e            	ld	a,xh
3305  0002 4d            	tnz	a
3306  0003 270f          	jreq	L644
3307  0005 9e            	ld	a,xh
3308  0006 a110          	cp	a,#16
3309  0008 270a          	jreq	L644
3310  000a 9e            	ld	a,xh
3311  000b a120          	cp	a,#32
3312  000d 2705          	jreq	L644
3313  000f 9e            	ld	a,xh
3314  0010 a130          	cp	a,#48
3315  0012 2603          	jrne	L444
3316  0014               L644:
3317  0014 4f            	clr	a
3318  0015 2010          	jra	L054
3319  0017               L444:
3320  0017 ae029b        	ldw	x,#667
3321  001a 89            	pushw	x
3322  001b ae0000        	ldw	x,#0
3323  001e 89            	pushw	x
3324  001f ae0000        	ldw	x,#L37
3325  0022 cd0000        	call	_assert_failed
3327  0025 5b04          	addw	sp,#4
3328  0027               L054:
3329                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3331  0027 7b02          	ld	a,(OFST+2,sp)
3332  0029 a180          	cp	a,#128
3333  002b 2704          	jreq	L454
3334  002d 0d02          	tnz	(OFST+2,sp)
3335  002f 2603          	jrne	L254
3336  0031               L454:
3337  0031 4f            	clr	a
3338  0032 2010          	jra	L654
3339  0034               L254:
3340  0034 ae029c        	ldw	x,#668
3341  0037 89            	pushw	x
3342  0038 ae0000        	ldw	x,#0
3343  003b 89            	pushw	x
3344  003c ae0000        	ldw	x,#L37
3345  003f cd0000        	call	_assert_failed
3347  0042 5b04          	addw	sp,#4
3348  0044               L654:
3349                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3351  0044 7b05          	ld	a,(OFST+5,sp)
3352  0046 88            	push	a
3353  0047 7b03          	ld	a,(OFST+3,sp)
3354  0049 97            	ld	xl,a
3355  004a 7b02          	ld	a,(OFST+2,sp)
3356  004c 95            	ld	xh,a
3357  004d cd0000        	call	_TIM1_ETRConfig
3359  0050 84            	pop	a
3360                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3360                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3362  0051 c65252        	ld	a,21074
3363  0054 a488          	and	a,#136
3364  0056 aa77          	or	a,#119
3365  0058 c75252        	ld	21074,a
3366                     ; 676 }
3369  005b 85            	popw	x
3370  005c 81            	ret
3427                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3427                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3427                     ; 696                               uint8_t ExtTRGFilter)
3427                     ; 697 {
3428                     .text:	section	.text,new
3429  0000               _TIM1_ETRClockMode2Config:
3431  0000 89            	pushw	x
3432       00000000      OFST:	set	0
3435                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3437  0001 9e            	ld	a,xh
3438  0002 4d            	tnz	a
3439  0003 270f          	jreq	L464
3440  0005 9e            	ld	a,xh
3441  0006 a110          	cp	a,#16
3442  0008 270a          	jreq	L464
3443  000a 9e            	ld	a,xh
3444  000b a120          	cp	a,#32
3445  000d 2705          	jreq	L464
3446  000f 9e            	ld	a,xh
3447  0010 a130          	cp	a,#48
3448  0012 2603          	jrne	L264
3449  0014               L464:
3450  0014 4f            	clr	a
3451  0015 2010          	jra	L664
3452  0017               L264:
3453  0017 ae02bb        	ldw	x,#699
3454  001a 89            	pushw	x
3455  001b ae0000        	ldw	x,#0
3456  001e 89            	pushw	x
3457  001f ae0000        	ldw	x,#L37
3458  0022 cd0000        	call	_assert_failed
3460  0025 5b04          	addw	sp,#4
3461  0027               L664:
3462                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3464  0027 7b02          	ld	a,(OFST+2,sp)
3465  0029 a180          	cp	a,#128
3466  002b 2704          	jreq	L274
3467  002d 0d02          	tnz	(OFST+2,sp)
3468  002f 2603          	jrne	L074
3469  0031               L274:
3470  0031 4f            	clr	a
3471  0032 2010          	jra	L474
3472  0034               L074:
3473  0034 ae02bc        	ldw	x,#700
3474  0037 89            	pushw	x
3475  0038 ae0000        	ldw	x,#0
3476  003b 89            	pushw	x
3477  003c ae0000        	ldw	x,#L37
3478  003f cd0000        	call	_assert_failed
3480  0042 5b04          	addw	sp,#4
3481  0044               L474:
3482                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3484  0044 7b05          	ld	a,(OFST+5,sp)
3485  0046 88            	push	a
3486  0047 7b03          	ld	a,(OFST+3,sp)
3487  0049 97            	ld	xl,a
3488  004a 7b02          	ld	a,(OFST+2,sp)
3489  004c 95            	ld	xh,a
3490  004d cd0000        	call	_TIM1_ETRConfig
3492  0050 84            	pop	a
3493                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3495  0051 721c5253      	bset	21075,#6
3496                     ; 707 }
3499  0055 85            	popw	x
3500  0056 81            	ret
3555                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3555                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3555                     ; 727                     uint8_t ExtTRGFilter)
3555                     ; 728 {
3556                     .text:	section	.text,new
3557  0000               _TIM1_ETRConfig:
3559  0000 89            	pushw	x
3560       00000000      OFST:	set	0
3563                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3565  0001 7b05          	ld	a,(OFST+5,sp)
3566  0003 a110          	cp	a,#16
3567  0005 2403          	jruge	L005
3568  0007 4f            	clr	a
3569  0008 2010          	jra	L205
3570  000a               L005:
3571  000a ae02da        	ldw	x,#730
3572  000d 89            	pushw	x
3573  000e ae0000        	ldw	x,#0
3574  0011 89            	pushw	x
3575  0012 ae0000        	ldw	x,#L37
3576  0015 cd0000        	call	_assert_failed
3578  0018 5b04          	addw	sp,#4
3579  001a               L205:
3580                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3580                     ; 733                          (uint8_t)ExtTRGFilter );
3582  001a 7b01          	ld	a,(OFST+1,sp)
3583  001c 1a02          	or	a,(OFST+2,sp)
3584  001e 1a05          	or	a,(OFST+5,sp)
3585  0020 ca5253        	or	a,21075
3586  0023 c75253        	ld	21075,a
3587                     ; 734 }
3590  0026 85            	popw	x
3591  0027 81            	ret
3679                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3679                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3679                     ; 753                                  uint8_t ICFilter)
3679                     ; 754 {
3680                     .text:	section	.text,new
3681  0000               _TIM1_TIxExternalClockConfig:
3683  0000 89            	pushw	x
3684       00000000      OFST:	set	0
3687                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3689  0001 9e            	ld	a,xh
3690  0002 a140          	cp	a,#64
3691  0004 270a          	jreq	L015
3692  0006 9e            	ld	a,xh
3693  0007 a160          	cp	a,#96
3694  0009 2705          	jreq	L015
3695  000b 9e            	ld	a,xh
3696  000c a150          	cp	a,#80
3697  000e 2603          	jrne	L605
3698  0010               L015:
3699  0010 4f            	clr	a
3700  0011 2010          	jra	L215
3701  0013               L605:
3702  0013 ae02f4        	ldw	x,#756
3703  0016 89            	pushw	x
3704  0017 ae0000        	ldw	x,#0
3705  001a 89            	pushw	x
3706  001b ae0000        	ldw	x,#L37
3707  001e cd0000        	call	_assert_failed
3709  0021 5b04          	addw	sp,#4
3710  0023               L215:
3711                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3713  0023 0d02          	tnz	(OFST+2,sp)
3714  0025 2706          	jreq	L615
3715  0027 7b02          	ld	a,(OFST+2,sp)
3716  0029 a101          	cp	a,#1
3717  002b 2603          	jrne	L415
3718  002d               L615:
3719  002d 4f            	clr	a
3720  002e 2010          	jra	L025
3721  0030               L415:
3722  0030 ae02f5        	ldw	x,#757
3723  0033 89            	pushw	x
3724  0034 ae0000        	ldw	x,#0
3725  0037 89            	pushw	x
3726  0038 ae0000        	ldw	x,#L37
3727  003b cd0000        	call	_assert_failed
3729  003e 5b04          	addw	sp,#4
3730  0040               L025:
3731                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3733  0040 7b05          	ld	a,(OFST+5,sp)
3734  0042 a110          	cp	a,#16
3735  0044 2403          	jruge	L225
3736  0046 4f            	clr	a
3737  0047 2010          	jra	L425
3738  0049               L225:
3739  0049 ae02f6        	ldw	x,#758
3740  004c 89            	pushw	x
3741  004d ae0000        	ldw	x,#0
3742  0050 89            	pushw	x
3743  0051 ae0000        	ldw	x,#L37
3744  0054 cd0000        	call	_assert_failed
3746  0057 5b04          	addw	sp,#4
3747  0059               L425:
3748                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3750  0059 7b01          	ld	a,(OFST+1,sp)
3751  005b a160          	cp	a,#96
3752  005d 260f          	jrne	L3521
3753                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3755  005f 7b05          	ld	a,(OFST+5,sp)
3756  0061 88            	push	a
3757  0062 7b03          	ld	a,(OFST+3,sp)
3758  0064 ae0001        	ldw	x,#1
3759  0067 95            	ld	xh,a
3760  0068 cd0000        	call	L5_TI2_Config
3762  006b 84            	pop	a
3764  006c 200d          	jra	L5521
3765  006e               L3521:
3766                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3768  006e 7b05          	ld	a,(OFST+5,sp)
3769  0070 88            	push	a
3770  0071 7b03          	ld	a,(OFST+3,sp)
3771  0073 ae0001        	ldw	x,#1
3772  0076 95            	ld	xh,a
3773  0077 cd0000        	call	L3_TI1_Config
3775  007a 84            	pop	a
3776  007b               L5521:
3777                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3779  007b 7b01          	ld	a,(OFST+1,sp)
3780  007d cd0000        	call	_TIM1_SelectInputTrigger
3782                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3784  0080 c65252        	ld	a,21074
3785  0083 aa07          	or	a,#7
3786  0085 c75252        	ld	21074,a
3787                     ; 775 }
3790  0088 85            	popw	x
3791  0089 81            	ret
3877                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3877                     ; 788 {
3878                     .text:	section	.text,new
3879  0000               _TIM1_SelectInputTrigger:
3881  0000 88            	push	a
3882       00000000      OFST:	set	0
3885                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3887  0001 a140          	cp	a,#64
3888  0003 2713          	jreq	L235
3889  0005 a150          	cp	a,#80
3890  0007 270f          	jreq	L235
3891  0009 a160          	cp	a,#96
3892  000b 270b          	jreq	L235
3893  000d a170          	cp	a,#112
3894  000f 2707          	jreq	L235
3895  0011 a130          	cp	a,#48
3896  0013 2703          	jreq	L235
3897  0015 4d            	tnz	a
3898  0016 2603          	jrne	L035
3899  0018               L235:
3900  0018 4f            	clr	a
3901  0019 2010          	jra	L435
3902  001b               L035:
3903  001b ae0316        	ldw	x,#790
3904  001e 89            	pushw	x
3905  001f ae0000        	ldw	x,#0
3906  0022 89            	pushw	x
3907  0023 ae0000        	ldw	x,#L37
3908  0026 cd0000        	call	_assert_failed
3910  0029 5b04          	addw	sp,#4
3911  002b               L435:
3912                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3914  002b c65252        	ld	a,21074
3915  002e a48f          	and	a,#143
3916  0030 1a01          	or	a,(OFST+1,sp)
3917  0032 c75252        	ld	21074,a
3918                     ; 794 }
3921  0035 84            	pop	a
3922  0036 81            	ret
3959                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3959                     ; 804 {
3960                     .text:	section	.text,new
3961  0000               _TIM1_UpdateDisableConfig:
3963  0000 88            	push	a
3964       00000000      OFST:	set	0
3967                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3969  0001 4d            	tnz	a
3970  0002 2704          	jreq	L245
3971  0004 a101          	cp	a,#1
3972  0006 2603          	jrne	L045
3973  0008               L245:
3974  0008 4f            	clr	a
3975  0009 2010          	jra	L445
3976  000b               L045:
3977  000b ae0326        	ldw	x,#806
3978  000e 89            	pushw	x
3979  000f ae0000        	ldw	x,#0
3980  0012 89            	pushw	x
3981  0013 ae0000        	ldw	x,#L37
3982  0016 cd0000        	call	_assert_failed
3984  0019 5b04          	addw	sp,#4
3985  001b               L445:
3986                     ; 809   if (NewState != DISABLE)
3988  001b 0d01          	tnz	(OFST+1,sp)
3989  001d 2706          	jreq	L3331
3990                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3992  001f 72125250      	bset	21072,#1
3994  0023 2004          	jra	L5331
3995  0025               L3331:
3996                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3998  0025 72135250      	bres	21072,#1
3999  0029               L5331:
4000                     ; 817 }
4003  0029 84            	pop	a
4004  002a 81            	ret
4063                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4063                     ; 828 {
4064                     .text:	section	.text,new
4065  0000               _TIM1_UpdateRequestConfig:
4067  0000 88            	push	a
4068       00000000      OFST:	set	0
4071                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4073  0001 4d            	tnz	a
4074  0002 2704          	jreq	L255
4075  0004 a101          	cp	a,#1
4076  0006 2603          	jrne	L055
4077  0008               L255:
4078  0008 4f            	clr	a
4079  0009 2010          	jra	L455
4080  000b               L055:
4081  000b ae033e        	ldw	x,#830
4082  000e 89            	pushw	x
4083  000f ae0000        	ldw	x,#0
4084  0012 89            	pushw	x
4085  0013 ae0000        	ldw	x,#L37
4086  0016 cd0000        	call	_assert_failed
4088  0019 5b04          	addw	sp,#4
4089  001b               L455:
4090                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4092  001b 0d01          	tnz	(OFST+1,sp)
4093  001d 2706          	jreq	L5631
4094                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4096  001f 72145250      	bset	21072,#2
4098  0023 2004          	jra	L7631
4099  0025               L5631:
4100                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4102  0025 72155250      	bres	21072,#2
4103  0029               L7631:
4104                     ; 841 }
4107  0029 84            	pop	a
4108  002a 81            	ret
4145                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4145                     ; 850 {
4146                     .text:	section	.text,new
4147  0000               _TIM1_SelectHallSensor:
4149  0000 88            	push	a
4150       00000000      OFST:	set	0
4153                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4155  0001 4d            	tnz	a
4156  0002 2704          	jreq	L265
4157  0004 a101          	cp	a,#1
4158  0006 2603          	jrne	L065
4159  0008               L265:
4160  0008 4f            	clr	a
4161  0009 2010          	jra	L465
4162  000b               L065:
4163  000b ae0354        	ldw	x,#852
4164  000e 89            	pushw	x
4165  000f ae0000        	ldw	x,#0
4166  0012 89            	pushw	x
4167  0013 ae0000        	ldw	x,#L37
4168  0016 cd0000        	call	_assert_failed
4170  0019 5b04          	addw	sp,#4
4171  001b               L465:
4172                     ; 855   if (NewState != DISABLE)
4174  001b 0d01          	tnz	(OFST+1,sp)
4175  001d 2706          	jreq	L7041
4176                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4178  001f 721e5251      	bset	21073,#7
4180  0023 2004          	jra	L1141
4181  0025               L7041:
4182                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4184  0025 721f5251      	bres	21073,#7
4185  0029               L1141:
4186                     ; 863 }
4189  0029 84            	pop	a
4190  002a 81            	ret
4248                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4248                     ; 874 {
4249                     .text:	section	.text,new
4250  0000               _TIM1_SelectOnePulseMode:
4252  0000 88            	push	a
4253       00000000      OFST:	set	0
4256                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4258  0001 a101          	cp	a,#1
4259  0003 2703          	jreq	L275
4260  0005 4d            	tnz	a
4261  0006 2603          	jrne	L075
4262  0008               L275:
4263  0008 4f            	clr	a
4264  0009 2010          	jra	L475
4265  000b               L075:
4266  000b ae036c        	ldw	x,#876
4267  000e 89            	pushw	x
4268  000f ae0000        	ldw	x,#0
4269  0012 89            	pushw	x
4270  0013 ae0000        	ldw	x,#L37
4271  0016 cd0000        	call	_assert_failed
4273  0019 5b04          	addw	sp,#4
4274  001b               L475:
4275                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4277  001b 0d01          	tnz	(OFST+1,sp)
4278  001d 2706          	jreq	L1441
4279                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4281  001f 72165250      	bset	21072,#3
4283  0023 2004          	jra	L3441
4284  0025               L1441:
4285                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4287  0025 72175250      	bres	21072,#3
4288  0029               L3441:
4289                     ; 888 }
4292  0029 84            	pop	a
4293  002a 81            	ret
4392                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4392                     ; 904 {
4393                     .text:	section	.text,new
4394  0000               _TIM1_SelectOutputTrigger:
4396  0000 88            	push	a
4397       00000000      OFST:	set	0
4400                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4402  0001 4d            	tnz	a
4403  0002 2718          	jreq	L206
4404  0004 a110          	cp	a,#16
4405  0006 2714          	jreq	L206
4406  0008 a120          	cp	a,#32
4407  000a 2710          	jreq	L206
4408  000c a130          	cp	a,#48
4409  000e 270c          	jreq	L206
4410  0010 a140          	cp	a,#64
4411  0012 2708          	jreq	L206
4412  0014 a150          	cp	a,#80
4413  0016 2704          	jreq	L206
4414  0018 a160          	cp	a,#96
4415  001a 2603          	jrne	L006
4416  001c               L206:
4417  001c 4f            	clr	a
4418  001d 2010          	jra	L406
4419  001f               L006:
4420  001f ae038a        	ldw	x,#906
4421  0022 89            	pushw	x
4422  0023 ae0000        	ldw	x,#0
4423  0026 89            	pushw	x
4424  0027 ae0000        	ldw	x,#L37
4425  002a cd0000        	call	_assert_failed
4427  002d 5b04          	addw	sp,#4
4428  002f               L406:
4429                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4429                     ; 910                         (uint8_t) TIM1_TRGOSource);
4431  002f c65251        	ld	a,21073
4432  0032 a48f          	and	a,#143
4433  0034 1a01          	or	a,(OFST+1,sp)
4434  0036 c75251        	ld	21073,a
4435                     ; 911 }
4438  0039 84            	pop	a
4439  003a 81            	ret
4514                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4514                     ; 924 {
4515                     .text:	section	.text,new
4516  0000               _TIM1_SelectSlaveMode:
4518  0000 88            	push	a
4519       00000000      OFST:	set	0
4522                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4524  0001 a104          	cp	a,#4
4525  0003 270c          	jreq	L216
4526  0005 a105          	cp	a,#5
4527  0007 2708          	jreq	L216
4528  0009 a106          	cp	a,#6
4529  000b 2704          	jreq	L216
4530  000d a107          	cp	a,#7
4531  000f 2603          	jrne	L016
4532  0011               L216:
4533  0011 4f            	clr	a
4534  0012 2010          	jra	L416
4535  0014               L016:
4536  0014 ae039e        	ldw	x,#926
4537  0017 89            	pushw	x
4538  0018 ae0000        	ldw	x,#0
4539  001b 89            	pushw	x
4540  001c ae0000        	ldw	x,#L37
4541  001f cd0000        	call	_assert_failed
4543  0022 5b04          	addw	sp,#4
4544  0024               L416:
4545                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4545                     ; 930                          (uint8_t)TIM1_SlaveMode);
4547  0024 c65252        	ld	a,21074
4548  0027 a4f8          	and	a,#248
4549  0029 1a01          	or	a,(OFST+1,sp)
4550  002b c75252        	ld	21074,a
4551                     ; 931 }
4554  002e 84            	pop	a
4555  002f 81            	ret
4592                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4592                     ; 940 {
4593                     .text:	section	.text,new
4594  0000               _TIM1_SelectMasterSlaveMode:
4596  0000 88            	push	a
4597       00000000      OFST:	set	0
4600                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4602  0001 4d            	tnz	a
4603  0002 2704          	jreq	L226
4604  0004 a101          	cp	a,#1
4605  0006 2603          	jrne	L026
4606  0008               L226:
4607  0008 4f            	clr	a
4608  0009 2010          	jra	L426
4609  000b               L026:
4610  000b ae03ae        	ldw	x,#942
4611  000e 89            	pushw	x
4612  000f ae0000        	ldw	x,#0
4613  0012 89            	pushw	x
4614  0013 ae0000        	ldw	x,#L37
4615  0016 cd0000        	call	_assert_failed
4617  0019 5b04          	addw	sp,#4
4618  001b               L426:
4619                     ; 945   if (NewState != DISABLE)
4621  001b 0d01          	tnz	(OFST+1,sp)
4622  001d 2706          	jreq	L5551
4623                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4625  001f 721e5252      	bset	21074,#7
4627  0023 2004          	jra	L7551
4628  0025               L5551:
4629                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4631  0025 721f5252      	bres	21074,#7
4632  0029               L7551:
4633                     ; 953 }
4636  0029 84            	pop	a
4637  002a 81            	ret
4724                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4724                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4724                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4724                     ; 978 {
4725                     .text:	section	.text,new
4726  0000               _TIM1_EncoderInterfaceConfig:
4728  0000 89            	pushw	x
4729       00000000      OFST:	set	0
4732                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4734  0001 9e            	ld	a,xh
4735  0002 a101          	cp	a,#1
4736  0004 270a          	jreq	L236
4737  0006 9e            	ld	a,xh
4738  0007 a102          	cp	a,#2
4739  0009 2705          	jreq	L236
4740  000b 9e            	ld	a,xh
4741  000c a103          	cp	a,#3
4742  000e 2603          	jrne	L036
4743  0010               L236:
4744  0010 4f            	clr	a
4745  0011 2010          	jra	L436
4746  0013               L036:
4747  0013 ae03d4        	ldw	x,#980
4748  0016 89            	pushw	x
4749  0017 ae0000        	ldw	x,#0
4750  001a 89            	pushw	x
4751  001b ae0000        	ldw	x,#L37
4752  001e cd0000        	call	_assert_failed
4754  0021 5b04          	addw	sp,#4
4755  0023               L436:
4756                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4758  0023 0d02          	tnz	(OFST+2,sp)
4759  0025 2706          	jreq	L046
4760  0027 7b02          	ld	a,(OFST+2,sp)
4761  0029 a101          	cp	a,#1
4762  002b 2603          	jrne	L636
4763  002d               L046:
4764  002d 4f            	clr	a
4765  002e 2010          	jra	L246
4766  0030               L636:
4767  0030 ae03d5        	ldw	x,#981
4768  0033 89            	pushw	x
4769  0034 ae0000        	ldw	x,#0
4770  0037 89            	pushw	x
4771  0038 ae0000        	ldw	x,#L37
4772  003b cd0000        	call	_assert_failed
4774  003e 5b04          	addw	sp,#4
4775  0040               L246:
4776                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4778  0040 0d05          	tnz	(OFST+5,sp)
4779  0042 2706          	jreq	L646
4780  0044 7b05          	ld	a,(OFST+5,sp)
4781  0046 a101          	cp	a,#1
4782  0048 2603          	jrne	L446
4783  004a               L646:
4784  004a 4f            	clr	a
4785  004b 2010          	jra	L056
4786  004d               L446:
4787  004d ae03d6        	ldw	x,#982
4788  0050 89            	pushw	x
4789  0051 ae0000        	ldw	x,#0
4790  0054 89            	pushw	x
4791  0055 ae0000        	ldw	x,#L37
4792  0058 cd0000        	call	_assert_failed
4794  005b 5b04          	addw	sp,#4
4795  005d               L056:
4796                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4798  005d 0d02          	tnz	(OFST+2,sp)
4799  005f 2706          	jreq	L1261
4800                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4802  0061 7212525c      	bset	21084,#1
4804  0065 2004          	jra	L3261
4805  0067               L1261:
4806                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4808  0067 7213525c      	bres	21084,#1
4809  006b               L3261:
4810                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4812  006b 0d05          	tnz	(OFST+5,sp)
4813  006d 2706          	jreq	L5261
4814                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4816  006f 721a525c      	bset	21084,#5
4818  0073 2004          	jra	L7261
4819  0075               L5261:
4820                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4822  0075 721b525c      	bres	21084,#5
4823  0079               L7261:
4824                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4824                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4826  0079 c65252        	ld	a,21074
4827  007c a4f0          	and	a,#240
4828  007e 1a01          	or	a,(OFST+1,sp)
4829  0080 c75252        	ld	21074,a
4830                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4830                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4832  0083 c65258        	ld	a,21080
4833  0086 a4fc          	and	a,#252
4834  0088 aa01          	or	a,#1
4835  008a c75258        	ld	21080,a
4836                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4836                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4838  008d c65259        	ld	a,21081
4839  0090 a4fc          	and	a,#252
4840  0092 aa01          	or	a,#1
4841  0094 c75259        	ld	21081,a
4842                     ; 1011 }
4845  0097 85            	popw	x
4846  0098 81            	ret
4912                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4912                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4912                     ; 1025 {
4913                     .text:	section	.text,new
4914  0000               _TIM1_PrescalerConfig:
4916  0000 89            	pushw	x
4917       00000000      OFST:	set	0
4920                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4922  0001 0d05          	tnz	(OFST+5,sp)
4923  0003 2706          	jreq	L656
4924  0005 7b05          	ld	a,(OFST+5,sp)
4925  0007 a101          	cp	a,#1
4926  0009 2603          	jrne	L456
4927  000b               L656:
4928  000b 4f            	clr	a
4929  000c 2010          	jra	L066
4930  000e               L456:
4931  000e ae0403        	ldw	x,#1027
4932  0011 89            	pushw	x
4933  0012 ae0000        	ldw	x,#0
4934  0015 89            	pushw	x
4935  0016 ae0000        	ldw	x,#L37
4936  0019 cd0000        	call	_assert_failed
4938  001c 5b04          	addw	sp,#4
4939  001e               L066:
4940                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4942  001e 7b01          	ld	a,(OFST+1,sp)
4943  0020 c75260        	ld	21088,a
4944                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4946  0023 7b02          	ld	a,(OFST+2,sp)
4947  0025 c75261        	ld	21089,a
4948                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4950  0028 7b05          	ld	a,(OFST+5,sp)
4951  002a c75257        	ld	21079,a
4952                     ; 1035 }
4955  002d 85            	popw	x
4956  002e 81            	ret
4993                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4993                     ; 1049 {
4994                     .text:	section	.text,new
4995  0000               _TIM1_CounterModeConfig:
4997  0000 88            	push	a
4998       00000000      OFST:	set	0
5001                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5003  0001 4d            	tnz	a
5004  0002 2710          	jreq	L666
5005  0004 a110          	cp	a,#16
5006  0006 270c          	jreq	L666
5007  0008 a120          	cp	a,#32
5008  000a 2708          	jreq	L666
5009  000c a140          	cp	a,#64
5010  000e 2704          	jreq	L666
5011  0010 a160          	cp	a,#96
5012  0012 2603          	jrne	L466
5013  0014               L666:
5014  0014 4f            	clr	a
5015  0015 2010          	jra	L076
5016  0017               L466:
5017  0017 ae041b        	ldw	x,#1051
5018  001a 89            	pushw	x
5019  001b ae0000        	ldw	x,#0
5020  001e 89            	pushw	x
5021  001f ae0000        	ldw	x,#L37
5022  0022 cd0000        	call	_assert_failed
5024  0025 5b04          	addw	sp,#4
5025  0027               L076:
5026                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5026                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5028  0027 c65250        	ld	a,21072
5029  002a a48f          	and	a,#143
5030  002c 1a01          	or	a,(OFST+1,sp)
5031  002e c75250        	ld	21072,a
5032                     ; 1057 }
5035  0031 84            	pop	a
5036  0032 81            	ret
5095                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5095                     ; 1068 {
5096                     .text:	section	.text,new
5097  0000               _TIM1_ForcedOC1Config:
5099  0000 88            	push	a
5100       00000000      OFST:	set	0
5103                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5105  0001 a150          	cp	a,#80
5106  0003 2704          	jreq	L676
5107  0005 a140          	cp	a,#64
5108  0007 2603          	jrne	L476
5109  0009               L676:
5110  0009 4f            	clr	a
5111  000a 2010          	jra	L007
5112  000c               L476:
5113  000c ae042e        	ldw	x,#1070
5114  000f 89            	pushw	x
5115  0010 ae0000        	ldw	x,#0
5116  0013 89            	pushw	x
5117  0014 ae0000        	ldw	x,#L37
5118  0017 cd0000        	call	_assert_failed
5120  001a 5b04          	addw	sp,#4
5121  001c               L007:
5122                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5122                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5124  001c c65258        	ld	a,21080
5125  001f a48f          	and	a,#143
5126  0021 1a01          	or	a,(OFST+1,sp)
5127  0023 c75258        	ld	21080,a
5128                     ; 1075 }
5131  0026 84            	pop	a
5132  0027 81            	ret
5169                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5169                     ; 1086 {
5170                     .text:	section	.text,new
5171  0000               _TIM1_ForcedOC2Config:
5173  0000 88            	push	a
5174       00000000      OFST:	set	0
5177                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5179  0001 a150          	cp	a,#80
5180  0003 2704          	jreq	L607
5181  0005 a140          	cp	a,#64
5182  0007 2603          	jrne	L407
5183  0009               L607:
5184  0009 4f            	clr	a
5185  000a 2010          	jra	L017
5186  000c               L407:
5187  000c ae0440        	ldw	x,#1088
5188  000f 89            	pushw	x
5189  0010 ae0000        	ldw	x,#0
5190  0013 89            	pushw	x
5191  0014 ae0000        	ldw	x,#L37
5192  0017 cd0000        	call	_assert_failed
5194  001a 5b04          	addw	sp,#4
5195  001c               L017:
5196                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5196                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5198  001c c65259        	ld	a,21081
5199  001f a48f          	and	a,#143
5200  0021 1a01          	or	a,(OFST+1,sp)
5201  0023 c75259        	ld	21081,a
5202                     ; 1093 }
5205  0026 84            	pop	a
5206  0027 81            	ret
5243                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5243                     ; 1105 {
5244                     .text:	section	.text,new
5245  0000               _TIM1_ForcedOC3Config:
5247  0000 88            	push	a
5248       00000000      OFST:	set	0
5251                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5253  0001 a150          	cp	a,#80
5254  0003 2704          	jreq	L617
5255  0005 a140          	cp	a,#64
5256  0007 2603          	jrne	L417
5257  0009               L617:
5258  0009 4f            	clr	a
5259  000a 2010          	jra	L027
5260  000c               L417:
5261  000c ae0453        	ldw	x,#1107
5262  000f 89            	pushw	x
5263  0010 ae0000        	ldw	x,#0
5264  0013 89            	pushw	x
5265  0014 ae0000        	ldw	x,#L37
5266  0017 cd0000        	call	_assert_failed
5268  001a 5b04          	addw	sp,#4
5269  001c               L027:
5270                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5270                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5272  001c c6525a        	ld	a,21082
5273  001f a48f          	and	a,#143
5274  0021 1a01          	or	a,(OFST+1,sp)
5275  0023 c7525a        	ld	21082,a
5276                     ; 1112 }
5279  0026 84            	pop	a
5280  0027 81            	ret
5317                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5317                     ; 1124 {
5318                     .text:	section	.text,new
5319  0000               _TIM1_ForcedOC4Config:
5321  0000 88            	push	a
5322       00000000      OFST:	set	0
5325                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5327  0001 a150          	cp	a,#80
5328  0003 2704          	jreq	L627
5329  0005 a140          	cp	a,#64
5330  0007 2603          	jrne	L427
5331  0009               L627:
5332  0009 4f            	clr	a
5333  000a 2010          	jra	L037
5334  000c               L427:
5335  000c ae0466        	ldw	x,#1126
5336  000f 89            	pushw	x
5337  0010 ae0000        	ldw	x,#0
5338  0013 89            	pushw	x
5339  0014 ae0000        	ldw	x,#L37
5340  0017 cd0000        	call	_assert_failed
5342  001a 5b04          	addw	sp,#4
5343  001c               L037:
5344                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5344                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5346  001c c6525b        	ld	a,21083
5347  001f a48f          	and	a,#143
5348  0021 1a01          	or	a,(OFST+1,sp)
5349  0023 c7525b        	ld	21083,a
5350                     ; 1131 }
5353  0026 84            	pop	a
5354  0027 81            	ret
5391                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5391                     ; 1140 {
5392                     .text:	section	.text,new
5393  0000               _TIM1_ARRPreloadConfig:
5395  0000 88            	push	a
5396       00000000      OFST:	set	0
5399                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5401  0001 4d            	tnz	a
5402  0002 2704          	jreq	L637
5403  0004 a101          	cp	a,#1
5404  0006 2603          	jrne	L437
5405  0008               L637:
5406  0008 4f            	clr	a
5407  0009 2010          	jra	L047
5408  000b               L437:
5409  000b ae0476        	ldw	x,#1142
5410  000e 89            	pushw	x
5411  000f ae0000        	ldw	x,#0
5412  0012 89            	pushw	x
5413  0013 ae0000        	ldw	x,#L37
5414  0016 cd0000        	call	_assert_failed
5416  0019 5b04          	addw	sp,#4
5417  001b               L047:
5418                     ; 1145   if (NewState != DISABLE)
5420  001b 0d01          	tnz	(OFST+1,sp)
5421  001d 2706          	jreq	L5102
5422                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5424  001f 721e5250      	bset	21072,#7
5426  0023 2004          	jra	L7102
5427  0025               L5102:
5428                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5430  0025 721f5250      	bres	21072,#7
5431  0029               L7102:
5432                     ; 1153 }
5435  0029 84            	pop	a
5436  002a 81            	ret
5472                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5472                     ; 1162 {
5473                     .text:	section	.text,new
5474  0000               _TIM1_SelectCOM:
5476  0000 88            	push	a
5477       00000000      OFST:	set	0
5480                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5482  0001 4d            	tnz	a
5483  0002 2704          	jreq	L647
5484  0004 a101          	cp	a,#1
5485  0006 2603          	jrne	L447
5486  0008               L647:
5487  0008 4f            	clr	a
5488  0009 2010          	jra	L057
5489  000b               L447:
5490  000b ae048c        	ldw	x,#1164
5491  000e 89            	pushw	x
5492  000f ae0000        	ldw	x,#0
5493  0012 89            	pushw	x
5494  0013 ae0000        	ldw	x,#L37
5495  0016 cd0000        	call	_assert_failed
5497  0019 5b04          	addw	sp,#4
5498  001b               L057:
5499                     ; 1167   if (NewState != DISABLE)
5501  001b 0d01          	tnz	(OFST+1,sp)
5502  001d 2706          	jreq	L7302
5503                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5505  001f 72145251      	bset	21073,#2
5507  0023 2004          	jra	L1402
5508  0025               L7302:
5509                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5511  0025 72155251      	bres	21073,#2
5512  0029               L1402:
5513                     ; 1175 }
5516  0029 84            	pop	a
5517  002a 81            	ret
5554                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5554                     ; 1184 {
5555                     .text:	section	.text,new
5556  0000               _TIM1_CCPreloadControl:
5558  0000 88            	push	a
5559       00000000      OFST:	set	0
5562                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5564  0001 4d            	tnz	a
5565  0002 2704          	jreq	L657
5566  0004 a101          	cp	a,#1
5567  0006 2603          	jrne	L457
5568  0008               L657:
5569  0008 4f            	clr	a
5570  0009 2010          	jra	L067
5571  000b               L457:
5572  000b ae04a2        	ldw	x,#1186
5573  000e 89            	pushw	x
5574  000f ae0000        	ldw	x,#0
5575  0012 89            	pushw	x
5576  0013 ae0000        	ldw	x,#L37
5577  0016 cd0000        	call	_assert_failed
5579  0019 5b04          	addw	sp,#4
5580  001b               L067:
5581                     ; 1189   if (NewState != DISABLE)
5583  001b 0d01          	tnz	(OFST+1,sp)
5584  001d 2706          	jreq	L1602
5585                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5587  001f 72105251      	bset	21073,#0
5589  0023 2004          	jra	L3602
5590  0025               L1602:
5591                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5593  0025 72115251      	bres	21073,#0
5594  0029               L3602:
5595                     ; 1197 }
5598  0029 84            	pop	a
5599  002a 81            	ret
5636                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5636                     ; 1206 {
5637                     .text:	section	.text,new
5638  0000               _TIM1_OC1PreloadConfig:
5640  0000 88            	push	a
5641       00000000      OFST:	set	0
5644                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5646  0001 4d            	tnz	a
5647  0002 2704          	jreq	L667
5648  0004 a101          	cp	a,#1
5649  0006 2603          	jrne	L467
5650  0008               L667:
5651  0008 4f            	clr	a
5652  0009 2010          	jra	L077
5653  000b               L467:
5654  000b ae04b8        	ldw	x,#1208
5655  000e 89            	pushw	x
5656  000f ae0000        	ldw	x,#0
5657  0012 89            	pushw	x
5658  0013 ae0000        	ldw	x,#L37
5659  0016 cd0000        	call	_assert_failed
5661  0019 5b04          	addw	sp,#4
5662  001b               L077:
5663                     ; 1211   if (NewState != DISABLE)
5665  001b 0d01          	tnz	(OFST+1,sp)
5666  001d 2706          	jreq	L3012
5667                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5669  001f 72165258      	bset	21080,#3
5671  0023 2004          	jra	L5012
5672  0025               L3012:
5673                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5675  0025 72175258      	bres	21080,#3
5676  0029               L5012:
5677                     ; 1219 }
5680  0029 84            	pop	a
5681  002a 81            	ret
5718                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5718                     ; 1228 {
5719                     .text:	section	.text,new
5720  0000               _TIM1_OC2PreloadConfig:
5722  0000 88            	push	a
5723       00000000      OFST:	set	0
5726                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5728  0001 4d            	tnz	a
5729  0002 2704          	jreq	L677
5730  0004 a101          	cp	a,#1
5731  0006 2603          	jrne	L477
5732  0008               L677:
5733  0008 4f            	clr	a
5734  0009 2010          	jra	L0001
5735  000b               L477:
5736  000b ae04ce        	ldw	x,#1230
5737  000e 89            	pushw	x
5738  000f ae0000        	ldw	x,#0
5739  0012 89            	pushw	x
5740  0013 ae0000        	ldw	x,#L37
5741  0016 cd0000        	call	_assert_failed
5743  0019 5b04          	addw	sp,#4
5744  001b               L0001:
5745                     ; 1233   if (NewState != DISABLE)
5747  001b 0d01          	tnz	(OFST+1,sp)
5748  001d 2706          	jreq	L5212
5749                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5751  001f 72165259      	bset	21081,#3
5753  0023 2004          	jra	L7212
5754  0025               L5212:
5755                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5757  0025 72175259      	bres	21081,#3
5758  0029               L7212:
5759                     ; 1241 }
5762  0029 84            	pop	a
5763  002a 81            	ret
5800                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5800                     ; 1250 {
5801                     .text:	section	.text,new
5802  0000               _TIM1_OC3PreloadConfig:
5804  0000 88            	push	a
5805       00000000      OFST:	set	0
5808                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5810  0001 4d            	tnz	a
5811  0002 2704          	jreq	L6001
5812  0004 a101          	cp	a,#1
5813  0006 2603          	jrne	L4001
5814  0008               L6001:
5815  0008 4f            	clr	a
5816  0009 2010          	jra	L0101
5817  000b               L4001:
5818  000b ae04e4        	ldw	x,#1252
5819  000e 89            	pushw	x
5820  000f ae0000        	ldw	x,#0
5821  0012 89            	pushw	x
5822  0013 ae0000        	ldw	x,#L37
5823  0016 cd0000        	call	_assert_failed
5825  0019 5b04          	addw	sp,#4
5826  001b               L0101:
5827                     ; 1255   if (NewState != DISABLE)
5829  001b 0d01          	tnz	(OFST+1,sp)
5830  001d 2706          	jreq	L7412
5831                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5833  001f 7216525a      	bset	21082,#3
5835  0023 2004          	jra	L1512
5836  0025               L7412:
5837                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5839  0025 7217525a      	bres	21082,#3
5840  0029               L1512:
5841                     ; 1263 }
5844  0029 84            	pop	a
5845  002a 81            	ret
5882                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5882                     ; 1272 {
5883                     .text:	section	.text,new
5884  0000               _TIM1_OC4PreloadConfig:
5886  0000 88            	push	a
5887       00000000      OFST:	set	0
5890                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5892  0001 4d            	tnz	a
5893  0002 2704          	jreq	L6101
5894  0004 a101          	cp	a,#1
5895  0006 2603          	jrne	L4101
5896  0008               L6101:
5897  0008 4f            	clr	a
5898  0009 2010          	jra	L0201
5899  000b               L4101:
5900  000b ae04fa        	ldw	x,#1274
5901  000e 89            	pushw	x
5902  000f ae0000        	ldw	x,#0
5903  0012 89            	pushw	x
5904  0013 ae0000        	ldw	x,#L37
5905  0016 cd0000        	call	_assert_failed
5907  0019 5b04          	addw	sp,#4
5908  001b               L0201:
5909                     ; 1277   if (NewState != DISABLE)
5911  001b 0d01          	tnz	(OFST+1,sp)
5912  001d 2706          	jreq	L1712
5913                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5915  001f 7216525b      	bset	21083,#3
5917  0023 2004          	jra	L3712
5918  0025               L1712:
5919                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5921  0025 7217525b      	bres	21083,#3
5922  0029               L3712:
5923                     ; 1285 }
5926  0029 84            	pop	a
5927  002a 81            	ret
5963                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5963                     ; 1294 {
5964                     .text:	section	.text,new
5965  0000               _TIM1_OC1FastConfig:
5967  0000 88            	push	a
5968       00000000      OFST:	set	0
5971                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5973  0001 4d            	tnz	a
5974  0002 2704          	jreq	L6201
5975  0004 a101          	cp	a,#1
5976  0006 2603          	jrne	L4201
5977  0008               L6201:
5978  0008 4f            	clr	a
5979  0009 2010          	jra	L0301
5980  000b               L4201:
5981  000b ae0510        	ldw	x,#1296
5982  000e 89            	pushw	x
5983  000f ae0000        	ldw	x,#0
5984  0012 89            	pushw	x
5985  0013 ae0000        	ldw	x,#L37
5986  0016 cd0000        	call	_assert_failed
5988  0019 5b04          	addw	sp,#4
5989  001b               L0301:
5990                     ; 1299   if (NewState != DISABLE)
5992  001b 0d01          	tnz	(OFST+1,sp)
5993  001d 2706          	jreq	L3122
5994                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5996  001f 72145258      	bset	21080,#2
5998  0023 2004          	jra	L5122
5999  0025               L3122:
6000                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6002  0025 72155258      	bres	21080,#2
6003  0029               L5122:
6004                     ; 1307 }
6007  0029 84            	pop	a
6008  002a 81            	ret
6044                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6044                     ; 1316 {
6045                     .text:	section	.text,new
6046  0000               _TIM1_OC2FastConfig:
6048  0000 88            	push	a
6049       00000000      OFST:	set	0
6052                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6054  0001 4d            	tnz	a
6055  0002 2704          	jreq	L6301
6056  0004 a101          	cp	a,#1
6057  0006 2603          	jrne	L4301
6058  0008               L6301:
6059  0008 4f            	clr	a
6060  0009 2010          	jra	L0401
6061  000b               L4301:
6062  000b ae0526        	ldw	x,#1318
6063  000e 89            	pushw	x
6064  000f ae0000        	ldw	x,#0
6065  0012 89            	pushw	x
6066  0013 ae0000        	ldw	x,#L37
6067  0016 cd0000        	call	_assert_failed
6069  0019 5b04          	addw	sp,#4
6070  001b               L0401:
6071                     ; 1321   if (NewState != DISABLE)
6073  001b 0d01          	tnz	(OFST+1,sp)
6074  001d 2706          	jreq	L5322
6075                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6077  001f 72145259      	bset	21081,#2
6079  0023 2004          	jra	L7322
6080  0025               L5322:
6081                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6083  0025 72155259      	bres	21081,#2
6084  0029               L7322:
6085                     ; 1329 }
6088  0029 84            	pop	a
6089  002a 81            	ret
6125                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6125                     ; 1338 {
6126                     .text:	section	.text,new
6127  0000               _TIM1_OC3FastConfig:
6129  0000 88            	push	a
6130       00000000      OFST:	set	0
6133                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6135  0001 4d            	tnz	a
6136  0002 2704          	jreq	L6401
6137  0004 a101          	cp	a,#1
6138  0006 2603          	jrne	L4401
6139  0008               L6401:
6140  0008 4f            	clr	a
6141  0009 2010          	jra	L0501
6142  000b               L4401:
6143  000b ae053c        	ldw	x,#1340
6144  000e 89            	pushw	x
6145  000f ae0000        	ldw	x,#0
6146  0012 89            	pushw	x
6147  0013 ae0000        	ldw	x,#L37
6148  0016 cd0000        	call	_assert_failed
6150  0019 5b04          	addw	sp,#4
6151  001b               L0501:
6152                     ; 1343   if (NewState != DISABLE)
6154  001b 0d01          	tnz	(OFST+1,sp)
6155  001d 2706          	jreq	L7522
6156                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6158  001f 7214525a      	bset	21082,#2
6160  0023 2004          	jra	L1622
6161  0025               L7522:
6162                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6164  0025 7215525a      	bres	21082,#2
6165  0029               L1622:
6166                     ; 1351 }
6169  0029 84            	pop	a
6170  002a 81            	ret
6206                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6206                     ; 1360 {
6207                     .text:	section	.text,new
6208  0000               _TIM1_OC4FastConfig:
6210  0000 88            	push	a
6211       00000000      OFST:	set	0
6214                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6216  0001 4d            	tnz	a
6217  0002 2704          	jreq	L6501
6218  0004 a101          	cp	a,#1
6219  0006 2603          	jrne	L4501
6220  0008               L6501:
6221  0008 4f            	clr	a
6222  0009 2010          	jra	L0601
6223  000b               L4501:
6224  000b ae0552        	ldw	x,#1362
6225  000e 89            	pushw	x
6226  000f ae0000        	ldw	x,#0
6227  0012 89            	pushw	x
6228  0013 ae0000        	ldw	x,#L37
6229  0016 cd0000        	call	_assert_failed
6231  0019 5b04          	addw	sp,#4
6232  001b               L0601:
6233                     ; 1365   if (NewState != DISABLE)
6235  001b 0d01          	tnz	(OFST+1,sp)
6236  001d 2706          	jreq	L1032
6237                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6239  001f 7214525b      	bset	21083,#2
6241  0023 2004          	jra	L3032
6242  0025               L1032:
6243                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6245  0025 7215525b      	bres	21083,#2
6246  0029               L3032:
6247                     ; 1373 }
6250  0029 84            	pop	a
6251  002a 81            	ret
6357                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6357                     ; 1390 {
6358                     .text:	section	.text,new
6359  0000               _TIM1_GenerateEvent:
6361  0000 88            	push	a
6362       00000000      OFST:	set	0
6365                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6367  0001 4d            	tnz	a
6368  0002 2703          	jreq	L4601
6369  0004 4f            	clr	a
6370  0005 2010          	jra	L6601
6371  0007               L4601:
6372  0007 ae0570        	ldw	x,#1392
6373  000a 89            	pushw	x
6374  000b ae0000        	ldw	x,#0
6375  000e 89            	pushw	x
6376  000f ae0000        	ldw	x,#L37
6377  0012 cd0000        	call	_assert_failed
6379  0015 5b04          	addw	sp,#4
6380  0017               L6601:
6381                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6383  0017 7b01          	ld	a,(OFST+1,sp)
6384  0019 c75257        	ld	21079,a
6385                     ; 1396 }
6388  001c 84            	pop	a
6389  001d 81            	ret
6426                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6426                     ; 1407 {
6427                     .text:	section	.text,new
6428  0000               _TIM1_OC1PolarityConfig:
6430  0000 88            	push	a
6431       00000000      OFST:	set	0
6434                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6436  0001 4d            	tnz	a
6437  0002 2704          	jreq	L4701
6438  0004 a122          	cp	a,#34
6439  0006 2603          	jrne	L2701
6440  0008               L4701:
6441  0008 4f            	clr	a
6442  0009 2010          	jra	L6701
6443  000b               L2701:
6444  000b ae0581        	ldw	x,#1409
6445  000e 89            	pushw	x
6446  000f ae0000        	ldw	x,#0
6447  0012 89            	pushw	x
6448  0013 ae0000        	ldw	x,#L37
6449  0016 cd0000        	call	_assert_failed
6451  0019 5b04          	addw	sp,#4
6452  001b               L6701:
6453                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6455  001b 0d01          	tnz	(OFST+1,sp)
6456  001d 2706          	jreq	L5632
6457                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6459  001f 7212525c      	bset	21084,#1
6461  0023 2004          	jra	L7632
6462  0025               L5632:
6463                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6465  0025 7213525c      	bres	21084,#1
6466  0029               L7632:
6467                     ; 1420 }
6470  0029 84            	pop	a
6471  002a 81            	ret
6508                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6508                     ; 1431 {
6509                     .text:	section	.text,new
6510  0000               _TIM1_OC1NPolarityConfig:
6512  0000 88            	push	a
6513       00000000      OFST:	set	0
6516                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6518  0001 4d            	tnz	a
6519  0002 2704          	jreq	L4011
6520  0004 a188          	cp	a,#136
6521  0006 2603          	jrne	L2011
6522  0008               L4011:
6523  0008 4f            	clr	a
6524  0009 2010          	jra	L6011
6525  000b               L2011:
6526  000b ae0599        	ldw	x,#1433
6527  000e 89            	pushw	x
6528  000f ae0000        	ldw	x,#0
6529  0012 89            	pushw	x
6530  0013 ae0000        	ldw	x,#L37
6531  0016 cd0000        	call	_assert_failed
6533  0019 5b04          	addw	sp,#4
6534  001b               L6011:
6535                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6537  001b 0d01          	tnz	(OFST+1,sp)
6538  001d 2706          	jreq	L7042
6539                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6541  001f 7216525c      	bset	21084,#3
6543  0023 2004          	jra	L1142
6544  0025               L7042:
6545                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6547  0025 7217525c      	bres	21084,#3
6548  0029               L1142:
6549                     ; 1444 }
6552  0029 84            	pop	a
6553  002a 81            	ret
6590                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6590                     ; 1455 {
6591                     .text:	section	.text,new
6592  0000               _TIM1_OC2PolarityConfig:
6594  0000 88            	push	a
6595       00000000      OFST:	set	0
6598                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6600  0001 4d            	tnz	a
6601  0002 2704          	jreq	L4111
6602  0004 a122          	cp	a,#34
6603  0006 2603          	jrne	L2111
6604  0008               L4111:
6605  0008 4f            	clr	a
6606  0009 2010          	jra	L6111
6607  000b               L2111:
6608  000b ae05b1        	ldw	x,#1457
6609  000e 89            	pushw	x
6610  000f ae0000        	ldw	x,#0
6611  0012 89            	pushw	x
6612  0013 ae0000        	ldw	x,#L37
6613  0016 cd0000        	call	_assert_failed
6615  0019 5b04          	addw	sp,#4
6616  001b               L6111:
6617                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6619  001b 0d01          	tnz	(OFST+1,sp)
6620  001d 2706          	jreq	L1342
6621                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6623  001f 721a525c      	bset	21084,#5
6625  0023 2004          	jra	L3342
6626  0025               L1342:
6627                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6629  0025 721b525c      	bres	21084,#5
6630  0029               L3342:
6631                     ; 1468 }
6634  0029 84            	pop	a
6635  002a 81            	ret
6672                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6672                     ; 1479 {
6673                     .text:	section	.text,new
6674  0000               _TIM1_OC2NPolarityConfig:
6676  0000 88            	push	a
6677       00000000      OFST:	set	0
6680                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6682  0001 4d            	tnz	a
6683  0002 2704          	jreq	L4211
6684  0004 a188          	cp	a,#136
6685  0006 2603          	jrne	L2211
6686  0008               L4211:
6687  0008 4f            	clr	a
6688  0009 2010          	jra	L6211
6689  000b               L2211:
6690  000b ae05c9        	ldw	x,#1481
6691  000e 89            	pushw	x
6692  000f ae0000        	ldw	x,#0
6693  0012 89            	pushw	x
6694  0013 ae0000        	ldw	x,#L37
6695  0016 cd0000        	call	_assert_failed
6697  0019 5b04          	addw	sp,#4
6698  001b               L6211:
6699                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6701  001b 0d01          	tnz	(OFST+1,sp)
6702  001d 2706          	jreq	L3542
6703                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6705  001f 721e525c      	bset	21084,#7
6707  0023 2004          	jra	L5542
6708  0025               L3542:
6709                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6711  0025 721f525c      	bres	21084,#7
6712  0029               L5542:
6713                     ; 1492 }
6716  0029 84            	pop	a
6717  002a 81            	ret
6754                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6754                     ; 1503 {
6755                     .text:	section	.text,new
6756  0000               _TIM1_OC3PolarityConfig:
6758  0000 88            	push	a
6759       00000000      OFST:	set	0
6762                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6764  0001 4d            	tnz	a
6765  0002 2704          	jreq	L4311
6766  0004 a122          	cp	a,#34
6767  0006 2603          	jrne	L2311
6768  0008               L4311:
6769  0008 4f            	clr	a
6770  0009 2010          	jra	L6311
6771  000b               L2311:
6772  000b ae05e1        	ldw	x,#1505
6773  000e 89            	pushw	x
6774  000f ae0000        	ldw	x,#0
6775  0012 89            	pushw	x
6776  0013 ae0000        	ldw	x,#L37
6777  0016 cd0000        	call	_assert_failed
6779  0019 5b04          	addw	sp,#4
6780  001b               L6311:
6781                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6783  001b 0d01          	tnz	(OFST+1,sp)
6784  001d 2706          	jreq	L5742
6785                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6787  001f 7212525d      	bset	21085,#1
6789  0023 2004          	jra	L7742
6790  0025               L5742:
6791                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6793  0025 7213525d      	bres	21085,#1
6794  0029               L7742:
6795                     ; 1516 }
6798  0029 84            	pop	a
6799  002a 81            	ret
6836                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6836                     ; 1528 {
6837                     .text:	section	.text,new
6838  0000               _TIM1_OC3NPolarityConfig:
6840  0000 88            	push	a
6841       00000000      OFST:	set	0
6844                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6846  0001 4d            	tnz	a
6847  0002 2704          	jreq	L4411
6848  0004 a188          	cp	a,#136
6849  0006 2603          	jrne	L2411
6850  0008               L4411:
6851  0008 4f            	clr	a
6852  0009 2010          	jra	L6411
6853  000b               L2411:
6854  000b ae05fa        	ldw	x,#1530
6855  000e 89            	pushw	x
6856  000f ae0000        	ldw	x,#0
6857  0012 89            	pushw	x
6858  0013 ae0000        	ldw	x,#L37
6859  0016 cd0000        	call	_assert_failed
6861  0019 5b04          	addw	sp,#4
6862  001b               L6411:
6863                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6865  001b 0d01          	tnz	(OFST+1,sp)
6866  001d 2706          	jreq	L7152
6867                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6869  001f 7216525d      	bset	21085,#3
6871  0023 2004          	jra	L1252
6872  0025               L7152:
6873                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6875  0025 7217525d      	bres	21085,#3
6876  0029               L1252:
6877                     ; 1541 }
6880  0029 84            	pop	a
6881  002a 81            	ret
6918                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6918                     ; 1552 {
6919                     .text:	section	.text,new
6920  0000               _TIM1_OC4PolarityConfig:
6922  0000 88            	push	a
6923       00000000      OFST:	set	0
6926                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6928  0001 4d            	tnz	a
6929  0002 2704          	jreq	L4511
6930  0004 a122          	cp	a,#34
6931  0006 2603          	jrne	L2511
6932  0008               L4511:
6933  0008 4f            	clr	a
6934  0009 2010          	jra	L6511
6935  000b               L2511:
6936  000b ae0612        	ldw	x,#1554
6937  000e 89            	pushw	x
6938  000f ae0000        	ldw	x,#0
6939  0012 89            	pushw	x
6940  0013 ae0000        	ldw	x,#L37
6941  0016 cd0000        	call	_assert_failed
6943  0019 5b04          	addw	sp,#4
6944  001b               L6511:
6945                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6947  001b 0d01          	tnz	(OFST+1,sp)
6948  001d 2706          	jreq	L1452
6949                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6951  001f 721a525d      	bset	21085,#5
6953  0023 2004          	jra	L3452
6954  0025               L1452:
6955                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6957  0025 721b525d      	bres	21085,#5
6958  0029               L3452:
6959                     ; 1565 }
6962  0029 84            	pop	a
6963  002a 81            	ret
7009                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7009                     ; 1580 {
7010                     .text:	section	.text,new
7011  0000               _TIM1_CCxCmd:
7013  0000 89            	pushw	x
7014       00000000      OFST:	set	0
7017                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7019  0001 9e            	ld	a,xh
7020  0002 4d            	tnz	a
7021  0003 270f          	jreq	L4611
7022  0005 9e            	ld	a,xh
7023  0006 a101          	cp	a,#1
7024  0008 270a          	jreq	L4611
7025  000a 9e            	ld	a,xh
7026  000b a102          	cp	a,#2
7027  000d 2705          	jreq	L4611
7028  000f 9e            	ld	a,xh
7029  0010 a103          	cp	a,#3
7030  0012 2603          	jrne	L2611
7031  0014               L4611:
7032  0014 4f            	clr	a
7033  0015 2010          	jra	L6611
7034  0017               L2611:
7035  0017 ae062e        	ldw	x,#1582
7036  001a 89            	pushw	x
7037  001b ae0000        	ldw	x,#0
7038  001e 89            	pushw	x
7039  001f ae0000        	ldw	x,#L37
7040  0022 cd0000        	call	_assert_failed
7042  0025 5b04          	addw	sp,#4
7043  0027               L6611:
7044                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7046  0027 0d02          	tnz	(OFST+2,sp)
7047  0029 2706          	jreq	L2711
7048  002b 7b02          	ld	a,(OFST+2,sp)
7049  002d a101          	cp	a,#1
7050  002f 2603          	jrne	L0711
7051  0031               L2711:
7052  0031 4f            	clr	a
7053  0032 2010          	jra	L4711
7054  0034               L0711:
7055  0034 ae062f        	ldw	x,#1583
7056  0037 89            	pushw	x
7057  0038 ae0000        	ldw	x,#0
7058  003b 89            	pushw	x
7059  003c ae0000        	ldw	x,#L37
7060  003f cd0000        	call	_assert_failed
7062  0042 5b04          	addw	sp,#4
7063  0044               L4711:
7064                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7066  0044 0d01          	tnz	(OFST+1,sp)
7067  0046 2610          	jrne	L7652
7068                     ; 1588     if (NewState != DISABLE)
7070  0048 0d02          	tnz	(OFST+2,sp)
7071  004a 2706          	jreq	L1752
7072                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7074  004c 7210525c      	bset	21084,#0
7076  0050 2040          	jra	L5752
7077  0052               L1752:
7078                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7080  0052 7211525c      	bres	21084,#0
7081  0056 203a          	jra	L5752
7082  0058               L7652:
7083                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7085  0058 7b01          	ld	a,(OFST+1,sp)
7086  005a a101          	cp	a,#1
7087  005c 2610          	jrne	L7752
7088                     ; 1601     if (NewState != DISABLE)
7090  005e 0d02          	tnz	(OFST+2,sp)
7091  0060 2706          	jreq	L1062
7092                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7094  0062 7218525c      	bset	21084,#4
7096  0066 202a          	jra	L5752
7097  0068               L1062:
7098                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7100  0068 7219525c      	bres	21084,#4
7101  006c 2024          	jra	L5752
7102  006e               L7752:
7103                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7105  006e 7b01          	ld	a,(OFST+1,sp)
7106  0070 a102          	cp	a,#2
7107  0072 2610          	jrne	L7062
7108                     ; 1613     if (NewState != DISABLE)
7110  0074 0d02          	tnz	(OFST+2,sp)
7111  0076 2706          	jreq	L1162
7112                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7114  0078 7210525d      	bset	21085,#0
7116  007c 2014          	jra	L5752
7117  007e               L1162:
7118                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7120  007e 7211525d      	bres	21085,#0
7121  0082 200e          	jra	L5752
7122  0084               L7062:
7123                     ; 1625     if (NewState != DISABLE)
7125  0084 0d02          	tnz	(OFST+2,sp)
7126  0086 2706          	jreq	L7162
7127                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7129  0088 7218525d      	bset	21085,#4
7131  008c 2004          	jra	L5752
7132  008e               L7162:
7133                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7135  008e 7219525d      	bres	21085,#4
7136  0092               L5752:
7137                     ; 1634 }
7140  0092 85            	popw	x
7141  0093 81            	ret
7187                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7187                     ; 1648 {
7188                     .text:	section	.text,new
7189  0000               _TIM1_CCxNCmd:
7191  0000 89            	pushw	x
7192       00000000      OFST:	set	0
7195                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7197  0001 9e            	ld	a,xh
7198  0002 4d            	tnz	a
7199  0003 270a          	jreq	L2021
7200  0005 9e            	ld	a,xh
7201  0006 a101          	cp	a,#1
7202  0008 2705          	jreq	L2021
7203  000a 9e            	ld	a,xh
7204  000b a102          	cp	a,#2
7205  000d 2603          	jrne	L0021
7206  000f               L2021:
7207  000f 4f            	clr	a
7208  0010 2010          	jra	L4021
7209  0012               L0021:
7210  0012 ae0672        	ldw	x,#1650
7211  0015 89            	pushw	x
7212  0016 ae0000        	ldw	x,#0
7213  0019 89            	pushw	x
7214  001a ae0000        	ldw	x,#L37
7215  001d cd0000        	call	_assert_failed
7217  0020 5b04          	addw	sp,#4
7218  0022               L4021:
7219                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7221  0022 0d02          	tnz	(OFST+2,sp)
7222  0024 2706          	jreq	L0121
7223  0026 7b02          	ld	a,(OFST+2,sp)
7224  0028 a101          	cp	a,#1
7225  002a 2603          	jrne	L6021
7226  002c               L0121:
7227  002c 4f            	clr	a
7228  002d 2010          	jra	L2121
7229  002f               L6021:
7230  002f ae0673        	ldw	x,#1651
7231  0032 89            	pushw	x
7232  0033 ae0000        	ldw	x,#0
7233  0036 89            	pushw	x
7234  0037 ae0000        	ldw	x,#L37
7235  003a cd0000        	call	_assert_failed
7237  003d 5b04          	addw	sp,#4
7238  003f               L2121:
7239                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7241  003f 0d01          	tnz	(OFST+1,sp)
7242  0041 2610          	jrne	L5462
7243                     ; 1656     if (NewState != DISABLE)
7245  0043 0d02          	tnz	(OFST+2,sp)
7246  0045 2706          	jreq	L7462
7247                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7249  0047 7214525c      	bset	21084,#2
7251  004b 202a          	jra	L3562
7252  004d               L7462:
7253                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7255  004d 7215525c      	bres	21084,#2
7256  0051 2024          	jra	L3562
7257  0053               L5462:
7258                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7260  0053 7b01          	ld	a,(OFST+1,sp)
7261  0055 a101          	cp	a,#1
7262  0057 2610          	jrne	L5562
7263                     ; 1668     if (NewState != DISABLE)
7265  0059 0d02          	tnz	(OFST+2,sp)
7266  005b 2706          	jreq	L7562
7267                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7269  005d 721c525c      	bset	21084,#6
7271  0061 2014          	jra	L3562
7272  0063               L7562:
7273                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7275  0063 721d525c      	bres	21084,#6
7276  0067 200e          	jra	L3562
7277  0069               L5562:
7278                     ; 1680     if (NewState != DISABLE)
7280  0069 0d02          	tnz	(OFST+2,sp)
7281  006b 2706          	jreq	L5662
7282                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7284  006d 7214525d      	bset	21085,#2
7286  0071 2004          	jra	L3562
7287  0073               L5662:
7288                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7290  0073 7215525d      	bres	21085,#2
7291  0077               L3562:
7292                     ; 1689 }
7295  0077 85            	popw	x
7296  0078 81            	ret
7342                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7342                     ; 1713 {
7343                     .text:	section	.text,new
7344  0000               _TIM1_SelectOCxM:
7346  0000 89            	pushw	x
7347       00000000      OFST:	set	0
7350                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7352  0001 9e            	ld	a,xh
7353  0002 4d            	tnz	a
7354  0003 270f          	jreq	L0221
7355  0005 9e            	ld	a,xh
7356  0006 a101          	cp	a,#1
7357  0008 270a          	jreq	L0221
7358  000a 9e            	ld	a,xh
7359  000b a102          	cp	a,#2
7360  000d 2705          	jreq	L0221
7361  000f 9e            	ld	a,xh
7362  0010 a103          	cp	a,#3
7363  0012 2603          	jrne	L6121
7364  0014               L0221:
7365  0014 4f            	clr	a
7366  0015 2010          	jra	L2221
7367  0017               L6121:
7368  0017 ae06b3        	ldw	x,#1715
7369  001a 89            	pushw	x
7370  001b ae0000        	ldw	x,#0
7371  001e 89            	pushw	x
7372  001f ae0000        	ldw	x,#L37
7373  0022 cd0000        	call	_assert_failed
7375  0025 5b04          	addw	sp,#4
7376  0027               L2221:
7377                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7379  0027 0d02          	tnz	(OFST+2,sp)
7380  0029 272a          	jreq	L6221
7381  002b 7b02          	ld	a,(OFST+2,sp)
7382  002d a110          	cp	a,#16
7383  002f 2724          	jreq	L6221
7384  0031 7b02          	ld	a,(OFST+2,sp)
7385  0033 a120          	cp	a,#32
7386  0035 271e          	jreq	L6221
7387  0037 7b02          	ld	a,(OFST+2,sp)
7388  0039 a130          	cp	a,#48
7389  003b 2718          	jreq	L6221
7390  003d 7b02          	ld	a,(OFST+2,sp)
7391  003f a160          	cp	a,#96
7392  0041 2712          	jreq	L6221
7393  0043 7b02          	ld	a,(OFST+2,sp)
7394  0045 a170          	cp	a,#112
7395  0047 270c          	jreq	L6221
7396  0049 7b02          	ld	a,(OFST+2,sp)
7397  004b a150          	cp	a,#80
7398  004d 2706          	jreq	L6221
7399  004f 7b02          	ld	a,(OFST+2,sp)
7400  0051 a140          	cp	a,#64
7401  0053 2603          	jrne	L4221
7402  0055               L6221:
7403  0055 4f            	clr	a
7404  0056 2010          	jra	L0321
7405  0058               L4221:
7406  0058 ae06b4        	ldw	x,#1716
7407  005b 89            	pushw	x
7408  005c ae0000        	ldw	x,#0
7409  005f 89            	pushw	x
7410  0060 ae0000        	ldw	x,#L37
7411  0063 cd0000        	call	_assert_failed
7413  0066 5b04          	addw	sp,#4
7414  0068               L0321:
7415                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7417  0068 0d01          	tnz	(OFST+1,sp)
7418  006a 2610          	jrne	L3172
7419                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7421  006c 7211525c      	bres	21084,#0
7422                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7422                     ; 1725                             | (uint8_t)TIM1_OCMode);
7424  0070 c65258        	ld	a,21080
7425  0073 a48f          	and	a,#143
7426  0075 1a02          	or	a,(OFST+2,sp)
7427  0077 c75258        	ld	21080,a
7429  007a 203a          	jra	L5172
7430  007c               L3172:
7431                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7433  007c 7b01          	ld	a,(OFST+1,sp)
7434  007e a101          	cp	a,#1
7435  0080 2610          	jrne	L7172
7436                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7438  0082 7219525c      	bres	21084,#4
7439                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7439                     ; 1734                             | (uint8_t)TIM1_OCMode);
7441  0086 c65259        	ld	a,21081
7442  0089 a48f          	and	a,#143
7443  008b 1a02          	or	a,(OFST+2,sp)
7444  008d c75259        	ld	21081,a
7446  0090 2024          	jra	L5172
7447  0092               L7172:
7448                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7450  0092 7b01          	ld	a,(OFST+1,sp)
7451  0094 a102          	cp	a,#2
7452  0096 2610          	jrne	L3272
7453                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7455  0098 7211525d      	bres	21085,#0
7456                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7456                     ; 1743                             | (uint8_t)TIM1_OCMode);
7458  009c c6525a        	ld	a,21082
7459  009f a48f          	and	a,#143
7460  00a1 1a02          	or	a,(OFST+2,sp)
7461  00a3 c7525a        	ld	21082,a
7463  00a6 200e          	jra	L5172
7464  00a8               L3272:
7465                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7467  00a8 7219525d      	bres	21085,#4
7468                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7468                     ; 1752                             | (uint8_t)TIM1_OCMode);
7470  00ac c6525b        	ld	a,21083
7471  00af a48f          	and	a,#143
7472  00b1 1a02          	or	a,(OFST+2,sp)
7473  00b3 c7525b        	ld	21083,a
7474  00b6               L5172:
7475                     ; 1754 }
7478  00b6 85            	popw	x
7479  00b7 81            	ret
7511                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7511                     ; 1763 {
7512                     .text:	section	.text,new
7513  0000               _TIM1_SetCounter:
7517                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7519  0000 9e            	ld	a,xh
7520  0001 c7525e        	ld	21086,a
7521                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7523  0004 9f            	ld	a,xl
7524  0005 c7525f        	ld	21087,a
7525                     ; 1767 }
7528  0008 81            	ret
7560                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7560                     ; 1776 {
7561                     .text:	section	.text,new
7562  0000               _TIM1_SetAutoreload:
7566                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7568  0000 9e            	ld	a,xh
7569  0001 c75262        	ld	21090,a
7570                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7572  0004 9f            	ld	a,xl
7573  0005 c75263        	ld	21091,a
7574                     ; 1780  }
7577  0008 81            	ret
7609                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7609                     ; 1789 {
7610                     .text:	section	.text,new
7611  0000               _TIM1_SetCompare1:
7615                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7617  0000 9e            	ld	a,xh
7618  0001 c75265        	ld	21093,a
7619                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7621  0004 9f            	ld	a,xl
7622  0005 c75266        	ld	21094,a
7623                     ; 1793 }
7626  0008 81            	ret
7658                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7658                     ; 1802 {
7659                     .text:	section	.text,new
7660  0000               _TIM1_SetCompare2:
7664                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7666  0000 9e            	ld	a,xh
7667  0001 c75267        	ld	21095,a
7668                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7670  0004 9f            	ld	a,xl
7671  0005 c75268        	ld	21096,a
7672                     ; 1806 }
7675  0008 81            	ret
7707                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7707                     ; 1815 {
7708                     .text:	section	.text,new
7709  0000               _TIM1_SetCompare3:
7713                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7715  0000 9e            	ld	a,xh
7716  0001 c75269        	ld	21097,a
7717                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7719  0004 9f            	ld	a,xl
7720  0005 c7526a        	ld	21098,a
7721                     ; 1819 }
7724  0008 81            	ret
7756                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7756                     ; 1828 {
7757                     .text:	section	.text,new
7758  0000               _TIM1_SetCompare4:
7762                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7764  0000 9e            	ld	a,xh
7765  0001 c7526b        	ld	21099,a
7766                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7768  0004 9f            	ld	a,xl
7769  0005 c7526c        	ld	21100,a
7770                     ; 1832 }
7773  0008 81            	ret
7810                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7810                     ; 1845 {
7811                     .text:	section	.text,new
7812  0000               _TIM1_SetIC1Prescaler:
7814  0000 88            	push	a
7815       00000000      OFST:	set	0
7818                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7820  0001 4d            	tnz	a
7821  0002 270c          	jreq	L2521
7822  0004 a104          	cp	a,#4
7823  0006 2708          	jreq	L2521
7824  0008 a108          	cp	a,#8
7825  000a 2704          	jreq	L2521
7826  000c a10c          	cp	a,#12
7827  000e 2603          	jrne	L0521
7828  0010               L2521:
7829  0010 4f            	clr	a
7830  0011 2010          	jra	L4521
7831  0013               L0521:
7832  0013 ae0737        	ldw	x,#1847
7833  0016 89            	pushw	x
7834  0017 ae0000        	ldw	x,#0
7835  001a 89            	pushw	x
7836  001b ae0000        	ldw	x,#L37
7837  001e cd0000        	call	_assert_failed
7839  0021 5b04          	addw	sp,#4
7840  0023               L4521:
7841                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7841                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7843  0023 c65258        	ld	a,21080
7844  0026 a4f3          	and	a,#243
7845  0028 1a01          	or	a,(OFST+1,sp)
7846  002a c75258        	ld	21080,a
7847                     ; 1852 }
7850  002d 84            	pop	a
7851  002e 81            	ret
7888                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7888                     ; 1865 {
7889                     .text:	section	.text,new
7890  0000               _TIM1_SetIC2Prescaler:
7892  0000 88            	push	a
7893       00000000      OFST:	set	0
7896                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7898  0001 4d            	tnz	a
7899  0002 270c          	jreq	L2621
7900  0004 a104          	cp	a,#4
7901  0006 2708          	jreq	L2621
7902  0008 a108          	cp	a,#8
7903  000a 2704          	jreq	L2621
7904  000c a10c          	cp	a,#12
7905  000e 2603          	jrne	L0621
7906  0010               L2621:
7907  0010 4f            	clr	a
7908  0011 2010          	jra	L4621
7909  0013               L0621:
7910  0013 ae074c        	ldw	x,#1868
7911  0016 89            	pushw	x
7912  0017 ae0000        	ldw	x,#0
7913  001a 89            	pushw	x
7914  001b ae0000        	ldw	x,#L37
7915  001e cd0000        	call	_assert_failed
7917  0021 5b04          	addw	sp,#4
7918  0023               L4621:
7919                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7919                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7921  0023 c65259        	ld	a,21081
7922  0026 a4f3          	and	a,#243
7923  0028 1a01          	or	a,(OFST+1,sp)
7924  002a c75259        	ld	21081,a
7925                     ; 1873 }
7928  002d 84            	pop	a
7929  002e 81            	ret
7966                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7966                     ; 1886 {
7967                     .text:	section	.text,new
7968  0000               _TIM1_SetIC3Prescaler:
7970  0000 88            	push	a
7971       00000000      OFST:	set	0
7974                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7976  0001 4d            	tnz	a
7977  0002 270c          	jreq	L2721
7978  0004 a104          	cp	a,#4
7979  0006 2708          	jreq	L2721
7980  0008 a108          	cp	a,#8
7981  000a 2704          	jreq	L2721
7982  000c a10c          	cp	a,#12
7983  000e 2603          	jrne	L0721
7984  0010               L2721:
7985  0010 4f            	clr	a
7986  0011 2010          	jra	L4721
7987  0013               L0721:
7988  0013 ae0761        	ldw	x,#1889
7989  0016 89            	pushw	x
7990  0017 ae0000        	ldw	x,#0
7991  001a 89            	pushw	x
7992  001b ae0000        	ldw	x,#L37
7993  001e cd0000        	call	_assert_failed
7995  0021 5b04          	addw	sp,#4
7996  0023               L4721:
7997                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7997                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7999  0023 c6525a        	ld	a,21082
8000  0026 a4f3          	and	a,#243
8001  0028 1a01          	or	a,(OFST+1,sp)
8002  002a c7525a        	ld	21082,a
8003                     ; 1894 }
8006  002d 84            	pop	a
8007  002e 81            	ret
8044                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8044                     ; 1907 {
8045                     .text:	section	.text,new
8046  0000               _TIM1_SetIC4Prescaler:
8048  0000 88            	push	a
8049       00000000      OFST:	set	0
8052                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8054  0001 4d            	tnz	a
8055  0002 270c          	jreq	L2031
8056  0004 a104          	cp	a,#4
8057  0006 2708          	jreq	L2031
8058  0008 a108          	cp	a,#8
8059  000a 2704          	jreq	L2031
8060  000c a10c          	cp	a,#12
8061  000e 2603          	jrne	L0031
8062  0010               L2031:
8063  0010 4f            	clr	a
8064  0011 2010          	jra	L4031
8065  0013               L0031:
8066  0013 ae0776        	ldw	x,#1910
8067  0016 89            	pushw	x
8068  0017 ae0000        	ldw	x,#0
8069  001a 89            	pushw	x
8070  001b ae0000        	ldw	x,#L37
8071  001e cd0000        	call	_assert_failed
8073  0021 5b04          	addw	sp,#4
8074  0023               L4031:
8075                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8075                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8077  0023 c6525b        	ld	a,21083
8078  0026 a4f3          	and	a,#243
8079  0028 1a01          	or	a,(OFST+1,sp)
8080  002a c7525b        	ld	21083,a
8081                     ; 1915 }
8084  002d 84            	pop	a
8085  002e 81            	ret
8131                     ; 1922 uint16_t TIM1_GetCapture1(void)
8131                     ; 1923 {
8132                     .text:	section	.text,new
8133  0000               _TIM1_GetCapture1:
8135  0000 5204          	subw	sp,#4
8136       00000004      OFST:	set	4
8139                     ; 1926   uint16_t tmpccr1 = 0;
8141                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8145                     ; 1929   tmpccr1h = TIM1->CCR1H;
8147  0002 c65265        	ld	a,21093
8148  0005 6b02          	ld	(OFST-2,sp),a
8150                     ; 1930   tmpccr1l = TIM1->CCR1L;
8152  0007 c65266        	ld	a,21094
8153  000a 6b01          	ld	(OFST-3,sp),a
8155                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8157  000c 7b01          	ld	a,(OFST-3,sp)
8158  000e 5f            	clrw	x
8159  000f 97            	ld	xl,a
8160  0010 1f03          	ldw	(OFST-1,sp),x
8162                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8164  0012 7b02          	ld	a,(OFST-2,sp)
8165  0014 5f            	clrw	x
8166  0015 97            	ld	xl,a
8167  0016 4f            	clr	a
8168  0017 02            	rlwa	x,a
8169  0018 01            	rrwa	x,a
8170  0019 1a04          	or	a,(OFST+0,sp)
8171  001b 01            	rrwa	x,a
8172  001c 1a03          	or	a,(OFST-1,sp)
8173  001e 01            	rrwa	x,a
8174  001f 1f03          	ldw	(OFST-1,sp),x
8176                     ; 1935   return (uint16_t)tmpccr1;
8178  0021 1e03          	ldw	x,(OFST-1,sp)
8181  0023 5b04          	addw	sp,#4
8182  0025 81            	ret
8228                     ; 1943 uint16_t TIM1_GetCapture2(void)
8228                     ; 1944 {
8229                     .text:	section	.text,new
8230  0000               _TIM1_GetCapture2:
8232  0000 5204          	subw	sp,#4
8233       00000004      OFST:	set	4
8236                     ; 1947   uint16_t tmpccr2 = 0;
8238                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8242                     ; 1950   tmpccr2h = TIM1->CCR2H;
8244  0002 c65267        	ld	a,21095
8245  0005 6b02          	ld	(OFST-2,sp),a
8247                     ; 1951   tmpccr2l = TIM1->CCR2L;
8249  0007 c65268        	ld	a,21096
8250  000a 6b01          	ld	(OFST-3,sp),a
8252                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8254  000c 7b01          	ld	a,(OFST-3,sp)
8255  000e 5f            	clrw	x
8256  000f 97            	ld	xl,a
8257  0010 1f03          	ldw	(OFST-1,sp),x
8259                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8261  0012 7b02          	ld	a,(OFST-2,sp)
8262  0014 5f            	clrw	x
8263  0015 97            	ld	xl,a
8264  0016 4f            	clr	a
8265  0017 02            	rlwa	x,a
8266  0018 01            	rrwa	x,a
8267  0019 1a04          	or	a,(OFST+0,sp)
8268  001b 01            	rrwa	x,a
8269  001c 1a03          	or	a,(OFST-1,sp)
8270  001e 01            	rrwa	x,a
8271  001f 1f03          	ldw	(OFST-1,sp),x
8273                     ; 1956   return (uint16_t)tmpccr2;
8275  0021 1e03          	ldw	x,(OFST-1,sp)
8278  0023 5b04          	addw	sp,#4
8279  0025 81            	ret
8325                     ; 1964 uint16_t TIM1_GetCapture3(void)
8325                     ; 1965 {
8326                     .text:	section	.text,new
8327  0000               _TIM1_GetCapture3:
8329  0000 5204          	subw	sp,#4
8330       00000004      OFST:	set	4
8333                     ; 1967   uint16_t tmpccr3 = 0;
8335                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8339                     ; 1970   tmpccr3h = TIM1->CCR3H;
8341  0002 c65269        	ld	a,21097
8342  0005 6b02          	ld	(OFST-2,sp),a
8344                     ; 1971   tmpccr3l = TIM1->CCR3L;
8346  0007 c6526a        	ld	a,21098
8347  000a 6b01          	ld	(OFST-3,sp),a
8349                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8351  000c 7b01          	ld	a,(OFST-3,sp)
8352  000e 5f            	clrw	x
8353  000f 97            	ld	xl,a
8354  0010 1f03          	ldw	(OFST-1,sp),x
8356                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8358  0012 7b02          	ld	a,(OFST-2,sp)
8359  0014 5f            	clrw	x
8360  0015 97            	ld	xl,a
8361  0016 4f            	clr	a
8362  0017 02            	rlwa	x,a
8363  0018 01            	rrwa	x,a
8364  0019 1a04          	or	a,(OFST+0,sp)
8365  001b 01            	rrwa	x,a
8366  001c 1a03          	or	a,(OFST-1,sp)
8367  001e 01            	rrwa	x,a
8368  001f 1f03          	ldw	(OFST-1,sp),x
8370                     ; 1976   return (uint16_t)tmpccr3;
8372  0021 1e03          	ldw	x,(OFST-1,sp)
8375  0023 5b04          	addw	sp,#4
8376  0025 81            	ret
8422                     ; 1984 uint16_t TIM1_GetCapture4(void)
8422                     ; 1985 {
8423                     .text:	section	.text,new
8424  0000               _TIM1_GetCapture4:
8426  0000 5204          	subw	sp,#4
8427       00000004      OFST:	set	4
8430                     ; 1987   uint16_t tmpccr4 = 0;
8432                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8436                     ; 1990   tmpccr4h = TIM1->CCR4H;
8438  0002 c6526b        	ld	a,21099
8439  0005 6b02          	ld	(OFST-2,sp),a
8441                     ; 1991   tmpccr4l = TIM1->CCR4L;
8443  0007 c6526c        	ld	a,21100
8444  000a 6b01          	ld	(OFST-3,sp),a
8446                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8448  000c 7b01          	ld	a,(OFST-3,sp)
8449  000e 5f            	clrw	x
8450  000f 97            	ld	xl,a
8451  0010 1f03          	ldw	(OFST-1,sp),x
8453                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8455  0012 7b02          	ld	a,(OFST-2,sp)
8456  0014 5f            	clrw	x
8457  0015 97            	ld	xl,a
8458  0016 4f            	clr	a
8459  0017 02            	rlwa	x,a
8460  0018 01            	rrwa	x,a
8461  0019 1a04          	or	a,(OFST+0,sp)
8462  001b 01            	rrwa	x,a
8463  001c 1a03          	or	a,(OFST-1,sp)
8464  001e 01            	rrwa	x,a
8465  001f 1f03          	ldw	(OFST-1,sp),x
8467                     ; 1996   return (uint16_t)tmpccr4;
8469  0021 1e03          	ldw	x,(OFST-1,sp)
8472  0023 5b04          	addw	sp,#4
8473  0025 81            	ret
8505                     ; 2004 uint16_t TIM1_GetCounter(void)
8505                     ; 2005 {
8506                     .text:	section	.text,new
8507  0000               _TIM1_GetCounter:
8509  0000 89            	pushw	x
8510       00000002      OFST:	set	2
8513                     ; 2006   uint16_t tmpcntr = 0;
8515                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8517  0001 c6525e        	ld	a,21086
8518  0004 5f            	clrw	x
8519  0005 97            	ld	xl,a
8520  0006 4f            	clr	a
8521  0007 02            	rlwa	x,a
8522  0008 1f01          	ldw	(OFST-1,sp),x
8524                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8526  000a c6525f        	ld	a,21087
8527  000d 5f            	clrw	x
8528  000e 97            	ld	xl,a
8529  000f 01            	rrwa	x,a
8530  0010 1a02          	or	a,(OFST+0,sp)
8531  0012 01            	rrwa	x,a
8532  0013 1a01          	or	a,(OFST-1,sp)
8533  0015 01            	rrwa	x,a
8536  0016 5b02          	addw	sp,#2
8537  0018 81            	ret
8569                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8569                     ; 2020 {
8570                     .text:	section	.text,new
8571  0000               _TIM1_GetPrescaler:
8573  0000 89            	pushw	x
8574       00000002      OFST:	set	2
8577                     ; 2021   uint16_t temp = 0;
8579                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8581  0001 c65260        	ld	a,21088
8582  0004 5f            	clrw	x
8583  0005 97            	ld	xl,a
8584  0006 4f            	clr	a
8585  0007 02            	rlwa	x,a
8586  0008 1f01          	ldw	(OFST-1,sp),x
8588                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8590  000a c65261        	ld	a,21089
8591  000d 5f            	clrw	x
8592  000e 97            	ld	xl,a
8593  000f 01            	rrwa	x,a
8594  0010 1a02          	or	a,(OFST+0,sp)
8595  0012 01            	rrwa	x,a
8596  0013 1a01          	or	a,(OFST-1,sp)
8597  0015 01            	rrwa	x,a
8600  0016 5b02          	addw	sp,#2
8601  0018 81            	ret
8772                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8772                     ; 2048 {
8773                     .text:	section	.text,new
8774  0000               _TIM1_GetFlagStatus:
8776  0000 89            	pushw	x
8777  0001 89            	pushw	x
8778       00000002      OFST:	set	2
8781                     ; 2049   FlagStatus bitstatus = RESET;
8783                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8787                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8789  0002 a30001        	cpw	x,#1
8790  0005 2737          	jreq	L6231
8791  0007 a30002        	cpw	x,#2
8792  000a 2732          	jreq	L6231
8793  000c a30004        	cpw	x,#4
8794  000f 272d          	jreq	L6231
8795  0011 a30008        	cpw	x,#8
8796  0014 2728          	jreq	L6231
8797  0016 a30010        	cpw	x,#16
8798  0019 2723          	jreq	L6231
8799  001b a30020        	cpw	x,#32
8800  001e 271e          	jreq	L6231
8801  0020 a30040        	cpw	x,#64
8802  0023 2719          	jreq	L6231
8803  0025 a30080        	cpw	x,#128
8804  0028 2714          	jreq	L6231
8805  002a a30200        	cpw	x,#512
8806  002d 270f          	jreq	L6231
8807  002f a30400        	cpw	x,#1024
8808  0032 270a          	jreq	L6231
8809  0034 a30800        	cpw	x,#2048
8810  0037 2705          	jreq	L6231
8811  0039 a31000        	cpw	x,#4096
8812  003c 2603          	jrne	L4231
8813  003e               L6231:
8814  003e 4f            	clr	a
8815  003f 2010          	jra	L0331
8816  0041               L4231:
8817  0041 ae0805        	ldw	x,#2053
8818  0044 89            	pushw	x
8819  0045 ae0000        	ldw	x,#0
8820  0048 89            	pushw	x
8821  0049 ae0000        	ldw	x,#L37
8822  004c cd0000        	call	_assert_failed
8824  004f 5b04          	addw	sp,#4
8825  0051               L0331:
8826                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8828  0051 c65255        	ld	a,21077
8829  0054 1404          	and	a,(OFST+2,sp)
8830  0056 6b01          	ld	(OFST-1,sp),a
8832                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8834  0058 7b03          	ld	a,(OFST+1,sp)
8835  005a 6b02          	ld	(OFST+0,sp),a
8837                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8839  005c c65256        	ld	a,21078
8840  005f 1402          	and	a,(OFST+0,sp)
8841  0061 1a01          	or	a,(OFST-1,sp)
8842  0063 2706          	jreq	L1533
8843                     ; 2060     bitstatus = SET;
8845  0065 a601          	ld	a,#1
8846  0067 6b02          	ld	(OFST+0,sp),a
8849  0069 2002          	jra	L3533
8850  006b               L1533:
8851                     ; 2064     bitstatus = RESET;
8853  006b 0f02          	clr	(OFST+0,sp)
8855  006d               L3533:
8856                     ; 2066   return (FlagStatus)(bitstatus);
8858  006d 7b02          	ld	a,(OFST+0,sp)
8861  006f 5b04          	addw	sp,#4
8862  0071 81            	ret
8898                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8898                     ; 2088 {
8899                     .text:	section	.text,new
8900  0000               _TIM1_ClearFlag:
8902  0000 89            	pushw	x
8903       00000000      OFST:	set	0
8906                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8908  0001 01            	rrwa	x,a
8909  0002 9f            	ld	a,xl
8910  0003 a4e1          	and	a,#225
8911  0005 97            	ld	xl,a
8912  0006 4f            	clr	a
8913  0007 02            	rlwa	x,a
8914  0008 5d            	tnzw	x
8915  0009 2607          	jrne	L4331
8916  000b 1e01          	ldw	x,(OFST+1,sp)
8917  000d 2703          	jreq	L4331
8918  000f 4f            	clr	a
8919  0010 2010          	jra	L6331
8920  0012               L4331:
8921  0012 ae082a        	ldw	x,#2090
8922  0015 89            	pushw	x
8923  0016 ae0000        	ldw	x,#0
8924  0019 89            	pushw	x
8925  001a ae0000        	ldw	x,#L37
8926  001d cd0000        	call	_assert_failed
8928  0020 5b04          	addw	sp,#4
8929  0022               L6331:
8930                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8932  0022 7b02          	ld	a,(OFST+2,sp)
8933  0024 43            	cpl	a
8934  0025 c75255        	ld	21077,a
8935                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8935                     ; 2095                         (uint8_t)0x1E);
8937  0028 7b01          	ld	a,(OFST+1,sp)
8938  002a 43            	cpl	a
8939  002b a41e          	and	a,#30
8940  002d c75256        	ld	21078,a
8941                     ; 2096 }
8944  0030 85            	popw	x
8945  0031 81            	ret
9006                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9006                     ; 2113 {
9007                     .text:	section	.text,new
9008  0000               _TIM1_GetITStatus:
9010  0000 88            	push	a
9011  0001 89            	pushw	x
9012       00000002      OFST:	set	2
9015                     ; 2114   ITStatus bitstatus = RESET;
9017                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9021                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9023  0002 a101          	cp	a,#1
9024  0004 271c          	jreq	L4431
9025  0006 a102          	cp	a,#2
9026  0008 2718          	jreq	L4431
9027  000a a104          	cp	a,#4
9028  000c 2714          	jreq	L4431
9029  000e a108          	cp	a,#8
9030  0010 2710          	jreq	L4431
9031  0012 a110          	cp	a,#16
9032  0014 270c          	jreq	L4431
9033  0016 a120          	cp	a,#32
9034  0018 2708          	jreq	L4431
9035  001a a140          	cp	a,#64
9036  001c 2704          	jreq	L4431
9037  001e a180          	cp	a,#128
9038  0020 2603          	jrne	L2431
9039  0022               L4431:
9040  0022 4f            	clr	a
9041  0023 2010          	jra	L6431
9042  0025               L2431:
9043  0025 ae0846        	ldw	x,#2118
9044  0028 89            	pushw	x
9045  0029 ae0000        	ldw	x,#0
9046  002c 89            	pushw	x
9047  002d ae0000        	ldw	x,#L37
9048  0030 cd0000        	call	_assert_failed
9050  0033 5b04          	addw	sp,#4
9051  0035               L6431:
9052                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9054  0035 c65255        	ld	a,21077
9055  0038 1403          	and	a,(OFST+1,sp)
9056  003a 6b01          	ld	(OFST-1,sp),a
9058                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9060  003c c65254        	ld	a,21076
9061  003f 1403          	and	a,(OFST+1,sp)
9062  0041 6b02          	ld	(OFST+0,sp),a
9064                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9066  0043 0d01          	tnz	(OFST-1,sp)
9067  0045 270a          	jreq	L1243
9069  0047 0d02          	tnz	(OFST+0,sp)
9070  0049 2706          	jreq	L1243
9071                     ; 2126     bitstatus = SET;
9073  004b a601          	ld	a,#1
9074  004d 6b02          	ld	(OFST+0,sp),a
9077  004f 2002          	jra	L3243
9078  0051               L1243:
9079                     ; 2130     bitstatus = RESET;
9081  0051 0f02          	clr	(OFST+0,sp)
9083  0053               L3243:
9084                     ; 2132   return (ITStatus)(bitstatus);
9086  0053 7b02          	ld	a,(OFST+0,sp)
9089  0055 5b03          	addw	sp,#3
9090  0057 81            	ret
9127                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9127                     ; 2150 {
9128                     .text:	section	.text,new
9129  0000               _TIM1_ClearITPendingBit:
9131  0000 88            	push	a
9132       00000000      OFST:	set	0
9135                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9137  0001 4d            	tnz	a
9138  0002 2703          	jreq	L2531
9139  0004 4f            	clr	a
9140  0005 2010          	jra	L4531
9141  0007               L2531:
9142  0007 ae0868        	ldw	x,#2152
9143  000a 89            	pushw	x
9144  000b ae0000        	ldw	x,#0
9145  000e 89            	pushw	x
9146  000f ae0000        	ldw	x,#L37
9147  0012 cd0000        	call	_assert_failed
9149  0015 5b04          	addw	sp,#4
9150  0017               L4531:
9151                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9153  0017 7b01          	ld	a,(OFST+1,sp)
9154  0019 43            	cpl	a
9155  001a c75255        	ld	21077,a
9156                     ; 2156 }
9159  001d 84            	pop	a
9160  001e 81            	ret
9206                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9206                     ; 2175                        uint8_t TIM1_ICSelection,
9206                     ; 2176                        uint8_t TIM1_ICFilter)
9206                     ; 2177 {
9207                     .text:	section	.text,new
9208  0000               L3_TI1_Config:
9210  0000 89            	pushw	x
9211  0001 88            	push	a
9212       00000001      OFST:	set	1
9215                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9217  0002 7211525c      	bres	21084,#0
9218                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9218                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9220  0006 7b06          	ld	a,(OFST+5,sp)
9221  0008 97            	ld	xl,a
9222  0009 a610          	ld	a,#16
9223  000b 42            	mul	x,a
9224  000c 9f            	ld	a,xl
9225  000d 1a03          	or	a,(OFST+2,sp)
9226  000f 6b01          	ld	(OFST+0,sp),a
9228  0011 c65258        	ld	a,21080
9229  0014 a40c          	and	a,#12
9230  0016 1a01          	or	a,(OFST+0,sp)
9231  0018 c75258        	ld	21080,a
9232                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9234  001b 0d02          	tnz	(OFST+1,sp)
9235  001d 2706          	jreq	L3643
9236                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9238  001f 7212525c      	bset	21084,#1
9240  0023 2004          	jra	L5643
9241  0025               L3643:
9242                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9244  0025 7213525c      	bres	21084,#1
9245  0029               L5643:
9246                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9248  0029 7210525c      	bset	21084,#0
9249                     ; 2197 }
9252  002d 5b03          	addw	sp,#3
9253  002f 81            	ret
9299                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9299                     ; 2216                        uint8_t TIM1_ICSelection,
9299                     ; 2217                        uint8_t TIM1_ICFilter)
9299                     ; 2218 {
9300                     .text:	section	.text,new
9301  0000               L5_TI2_Config:
9303  0000 89            	pushw	x
9304  0001 88            	push	a
9305       00000001      OFST:	set	1
9308                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9310  0002 7219525c      	bres	21084,#4
9311                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9311                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9313  0006 7b06          	ld	a,(OFST+5,sp)
9314  0008 97            	ld	xl,a
9315  0009 a610          	ld	a,#16
9316  000b 42            	mul	x,a
9317  000c 9f            	ld	a,xl
9318  000d 1a03          	or	a,(OFST+2,sp)
9319  000f 6b01          	ld	(OFST+0,sp),a
9321  0011 c65259        	ld	a,21081
9322  0014 a40c          	and	a,#12
9323  0016 1a01          	or	a,(OFST+0,sp)
9324  0018 c75259        	ld	21081,a
9325                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9327  001b 0d02          	tnz	(OFST+1,sp)
9328  001d 2706          	jreq	L7053
9329                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9331  001f 721a525c      	bset	21084,#5
9333  0023 2004          	jra	L1153
9334  0025               L7053:
9335                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9337  0025 721b525c      	bres	21084,#5
9338  0029               L1153:
9339                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9341  0029 7218525c      	bset	21084,#4
9342                     ; 2236 }
9345  002d 5b03          	addw	sp,#3
9346  002f 81            	ret
9392                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9392                     ; 2255                        uint8_t TIM1_ICSelection,
9392                     ; 2256                        uint8_t TIM1_ICFilter)
9392                     ; 2257 {
9393                     .text:	section	.text,new
9394  0000               L7_TI3_Config:
9396  0000 89            	pushw	x
9397  0001 88            	push	a
9398       00000001      OFST:	set	1
9401                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9403  0002 7211525d      	bres	21085,#0
9404                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9404                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9406  0006 7b06          	ld	a,(OFST+5,sp)
9407  0008 97            	ld	xl,a
9408  0009 a610          	ld	a,#16
9409  000b 42            	mul	x,a
9410  000c 9f            	ld	a,xl
9411  000d 1a03          	or	a,(OFST+2,sp)
9412  000f 6b01          	ld	(OFST+0,sp),a
9414  0011 c6525a        	ld	a,21082
9415  0014 a40c          	and	a,#12
9416  0016 1a01          	or	a,(OFST+0,sp)
9417  0018 c7525a        	ld	21082,a
9418                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9420  001b 0d02          	tnz	(OFST+1,sp)
9421  001d 2706          	jreq	L3353
9422                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9424  001f 7212525d      	bset	21085,#1
9426  0023 2004          	jra	L5353
9427  0025               L3353:
9428                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9430  0025 7213525d      	bres	21085,#1
9431  0029               L5353:
9432                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9434  0029 7210525d      	bset	21085,#0
9435                     ; 2276 }
9438  002d 5b03          	addw	sp,#3
9439  002f 81            	ret
9485                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9485                     ; 2295                        uint8_t TIM1_ICSelection,
9485                     ; 2296                        uint8_t TIM1_ICFilter)
9485                     ; 2297 {
9486                     .text:	section	.text,new
9487  0000               L11_TI4_Config:
9489  0000 89            	pushw	x
9490  0001 88            	push	a
9491       00000001      OFST:	set	1
9494                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9496  0002 7219525d      	bres	21085,#4
9497                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9497                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9499  0006 7b06          	ld	a,(OFST+5,sp)
9500  0008 97            	ld	xl,a
9501  0009 a610          	ld	a,#16
9502  000b 42            	mul	x,a
9503  000c 9f            	ld	a,xl
9504  000d 1a03          	or	a,(OFST+2,sp)
9505  000f 6b01          	ld	(OFST+0,sp),a
9507  0011 c6525b        	ld	a,21083
9508  0014 a40c          	and	a,#12
9509  0016 1a01          	or	a,(OFST+0,sp)
9510  0018 c7525b        	ld	21083,a
9511                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9513  001b 0d02          	tnz	(OFST+1,sp)
9514  001d 2706          	jreq	L7553
9515                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9517  001f 721a525d      	bset	21085,#5
9519  0023 2004          	jra	L1653
9520  0025               L7553:
9521                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9523  0025 721b525d      	bres	21085,#5
9524  0029               L1653:
9525                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9527  0029 7218525d      	bset	21085,#4
9528                     ; 2317 }
9531  002d 5b03          	addw	sp,#3
9532  002f 81            	ret
9545                     	xdef	_TIM1_ClearITPendingBit
9546                     	xdef	_TIM1_GetITStatus
9547                     	xdef	_TIM1_ClearFlag
9548                     	xdef	_TIM1_GetFlagStatus
9549                     	xdef	_TIM1_GetPrescaler
9550                     	xdef	_TIM1_GetCounter
9551                     	xdef	_TIM1_GetCapture4
9552                     	xdef	_TIM1_GetCapture3
9553                     	xdef	_TIM1_GetCapture2
9554                     	xdef	_TIM1_GetCapture1
9555                     	xdef	_TIM1_SetIC4Prescaler
9556                     	xdef	_TIM1_SetIC3Prescaler
9557                     	xdef	_TIM1_SetIC2Prescaler
9558                     	xdef	_TIM1_SetIC1Prescaler
9559                     	xdef	_TIM1_SetCompare4
9560                     	xdef	_TIM1_SetCompare3
9561                     	xdef	_TIM1_SetCompare2
9562                     	xdef	_TIM1_SetCompare1
9563                     	xdef	_TIM1_SetAutoreload
9564                     	xdef	_TIM1_SetCounter
9565                     	xdef	_TIM1_SelectOCxM
9566                     	xdef	_TIM1_CCxNCmd
9567                     	xdef	_TIM1_CCxCmd
9568                     	xdef	_TIM1_OC4PolarityConfig
9569                     	xdef	_TIM1_OC3NPolarityConfig
9570                     	xdef	_TIM1_OC3PolarityConfig
9571                     	xdef	_TIM1_OC2NPolarityConfig
9572                     	xdef	_TIM1_OC2PolarityConfig
9573                     	xdef	_TIM1_OC1NPolarityConfig
9574                     	xdef	_TIM1_OC1PolarityConfig
9575                     	xdef	_TIM1_GenerateEvent
9576                     	xdef	_TIM1_OC4FastConfig
9577                     	xdef	_TIM1_OC3FastConfig
9578                     	xdef	_TIM1_OC2FastConfig
9579                     	xdef	_TIM1_OC1FastConfig
9580                     	xdef	_TIM1_OC4PreloadConfig
9581                     	xdef	_TIM1_OC3PreloadConfig
9582                     	xdef	_TIM1_OC2PreloadConfig
9583                     	xdef	_TIM1_OC1PreloadConfig
9584                     	xdef	_TIM1_CCPreloadControl
9585                     	xdef	_TIM1_SelectCOM
9586                     	xdef	_TIM1_ARRPreloadConfig
9587                     	xdef	_TIM1_ForcedOC4Config
9588                     	xdef	_TIM1_ForcedOC3Config
9589                     	xdef	_TIM1_ForcedOC2Config
9590                     	xdef	_TIM1_ForcedOC1Config
9591                     	xdef	_TIM1_CounterModeConfig
9592                     	xdef	_TIM1_PrescalerConfig
9593                     	xdef	_TIM1_EncoderInterfaceConfig
9594                     	xdef	_TIM1_SelectMasterSlaveMode
9595                     	xdef	_TIM1_SelectSlaveMode
9596                     	xdef	_TIM1_SelectOutputTrigger
9597                     	xdef	_TIM1_SelectOnePulseMode
9598                     	xdef	_TIM1_SelectHallSensor
9599                     	xdef	_TIM1_UpdateRequestConfig
9600                     	xdef	_TIM1_UpdateDisableConfig
9601                     	xdef	_TIM1_SelectInputTrigger
9602                     	xdef	_TIM1_TIxExternalClockConfig
9603                     	xdef	_TIM1_ETRConfig
9604                     	xdef	_TIM1_ETRClockMode2Config
9605                     	xdef	_TIM1_ETRClockMode1Config
9606                     	xdef	_TIM1_InternalClockConfig
9607                     	xdef	_TIM1_ITConfig
9608                     	xdef	_TIM1_CtrlPWMOutputs
9609                     	xdef	_TIM1_Cmd
9610                     	xdef	_TIM1_PWMIConfig
9611                     	xdef	_TIM1_ICInit
9612                     	xdef	_TIM1_BDTRConfig
9613                     	xdef	_TIM1_OC4Init
9614                     	xdef	_TIM1_OC3Init
9615                     	xdef	_TIM1_OC2Init
9616                     	xdef	_TIM1_OC1Init
9617                     	xdef	_TIM1_TimeBaseInit
9618                     	xdef	_TIM1_DeInit
9619                     	xref	_assert_failed
9620                     .const:	section	.text
9621  0000               L37:
9622  0000 7372635c7374  	dc.b	"src\stm8s_tim1.c",0
9642                     	end
