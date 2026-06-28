   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 52 void TIM2_DeInit(void)
  43                     ; 53 {
  45                     .text:	section	.text,new
  46  0000               _TIM2_DeInit:
  50                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  52  0000 725f5300      	clr	21248
  53                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  55  0004 725f5301      	clr	21249
  56                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  58  0008 725f5303      	clr	21251
  59                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  61  000c 725f5308      	clr	21256
  62                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  64  0010 725f5309      	clr	21257
  65                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  67  0014 725f5308      	clr	21256
  68                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  70  0018 725f5309      	clr	21257
  71                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  73  001c 725f5305      	clr	21253
  74                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  76  0020 725f5306      	clr	21254
  77                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  79  0024 725f5307      	clr	21255
  80                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  82  0028 725f530a      	clr	21258
  83                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  85  002c 725f530b      	clr	21259
  86                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  88  0030 725f530c      	clr	21260
  89                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  91  0034 35ff530d      	mov	21261,#255
  92                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  94  0038 35ff530e      	mov	21262,#255
  95                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  97  003c 725f530f      	clr	21263
  98                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 100  0040 725f5310      	clr	21264
 101                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 103  0044 725f5311      	clr	21265
 104                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 106  0048 725f5312      	clr	21266
 107                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 109  004c 725f5313      	clr	21267
 110                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 112  0050 725f5314      	clr	21268
 113                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 115  0054 725f5302      	clr	21250
 116                     ; 81 }
 119  0058 81            	ret
 285                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 285                     ; 90                         uint16_t TIM2_Period)
 285                     ; 91 {
 286                     .text:	section	.text,new
 287  0000               _TIM2_TimeBaseInit:
 289  0000 88            	push	a
 290       00000000      OFST:	set	0
 293                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 295  0001 c7530c        	ld	21260,a
 296                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 298  0004 7b04          	ld	a,(OFST+4,sp)
 299  0006 c7530d        	ld	21261,a
 300                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 302  0009 7b05          	ld	a,(OFST+5,sp)
 303  000b c7530e        	ld	21262,a
 304                     ; 97 }
 307  000e 84            	pop	a
 308  000f 81            	ret
 464                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 464                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 464                     ; 110                   uint16_t TIM2_Pulse,
 464                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 464                     ; 112 {
 465                     .text:	section	.text,new
 466  0000               _TIM2_OC1Init:
 468  0000 89            	pushw	x
 469  0001 88            	push	a
 470       00000001      OFST:	set	1
 473                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 475  0002 9e            	ld	a,xh
 476  0003 4d            	tnz	a
 477  0004 2719          	jreq	L41
 478  0006 9e            	ld	a,xh
 479  0007 a110          	cp	a,#16
 480  0009 2714          	jreq	L41
 481  000b 9e            	ld	a,xh
 482  000c a120          	cp	a,#32
 483  000e 270f          	jreq	L41
 484  0010 9e            	ld	a,xh
 485  0011 a130          	cp	a,#48
 486  0013 270a          	jreq	L41
 487  0015 9e            	ld	a,xh
 488  0016 a160          	cp	a,#96
 489  0018 2705          	jreq	L41
 490  001a 9e            	ld	a,xh
 491  001b a170          	cp	a,#112
 492  001d 2603          	jrne	L21
 493  001f               L41:
 494  001f 4f            	clr	a
 495  0020 2010          	jra	L61
 496  0022               L21:
 497  0022 ae0072        	ldw	x,#114
 498  0025 89            	pushw	x
 499  0026 ae0000        	ldw	x,#0
 500  0029 89            	pushw	x
 501  002a ae0000        	ldw	x,#L302
 502  002d cd0000        	call	_assert_failed
 504  0030 5b04          	addw	sp,#4
 505  0032               L61:
 506                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 508  0032 0d03          	tnz	(OFST+2,sp)
 509  0034 2706          	jreq	L22
 510  0036 7b03          	ld	a,(OFST+2,sp)
 511  0038 a111          	cp	a,#17
 512  003a 2603          	jrne	L02
 513  003c               L22:
 514  003c 4f            	clr	a
 515  003d 2010          	jra	L42
 516  003f               L02:
 517  003f ae0073        	ldw	x,#115
 518  0042 89            	pushw	x
 519  0043 ae0000        	ldw	x,#0
 520  0046 89            	pushw	x
 521  0047 ae0000        	ldw	x,#L302
 522  004a cd0000        	call	_assert_failed
 524  004d 5b04          	addw	sp,#4
 525  004f               L42:
 526                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 528  004f 0d08          	tnz	(OFST+7,sp)
 529  0051 2706          	jreq	L03
 530  0053 7b08          	ld	a,(OFST+7,sp)
 531  0055 a122          	cp	a,#34
 532  0057 2603          	jrne	L62
 533  0059               L03:
 534  0059 4f            	clr	a
 535  005a 2010          	jra	L23
 536  005c               L62:
 537  005c ae0074        	ldw	x,#116
 538  005f 89            	pushw	x
 539  0060 ae0000        	ldw	x,#0
 540  0063 89            	pushw	x
 541  0064 ae0000        	ldw	x,#L302
 542  0067 cd0000        	call	_assert_failed
 544  006a 5b04          	addw	sp,#4
 545  006c               L23:
 546                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 548  006c c65308        	ld	a,21256
 549  006f a4fc          	and	a,#252
 550  0071 c75308        	ld	21256,a
 551                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 551                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 553  0074 7b08          	ld	a,(OFST+7,sp)
 554  0076 a402          	and	a,#2
 555  0078 6b01          	ld	(OFST+0,sp),a
 557  007a 7b03          	ld	a,(OFST+2,sp)
 558  007c a401          	and	a,#1
 559  007e 1a01          	or	a,(OFST+0,sp)
 560  0080 ca5308        	or	a,21256
 561  0083 c75308        	ld	21256,a
 562                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 562                     ; 126                           (uint8_t)TIM2_OCMode);
 564  0086 c65305        	ld	a,21253
 565  0089 a48f          	and	a,#143
 566  008b 1a02          	or	a,(OFST+1,sp)
 567  008d c75305        	ld	21253,a
 568                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 570  0090 7b06          	ld	a,(OFST+5,sp)
 571  0092 c7530f        	ld	21263,a
 572                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 574  0095 7b07          	ld	a,(OFST+6,sp)
 575  0097 c75310        	ld	21264,a
 576                     ; 131 }
 579  009a 5b03          	addw	sp,#3
 580  009c 81            	ret
 643                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 643                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 643                     ; 144                   uint16_t TIM2_Pulse,
 643                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 643                     ; 146 {
 644                     .text:	section	.text,new
 645  0000               _TIM2_OC2Init:
 647  0000 89            	pushw	x
 648  0001 88            	push	a
 649       00000001      OFST:	set	1
 652                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 654  0002 9e            	ld	a,xh
 655  0003 4d            	tnz	a
 656  0004 2719          	jreq	L04
 657  0006 9e            	ld	a,xh
 658  0007 a110          	cp	a,#16
 659  0009 2714          	jreq	L04
 660  000b 9e            	ld	a,xh
 661  000c a120          	cp	a,#32
 662  000e 270f          	jreq	L04
 663  0010 9e            	ld	a,xh
 664  0011 a130          	cp	a,#48
 665  0013 270a          	jreq	L04
 666  0015 9e            	ld	a,xh
 667  0016 a160          	cp	a,#96
 668  0018 2705          	jreq	L04
 669  001a 9e            	ld	a,xh
 670  001b a170          	cp	a,#112
 671  001d 2603          	jrne	L63
 672  001f               L04:
 673  001f 4f            	clr	a
 674  0020 2010          	jra	L24
 675  0022               L63:
 676  0022 ae0094        	ldw	x,#148
 677  0025 89            	pushw	x
 678  0026 ae0000        	ldw	x,#0
 679  0029 89            	pushw	x
 680  002a ae0000        	ldw	x,#L302
 681  002d cd0000        	call	_assert_failed
 683  0030 5b04          	addw	sp,#4
 684  0032               L24:
 685                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 687  0032 0d03          	tnz	(OFST+2,sp)
 688  0034 2706          	jreq	L64
 689  0036 7b03          	ld	a,(OFST+2,sp)
 690  0038 a111          	cp	a,#17
 691  003a 2603          	jrne	L44
 692  003c               L64:
 693  003c 4f            	clr	a
 694  003d 2010          	jra	L05
 695  003f               L44:
 696  003f ae0095        	ldw	x,#149
 697  0042 89            	pushw	x
 698  0043 ae0000        	ldw	x,#0
 699  0046 89            	pushw	x
 700  0047 ae0000        	ldw	x,#L302
 701  004a cd0000        	call	_assert_failed
 703  004d 5b04          	addw	sp,#4
 704  004f               L05:
 705                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 707  004f 0d08          	tnz	(OFST+7,sp)
 708  0051 2706          	jreq	L45
 709  0053 7b08          	ld	a,(OFST+7,sp)
 710  0055 a122          	cp	a,#34
 711  0057 2603          	jrne	L25
 712  0059               L45:
 713  0059 4f            	clr	a
 714  005a 2010          	jra	L65
 715  005c               L25:
 716  005c ae0096        	ldw	x,#150
 717  005f 89            	pushw	x
 718  0060 ae0000        	ldw	x,#0
 719  0063 89            	pushw	x
 720  0064 ae0000        	ldw	x,#L302
 721  0067 cd0000        	call	_assert_failed
 723  006a 5b04          	addw	sp,#4
 724  006c               L65:
 725                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 727  006c c65308        	ld	a,21256
 728  006f a4cf          	and	a,#207
 729  0071 c75308        	ld	21256,a
 730                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 730                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 732  0074 7b08          	ld	a,(OFST+7,sp)
 733  0076 a420          	and	a,#32
 734  0078 6b01          	ld	(OFST+0,sp),a
 736  007a 7b03          	ld	a,(OFST+2,sp)
 737  007c a410          	and	a,#16
 738  007e 1a01          	or	a,(OFST+0,sp)
 739  0080 ca5308        	or	a,21256
 740  0083 c75308        	ld	21256,a
 741                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 741                     ; 162                           (uint8_t)TIM2_OCMode);
 743  0086 c65306        	ld	a,21254
 744  0089 a48f          	and	a,#143
 745  008b 1a02          	or	a,(OFST+1,sp)
 746  008d c75306        	ld	21254,a
 747                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 749  0090 7b06          	ld	a,(OFST+5,sp)
 750  0092 c75311        	ld	21265,a
 751                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 753  0095 7b07          	ld	a,(OFST+6,sp)
 754  0097 c75312        	ld	21266,a
 755                     ; 168 }
 758  009a 5b03          	addw	sp,#3
 759  009c 81            	ret
 822                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 822                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 822                     ; 181                   uint16_t TIM2_Pulse,
 822                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 822                     ; 183 {
 823                     .text:	section	.text,new
 824  0000               _TIM2_OC3Init:
 826  0000 89            	pushw	x
 827  0001 88            	push	a
 828       00000001      OFST:	set	1
 831                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 833  0002 9e            	ld	a,xh
 834  0003 4d            	tnz	a
 835  0004 2719          	jreq	L46
 836  0006 9e            	ld	a,xh
 837  0007 a110          	cp	a,#16
 838  0009 2714          	jreq	L46
 839  000b 9e            	ld	a,xh
 840  000c a120          	cp	a,#32
 841  000e 270f          	jreq	L46
 842  0010 9e            	ld	a,xh
 843  0011 a130          	cp	a,#48
 844  0013 270a          	jreq	L46
 845  0015 9e            	ld	a,xh
 846  0016 a160          	cp	a,#96
 847  0018 2705          	jreq	L46
 848  001a 9e            	ld	a,xh
 849  001b a170          	cp	a,#112
 850  001d 2603          	jrne	L26
 851  001f               L46:
 852  001f 4f            	clr	a
 853  0020 2010          	jra	L66
 854  0022               L26:
 855  0022 ae00b9        	ldw	x,#185
 856  0025 89            	pushw	x
 857  0026 ae0000        	ldw	x,#0
 858  0029 89            	pushw	x
 859  002a ae0000        	ldw	x,#L302
 860  002d cd0000        	call	_assert_failed
 862  0030 5b04          	addw	sp,#4
 863  0032               L66:
 864                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 866  0032 0d03          	tnz	(OFST+2,sp)
 867  0034 2706          	jreq	L27
 868  0036 7b03          	ld	a,(OFST+2,sp)
 869  0038 a111          	cp	a,#17
 870  003a 2603          	jrne	L07
 871  003c               L27:
 872  003c 4f            	clr	a
 873  003d 2010          	jra	L47
 874  003f               L07:
 875  003f ae00ba        	ldw	x,#186
 876  0042 89            	pushw	x
 877  0043 ae0000        	ldw	x,#0
 878  0046 89            	pushw	x
 879  0047 ae0000        	ldw	x,#L302
 880  004a cd0000        	call	_assert_failed
 882  004d 5b04          	addw	sp,#4
 883  004f               L47:
 884                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 886  004f 0d08          	tnz	(OFST+7,sp)
 887  0051 2706          	jreq	L001
 888  0053 7b08          	ld	a,(OFST+7,sp)
 889  0055 a122          	cp	a,#34
 890  0057 2603          	jrne	L67
 891  0059               L001:
 892  0059 4f            	clr	a
 893  005a 2010          	jra	L201
 894  005c               L67:
 895  005c ae00bb        	ldw	x,#187
 896  005f 89            	pushw	x
 897  0060 ae0000        	ldw	x,#0
 898  0063 89            	pushw	x
 899  0064 ae0000        	ldw	x,#L302
 900  0067 cd0000        	call	_assert_failed
 902  006a 5b04          	addw	sp,#4
 903  006c               L201:
 904                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 906  006c c65309        	ld	a,21257
 907  006f a4fc          	and	a,#252
 908  0071 c75309        	ld	21257,a
 909                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 909                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 911  0074 7b08          	ld	a,(OFST+7,sp)
 912  0076 a402          	and	a,#2
 913  0078 6b01          	ld	(OFST+0,sp),a
 915  007a 7b03          	ld	a,(OFST+2,sp)
 916  007c a401          	and	a,#1
 917  007e 1a01          	or	a,(OFST+0,sp)
 918  0080 ca5309        	or	a,21257
 919  0083 c75309        	ld	21257,a
 920                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 920                     ; 196                           (uint8_t)TIM2_OCMode);
 922  0086 c65307        	ld	a,21255
 923  0089 a48f          	and	a,#143
 924  008b 1a02          	or	a,(OFST+1,sp)
 925  008d c75307        	ld	21255,a
 926                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 928  0090 7b06          	ld	a,(OFST+5,sp)
 929  0092 c75313        	ld	21267,a
 930                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 932  0095 7b07          	ld	a,(OFST+6,sp)
 933  0097 c75314        	ld	21268,a
 934                     ; 201 }
 937  009a 5b03          	addw	sp,#3
 938  009c 81            	ret
1130                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1130                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1130                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1130                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1130                     ; 216                  uint8_t TIM2_ICFilter)
1130                     ; 217 {
1131                     .text:	section	.text,new
1132  0000               _TIM2_ICInit:
1134  0000 89            	pushw	x
1135       00000000      OFST:	set	0
1138                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1140  0001 9e            	ld	a,xh
1141  0002 4d            	tnz	a
1142  0003 270a          	jreq	L011
1143  0005 9e            	ld	a,xh
1144  0006 a101          	cp	a,#1
1145  0008 2705          	jreq	L011
1146  000a 9e            	ld	a,xh
1147  000b a102          	cp	a,#2
1148  000d 2603          	jrne	L601
1149  000f               L011:
1150  000f 4f            	clr	a
1151  0010 2010          	jra	L211
1152  0012               L601:
1153  0012 ae00db        	ldw	x,#219
1154  0015 89            	pushw	x
1155  0016 ae0000        	ldw	x,#0
1156  0019 89            	pushw	x
1157  001a ae0000        	ldw	x,#L302
1158  001d cd0000        	call	_assert_failed
1160  0020 5b04          	addw	sp,#4
1161  0022               L211:
1162                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1164  0022 0d02          	tnz	(OFST+2,sp)
1165  0024 2706          	jreq	L611
1166  0026 7b02          	ld	a,(OFST+2,sp)
1167  0028 a144          	cp	a,#68
1168  002a 2603          	jrne	L411
1169  002c               L611:
1170  002c 4f            	clr	a
1171  002d 2010          	jra	L021
1172  002f               L411:
1173  002f ae00dc        	ldw	x,#220
1174  0032 89            	pushw	x
1175  0033 ae0000        	ldw	x,#0
1176  0036 89            	pushw	x
1177  0037 ae0000        	ldw	x,#L302
1178  003a cd0000        	call	_assert_failed
1180  003d 5b04          	addw	sp,#4
1181  003f               L021:
1182                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1184  003f 7b05          	ld	a,(OFST+5,sp)
1185  0041 a101          	cp	a,#1
1186  0043 270c          	jreq	L421
1187  0045 7b05          	ld	a,(OFST+5,sp)
1188  0047 a102          	cp	a,#2
1189  0049 2706          	jreq	L421
1190  004b 7b05          	ld	a,(OFST+5,sp)
1191  004d a103          	cp	a,#3
1192  004f 2603          	jrne	L221
1193  0051               L421:
1194  0051 4f            	clr	a
1195  0052 2010          	jra	L621
1196  0054               L221:
1197  0054 ae00dd        	ldw	x,#221
1198  0057 89            	pushw	x
1199  0058 ae0000        	ldw	x,#0
1200  005b 89            	pushw	x
1201  005c ae0000        	ldw	x,#L302
1202  005f cd0000        	call	_assert_failed
1204  0062 5b04          	addw	sp,#4
1205  0064               L621:
1206                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1208  0064 0d06          	tnz	(OFST+6,sp)
1209  0066 2712          	jreq	L231
1210  0068 7b06          	ld	a,(OFST+6,sp)
1211  006a a104          	cp	a,#4
1212  006c 270c          	jreq	L231
1213  006e 7b06          	ld	a,(OFST+6,sp)
1214  0070 a108          	cp	a,#8
1215  0072 2706          	jreq	L231
1216  0074 7b06          	ld	a,(OFST+6,sp)
1217  0076 a10c          	cp	a,#12
1218  0078 2603          	jrne	L031
1219  007a               L231:
1220  007a 4f            	clr	a
1221  007b 2010          	jra	L431
1222  007d               L031:
1223  007d ae00de        	ldw	x,#222
1224  0080 89            	pushw	x
1225  0081 ae0000        	ldw	x,#0
1226  0084 89            	pushw	x
1227  0085 ae0000        	ldw	x,#L302
1228  0088 cd0000        	call	_assert_failed
1230  008b 5b04          	addw	sp,#4
1231  008d               L431:
1232                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1234  008d 7b07          	ld	a,(OFST+7,sp)
1235  008f a110          	cp	a,#16
1236  0091 2403          	jruge	L631
1237  0093 4f            	clr	a
1238  0094 2010          	jra	L041
1239  0096               L631:
1240  0096 ae00df        	ldw	x,#223
1241  0099 89            	pushw	x
1242  009a ae0000        	ldw	x,#0
1243  009d 89            	pushw	x
1244  009e ae0000        	ldw	x,#L302
1245  00a1 cd0000        	call	_assert_failed
1247  00a4 5b04          	addw	sp,#4
1248  00a6               L041:
1249                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1251  00a6 0d01          	tnz	(OFST+1,sp)
1252  00a8 2614          	jrne	L173
1253                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1253                     ; 229                (uint8_t)TIM2_ICSelection,
1253                     ; 230                (uint8_t)TIM2_ICFilter);
1255  00aa 7b07          	ld	a,(OFST+7,sp)
1256  00ac 88            	push	a
1257  00ad 7b06          	ld	a,(OFST+6,sp)
1258  00af 97            	ld	xl,a
1259  00b0 7b03          	ld	a,(OFST+3,sp)
1260  00b2 95            	ld	xh,a
1261  00b3 cd0000        	call	L3_TI1_Config
1263  00b6 84            	pop	a
1264                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1266  00b7 7b06          	ld	a,(OFST+6,sp)
1267  00b9 cd0000        	call	_TIM2_SetIC1Prescaler
1270  00bc 202c          	jra	L373
1271  00be               L173:
1272                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1274  00be 7b01          	ld	a,(OFST+1,sp)
1275  00c0 a101          	cp	a,#1
1276  00c2 2614          	jrne	L573
1277                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1277                     ; 239                (uint8_t)TIM2_ICSelection,
1277                     ; 240                (uint8_t)TIM2_ICFilter);
1279  00c4 7b07          	ld	a,(OFST+7,sp)
1280  00c6 88            	push	a
1281  00c7 7b06          	ld	a,(OFST+6,sp)
1282  00c9 97            	ld	xl,a
1283  00ca 7b03          	ld	a,(OFST+3,sp)
1284  00cc 95            	ld	xh,a
1285  00cd cd0000        	call	L5_TI2_Config
1287  00d0 84            	pop	a
1288                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1290  00d1 7b06          	ld	a,(OFST+6,sp)
1291  00d3 cd0000        	call	_TIM2_SetIC2Prescaler
1294  00d6 2012          	jra	L373
1295  00d8               L573:
1296                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1296                     ; 249                (uint8_t)TIM2_ICSelection,
1296                     ; 250                (uint8_t)TIM2_ICFilter);
1298  00d8 7b07          	ld	a,(OFST+7,sp)
1299  00da 88            	push	a
1300  00db 7b06          	ld	a,(OFST+6,sp)
1301  00dd 97            	ld	xl,a
1302  00de 7b03          	ld	a,(OFST+3,sp)
1303  00e0 95            	ld	xh,a
1304  00e1 cd0000        	call	L7_TI3_Config
1306  00e4 84            	pop	a
1307                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1309  00e5 7b06          	ld	a,(OFST+6,sp)
1310  00e7 cd0000        	call	_TIM2_SetIC3Prescaler
1312  00ea               L373:
1313                     ; 255 }
1316  00ea 85            	popw	x
1317  00eb 81            	ret
1408                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1408                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1408                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1408                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1408                     ; 270                      uint8_t TIM2_ICFilter)
1408                     ; 271 {
1409                     .text:	section	.text,new
1410  0000               _TIM2_PWMIConfig:
1412  0000 89            	pushw	x
1413  0001 89            	pushw	x
1414       00000002      OFST:	set	2
1417                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1419                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1421                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1423  0002 9e            	ld	a,xh
1424  0003 4d            	tnz	a
1425  0004 2705          	jreq	L641
1426  0006 9e            	ld	a,xh
1427  0007 a101          	cp	a,#1
1428  0009 2603          	jrne	L441
1429  000b               L641:
1430  000b 4f            	clr	a
1431  000c 2010          	jra	L051
1432  000e               L441:
1433  000e ae0114        	ldw	x,#276
1434  0011 89            	pushw	x
1435  0012 ae0000        	ldw	x,#0
1436  0015 89            	pushw	x
1437  0016 ae0000        	ldw	x,#L302
1438  0019 cd0000        	call	_assert_failed
1440  001c 5b04          	addw	sp,#4
1441  001e               L051:
1442                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1444  001e 0d04          	tnz	(OFST+2,sp)
1445  0020 2706          	jreq	L451
1446  0022 7b04          	ld	a,(OFST+2,sp)
1447  0024 a144          	cp	a,#68
1448  0026 2603          	jrne	L251
1449  0028               L451:
1450  0028 4f            	clr	a
1451  0029 2010          	jra	L651
1452  002b               L251:
1453  002b ae0115        	ldw	x,#277
1454  002e 89            	pushw	x
1455  002f ae0000        	ldw	x,#0
1456  0032 89            	pushw	x
1457  0033 ae0000        	ldw	x,#L302
1458  0036 cd0000        	call	_assert_failed
1460  0039 5b04          	addw	sp,#4
1461  003b               L651:
1462                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1464  003b 7b07          	ld	a,(OFST+5,sp)
1465  003d a101          	cp	a,#1
1466  003f 270c          	jreq	L261
1467  0041 7b07          	ld	a,(OFST+5,sp)
1468  0043 a102          	cp	a,#2
1469  0045 2706          	jreq	L261
1470  0047 7b07          	ld	a,(OFST+5,sp)
1471  0049 a103          	cp	a,#3
1472  004b 2603          	jrne	L061
1473  004d               L261:
1474  004d 4f            	clr	a
1475  004e 2010          	jra	L461
1476  0050               L061:
1477  0050 ae0116        	ldw	x,#278
1478  0053 89            	pushw	x
1479  0054 ae0000        	ldw	x,#0
1480  0057 89            	pushw	x
1481  0058 ae0000        	ldw	x,#L302
1482  005b cd0000        	call	_assert_failed
1484  005e 5b04          	addw	sp,#4
1485  0060               L461:
1486                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1488  0060 0d08          	tnz	(OFST+6,sp)
1489  0062 2712          	jreq	L071
1490  0064 7b08          	ld	a,(OFST+6,sp)
1491  0066 a104          	cp	a,#4
1492  0068 270c          	jreq	L071
1493  006a 7b08          	ld	a,(OFST+6,sp)
1494  006c a108          	cp	a,#8
1495  006e 2706          	jreq	L071
1496  0070 7b08          	ld	a,(OFST+6,sp)
1497  0072 a10c          	cp	a,#12
1498  0074 2603          	jrne	L661
1499  0076               L071:
1500  0076 4f            	clr	a
1501  0077 2010          	jra	L271
1502  0079               L661:
1503  0079 ae0117        	ldw	x,#279
1504  007c 89            	pushw	x
1505  007d ae0000        	ldw	x,#0
1506  0080 89            	pushw	x
1507  0081 ae0000        	ldw	x,#L302
1508  0084 cd0000        	call	_assert_failed
1510  0087 5b04          	addw	sp,#4
1511  0089               L271:
1512                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1514  0089 7b04          	ld	a,(OFST+2,sp)
1515  008b a144          	cp	a,#68
1516  008d 2706          	jreq	L144
1517                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1519  008f a644          	ld	a,#68
1520  0091 6b01          	ld	(OFST-1,sp),a
1523  0093 2002          	jra	L344
1524  0095               L144:
1525                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1527  0095 0f01          	clr	(OFST-1,sp)
1529  0097               L344:
1530                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1532  0097 7b07          	ld	a,(OFST+5,sp)
1533  0099 a101          	cp	a,#1
1534  009b 2606          	jrne	L544
1535                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1537  009d a602          	ld	a,#2
1538  009f 6b02          	ld	(OFST+0,sp),a
1541  00a1 2004          	jra	L744
1542  00a3               L544:
1543                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1545  00a3 a601          	ld	a,#1
1546  00a5 6b02          	ld	(OFST+0,sp),a
1548  00a7               L744:
1549                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1551  00a7 0d03          	tnz	(OFST+1,sp)
1552  00a9 2626          	jrne	L154
1553                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1553                     ; 305                (uint8_t)TIM2_ICFilter);
1555  00ab 7b09          	ld	a,(OFST+7,sp)
1556  00ad 88            	push	a
1557  00ae 7b08          	ld	a,(OFST+6,sp)
1558  00b0 97            	ld	xl,a
1559  00b1 7b05          	ld	a,(OFST+3,sp)
1560  00b3 95            	ld	xh,a
1561  00b4 cd0000        	call	L3_TI1_Config
1563  00b7 84            	pop	a
1564                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1566  00b8 7b08          	ld	a,(OFST+6,sp)
1567  00ba cd0000        	call	_TIM2_SetIC1Prescaler
1569                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1571  00bd 7b09          	ld	a,(OFST+7,sp)
1572  00bf 88            	push	a
1573  00c0 7b03          	ld	a,(OFST+1,sp)
1574  00c2 97            	ld	xl,a
1575  00c3 7b02          	ld	a,(OFST+0,sp)
1576  00c5 95            	ld	xh,a
1577  00c6 cd0000        	call	L5_TI2_Config
1579  00c9 84            	pop	a
1580                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1582  00ca 7b08          	ld	a,(OFST+6,sp)
1583  00cc cd0000        	call	_TIM2_SetIC2Prescaler
1586  00cf 2024          	jra	L354
1587  00d1               L154:
1588                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1588                     ; 320                (uint8_t)TIM2_ICFilter);
1590  00d1 7b09          	ld	a,(OFST+7,sp)
1591  00d3 88            	push	a
1592  00d4 7b08          	ld	a,(OFST+6,sp)
1593  00d6 97            	ld	xl,a
1594  00d7 7b05          	ld	a,(OFST+3,sp)
1595  00d9 95            	ld	xh,a
1596  00da cd0000        	call	L5_TI2_Config
1598  00dd 84            	pop	a
1599                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1601  00de 7b08          	ld	a,(OFST+6,sp)
1602  00e0 cd0000        	call	_TIM2_SetIC2Prescaler
1604                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1606  00e3 7b09          	ld	a,(OFST+7,sp)
1607  00e5 88            	push	a
1608  00e6 7b03          	ld	a,(OFST+1,sp)
1609  00e8 97            	ld	xl,a
1610  00e9 7b02          	ld	a,(OFST+0,sp)
1611  00eb 95            	ld	xh,a
1612  00ec cd0000        	call	L3_TI1_Config
1614  00ef 84            	pop	a
1615                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1617  00f0 7b08          	ld	a,(OFST+6,sp)
1618  00f2 cd0000        	call	_TIM2_SetIC1Prescaler
1620  00f5               L354:
1621                     ; 331 }
1624  00f5 5b04          	addw	sp,#4
1625  00f7 81            	ret
1681                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1681                     ; 340 {
1682                     .text:	section	.text,new
1683  0000               _TIM2_Cmd:
1685  0000 88            	push	a
1686       00000000      OFST:	set	0
1689                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1691  0001 4d            	tnz	a
1692  0002 2704          	jreq	L002
1693  0004 a101          	cp	a,#1
1694  0006 2603          	jrne	L671
1695  0008               L002:
1696  0008 4f            	clr	a
1697  0009 2010          	jra	L202
1698  000b               L671:
1699  000b ae0156        	ldw	x,#342
1700  000e 89            	pushw	x
1701  000f ae0000        	ldw	x,#0
1702  0012 89            	pushw	x
1703  0013 ae0000        	ldw	x,#L302
1704  0016 cd0000        	call	_assert_failed
1706  0019 5b04          	addw	sp,#4
1707  001b               L202:
1708                     ; 345   if (NewState != DISABLE)
1710  001b 0d01          	tnz	(OFST+1,sp)
1711  001d 2706          	jreq	L305
1712                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1714  001f 72105300      	bset	21248,#0
1716  0023 2004          	jra	L505
1717  0025               L305:
1718                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1720  0025 72115300      	bres	21248,#0
1721  0029               L505:
1722                     ; 353 }
1725  0029 84            	pop	a
1726  002a 81            	ret
1806                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1806                     ; 369 {
1807                     .text:	section	.text,new
1808  0000               _TIM2_ITConfig:
1810  0000 89            	pushw	x
1811       00000000      OFST:	set	0
1814                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1816  0001 9e            	ld	a,xh
1817  0002 4d            	tnz	a
1818  0003 2708          	jreq	L602
1819  0005 9e            	ld	a,xh
1820  0006 a110          	cp	a,#16
1821  0008 2403          	jruge	L602
1822  000a 4f            	clr	a
1823  000b 2010          	jra	L012
1824  000d               L602:
1825  000d ae0173        	ldw	x,#371
1826  0010 89            	pushw	x
1827  0011 ae0000        	ldw	x,#0
1828  0014 89            	pushw	x
1829  0015 ae0000        	ldw	x,#L302
1830  0018 cd0000        	call	_assert_failed
1832  001b 5b04          	addw	sp,#4
1833  001d               L012:
1834                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1836  001d 0d02          	tnz	(OFST+2,sp)
1837  001f 2706          	jreq	L412
1838  0021 7b02          	ld	a,(OFST+2,sp)
1839  0023 a101          	cp	a,#1
1840  0025 2603          	jrne	L212
1841  0027               L412:
1842  0027 4f            	clr	a
1843  0028 2010          	jra	L612
1844  002a               L212:
1845  002a ae0174        	ldw	x,#372
1846  002d 89            	pushw	x
1847  002e ae0000        	ldw	x,#0
1848  0031 89            	pushw	x
1849  0032 ae0000        	ldw	x,#L302
1850  0035 cd0000        	call	_assert_failed
1852  0038 5b04          	addw	sp,#4
1853  003a               L612:
1854                     ; 374   if (NewState != DISABLE)
1856  003a 0d02          	tnz	(OFST+2,sp)
1857  003c 270a          	jreq	L545
1858                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1860  003e c65301        	ld	a,21249
1861  0041 1a01          	or	a,(OFST+1,sp)
1862  0043 c75301        	ld	21249,a
1864  0046 2009          	jra	L745
1865  0048               L545:
1866                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1868  0048 7b01          	ld	a,(OFST+1,sp)
1869  004a 43            	cpl	a
1870  004b c45301        	and	a,21249
1871  004e c75301        	ld	21249,a
1872  0051               L745:
1873                     ; 384 }
1876  0051 85            	popw	x
1877  0052 81            	ret
1914                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1914                     ; 393 {
1915                     .text:	section	.text,new
1916  0000               _TIM2_UpdateDisableConfig:
1918  0000 88            	push	a
1919       00000000      OFST:	set	0
1922                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1924  0001 4d            	tnz	a
1925  0002 2704          	jreq	L422
1926  0004 a101          	cp	a,#1
1927  0006 2603          	jrne	L222
1928  0008               L422:
1929  0008 4f            	clr	a
1930  0009 2010          	jra	L622
1931  000b               L222:
1932  000b ae018b        	ldw	x,#395
1933  000e 89            	pushw	x
1934  000f ae0000        	ldw	x,#0
1935  0012 89            	pushw	x
1936  0013 ae0000        	ldw	x,#L302
1937  0016 cd0000        	call	_assert_failed
1939  0019 5b04          	addw	sp,#4
1940  001b               L622:
1941                     ; 398   if (NewState != DISABLE)
1943  001b 0d01          	tnz	(OFST+1,sp)
1944  001d 2706          	jreq	L765
1945                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1947  001f 72125300      	bset	21248,#1
1949  0023 2004          	jra	L175
1950  0025               L765:
1951                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1953  0025 72135300      	bres	21248,#1
1954  0029               L175:
1955                     ; 406 }
1958  0029 84            	pop	a
1959  002a 81            	ret
2018                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2018                     ; 417 {
2019                     .text:	section	.text,new
2020  0000               _TIM2_UpdateRequestConfig:
2022  0000 88            	push	a
2023       00000000      OFST:	set	0
2026                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2028  0001 4d            	tnz	a
2029  0002 2704          	jreq	L432
2030  0004 a101          	cp	a,#1
2031  0006 2603          	jrne	L232
2032  0008               L432:
2033  0008 4f            	clr	a
2034  0009 2010          	jra	L632
2035  000b               L232:
2036  000b ae01a3        	ldw	x,#419
2037  000e 89            	pushw	x
2038  000f ae0000        	ldw	x,#0
2039  0012 89            	pushw	x
2040  0013 ae0000        	ldw	x,#L302
2041  0016 cd0000        	call	_assert_failed
2043  0019 5b04          	addw	sp,#4
2044  001b               L632:
2045                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2047  001b 0d01          	tnz	(OFST+1,sp)
2048  001d 2706          	jreq	L126
2049                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2051  001f 72145300      	bset	21248,#2
2053  0023 2004          	jra	L326
2054  0025               L126:
2055                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2057  0025 72155300      	bres	21248,#2
2058  0029               L326:
2059                     ; 430 }
2062  0029 84            	pop	a
2063  002a 81            	ret
2121                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2121                     ; 441 {
2122                     .text:	section	.text,new
2123  0000               _TIM2_SelectOnePulseMode:
2125  0000 88            	push	a
2126       00000000      OFST:	set	0
2129                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2131  0001 a101          	cp	a,#1
2132  0003 2703          	jreq	L442
2133  0005 4d            	tnz	a
2134  0006 2603          	jrne	L242
2135  0008               L442:
2136  0008 4f            	clr	a
2137  0009 2010          	jra	L642
2138  000b               L242:
2139  000b ae01bb        	ldw	x,#443
2140  000e 89            	pushw	x
2141  000f ae0000        	ldw	x,#0
2142  0012 89            	pushw	x
2143  0013 ae0000        	ldw	x,#L302
2144  0016 cd0000        	call	_assert_failed
2146  0019 5b04          	addw	sp,#4
2147  001b               L642:
2148                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2150  001b 0d01          	tnz	(OFST+1,sp)
2151  001d 2706          	jreq	L356
2152                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2154  001f 72165300      	bset	21248,#3
2156  0023 2004          	jra	L556
2157  0025               L356:
2158                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2160  0025 72175300      	bres	21248,#3
2161  0029               L556:
2162                     ; 454 }
2165  0029 84            	pop	a
2166  002a 81            	ret
2235                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2235                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2235                     ; 486 {
2236                     .text:	section	.text,new
2237  0000               _TIM2_PrescalerConfig:
2239  0000 89            	pushw	x
2240       00000000      OFST:	set	0
2243                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2245  0001 9f            	ld	a,xl
2246  0002 4d            	tnz	a
2247  0003 2705          	jreq	L452
2248  0005 9f            	ld	a,xl
2249  0006 a101          	cp	a,#1
2250  0008 2603          	jrne	L252
2251  000a               L452:
2252  000a 4f            	clr	a
2253  000b 2010          	jra	L652
2254  000d               L252:
2255  000d ae01e8        	ldw	x,#488
2256  0010 89            	pushw	x
2257  0011 ae0000        	ldw	x,#0
2258  0014 89            	pushw	x
2259  0015 ae0000        	ldw	x,#L302
2260  0018 cd0000        	call	_assert_failed
2262  001b 5b04          	addw	sp,#4
2263  001d               L652:
2264                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2266  001d 0d01          	tnz	(OFST+1,sp)
2267  001f 275a          	jreq	L262
2268  0021 7b01          	ld	a,(OFST+1,sp)
2269  0023 a101          	cp	a,#1
2270  0025 2754          	jreq	L262
2271  0027 7b01          	ld	a,(OFST+1,sp)
2272  0029 a102          	cp	a,#2
2273  002b 274e          	jreq	L262
2274  002d 7b01          	ld	a,(OFST+1,sp)
2275  002f a103          	cp	a,#3
2276  0031 2748          	jreq	L262
2277  0033 7b01          	ld	a,(OFST+1,sp)
2278  0035 a104          	cp	a,#4
2279  0037 2742          	jreq	L262
2280  0039 7b01          	ld	a,(OFST+1,sp)
2281  003b a105          	cp	a,#5
2282  003d 273c          	jreq	L262
2283  003f 7b01          	ld	a,(OFST+1,sp)
2284  0041 a106          	cp	a,#6
2285  0043 2736          	jreq	L262
2286  0045 7b01          	ld	a,(OFST+1,sp)
2287  0047 a107          	cp	a,#7
2288  0049 2730          	jreq	L262
2289  004b 7b01          	ld	a,(OFST+1,sp)
2290  004d a108          	cp	a,#8
2291  004f 272a          	jreq	L262
2292  0051 7b01          	ld	a,(OFST+1,sp)
2293  0053 a109          	cp	a,#9
2294  0055 2724          	jreq	L262
2295  0057 7b01          	ld	a,(OFST+1,sp)
2296  0059 a10a          	cp	a,#10
2297  005b 271e          	jreq	L262
2298  005d 7b01          	ld	a,(OFST+1,sp)
2299  005f a10b          	cp	a,#11
2300  0061 2718          	jreq	L262
2301  0063 7b01          	ld	a,(OFST+1,sp)
2302  0065 a10c          	cp	a,#12
2303  0067 2712          	jreq	L262
2304  0069 7b01          	ld	a,(OFST+1,sp)
2305  006b a10d          	cp	a,#13
2306  006d 270c          	jreq	L262
2307  006f 7b01          	ld	a,(OFST+1,sp)
2308  0071 a10e          	cp	a,#14
2309  0073 2706          	jreq	L262
2310  0075 7b01          	ld	a,(OFST+1,sp)
2311  0077 a10f          	cp	a,#15
2312  0079 2603          	jrne	L062
2313  007b               L262:
2314  007b 4f            	clr	a
2315  007c 2010          	jra	L462
2316  007e               L062:
2317  007e ae01e9        	ldw	x,#489
2318  0081 89            	pushw	x
2319  0082 ae0000        	ldw	x,#0
2320  0085 89            	pushw	x
2321  0086 ae0000        	ldw	x,#L302
2322  0089 cd0000        	call	_assert_failed
2324  008c 5b04          	addw	sp,#4
2325  008e               L462:
2326                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2328  008e 7b01          	ld	a,(OFST+1,sp)
2329  0090 c7530c        	ld	21260,a
2330                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2332  0093 7b02          	ld	a,(OFST+2,sp)
2333  0095 c75304        	ld	21252,a
2334                     ; 496 }
2337  0098 85            	popw	x
2338  0099 81            	ret
2397                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2397                     ; 508 {
2398                     .text:	section	.text,new
2399  0000               _TIM2_ForcedOC1Config:
2401  0000 88            	push	a
2402       00000000      OFST:	set	0
2405                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2407  0001 a150          	cp	a,#80
2408  0003 2704          	jreq	L272
2409  0005 a140          	cp	a,#64
2410  0007 2603          	jrne	L072
2411  0009               L272:
2412  0009 4f            	clr	a
2413  000a 2010          	jra	L472
2414  000c               L072:
2415  000c ae01fe        	ldw	x,#510
2416  000f 89            	pushw	x
2417  0010 ae0000        	ldw	x,#0
2418  0013 89            	pushw	x
2419  0014 ae0000        	ldw	x,#L302
2420  0017 cd0000        	call	_assert_failed
2422  001a 5b04          	addw	sp,#4
2423  001c               L472:
2424                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2424                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2426  001c c65305        	ld	a,21253
2427  001f a48f          	and	a,#143
2428  0021 1a01          	or	a,(OFST+1,sp)
2429  0023 c75305        	ld	21253,a
2430                     ; 515 }
2433  0026 84            	pop	a
2434  0027 81            	ret
2471                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2471                     ; 527 {
2472                     .text:	section	.text,new
2473  0000               _TIM2_ForcedOC2Config:
2475  0000 88            	push	a
2476       00000000      OFST:	set	0
2479                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2481  0001 a150          	cp	a,#80
2482  0003 2704          	jreq	L203
2483  0005 a140          	cp	a,#64
2484  0007 2603          	jrne	L003
2485  0009               L203:
2486  0009 4f            	clr	a
2487  000a 2010          	jra	L403
2488  000c               L003:
2489  000c ae0211        	ldw	x,#529
2490  000f 89            	pushw	x
2491  0010 ae0000        	ldw	x,#0
2492  0013 89            	pushw	x
2493  0014 ae0000        	ldw	x,#L302
2494  0017 cd0000        	call	_assert_failed
2496  001a 5b04          	addw	sp,#4
2497  001c               L403:
2498                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2498                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2500  001c c65306        	ld	a,21254
2501  001f a48f          	and	a,#143
2502  0021 1a01          	or	a,(OFST+1,sp)
2503  0023 c75306        	ld	21254,a
2504                     ; 534 }
2507  0026 84            	pop	a
2508  0027 81            	ret
2545                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2545                     ; 546 {
2546                     .text:	section	.text,new
2547  0000               _TIM2_ForcedOC3Config:
2549  0000 88            	push	a
2550       00000000      OFST:	set	0
2553                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2555  0001 a150          	cp	a,#80
2556  0003 2704          	jreq	L213
2557  0005 a140          	cp	a,#64
2558  0007 2603          	jrne	L013
2559  0009               L213:
2560  0009 4f            	clr	a
2561  000a 2010          	jra	L413
2562  000c               L013:
2563  000c ae0224        	ldw	x,#548
2564  000f 89            	pushw	x
2565  0010 ae0000        	ldw	x,#0
2566  0013 89            	pushw	x
2567  0014 ae0000        	ldw	x,#L302
2568  0017 cd0000        	call	_assert_failed
2570  001a 5b04          	addw	sp,#4
2571  001c               L413:
2572                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2572                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2574  001c c65307        	ld	a,21255
2575  001f a48f          	and	a,#143
2576  0021 1a01          	or	a,(OFST+1,sp)
2577  0023 c75307        	ld	21255,a
2578                     ; 553 }
2581  0026 84            	pop	a
2582  0027 81            	ret
2619                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2619                     ; 562 {
2620                     .text:	section	.text,new
2621  0000               _TIM2_ARRPreloadConfig:
2623  0000 88            	push	a
2624       00000000      OFST:	set	0
2627                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2629  0001 4d            	tnz	a
2630  0002 2704          	jreq	L223
2631  0004 a101          	cp	a,#1
2632  0006 2603          	jrne	L023
2633  0008               L223:
2634  0008 4f            	clr	a
2635  0009 2010          	jra	L423
2636  000b               L023:
2637  000b ae0234        	ldw	x,#564
2638  000e 89            	pushw	x
2639  000f ae0000        	ldw	x,#0
2640  0012 89            	pushw	x
2641  0013 ae0000        	ldw	x,#L302
2642  0016 cd0000        	call	_assert_failed
2644  0019 5b04          	addw	sp,#4
2645  001b               L423:
2646                     ; 567   if (NewState != DISABLE)
2648  001b 0d01          	tnz	(OFST+1,sp)
2649  001d 2706          	jreq	L1101
2650                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2652  001f 721e5300      	bset	21248,#7
2654  0023 2004          	jra	L3101
2655  0025               L1101:
2656                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2658  0025 721f5300      	bres	21248,#7
2659  0029               L3101:
2660                     ; 575 }
2663  0029 84            	pop	a
2664  002a 81            	ret
2701                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2701                     ; 584 {
2702                     .text:	section	.text,new
2703  0000               _TIM2_OC1PreloadConfig:
2705  0000 88            	push	a
2706       00000000      OFST:	set	0
2709                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2711  0001 4d            	tnz	a
2712  0002 2704          	jreq	L233
2713  0004 a101          	cp	a,#1
2714  0006 2603          	jrne	L033
2715  0008               L233:
2716  0008 4f            	clr	a
2717  0009 2010          	jra	L433
2718  000b               L033:
2719  000b ae024a        	ldw	x,#586
2720  000e 89            	pushw	x
2721  000f ae0000        	ldw	x,#0
2722  0012 89            	pushw	x
2723  0013 ae0000        	ldw	x,#L302
2724  0016 cd0000        	call	_assert_failed
2726  0019 5b04          	addw	sp,#4
2727  001b               L433:
2728                     ; 589   if (NewState != DISABLE)
2730  001b 0d01          	tnz	(OFST+1,sp)
2731  001d 2706          	jreq	L3301
2732                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2734  001f 72165305      	bset	21253,#3
2736  0023 2004          	jra	L5301
2737  0025               L3301:
2738                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2740  0025 72175305      	bres	21253,#3
2741  0029               L5301:
2742                     ; 597 }
2745  0029 84            	pop	a
2746  002a 81            	ret
2783                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2783                     ; 606 {
2784                     .text:	section	.text,new
2785  0000               _TIM2_OC2PreloadConfig:
2787  0000 88            	push	a
2788       00000000      OFST:	set	0
2791                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2793  0001 4d            	tnz	a
2794  0002 2704          	jreq	L243
2795  0004 a101          	cp	a,#1
2796  0006 2603          	jrne	L043
2797  0008               L243:
2798  0008 4f            	clr	a
2799  0009 2010          	jra	L443
2800  000b               L043:
2801  000b ae0260        	ldw	x,#608
2802  000e 89            	pushw	x
2803  000f ae0000        	ldw	x,#0
2804  0012 89            	pushw	x
2805  0013 ae0000        	ldw	x,#L302
2806  0016 cd0000        	call	_assert_failed
2808  0019 5b04          	addw	sp,#4
2809  001b               L443:
2810                     ; 611   if (NewState != DISABLE)
2812  001b 0d01          	tnz	(OFST+1,sp)
2813  001d 2706          	jreq	L5501
2814                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2816  001f 72165306      	bset	21254,#3
2818  0023 2004          	jra	L7501
2819  0025               L5501:
2820                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2822  0025 72175306      	bres	21254,#3
2823  0029               L7501:
2824                     ; 619 }
2827  0029 84            	pop	a
2828  002a 81            	ret
2865                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2865                     ; 628 {
2866                     .text:	section	.text,new
2867  0000               _TIM2_OC3PreloadConfig:
2869  0000 88            	push	a
2870       00000000      OFST:	set	0
2873                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2875  0001 4d            	tnz	a
2876  0002 2704          	jreq	L253
2877  0004 a101          	cp	a,#1
2878  0006 2603          	jrne	L053
2879  0008               L253:
2880  0008 4f            	clr	a
2881  0009 2010          	jra	L453
2882  000b               L053:
2883  000b ae0276        	ldw	x,#630
2884  000e 89            	pushw	x
2885  000f ae0000        	ldw	x,#0
2886  0012 89            	pushw	x
2887  0013 ae0000        	ldw	x,#L302
2888  0016 cd0000        	call	_assert_failed
2890  0019 5b04          	addw	sp,#4
2891  001b               L453:
2892                     ; 633   if (NewState != DISABLE)
2894  001b 0d01          	tnz	(OFST+1,sp)
2895  001d 2706          	jreq	L7701
2896                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2898  001f 72165307      	bset	21255,#3
2900  0023 2004          	jra	L1011
2901  0025               L7701:
2902                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2904  0025 72175307      	bres	21255,#3
2905  0029               L1011:
2906                     ; 641 }
2909  0029 84            	pop	a
2910  002a 81            	ret
2984                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2984                     ; 654 {
2985                     .text:	section	.text,new
2986  0000               _TIM2_GenerateEvent:
2988  0000 88            	push	a
2989       00000000      OFST:	set	0
2992                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2994  0001 4d            	tnz	a
2995  0002 2703          	jreq	L063
2996  0004 4f            	clr	a
2997  0005 2010          	jra	L263
2998  0007               L063:
2999  0007 ae0290        	ldw	x,#656
3000  000a 89            	pushw	x
3001  000b ae0000        	ldw	x,#0
3002  000e 89            	pushw	x
3003  000f ae0000        	ldw	x,#L302
3004  0012 cd0000        	call	_assert_failed
3006  0015 5b04          	addw	sp,#4
3007  0017               L263:
3008                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3010  0017 7b01          	ld	a,(OFST+1,sp)
3011  0019 c75304        	ld	21252,a
3012                     ; 660 }
3015  001c 84            	pop	a
3016  001d 81            	ret
3053                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3053                     ; 671 {
3054                     .text:	section	.text,new
3055  0000               _TIM2_OC1PolarityConfig:
3057  0000 88            	push	a
3058       00000000      OFST:	set	0
3061                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3063  0001 4d            	tnz	a
3064  0002 2704          	jreq	L073
3065  0004 a122          	cp	a,#34
3066  0006 2603          	jrne	L663
3067  0008               L073:
3068  0008 4f            	clr	a
3069  0009 2010          	jra	L273
3070  000b               L663:
3071  000b ae02a1        	ldw	x,#673
3072  000e 89            	pushw	x
3073  000f ae0000        	ldw	x,#0
3074  0012 89            	pushw	x
3075  0013 ae0000        	ldw	x,#L302
3076  0016 cd0000        	call	_assert_failed
3078  0019 5b04          	addw	sp,#4
3079  001b               L273:
3080                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3082  001b 0d01          	tnz	(OFST+1,sp)
3083  001d 2706          	jreq	L3511
3084                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3086  001f 72125308      	bset	21256,#1
3088  0023 2004          	jra	L5511
3089  0025               L3511:
3090                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3092  0025 72135308      	bres	21256,#1
3093  0029               L5511:
3094                     ; 684 }
3097  0029 84            	pop	a
3098  002a 81            	ret
3135                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3135                     ; 695 {
3136                     .text:	section	.text,new
3137  0000               _TIM2_OC2PolarityConfig:
3139  0000 88            	push	a
3140       00000000      OFST:	set	0
3143                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3145  0001 4d            	tnz	a
3146  0002 2704          	jreq	L004
3147  0004 a122          	cp	a,#34
3148  0006 2603          	jrne	L673
3149  0008               L004:
3150  0008 4f            	clr	a
3151  0009 2010          	jra	L204
3152  000b               L673:
3153  000b ae02b9        	ldw	x,#697
3154  000e 89            	pushw	x
3155  000f ae0000        	ldw	x,#0
3156  0012 89            	pushw	x
3157  0013 ae0000        	ldw	x,#L302
3158  0016 cd0000        	call	_assert_failed
3160  0019 5b04          	addw	sp,#4
3161  001b               L204:
3162                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3164  001b 0d01          	tnz	(OFST+1,sp)
3165  001d 2706          	jreq	L5711
3166                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3168  001f 721a5308      	bset	21256,#5
3170  0023 2004          	jra	L7711
3171  0025               L5711:
3172                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3174  0025 721b5308      	bres	21256,#5
3175  0029               L7711:
3176                     ; 708 }
3179  0029 84            	pop	a
3180  002a 81            	ret
3217                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3217                     ; 719 {
3218                     .text:	section	.text,new
3219  0000               _TIM2_OC3PolarityConfig:
3221  0000 88            	push	a
3222       00000000      OFST:	set	0
3225                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3227  0001 4d            	tnz	a
3228  0002 2704          	jreq	L014
3229  0004 a122          	cp	a,#34
3230  0006 2603          	jrne	L604
3231  0008               L014:
3232  0008 4f            	clr	a
3233  0009 2010          	jra	L214
3234  000b               L604:
3235  000b ae02d1        	ldw	x,#721
3236  000e 89            	pushw	x
3237  000f ae0000        	ldw	x,#0
3238  0012 89            	pushw	x
3239  0013 ae0000        	ldw	x,#L302
3240  0016 cd0000        	call	_assert_failed
3242  0019 5b04          	addw	sp,#4
3243  001b               L214:
3244                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3246  001b 0d01          	tnz	(OFST+1,sp)
3247  001d 2706          	jreq	L7121
3248                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3250  001f 72125309      	bset	21257,#1
3252  0023 2004          	jra	L1221
3253  0025               L7121:
3254                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3256  0025 72135309      	bres	21257,#1
3257  0029               L1221:
3258                     ; 732 }
3261  0029 84            	pop	a
3262  002a 81            	ret
3308                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3308                     ; 746 {
3309                     .text:	section	.text,new
3310  0000               _TIM2_CCxCmd:
3312  0000 89            	pushw	x
3313       00000000      OFST:	set	0
3316                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3318  0001 9e            	ld	a,xh
3319  0002 4d            	tnz	a
3320  0003 270a          	jreq	L024
3321  0005 9e            	ld	a,xh
3322  0006 a101          	cp	a,#1
3323  0008 2705          	jreq	L024
3324  000a 9e            	ld	a,xh
3325  000b a102          	cp	a,#2
3326  000d 2603          	jrne	L614
3327  000f               L024:
3328  000f 4f            	clr	a
3329  0010 2010          	jra	L224
3330  0012               L614:
3331  0012 ae02ec        	ldw	x,#748
3332  0015 89            	pushw	x
3333  0016 ae0000        	ldw	x,#0
3334  0019 89            	pushw	x
3335  001a ae0000        	ldw	x,#L302
3336  001d cd0000        	call	_assert_failed
3338  0020 5b04          	addw	sp,#4
3339  0022               L224:
3340                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3342  0022 0d02          	tnz	(OFST+2,sp)
3343  0024 2706          	jreq	L624
3344  0026 7b02          	ld	a,(OFST+2,sp)
3345  0028 a101          	cp	a,#1
3346  002a 2603          	jrne	L424
3347  002c               L624:
3348  002c 4f            	clr	a
3349  002d 2010          	jra	L034
3350  002f               L424:
3351  002f ae02ed        	ldw	x,#749
3352  0032 89            	pushw	x
3353  0033 ae0000        	ldw	x,#0
3354  0036 89            	pushw	x
3355  0037 ae0000        	ldw	x,#L302
3356  003a cd0000        	call	_assert_failed
3358  003d 5b04          	addw	sp,#4
3359  003f               L034:
3360                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3362  003f 0d01          	tnz	(OFST+1,sp)
3363  0041 2610          	jrne	L5421
3364                     ; 754     if (NewState != DISABLE)
3366  0043 0d02          	tnz	(OFST+2,sp)
3367  0045 2706          	jreq	L7421
3368                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3370  0047 72105308      	bset	21256,#0
3372  004b 202a          	jra	L3521
3373  004d               L7421:
3374                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3376  004d 72115308      	bres	21256,#0
3377  0051 2024          	jra	L3521
3378  0053               L5421:
3379                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3381  0053 7b01          	ld	a,(OFST+1,sp)
3382  0055 a101          	cp	a,#1
3383  0057 2610          	jrne	L5521
3384                     ; 767     if (NewState != DISABLE)
3386  0059 0d02          	tnz	(OFST+2,sp)
3387  005b 2706          	jreq	L7521
3388                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3390  005d 72185308      	bset	21256,#4
3392  0061 2014          	jra	L3521
3393  0063               L7521:
3394                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3396  0063 72195308      	bres	21256,#4
3397  0067 200e          	jra	L3521
3398  0069               L5521:
3399                     ; 779     if (NewState != DISABLE)
3401  0069 0d02          	tnz	(OFST+2,sp)
3402  006b 2706          	jreq	L5621
3403                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3405  006d 72105309      	bset	21257,#0
3407  0071 2004          	jra	L3521
3408  0073               L5621:
3409                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3411  0073 72115309      	bres	21257,#0
3412  0077               L3521:
3413                     ; 788 }
3416  0077 85            	popw	x
3417  0078 81            	ret
3463                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3463                     ; 811 {
3464                     .text:	section	.text,new
3465  0000               _TIM2_SelectOCxM:
3467  0000 89            	pushw	x
3468       00000000      OFST:	set	0
3471                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3473  0001 9e            	ld	a,xh
3474  0002 4d            	tnz	a
3475  0003 270a          	jreq	L634
3476  0005 9e            	ld	a,xh
3477  0006 a101          	cp	a,#1
3478  0008 2705          	jreq	L634
3479  000a 9e            	ld	a,xh
3480  000b a102          	cp	a,#2
3481  000d 2603          	jrne	L434
3482  000f               L634:
3483  000f 4f            	clr	a
3484  0010 2010          	jra	L044
3485  0012               L434:
3486  0012 ae032d        	ldw	x,#813
3487  0015 89            	pushw	x
3488  0016 ae0000        	ldw	x,#0
3489  0019 89            	pushw	x
3490  001a ae0000        	ldw	x,#L302
3491  001d cd0000        	call	_assert_failed
3493  0020 5b04          	addw	sp,#4
3494  0022               L044:
3495                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3497  0022 0d02          	tnz	(OFST+2,sp)
3498  0024 272a          	jreq	L444
3499  0026 7b02          	ld	a,(OFST+2,sp)
3500  0028 a110          	cp	a,#16
3501  002a 2724          	jreq	L444
3502  002c 7b02          	ld	a,(OFST+2,sp)
3503  002e a120          	cp	a,#32
3504  0030 271e          	jreq	L444
3505  0032 7b02          	ld	a,(OFST+2,sp)
3506  0034 a130          	cp	a,#48
3507  0036 2718          	jreq	L444
3508  0038 7b02          	ld	a,(OFST+2,sp)
3509  003a a160          	cp	a,#96
3510  003c 2712          	jreq	L444
3511  003e 7b02          	ld	a,(OFST+2,sp)
3512  0040 a170          	cp	a,#112
3513  0042 270c          	jreq	L444
3514  0044 7b02          	ld	a,(OFST+2,sp)
3515  0046 a150          	cp	a,#80
3516  0048 2706          	jreq	L444
3517  004a 7b02          	ld	a,(OFST+2,sp)
3518  004c a140          	cp	a,#64
3519  004e 2603          	jrne	L244
3520  0050               L444:
3521  0050 4f            	clr	a
3522  0051 2010          	jra	L644
3523  0053               L244:
3524  0053 ae032e        	ldw	x,#814
3525  0056 89            	pushw	x
3526  0057 ae0000        	ldw	x,#0
3527  005a 89            	pushw	x
3528  005b ae0000        	ldw	x,#L302
3529  005e cd0000        	call	_assert_failed
3531  0061 5b04          	addw	sp,#4
3532  0063               L644:
3533                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3535  0063 0d01          	tnz	(OFST+1,sp)
3536  0065 2610          	jrne	L3131
3537                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3539  0067 72115308      	bres	21256,#0
3540                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3540                     ; 823                             | (uint8_t)TIM2_OCMode);
3542  006b c65305        	ld	a,21253
3543  006e a48f          	and	a,#143
3544  0070 1a02          	or	a,(OFST+2,sp)
3545  0072 c75305        	ld	21253,a
3547  0075 2024          	jra	L5131
3548  0077               L3131:
3549                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3551  0077 7b01          	ld	a,(OFST+1,sp)
3552  0079 a101          	cp	a,#1
3553  007b 2610          	jrne	L7131
3554                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3556  007d 72195308      	bres	21256,#4
3557                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3557                     ; 832                             | (uint8_t)TIM2_OCMode);
3559  0081 c65306        	ld	a,21254
3560  0084 a48f          	and	a,#143
3561  0086 1a02          	or	a,(OFST+2,sp)
3562  0088 c75306        	ld	21254,a
3564  008b 200e          	jra	L5131
3565  008d               L7131:
3566                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3568  008d 72115309      	bres	21257,#0
3569                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3569                     ; 841                             | (uint8_t)TIM2_OCMode);
3571  0091 c65307        	ld	a,21255
3572  0094 a48f          	and	a,#143
3573  0096 1a02          	or	a,(OFST+2,sp)
3574  0098 c75307        	ld	21255,a
3575  009b               L5131:
3576                     ; 843 }
3579  009b 85            	popw	x
3580  009c 81            	ret
3612                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3612                     ; 852 {
3613                     .text:	section	.text,new
3614  0000               _TIM2_SetCounter:
3618                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3620  0000 9e            	ld	a,xh
3621  0001 c7530a        	ld	21258,a
3622                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3624  0004 9f            	ld	a,xl
3625  0005 c7530b        	ld	21259,a
3626                     ; 856 }
3629  0008 81            	ret
3661                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3661                     ; 865 {
3662                     .text:	section	.text,new
3663  0000               _TIM2_SetAutoreload:
3667                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3669  0000 9e            	ld	a,xh
3670  0001 c7530d        	ld	21261,a
3671                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3673  0004 9f            	ld	a,xl
3674  0005 c7530e        	ld	21262,a
3675                     ; 869 }
3678  0008 81            	ret
3710                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3710                     ; 878 {
3711                     .text:	section	.text,new
3712  0000               _TIM2_SetCompare1:
3716                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3718  0000 9e            	ld	a,xh
3719  0001 c7530f        	ld	21263,a
3720                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3722  0004 9f            	ld	a,xl
3723  0005 c75310        	ld	21264,a
3724                     ; 882 }
3727  0008 81            	ret
3759                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3759                     ; 891 {
3760                     .text:	section	.text,new
3761  0000               _TIM2_SetCompare2:
3765                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3767  0000 9e            	ld	a,xh
3768  0001 c75311        	ld	21265,a
3769                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3771  0004 9f            	ld	a,xl
3772  0005 c75312        	ld	21266,a
3773                     ; 895 }
3776  0008 81            	ret
3808                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3808                     ; 904 {
3809                     .text:	section	.text,new
3810  0000               _TIM2_SetCompare3:
3814                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3816  0000 9e            	ld	a,xh
3817  0001 c75313        	ld	21267,a
3818                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3820  0004 9f            	ld	a,xl
3821  0005 c75314        	ld	21268,a
3822                     ; 908 }
3825  0008 81            	ret
3862                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3862                     ; 921 {
3863                     .text:	section	.text,new
3864  0000               _TIM2_SetIC1Prescaler:
3866  0000 88            	push	a
3867       00000000      OFST:	set	0
3870                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3872  0001 4d            	tnz	a
3873  0002 270c          	jreq	L664
3874  0004 a104          	cp	a,#4
3875  0006 2708          	jreq	L664
3876  0008 a108          	cp	a,#8
3877  000a 2704          	jreq	L664
3878  000c a10c          	cp	a,#12
3879  000e 2603          	jrne	L464
3880  0010               L664:
3881  0010 4f            	clr	a
3882  0011 2010          	jra	L074
3883  0013               L464:
3884  0013 ae039b        	ldw	x,#923
3885  0016 89            	pushw	x
3886  0017 ae0000        	ldw	x,#0
3887  001a 89            	pushw	x
3888  001b ae0000        	ldw	x,#L302
3889  001e cd0000        	call	_assert_failed
3891  0021 5b04          	addw	sp,#4
3892  0023               L074:
3893                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3893                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3895  0023 c65305        	ld	a,21253
3896  0026 a4f3          	and	a,#243
3897  0028 1a01          	or	a,(OFST+1,sp)
3898  002a c75305        	ld	21253,a
3899                     ; 928 }
3902  002d 84            	pop	a
3903  002e 81            	ret
3940                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3940                     ; 941 {
3941                     .text:	section	.text,new
3942  0000               _TIM2_SetIC2Prescaler:
3944  0000 88            	push	a
3945       00000000      OFST:	set	0
3948                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3950  0001 4d            	tnz	a
3951  0002 270c          	jreq	L674
3952  0004 a104          	cp	a,#4
3953  0006 2708          	jreq	L674
3954  0008 a108          	cp	a,#8
3955  000a 2704          	jreq	L674
3956  000c a10c          	cp	a,#12
3957  000e 2603          	jrne	L474
3958  0010               L674:
3959  0010 4f            	clr	a
3960  0011 2010          	jra	L005
3961  0013               L474:
3962  0013 ae03af        	ldw	x,#943
3963  0016 89            	pushw	x
3964  0017 ae0000        	ldw	x,#0
3965  001a 89            	pushw	x
3966  001b ae0000        	ldw	x,#L302
3967  001e cd0000        	call	_assert_failed
3969  0021 5b04          	addw	sp,#4
3970  0023               L005:
3971                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3971                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3973  0023 c65306        	ld	a,21254
3974  0026 a4f3          	and	a,#243
3975  0028 1a01          	or	a,(OFST+1,sp)
3976  002a c75306        	ld	21254,a
3977                     ; 948 }
3980  002d 84            	pop	a
3981  002e 81            	ret
4018                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4018                     ; 961 {
4019                     .text:	section	.text,new
4020  0000               _TIM2_SetIC3Prescaler:
4022  0000 88            	push	a
4023       00000000      OFST:	set	0
4026                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4028  0001 4d            	tnz	a
4029  0002 270c          	jreq	L605
4030  0004 a104          	cp	a,#4
4031  0006 2708          	jreq	L605
4032  0008 a108          	cp	a,#8
4033  000a 2704          	jreq	L605
4034  000c a10c          	cp	a,#12
4035  000e 2603          	jrne	L405
4036  0010               L605:
4037  0010 4f            	clr	a
4038  0011 2010          	jra	L015
4039  0013               L405:
4040  0013 ae03c4        	ldw	x,#964
4041  0016 89            	pushw	x
4042  0017 ae0000        	ldw	x,#0
4043  001a 89            	pushw	x
4044  001b ae0000        	ldw	x,#L302
4045  001e cd0000        	call	_assert_failed
4047  0021 5b04          	addw	sp,#4
4048  0023               L015:
4049                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4049                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4051  0023 c65307        	ld	a,21255
4052  0026 a4f3          	and	a,#243
4053  0028 1a01          	or	a,(OFST+1,sp)
4054  002a c75307        	ld	21255,a
4055                     ; 968 }
4058  002d 84            	pop	a
4059  002e 81            	ret
4105                     ; 975 uint16_t TIM2_GetCapture1(void)
4105                     ; 976 {
4106                     .text:	section	.text,new
4107  0000               _TIM2_GetCapture1:
4109  0000 5204          	subw	sp,#4
4110       00000004      OFST:	set	4
4113                     ; 978   uint16_t tmpccr1 = 0;
4115                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4119                     ; 981   tmpccr1h = TIM2->CCR1H;
4121  0002 c6530f        	ld	a,21263
4122  0005 6b02          	ld	(OFST-2,sp),a
4124                     ; 982   tmpccr1l = TIM2->CCR1L;
4126  0007 c65310        	ld	a,21264
4127  000a 6b01          	ld	(OFST-3,sp),a
4129                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4131  000c 7b01          	ld	a,(OFST-3,sp)
4132  000e 5f            	clrw	x
4133  000f 97            	ld	xl,a
4134  0010 1f03          	ldw	(OFST-1,sp),x
4136                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4138  0012 7b02          	ld	a,(OFST-2,sp)
4139  0014 5f            	clrw	x
4140  0015 97            	ld	xl,a
4141  0016 4f            	clr	a
4142  0017 02            	rlwa	x,a
4143  0018 01            	rrwa	x,a
4144  0019 1a04          	or	a,(OFST+0,sp)
4145  001b 01            	rrwa	x,a
4146  001c 1a03          	or	a,(OFST-1,sp)
4147  001e 01            	rrwa	x,a
4148  001f 1f03          	ldw	(OFST-1,sp),x
4150                     ; 987   return (uint16_t)tmpccr1;
4152  0021 1e03          	ldw	x,(OFST-1,sp)
4155  0023 5b04          	addw	sp,#4
4156  0025 81            	ret
4202                     ; 995 uint16_t TIM2_GetCapture2(void)
4202                     ; 996 {
4203                     .text:	section	.text,new
4204  0000               _TIM2_GetCapture2:
4206  0000 5204          	subw	sp,#4
4207       00000004      OFST:	set	4
4210                     ; 998   uint16_t tmpccr2 = 0;
4212                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4216                     ; 1001   tmpccr2h = TIM2->CCR2H;
4218  0002 c65311        	ld	a,21265
4219  0005 6b02          	ld	(OFST-2,sp),a
4221                     ; 1002   tmpccr2l = TIM2->CCR2L;
4223  0007 c65312        	ld	a,21266
4224  000a 6b01          	ld	(OFST-3,sp),a
4226                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4228  000c 7b01          	ld	a,(OFST-3,sp)
4229  000e 5f            	clrw	x
4230  000f 97            	ld	xl,a
4231  0010 1f03          	ldw	(OFST-1,sp),x
4233                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4235  0012 7b02          	ld	a,(OFST-2,sp)
4236  0014 5f            	clrw	x
4237  0015 97            	ld	xl,a
4238  0016 4f            	clr	a
4239  0017 02            	rlwa	x,a
4240  0018 01            	rrwa	x,a
4241  0019 1a04          	or	a,(OFST+0,sp)
4242  001b 01            	rrwa	x,a
4243  001c 1a03          	or	a,(OFST-1,sp)
4244  001e 01            	rrwa	x,a
4245  001f 1f03          	ldw	(OFST-1,sp),x
4247                     ; 1007   return (uint16_t)tmpccr2;
4249  0021 1e03          	ldw	x,(OFST-1,sp)
4252  0023 5b04          	addw	sp,#4
4253  0025 81            	ret
4299                     ; 1015 uint16_t TIM2_GetCapture3(void)
4299                     ; 1016 {
4300                     .text:	section	.text,new
4301  0000               _TIM2_GetCapture3:
4303  0000 5204          	subw	sp,#4
4304       00000004      OFST:	set	4
4307                     ; 1018   uint16_t tmpccr3 = 0;
4309                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4313                     ; 1021   tmpccr3h = TIM2->CCR3H;
4315  0002 c65313        	ld	a,21267
4316  0005 6b02          	ld	(OFST-2,sp),a
4318                     ; 1022   tmpccr3l = TIM2->CCR3L;
4320  0007 c65314        	ld	a,21268
4321  000a 6b01          	ld	(OFST-3,sp),a
4323                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4325  000c 7b01          	ld	a,(OFST-3,sp)
4326  000e 5f            	clrw	x
4327  000f 97            	ld	xl,a
4328  0010 1f03          	ldw	(OFST-1,sp),x
4330                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4332  0012 7b02          	ld	a,(OFST-2,sp)
4333  0014 5f            	clrw	x
4334  0015 97            	ld	xl,a
4335  0016 4f            	clr	a
4336  0017 02            	rlwa	x,a
4337  0018 01            	rrwa	x,a
4338  0019 1a04          	or	a,(OFST+0,sp)
4339  001b 01            	rrwa	x,a
4340  001c 1a03          	or	a,(OFST-1,sp)
4341  001e 01            	rrwa	x,a
4342  001f 1f03          	ldw	(OFST-1,sp),x
4344                     ; 1027   return (uint16_t)tmpccr3;
4346  0021 1e03          	ldw	x,(OFST-1,sp)
4349  0023 5b04          	addw	sp,#4
4350  0025 81            	ret
4382                     ; 1035 uint16_t TIM2_GetCounter(void)
4382                     ; 1036 {
4383                     .text:	section	.text,new
4384  0000               _TIM2_GetCounter:
4386  0000 89            	pushw	x
4387       00000002      OFST:	set	2
4390                     ; 1037   uint16_t tmpcntr = 0;
4392                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4394  0001 c6530a        	ld	a,21258
4395  0004 5f            	clrw	x
4396  0005 97            	ld	xl,a
4397  0006 4f            	clr	a
4398  0007 02            	rlwa	x,a
4399  0008 1f01          	ldw	(OFST-1,sp),x
4401                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4403  000a c6530b        	ld	a,21259
4404  000d 5f            	clrw	x
4405  000e 97            	ld	xl,a
4406  000f 01            	rrwa	x,a
4407  0010 1a02          	or	a,(OFST+0,sp)
4408  0012 01            	rrwa	x,a
4409  0013 1a01          	or	a,(OFST-1,sp)
4410  0015 01            	rrwa	x,a
4413  0016 5b02          	addw	sp,#2
4414  0018 81            	ret
4438                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4438                     ; 1050 {
4439                     .text:	section	.text,new
4440  0000               _TIM2_GetPrescaler:
4444                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4446  0000 c6530c        	ld	a,21260
4449  0003 81            	ret
4585                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4585                     ; 1069 {
4586                     .text:	section	.text,new
4587  0000               _TIM2_GetFlagStatus:
4589  0000 89            	pushw	x
4590  0001 89            	pushw	x
4591       00000002      OFST:	set	2
4594                     ; 1070   FlagStatus bitstatus = RESET;
4596                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4600                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4602  0002 a30001        	cpw	x,#1
4603  0005 271e          	jreq	L035
4604  0007 a30002        	cpw	x,#2
4605  000a 2719          	jreq	L035
4606  000c a30004        	cpw	x,#4
4607  000f 2714          	jreq	L035
4608  0011 a30008        	cpw	x,#8
4609  0014 270f          	jreq	L035
4610  0016 a30200        	cpw	x,#512
4611  0019 270a          	jreq	L035
4612  001b a30400        	cpw	x,#1024
4613  001e 2705          	jreq	L035
4614  0020 a30800        	cpw	x,#2048
4615  0023 2603          	jrne	L625
4616  0025               L035:
4617  0025 4f            	clr	a
4618  0026 2010          	jra	L235
4619  0028               L625:
4620  0028 ae0432        	ldw	x,#1074
4621  002b 89            	pushw	x
4622  002c ae0000        	ldw	x,#0
4623  002f 89            	pushw	x
4624  0030 ae0000        	ldw	x,#L302
4625  0033 cd0000        	call	_assert_failed
4627  0036 5b04          	addw	sp,#4
4628  0038               L235:
4629                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4631  0038 c65302        	ld	a,21250
4632  003b 1404          	and	a,(OFST+2,sp)
4633  003d 6b01          	ld	(OFST-1,sp),a
4635                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4637  003f 7b03          	ld	a,(OFST+1,sp)
4638  0041 6b02          	ld	(OFST+0,sp),a
4640                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4642  0043 c65303        	ld	a,21251
4643  0046 1402          	and	a,(OFST+0,sp)
4644  0048 1a01          	or	a,(OFST-1,sp)
4645  004a 2706          	jreq	L5561
4646                     ; 1081     bitstatus = SET;
4648  004c a601          	ld	a,#1
4649  004e 6b02          	ld	(OFST+0,sp),a
4652  0050 2002          	jra	L7561
4653  0052               L5561:
4654                     ; 1085     bitstatus = RESET;
4656  0052 0f02          	clr	(OFST+0,sp)
4658  0054               L7561:
4659                     ; 1087   return (FlagStatus)bitstatus;
4661  0054 7b02          	ld	a,(OFST+0,sp)
4664  0056 5b04          	addw	sp,#4
4665  0058 81            	ret
4701                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4701                     ; 1104 {
4702                     .text:	section	.text,new
4703  0000               _TIM2_ClearFlag:
4705  0000 89            	pushw	x
4706       00000000      OFST:	set	0
4709                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4711  0001 01            	rrwa	x,a
4712  0002 a4f0          	and	a,#240
4713  0004 01            	rrwa	x,a
4714  0005 a4f1          	and	a,#241
4715  0007 01            	rrwa	x,a
4716  0008 a30000        	cpw	x,#0
4717  000b 2607          	jrne	L635
4718  000d 1e01          	ldw	x,(OFST+1,sp)
4719  000f 2703          	jreq	L635
4720  0011 4f            	clr	a
4721  0012 2010          	jra	L045
4722  0014               L635:
4723  0014 ae0452        	ldw	x,#1106
4724  0017 89            	pushw	x
4725  0018 ae0000        	ldw	x,#0
4726  001b 89            	pushw	x
4727  001c ae0000        	ldw	x,#L302
4728  001f cd0000        	call	_assert_failed
4730  0022 5b04          	addw	sp,#4
4731  0024               L045:
4732                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4734  0024 7b02          	ld	a,(OFST+2,sp)
4735  0026 43            	cpl	a
4736  0027 c75302        	ld	21250,a
4737                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4739  002a 35ff5303      	mov	21251,#255
4740                     ; 1111 }
4743  002e 85            	popw	x
4744  002f 81            	ret
4805                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4805                     ; 1124 {
4806                     .text:	section	.text,new
4807  0000               _TIM2_GetITStatus:
4809  0000 88            	push	a
4810  0001 89            	pushw	x
4811       00000002      OFST:	set	2
4814                     ; 1125   ITStatus bitstatus = RESET;
4816                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4820                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4822  0002 a101          	cp	a,#1
4823  0004 270c          	jreq	L645
4824  0006 a102          	cp	a,#2
4825  0008 2708          	jreq	L645
4826  000a a104          	cp	a,#4
4827  000c 2704          	jreq	L645
4828  000e a108          	cp	a,#8
4829  0010 2603          	jrne	L445
4830  0012               L645:
4831  0012 4f            	clr	a
4832  0013 2010          	jra	L055
4833  0015               L445:
4834  0015 ae0469        	ldw	x,#1129
4835  0018 89            	pushw	x
4836  0019 ae0000        	ldw	x,#0
4837  001c 89            	pushw	x
4838  001d ae0000        	ldw	x,#L302
4839  0020 cd0000        	call	_assert_failed
4841  0023 5b04          	addw	sp,#4
4842  0025               L055:
4843                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4845  0025 c65302        	ld	a,21250
4846  0028 1403          	and	a,(OFST+1,sp)
4847  002a 6b01          	ld	(OFST-1,sp),a
4849                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4851  002c c65301        	ld	a,21249
4852  002f 1403          	and	a,(OFST+1,sp)
4853  0031 6b02          	ld	(OFST+0,sp),a
4855                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4857  0033 0d01          	tnz	(OFST-1,sp)
4858  0035 270a          	jreq	L5271
4860  0037 0d02          	tnz	(OFST+0,sp)
4861  0039 2706          	jreq	L5271
4862                     ; 1137     bitstatus = SET;
4864  003b a601          	ld	a,#1
4865  003d 6b02          	ld	(OFST+0,sp),a
4868  003f 2002          	jra	L7271
4869  0041               L5271:
4870                     ; 1141     bitstatus = RESET;
4872  0041 0f02          	clr	(OFST+0,sp)
4874  0043               L7271:
4875                     ; 1143   return (ITStatus)(bitstatus);
4877  0043 7b02          	ld	a,(OFST+0,sp)
4880  0045 5b03          	addw	sp,#3
4881  0047 81            	ret
4918                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4918                     ; 1157 {
4919                     .text:	section	.text,new
4920  0000               _TIM2_ClearITPendingBit:
4922  0000 88            	push	a
4923       00000000      OFST:	set	0
4926                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4928  0001 4d            	tnz	a
4929  0002 2707          	jreq	L455
4930  0004 a110          	cp	a,#16
4931  0006 2403          	jruge	L455
4932  0008 4f            	clr	a
4933  0009 2010          	jra	L655
4934  000b               L455:
4935  000b ae0487        	ldw	x,#1159
4936  000e 89            	pushw	x
4937  000f ae0000        	ldw	x,#0
4938  0012 89            	pushw	x
4939  0013 ae0000        	ldw	x,#L302
4940  0016 cd0000        	call	_assert_failed
4942  0019 5b04          	addw	sp,#4
4943  001b               L655:
4944                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4946  001b 7b01          	ld	a,(OFST+1,sp)
4947  001d 43            	cpl	a
4948  001e c75302        	ld	21250,a
4949                     ; 1163 }
4952  0021 84            	pop	a
4953  0022 81            	ret
4999                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4999                     ; 1182                        uint8_t TIM2_ICSelection,
4999                     ; 1183                        uint8_t TIM2_ICFilter)
4999                     ; 1184 {
5000                     .text:	section	.text,new
5001  0000               L3_TI1_Config:
5003  0000 89            	pushw	x
5004  0001 88            	push	a
5005       00000001      OFST:	set	1
5008                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
5010  0002 72115308      	bres	21256,#0
5011                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
5011                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5013  0006 7b06          	ld	a,(OFST+5,sp)
5014  0008 97            	ld	xl,a
5015  0009 a610          	ld	a,#16
5016  000b 42            	mul	x,a
5017  000c 9f            	ld	a,xl
5018  000d 1a03          	or	a,(OFST+2,sp)
5019  000f 6b01          	ld	(OFST+0,sp),a
5021  0011 c65305        	ld	a,21253
5022  0014 a40c          	and	a,#12
5023  0016 1a01          	or	a,(OFST+0,sp)
5024  0018 c75305        	ld	21253,a
5025                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5027  001b 0d02          	tnz	(OFST+1,sp)
5028  001d 2706          	jreq	L7671
5029                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5031  001f 72125308      	bset	21256,#1
5033  0023 2004          	jra	L1771
5034  0025               L7671:
5035                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5037  0025 72135308      	bres	21256,#1
5038  0029               L1771:
5039                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5041  0029 72105308      	bset	21256,#0
5042                     ; 1203 }
5045  002d 5b03          	addw	sp,#3
5046  002f 81            	ret
5092                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5092                     ; 1222                        uint8_t TIM2_ICSelection,
5092                     ; 1223                        uint8_t TIM2_ICFilter)
5092                     ; 1224 {
5093                     .text:	section	.text,new
5094  0000               L5_TI2_Config:
5096  0000 89            	pushw	x
5097  0001 88            	push	a
5098       00000001      OFST:	set	1
5101                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5103  0002 72195308      	bres	21256,#4
5104                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5104                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5106  0006 7b06          	ld	a,(OFST+5,sp)
5107  0008 97            	ld	xl,a
5108  0009 a610          	ld	a,#16
5109  000b 42            	mul	x,a
5110  000c 9f            	ld	a,xl
5111  000d 1a03          	or	a,(OFST+2,sp)
5112  000f 6b01          	ld	(OFST+0,sp),a
5114  0011 c65306        	ld	a,21254
5115  0014 a40c          	and	a,#12
5116  0016 1a01          	or	a,(OFST+0,sp)
5117  0018 c75306        	ld	21254,a
5118                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5120  001b 0d02          	tnz	(OFST+1,sp)
5121  001d 2706          	jreq	L3102
5122                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5124  001f 721a5308      	bset	21256,#5
5126  0023 2004          	jra	L5102
5127  0025               L3102:
5128                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5130  0025 721b5308      	bres	21256,#5
5131  0029               L5102:
5132                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5134  0029 72185308      	bset	21256,#4
5135                     ; 1245 }
5138  002d 5b03          	addw	sp,#3
5139  002f 81            	ret
5185                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5185                     ; 1262                        uint8_t TIM2_ICFilter)
5185                     ; 1263 {
5186                     .text:	section	.text,new
5187  0000               L7_TI3_Config:
5189  0000 89            	pushw	x
5190  0001 88            	push	a
5191       00000001      OFST:	set	1
5194                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5196  0002 72115309      	bres	21257,#0
5197                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5197                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5199  0006 7b06          	ld	a,(OFST+5,sp)
5200  0008 97            	ld	xl,a
5201  0009 a610          	ld	a,#16
5202  000b 42            	mul	x,a
5203  000c 9f            	ld	a,xl
5204  000d 1a03          	or	a,(OFST+2,sp)
5205  000f 6b01          	ld	(OFST+0,sp),a
5207  0011 c65307        	ld	a,21255
5208  0014 a40c          	and	a,#12
5209  0016 1a01          	or	a,(OFST+0,sp)
5210  0018 c75307        	ld	21255,a
5211                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5213  001b 0d02          	tnz	(OFST+1,sp)
5214  001d 2706          	jreq	L7302
5215                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5217  001f 72125309      	bset	21257,#1
5219  0023 2004          	jra	L1402
5220  0025               L7302:
5221                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5223  0025 72135309      	bres	21257,#1
5224  0029               L1402:
5225                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5227  0029 72105309      	bset	21257,#0
5228                     ; 1283 }
5231  002d 5b03          	addw	sp,#3
5232  002f 81            	ret
5245                     	xdef	_TIM2_ClearITPendingBit
5246                     	xdef	_TIM2_GetITStatus
5247                     	xdef	_TIM2_ClearFlag
5248                     	xdef	_TIM2_GetFlagStatus
5249                     	xdef	_TIM2_GetPrescaler
5250                     	xdef	_TIM2_GetCounter
5251                     	xdef	_TIM2_GetCapture3
5252                     	xdef	_TIM2_GetCapture2
5253                     	xdef	_TIM2_GetCapture1
5254                     	xdef	_TIM2_SetIC3Prescaler
5255                     	xdef	_TIM2_SetIC2Prescaler
5256                     	xdef	_TIM2_SetIC1Prescaler
5257                     	xdef	_TIM2_SetCompare3
5258                     	xdef	_TIM2_SetCompare2
5259                     	xdef	_TIM2_SetCompare1
5260                     	xdef	_TIM2_SetAutoreload
5261                     	xdef	_TIM2_SetCounter
5262                     	xdef	_TIM2_SelectOCxM
5263                     	xdef	_TIM2_CCxCmd
5264                     	xdef	_TIM2_OC3PolarityConfig
5265                     	xdef	_TIM2_OC2PolarityConfig
5266                     	xdef	_TIM2_OC1PolarityConfig
5267                     	xdef	_TIM2_GenerateEvent
5268                     	xdef	_TIM2_OC3PreloadConfig
5269                     	xdef	_TIM2_OC2PreloadConfig
5270                     	xdef	_TIM2_OC1PreloadConfig
5271                     	xdef	_TIM2_ARRPreloadConfig
5272                     	xdef	_TIM2_ForcedOC3Config
5273                     	xdef	_TIM2_ForcedOC2Config
5274                     	xdef	_TIM2_ForcedOC1Config
5275                     	xdef	_TIM2_PrescalerConfig
5276                     	xdef	_TIM2_SelectOnePulseMode
5277                     	xdef	_TIM2_UpdateRequestConfig
5278                     	xdef	_TIM2_UpdateDisableConfig
5279                     	xdef	_TIM2_ITConfig
5280                     	xdef	_TIM2_Cmd
5281                     	xdef	_TIM2_PWMIConfig
5282                     	xdef	_TIM2_ICInit
5283                     	xdef	_TIM2_OC3Init
5284                     	xdef	_TIM2_OC2Init
5285                     	xdef	_TIM2_OC1Init
5286                     	xdef	_TIM2_TimeBaseInit
5287                     	xdef	_TIM2_DeInit
5288                     	xref	_assert_failed
5289                     .const:	section	.text
5290  0000               L302:
5291  0000 7372635c7374  	dc.b	"src\stm8s_tim2.c",0
5311                     	end
