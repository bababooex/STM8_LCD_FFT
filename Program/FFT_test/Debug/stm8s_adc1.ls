   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 52 void ADC1_DeInit(void)
  43                     ; 53 {
  45                     .text:	section	.text,new
  46  0000               _ADC1_DeInit:
  50                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  52  0000 725f5400      	clr	21504
  53                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  55  0004 725f5401      	clr	21505
  56                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  58  0008 725f5402      	clr	21506
  59                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  61  000c 725f5403      	clr	21507
  62                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  64  0010 725f5406      	clr	21510
  65                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  67  0014 725f5407      	clr	21511
  68                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  70  0018 35ff5408      	mov	21512,#255
  71                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  73  001c 35035409      	mov	21513,#3
  74                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  76  0020 725f540a      	clr	21514
  77                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  79  0024 725f540b      	clr	21515
  80                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  82  0028 725f540e      	clr	21518
  83                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  85  002c 725f540f      	clr	21519
  86                     ; 66 }
  89  0030 81            	ret
 541                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 541                     ; 89 {
 542                     .text:	section	.text,new
 543  0000               _ADC1_Init:
 545  0000 89            	pushw	x
 546       00000000      OFST:	set	0
 549                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 551  0001 9e            	ld	a,xh
 552  0002 4d            	tnz	a
 553  0003 2705          	jreq	L21
 554  0005 9e            	ld	a,xh
 555  0006 a101          	cp	a,#1
 556  0008 2603          	jrne	L01
 557  000a               L21:
 558  000a 4f            	clr	a
 559  000b 2010          	jra	L41
 560  000d               L01:
 561  000d ae005b        	ldw	x,#91
 562  0010 89            	pushw	x
 563  0011 ae0000        	ldw	x,#0
 564  0014 89            	pushw	x
 565  0015 ae0000        	ldw	x,#L542
 566  0018 cd0000        	call	_assert_failed
 568  001b 5b04          	addw	sp,#4
 569  001d               L41:
 570                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 572  001d 0d02          	tnz	(OFST+2,sp)
 573  001f 273c          	jreq	L02
 574  0021 7b02          	ld	a,(OFST+2,sp)
 575  0023 a101          	cp	a,#1
 576  0025 2736          	jreq	L02
 577  0027 7b02          	ld	a,(OFST+2,sp)
 578  0029 a102          	cp	a,#2
 579  002b 2730          	jreq	L02
 580  002d 7b02          	ld	a,(OFST+2,sp)
 581  002f a103          	cp	a,#3
 582  0031 272a          	jreq	L02
 583  0033 7b02          	ld	a,(OFST+2,sp)
 584  0035 a104          	cp	a,#4
 585  0037 2724          	jreq	L02
 586  0039 7b02          	ld	a,(OFST+2,sp)
 587  003b a105          	cp	a,#5
 588  003d 271e          	jreq	L02
 589  003f 7b02          	ld	a,(OFST+2,sp)
 590  0041 a106          	cp	a,#6
 591  0043 2718          	jreq	L02
 592  0045 7b02          	ld	a,(OFST+2,sp)
 593  0047 a107          	cp	a,#7
 594  0049 2712          	jreq	L02
 595  004b 7b02          	ld	a,(OFST+2,sp)
 596  004d a108          	cp	a,#8
 597  004f 270c          	jreq	L02
 598  0051 7b02          	ld	a,(OFST+2,sp)
 599  0053 a10c          	cp	a,#12
 600  0055 2706          	jreq	L02
 601  0057 7b02          	ld	a,(OFST+2,sp)
 602  0059 a109          	cp	a,#9
 603  005b 2603          	jrne	L61
 604  005d               L02:
 605  005d 4f            	clr	a
 606  005e 2010          	jra	L22
 607  0060               L61:
 608  0060 ae005c        	ldw	x,#92
 609  0063 89            	pushw	x
 610  0064 ae0000        	ldw	x,#0
 611  0067 89            	pushw	x
 612  0068 ae0000        	ldw	x,#L542
 613  006b cd0000        	call	_assert_failed
 615  006e 5b04          	addw	sp,#4
 616  0070               L22:
 617                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 619  0070 0d05          	tnz	(OFST+5,sp)
 620  0072 272a          	jreq	L62
 621  0074 7b05          	ld	a,(OFST+5,sp)
 622  0076 a110          	cp	a,#16
 623  0078 2724          	jreq	L62
 624  007a 7b05          	ld	a,(OFST+5,sp)
 625  007c a120          	cp	a,#32
 626  007e 271e          	jreq	L62
 627  0080 7b05          	ld	a,(OFST+5,sp)
 628  0082 a130          	cp	a,#48
 629  0084 2718          	jreq	L62
 630  0086 7b05          	ld	a,(OFST+5,sp)
 631  0088 a140          	cp	a,#64
 632  008a 2712          	jreq	L62
 633  008c 7b05          	ld	a,(OFST+5,sp)
 634  008e a150          	cp	a,#80
 635  0090 270c          	jreq	L62
 636  0092 7b05          	ld	a,(OFST+5,sp)
 637  0094 a160          	cp	a,#96
 638  0096 2706          	jreq	L62
 639  0098 7b05          	ld	a,(OFST+5,sp)
 640  009a a170          	cp	a,#112
 641  009c 2603          	jrne	L42
 642  009e               L62:
 643  009e 4f            	clr	a
 644  009f 2010          	jra	L03
 645  00a1               L42:
 646  00a1 ae005d        	ldw	x,#93
 647  00a4 89            	pushw	x
 648  00a5 ae0000        	ldw	x,#0
 649  00a8 89            	pushw	x
 650  00a9 ae0000        	ldw	x,#L542
 651  00ac cd0000        	call	_assert_failed
 653  00af 5b04          	addw	sp,#4
 654  00b1               L03:
 655                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 657  00b1 0d06          	tnz	(OFST+6,sp)
 658  00b3 2706          	jreq	L43
 659  00b5 7b06          	ld	a,(OFST+6,sp)
 660  00b7 a110          	cp	a,#16
 661  00b9 2603          	jrne	L23
 662  00bb               L43:
 663  00bb 4f            	clr	a
 664  00bc 2010          	jra	L63
 665  00be               L23:
 666  00be ae005e        	ldw	x,#94
 667  00c1 89            	pushw	x
 668  00c2 ae0000        	ldw	x,#0
 669  00c5 89            	pushw	x
 670  00c6 ae0000        	ldw	x,#L542
 671  00c9 cd0000        	call	_assert_failed
 673  00cc 5b04          	addw	sp,#4
 674  00ce               L63:
 675                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 677  00ce 0d07          	tnz	(OFST+7,sp)
 678  00d0 2706          	jreq	L24
 679  00d2 7b07          	ld	a,(OFST+7,sp)
 680  00d4 a101          	cp	a,#1
 681  00d6 2603          	jrne	L04
 682  00d8               L24:
 683  00d8 4f            	clr	a
 684  00d9 2010          	jra	L44
 685  00db               L04:
 686  00db ae005f        	ldw	x,#95
 687  00de 89            	pushw	x
 688  00df ae0000        	ldw	x,#0
 689  00e2 89            	pushw	x
 690  00e3 ae0000        	ldw	x,#L542
 691  00e6 cd0000        	call	_assert_failed
 693  00e9 5b04          	addw	sp,#4
 694  00eb               L44:
 695                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 697  00eb 0d08          	tnz	(OFST+8,sp)
 698  00ed 2706          	jreq	L05
 699  00ef 7b08          	ld	a,(OFST+8,sp)
 700  00f1 a108          	cp	a,#8
 701  00f3 2603          	jrne	L64
 702  00f5               L05:
 703  00f5 4f            	clr	a
 704  00f6 2010          	jra	L25
 705  00f8               L64:
 706  00f8 ae0060        	ldw	x,#96
 707  00fb 89            	pushw	x
 708  00fc ae0000        	ldw	x,#0
 709  00ff 89            	pushw	x
 710  0100 ae0000        	ldw	x,#L542
 711  0103 cd0000        	call	_assert_failed
 713  0106 5b04          	addw	sp,#4
 714  0108               L25:
 715                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 717  0108 0d09          	tnz	(OFST+9,sp)
 718  010a 2742          	jreq	L65
 719  010c 7b09          	ld	a,(OFST+9,sp)
 720  010e a101          	cp	a,#1
 721  0110 273c          	jreq	L65
 722  0112 7b09          	ld	a,(OFST+9,sp)
 723  0114 a102          	cp	a,#2
 724  0116 2736          	jreq	L65
 725  0118 7b09          	ld	a,(OFST+9,sp)
 726  011a a103          	cp	a,#3
 727  011c 2730          	jreq	L65
 728  011e 7b09          	ld	a,(OFST+9,sp)
 729  0120 a104          	cp	a,#4
 730  0122 272a          	jreq	L65
 731  0124 7b09          	ld	a,(OFST+9,sp)
 732  0126 a105          	cp	a,#5
 733  0128 2724          	jreq	L65
 734  012a 7b09          	ld	a,(OFST+9,sp)
 735  012c a106          	cp	a,#6
 736  012e 271e          	jreq	L65
 737  0130 7b09          	ld	a,(OFST+9,sp)
 738  0132 a107          	cp	a,#7
 739  0134 2718          	jreq	L65
 740  0136 7b09          	ld	a,(OFST+9,sp)
 741  0138 a108          	cp	a,#8
 742  013a 2712          	jreq	L65
 743  013c 7b09          	ld	a,(OFST+9,sp)
 744  013e a10c          	cp	a,#12
 745  0140 270c          	jreq	L65
 746  0142 7b09          	ld	a,(OFST+9,sp)
 747  0144 a1ff          	cp	a,#255
 748  0146 2706          	jreq	L65
 749  0148 7b09          	ld	a,(OFST+9,sp)
 750  014a a109          	cp	a,#9
 751  014c 2603          	jrne	L45
 752  014e               L65:
 753  014e 4f            	clr	a
 754  014f 2010          	jra	L06
 755  0151               L45:
 756  0151 ae0061        	ldw	x,#97
 757  0154 89            	pushw	x
 758  0155 ae0000        	ldw	x,#0
 759  0158 89            	pushw	x
 760  0159 ae0000        	ldw	x,#L542
 761  015c cd0000        	call	_assert_failed
 763  015f 5b04          	addw	sp,#4
 764  0161               L06:
 765                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 767  0161 0d0a          	tnz	(OFST+10,sp)
 768  0163 2706          	jreq	L46
 769  0165 7b0a          	ld	a,(OFST+10,sp)
 770  0167 a101          	cp	a,#1
 771  0169 2603          	jrne	L26
 772  016b               L46:
 773  016b 4f            	clr	a
 774  016c 2010          	jra	L66
 775  016e               L26:
 776  016e ae0062        	ldw	x,#98
 777  0171 89            	pushw	x
 778  0172 ae0000        	ldw	x,#0
 779  0175 89            	pushw	x
 780  0176 ae0000        	ldw	x,#L542
 781  0179 cd0000        	call	_assert_failed
 783  017c 5b04          	addw	sp,#4
 784  017e               L66:
 785                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 787  017e 7b08          	ld	a,(OFST+8,sp)
 788  0180 88            	push	a
 789  0181 7b03          	ld	a,(OFST+3,sp)
 790  0183 97            	ld	xl,a
 791  0184 7b02          	ld	a,(OFST+2,sp)
 792  0186 95            	ld	xh,a
 793  0187 cd0000        	call	_ADC1_ConversionConfig
 795  018a 84            	pop	a
 796                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 798  018b 7b05          	ld	a,(OFST+5,sp)
 799  018d cd0000        	call	_ADC1_PrescalerConfig
 801                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 803  0190 7b07          	ld	a,(OFST+7,sp)
 804  0192 97            	ld	xl,a
 805  0193 7b06          	ld	a,(OFST+6,sp)
 806  0195 95            	ld	xh,a
 807  0196 cd0000        	call	_ADC1_ExternalTriggerConfig
 809                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 811  0199 7b0a          	ld	a,(OFST+10,sp)
 812  019b 97            	ld	xl,a
 813  019c 7b09          	ld	a,(OFST+9,sp)
 814  019e 95            	ld	xh,a
 815  019f cd0000        	call	_ADC1_SchmittTriggerConfig
 817                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 819  01a2 72105401      	bset	21505,#0
 820                     ; 119 }
 823  01a6 85            	popw	x
 824  01a7 81            	ret
 860                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 860                     ; 127 {
 861                     .text:	section	.text,new
 862  0000               _ADC1_Cmd:
 864  0000 88            	push	a
 865       00000000      OFST:	set	0
 868                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0001 4d            	tnz	a
 871  0002 2704          	jreq	L47
 872  0004 a101          	cp	a,#1
 873  0006 2603          	jrne	L27
 874  0008               L47:
 875  0008 4f            	clr	a
 876  0009 2010          	jra	L67
 877  000b               L27:
 878  000b ae0081        	ldw	x,#129
 879  000e 89            	pushw	x
 880  000f ae0000        	ldw	x,#0
 881  0012 89            	pushw	x
 882  0013 ae0000        	ldw	x,#L542
 883  0016 cd0000        	call	_assert_failed
 885  0019 5b04          	addw	sp,#4
 886  001b               L67:
 887                     ; 131   if (NewState != DISABLE)
 889  001b 0d01          	tnz	(OFST+1,sp)
 890  001d 2706          	jreq	L562
 891                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 893  001f 72105401      	bset	21505,#0
 895  0023 2004          	jra	L762
 896  0025               L562:
 897                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 899  0025 72115401      	bres	21505,#0
 900  0029               L762:
 901                     ; 139 }
 904  0029 84            	pop	a
 905  002a 81            	ret
 941                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 941                     ; 147 {
 942                     .text:	section	.text,new
 943  0000               _ADC1_ScanModeCmd:
 945  0000 88            	push	a
 946       00000000      OFST:	set	0
 949                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 951  0001 4d            	tnz	a
 952  0002 2704          	jreq	L401
 953  0004 a101          	cp	a,#1
 954  0006 2603          	jrne	L201
 955  0008               L401:
 956  0008 4f            	clr	a
 957  0009 2010          	jra	L601
 958  000b               L201:
 959  000b ae0095        	ldw	x,#149
 960  000e 89            	pushw	x
 961  000f ae0000        	ldw	x,#0
 962  0012 89            	pushw	x
 963  0013 ae0000        	ldw	x,#L542
 964  0016 cd0000        	call	_assert_failed
 966  0019 5b04          	addw	sp,#4
 967  001b               L601:
 968                     ; 151   if (NewState != DISABLE)
 970  001b 0d01          	tnz	(OFST+1,sp)
 971  001d 2706          	jreq	L703
 972                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 974  001f 72125402      	bset	21506,#1
 976  0023 2004          	jra	L113
 977  0025               L703:
 978                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 980  0025 72135402      	bres	21506,#1
 981  0029               L113:
 982                     ; 159 }
 985  0029 84            	pop	a
 986  002a 81            	ret
1022                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1022                     ; 167 {
1023                     .text:	section	.text,new
1024  0000               _ADC1_DataBufferCmd:
1026  0000 88            	push	a
1027       00000000      OFST:	set	0
1030                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1032  0001 4d            	tnz	a
1033  0002 2704          	jreq	L411
1034  0004 a101          	cp	a,#1
1035  0006 2603          	jrne	L211
1036  0008               L411:
1037  0008 4f            	clr	a
1038  0009 2010          	jra	L611
1039  000b               L211:
1040  000b ae00a9        	ldw	x,#169
1041  000e 89            	pushw	x
1042  000f ae0000        	ldw	x,#0
1043  0012 89            	pushw	x
1044  0013 ae0000        	ldw	x,#L542
1045  0016 cd0000        	call	_assert_failed
1047  0019 5b04          	addw	sp,#4
1048  001b               L611:
1049                     ; 171   if (NewState != DISABLE)
1051  001b 0d01          	tnz	(OFST+1,sp)
1052  001d 2706          	jreq	L133
1053                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1055  001f 721e5403      	bset	21507,#7
1057  0023 2004          	jra	L333
1058  0025               L133:
1059                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1061  0025 721f5403      	bres	21507,#7
1062  0029               L333:
1063                     ; 179 }
1066  0029 84            	pop	a
1067  002a 81            	ret
1224                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1224                     ; 191 {
1225                     .text:	section	.text,new
1226  0000               _ADC1_ITConfig:
1228  0000 89            	pushw	x
1229       00000000      OFST:	set	0
1232                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1234  0001 a30020        	cpw	x,#32
1235  0004 2705          	jreq	L421
1236  0006 a30010        	cpw	x,#16
1237  0009 2603          	jrne	L221
1238  000b               L421:
1239  000b 4f            	clr	a
1240  000c 2010          	jra	L621
1241  000e               L221:
1242  000e ae00c1        	ldw	x,#193
1243  0011 89            	pushw	x
1244  0012 ae0000        	ldw	x,#0
1245  0015 89            	pushw	x
1246  0016 ae0000        	ldw	x,#L542
1247  0019 cd0000        	call	_assert_failed
1249  001c 5b04          	addw	sp,#4
1250  001e               L621:
1251                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1253  001e 0d05          	tnz	(OFST+5,sp)
1254  0020 2706          	jreq	L231
1255  0022 7b05          	ld	a,(OFST+5,sp)
1256  0024 a101          	cp	a,#1
1257  0026 2603          	jrne	L031
1258  0028               L231:
1259  0028 4f            	clr	a
1260  0029 2010          	jra	L431
1261  002b               L031:
1262  002b ae00c2        	ldw	x,#194
1263  002e 89            	pushw	x
1264  002f ae0000        	ldw	x,#0
1265  0032 89            	pushw	x
1266  0033 ae0000        	ldw	x,#L542
1267  0036 cd0000        	call	_assert_failed
1269  0039 5b04          	addw	sp,#4
1270  003b               L431:
1271                     ; 196   if (NewState != DISABLE)
1273  003b 0d05          	tnz	(OFST+5,sp)
1274  003d 270a          	jreq	L124
1275                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1277  003f c65400        	ld	a,21504
1278  0042 1a02          	or	a,(OFST+2,sp)
1279  0044 c75400        	ld	21504,a
1281  0047 2009          	jra	L324
1282  0049               L124:
1283                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1285  0049 7b02          	ld	a,(OFST+2,sp)
1286  004b 43            	cpl	a
1287  004c c45400        	and	a,21504
1288  004f c75400        	ld	21504,a
1289  0052               L324:
1290                     ; 206 }
1293  0052 85            	popw	x
1294  0053 81            	ret
1331                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1331                     ; 215 {
1332                     .text:	section	.text,new
1333  0000               _ADC1_PrescalerConfig:
1335  0000 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1341  0001 4d            	tnz	a
1342  0002 271c          	jreq	L241
1343  0004 a110          	cp	a,#16
1344  0006 2718          	jreq	L241
1345  0008 a120          	cp	a,#32
1346  000a 2714          	jreq	L241
1347  000c a130          	cp	a,#48
1348  000e 2710          	jreq	L241
1349  0010 a140          	cp	a,#64
1350  0012 270c          	jreq	L241
1351  0014 a150          	cp	a,#80
1352  0016 2708          	jreq	L241
1353  0018 a160          	cp	a,#96
1354  001a 2704          	jreq	L241
1355  001c a170          	cp	a,#112
1356  001e 2603          	jrne	L041
1357  0020               L241:
1358  0020 4f            	clr	a
1359  0021 2010          	jra	L441
1360  0023               L041:
1361  0023 ae00d9        	ldw	x,#217
1362  0026 89            	pushw	x
1363  0027 ae0000        	ldw	x,#0
1364  002a 89            	pushw	x
1365  002b ae0000        	ldw	x,#L542
1366  002e cd0000        	call	_assert_failed
1368  0031 5b04          	addw	sp,#4
1369  0033               L441:
1370                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1372  0033 c65401        	ld	a,21505
1373  0036 a48f          	and	a,#143
1374  0038 c75401        	ld	21505,a
1375                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1377  003b c65401        	ld	a,21505
1378  003e 1a01          	or	a,(OFST+1,sp)
1379  0040 c75401        	ld	21505,a
1380                     ; 223 }
1383  0043 84            	pop	a
1384  0044 81            	ret
1432                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1432                     ; 234 {
1433                     .text:	section	.text,new
1434  0000               _ADC1_SchmittTriggerConfig:
1436  0000 89            	pushw	x
1437       00000000      OFST:	set	0
1440                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1442  0001 9e            	ld	a,xh
1443  0002 4d            	tnz	a
1444  0003 2737          	jreq	L251
1445  0005 9e            	ld	a,xh
1446  0006 a101          	cp	a,#1
1447  0008 2732          	jreq	L251
1448  000a 9e            	ld	a,xh
1449  000b a102          	cp	a,#2
1450  000d 272d          	jreq	L251
1451  000f 9e            	ld	a,xh
1452  0010 a103          	cp	a,#3
1453  0012 2728          	jreq	L251
1454  0014 9e            	ld	a,xh
1455  0015 a104          	cp	a,#4
1456  0017 2723          	jreq	L251
1457  0019 9e            	ld	a,xh
1458  001a a105          	cp	a,#5
1459  001c 271e          	jreq	L251
1460  001e 9e            	ld	a,xh
1461  001f a106          	cp	a,#6
1462  0021 2719          	jreq	L251
1463  0023 9e            	ld	a,xh
1464  0024 a107          	cp	a,#7
1465  0026 2714          	jreq	L251
1466  0028 9e            	ld	a,xh
1467  0029 a108          	cp	a,#8
1468  002b 270f          	jreq	L251
1469  002d 9e            	ld	a,xh
1470  002e a10c          	cp	a,#12
1471  0030 270a          	jreq	L251
1472  0032 9e            	ld	a,xh
1473  0033 a1ff          	cp	a,#255
1474  0035 2705          	jreq	L251
1475  0037 9e            	ld	a,xh
1476  0038 a109          	cp	a,#9
1477  003a 2603          	jrne	L051
1478  003c               L251:
1479  003c 4f            	clr	a
1480  003d 2010          	jra	L451
1481  003f               L051:
1482  003f ae00ec        	ldw	x,#236
1483  0042 89            	pushw	x
1484  0043 ae0000        	ldw	x,#0
1485  0046 89            	pushw	x
1486  0047 ae0000        	ldw	x,#L542
1487  004a cd0000        	call	_assert_failed
1489  004d 5b04          	addw	sp,#4
1490  004f               L451:
1491                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1493  004f 0d02          	tnz	(OFST+2,sp)
1494  0051 2706          	jreq	L061
1495  0053 7b02          	ld	a,(OFST+2,sp)
1496  0055 a101          	cp	a,#1
1497  0057 2603          	jrne	L651
1498  0059               L061:
1499  0059 4f            	clr	a
1500  005a 2010          	jra	L261
1501  005c               L651:
1502  005c ae00ed        	ldw	x,#237
1503  005f 89            	pushw	x
1504  0060 ae0000        	ldw	x,#0
1505  0063 89            	pushw	x
1506  0064 ae0000        	ldw	x,#L542
1507  0067 cd0000        	call	_assert_failed
1509  006a 5b04          	addw	sp,#4
1510  006c               L261:
1511                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1513  006c 7b01          	ld	a,(OFST+1,sp)
1514  006e a1ff          	cp	a,#255
1515  0070 2620          	jrne	L564
1516                     ; 241     if (NewState != DISABLE)
1518  0072 0d02          	tnz	(OFST+2,sp)
1519  0074 270a          	jreq	L764
1520                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1522  0076 725f5407      	clr	21511
1523                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1525  007a 725f5406      	clr	21510
1527  007e 2078          	jra	L374
1528  0080               L764:
1529                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1531  0080 c65407        	ld	a,21511
1532  0083 aaff          	or	a,#255
1533  0085 c75407        	ld	21511,a
1534                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1536  0088 c65406        	ld	a,21510
1537  008b aaff          	or	a,#255
1538  008d c75406        	ld	21510,a
1539  0090 2066          	jra	L374
1540  0092               L564:
1541                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1543  0092 7b01          	ld	a,(OFST+1,sp)
1544  0094 a108          	cp	a,#8
1545  0096 242f          	jruge	L574
1546                     ; 254     if (NewState != DISABLE)
1548  0098 0d02          	tnz	(OFST+2,sp)
1549  009a 2716          	jreq	L774
1550                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1552  009c 7b01          	ld	a,(OFST+1,sp)
1553  009e 5f            	clrw	x
1554  009f 97            	ld	xl,a
1555  00a0 a601          	ld	a,#1
1556  00a2 5d            	tnzw	x
1557  00a3 2704          	jreq	L461
1558  00a5               L661:
1559  00a5 48            	sll	a
1560  00a6 5a            	decw	x
1561  00a7 26fc          	jrne	L661
1562  00a9               L461:
1563  00a9 43            	cpl	a
1564  00aa c45407        	and	a,21511
1565  00ad c75407        	ld	21511,a
1567  00b0 2046          	jra	L374
1568  00b2               L774:
1569                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1571  00b2 7b01          	ld	a,(OFST+1,sp)
1572  00b4 5f            	clrw	x
1573  00b5 97            	ld	xl,a
1574  00b6 a601          	ld	a,#1
1575  00b8 5d            	tnzw	x
1576  00b9 2704          	jreq	L071
1577  00bb               L271:
1578  00bb 48            	sll	a
1579  00bc 5a            	decw	x
1580  00bd 26fc          	jrne	L271
1581  00bf               L071:
1582  00bf ca5407        	or	a,21511
1583  00c2 c75407        	ld	21511,a
1584  00c5 2031          	jra	L374
1585  00c7               L574:
1586                     ; 265     if (NewState != DISABLE)
1588  00c7 0d02          	tnz	(OFST+2,sp)
1589  00c9 2718          	jreq	L505
1590                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1592  00cb 7b01          	ld	a,(OFST+1,sp)
1593  00cd a008          	sub	a,#8
1594  00cf 5f            	clrw	x
1595  00d0 97            	ld	xl,a
1596  00d1 a601          	ld	a,#1
1597  00d3 5d            	tnzw	x
1598  00d4 2704          	jreq	L471
1599  00d6               L671:
1600  00d6 48            	sll	a
1601  00d7 5a            	decw	x
1602  00d8 26fc          	jrne	L671
1603  00da               L471:
1604  00da 43            	cpl	a
1605  00db c45406        	and	a,21510
1606  00de c75406        	ld	21510,a
1608  00e1 2015          	jra	L374
1609  00e3               L505:
1610                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1612  00e3 7b01          	ld	a,(OFST+1,sp)
1613  00e5 a008          	sub	a,#8
1614  00e7 5f            	clrw	x
1615  00e8 97            	ld	xl,a
1616  00e9 a601          	ld	a,#1
1617  00eb 5d            	tnzw	x
1618  00ec 2704          	jreq	L002
1619  00ee               L202:
1620  00ee 48            	sll	a
1621  00ef 5a            	decw	x
1622  00f0 26fc          	jrne	L202
1623  00f2               L002:
1624  00f2 ca5406        	or	a,21510
1625  00f5 c75406        	ld	21510,a
1626  00f8               L374:
1627                     ; 274 }
1630  00f8 85            	popw	x
1631  00f9 81            	ret
1689                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1689                     ; 287 {
1690                     .text:	section	.text,new
1691  0000               _ADC1_ConversionConfig:
1693  0000 89            	pushw	x
1694       00000000      OFST:	set	0
1697                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1699  0001 9e            	ld	a,xh
1700  0002 4d            	tnz	a
1701  0003 2705          	jreq	L012
1702  0005 9e            	ld	a,xh
1703  0006 a101          	cp	a,#1
1704  0008 2603          	jrne	L602
1705  000a               L012:
1706  000a 4f            	clr	a
1707  000b 2010          	jra	L212
1708  000d               L602:
1709  000d ae0121        	ldw	x,#289
1710  0010 89            	pushw	x
1711  0011 ae0000        	ldw	x,#0
1712  0014 89            	pushw	x
1713  0015 ae0000        	ldw	x,#L542
1714  0018 cd0000        	call	_assert_failed
1716  001b 5b04          	addw	sp,#4
1717  001d               L212:
1718                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1720  001d 0d02          	tnz	(OFST+2,sp)
1721  001f 273c          	jreq	L612
1722  0021 7b02          	ld	a,(OFST+2,sp)
1723  0023 a101          	cp	a,#1
1724  0025 2736          	jreq	L612
1725  0027 7b02          	ld	a,(OFST+2,sp)
1726  0029 a102          	cp	a,#2
1727  002b 2730          	jreq	L612
1728  002d 7b02          	ld	a,(OFST+2,sp)
1729  002f a103          	cp	a,#3
1730  0031 272a          	jreq	L612
1731  0033 7b02          	ld	a,(OFST+2,sp)
1732  0035 a104          	cp	a,#4
1733  0037 2724          	jreq	L612
1734  0039 7b02          	ld	a,(OFST+2,sp)
1735  003b a105          	cp	a,#5
1736  003d 271e          	jreq	L612
1737  003f 7b02          	ld	a,(OFST+2,sp)
1738  0041 a106          	cp	a,#6
1739  0043 2718          	jreq	L612
1740  0045 7b02          	ld	a,(OFST+2,sp)
1741  0047 a107          	cp	a,#7
1742  0049 2712          	jreq	L612
1743  004b 7b02          	ld	a,(OFST+2,sp)
1744  004d a108          	cp	a,#8
1745  004f 270c          	jreq	L612
1746  0051 7b02          	ld	a,(OFST+2,sp)
1747  0053 a10c          	cp	a,#12
1748  0055 2706          	jreq	L612
1749  0057 7b02          	ld	a,(OFST+2,sp)
1750  0059 a109          	cp	a,#9
1751  005b 2603          	jrne	L412
1752  005d               L612:
1753  005d 4f            	clr	a
1754  005e 2010          	jra	L022
1755  0060               L412:
1756  0060 ae0122        	ldw	x,#290
1757  0063 89            	pushw	x
1758  0064 ae0000        	ldw	x,#0
1759  0067 89            	pushw	x
1760  0068 ae0000        	ldw	x,#L542
1761  006b cd0000        	call	_assert_failed
1763  006e 5b04          	addw	sp,#4
1764  0070               L022:
1765                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1767  0070 0d05          	tnz	(OFST+5,sp)
1768  0072 2706          	jreq	L422
1769  0074 7b05          	ld	a,(OFST+5,sp)
1770  0076 a108          	cp	a,#8
1771  0078 2603          	jrne	L222
1772  007a               L422:
1773  007a 4f            	clr	a
1774  007b 2010          	jra	L622
1775  007d               L222:
1776  007d ae0123        	ldw	x,#291
1777  0080 89            	pushw	x
1778  0081 ae0000        	ldw	x,#0
1779  0084 89            	pushw	x
1780  0085 ae0000        	ldw	x,#L542
1781  0088 cd0000        	call	_assert_failed
1783  008b 5b04          	addw	sp,#4
1784  008d               L622:
1785                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1787  008d 72175402      	bres	21506,#3
1788                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1790  0091 c65402        	ld	a,21506
1791  0094 1a05          	or	a,(OFST+5,sp)
1792  0096 c75402        	ld	21506,a
1793                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1795  0099 7b01          	ld	a,(OFST+1,sp)
1796  009b a101          	cp	a,#1
1797  009d 2606          	jrne	L735
1798                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1800  009f 72125401      	bset	21505,#1
1802  00a3 2004          	jra	L145
1803  00a5               L735:
1804                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1806  00a5 72135401      	bres	21505,#1
1807  00a9               L145:
1808                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1810  00a9 c65400        	ld	a,21504
1811  00ac a4f0          	and	a,#240
1812  00ae c75400        	ld	21504,a
1813                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1815  00b1 c65400        	ld	a,21504
1816  00b4 1a02          	or	a,(OFST+2,sp)
1817  00b6 c75400        	ld	21504,a
1818                     ; 313 }
1821  00b9 85            	popw	x
1822  00ba 81            	ret
1869                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1869                     ; 326 {
1870                     .text:	section	.text,new
1871  0000               _ADC1_ExternalTriggerConfig:
1873  0000 89            	pushw	x
1874       00000000      OFST:	set	0
1877                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1879  0001 9e            	ld	a,xh
1880  0002 4d            	tnz	a
1881  0003 2705          	jreq	L432
1882  0005 9e            	ld	a,xh
1883  0006 a110          	cp	a,#16
1884  0008 2603          	jrne	L232
1885  000a               L432:
1886  000a 4f            	clr	a
1887  000b 2010          	jra	L632
1888  000d               L232:
1889  000d ae0148        	ldw	x,#328
1890  0010 89            	pushw	x
1891  0011 ae0000        	ldw	x,#0
1892  0014 89            	pushw	x
1893  0015 ae0000        	ldw	x,#L542
1894  0018 cd0000        	call	_assert_failed
1896  001b 5b04          	addw	sp,#4
1897  001d               L632:
1898                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1900  001d 0d02          	tnz	(OFST+2,sp)
1901  001f 2706          	jreq	L242
1902  0021 7b02          	ld	a,(OFST+2,sp)
1903  0023 a101          	cp	a,#1
1904  0025 2603          	jrne	L042
1905  0027               L242:
1906  0027 4f            	clr	a
1907  0028 2010          	jra	L442
1908  002a               L042:
1909  002a ae0149        	ldw	x,#329
1910  002d 89            	pushw	x
1911  002e ae0000        	ldw	x,#0
1912  0031 89            	pushw	x
1913  0032 ae0000        	ldw	x,#L542
1914  0035 cd0000        	call	_assert_failed
1916  0038 5b04          	addw	sp,#4
1917  003a               L442:
1918                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1920  003a c65402        	ld	a,21506
1921  003d a4cf          	and	a,#207
1922  003f c75402        	ld	21506,a
1923                     ; 334   if (NewState != DISABLE)
1925  0042 0d02          	tnz	(OFST+2,sp)
1926  0044 2706          	jreq	L565
1927                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1929  0046 721c5402      	bset	21506,#6
1931  004a 2004          	jra	L765
1932  004c               L565:
1933                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1935  004c 721d5402      	bres	21506,#6
1936  0050               L765:
1937                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1939  0050 c65402        	ld	a,21506
1940  0053 1a01          	or	a,(OFST+1,sp)
1941  0055 c75402        	ld	21506,a
1942                     ; 347 }
1945  0058 85            	popw	x
1946  0059 81            	ret
1970                     ; 358 void ADC1_StartConversion(void)
1970                     ; 359 {
1971                     .text:	section	.text,new
1972  0000               _ADC1_StartConversion:
1976                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1978  0000 72105401      	bset	21505,#0
1979                     ; 361 }
1982  0004 81            	ret
2022                     ; 370 uint16_t ADC1_GetConversionValue(void)
2022                     ; 371 {
2023                     .text:	section	.text,new
2024  0000               _ADC1_GetConversionValue:
2026  0000 5205          	subw	sp,#5
2027       00000005      OFST:	set	5
2030                     ; 372   uint16_t temph = 0;
2032                     ; 373   uint8_t templ = 0;
2034                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2036  0002 c65402        	ld	a,21506
2037  0005 a508          	bcp	a,#8
2038  0007 2715          	jreq	L716
2039                     ; 378     templ = ADC1->DRL;
2041  0009 c65405        	ld	a,21509
2042  000c 6b03          	ld	(OFST-2,sp),a
2044                     ; 380     temph = ADC1->DRH;
2046  000e c65404        	ld	a,21508
2047  0011 5f            	clrw	x
2048  0012 97            	ld	xl,a
2049  0013 1f04          	ldw	(OFST-1,sp),x
2051                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2053  0015 1e04          	ldw	x,(OFST-1,sp)
2054  0017 7b03          	ld	a,(OFST-2,sp)
2055  0019 02            	rlwa	x,a
2056  001a 1f04          	ldw	(OFST-1,sp),x
2059  001c 2021          	jra	L126
2060  001e               L716:
2061                     ; 387     temph = ADC1->DRH;
2063  001e c65404        	ld	a,21508
2064  0021 5f            	clrw	x
2065  0022 97            	ld	xl,a
2066  0023 1f04          	ldw	(OFST-1,sp),x
2068                     ; 389     templ = ADC1->DRL;
2070  0025 c65405        	ld	a,21509
2071  0028 6b03          	ld	(OFST-2,sp),a
2073                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2075  002a 1e04          	ldw	x,(OFST-1,sp)
2076  002c 4f            	clr	a
2077  002d 02            	rlwa	x,a
2078  002e 1f01          	ldw	(OFST-4,sp),x
2080  0030 7b03          	ld	a,(OFST-2,sp)
2081  0032 97            	ld	xl,a
2082  0033 a640          	ld	a,#64
2083  0035 42            	mul	x,a
2084  0036 01            	rrwa	x,a
2085  0037 1a02          	or	a,(OFST-3,sp)
2086  0039 01            	rrwa	x,a
2087  003a 1a01          	or	a,(OFST-4,sp)
2088  003c 01            	rrwa	x,a
2089  003d 1f04          	ldw	(OFST-1,sp),x
2091  003f               L126:
2092                     ; 394   return ((uint16_t)temph);
2094  003f 1e04          	ldw	x,(OFST-1,sp)
2097  0041 5b05          	addw	sp,#5
2098  0043 81            	ret
2145                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2145                     ; 406 {
2146                     .text:	section	.text,new
2147  0000               _ADC1_AWDChannelConfig:
2149  0000 89            	pushw	x
2150       00000000      OFST:	set	0
2153                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2155  0001 9f            	ld	a,xl
2156  0002 4d            	tnz	a
2157  0003 2705          	jreq	L652
2158  0005 9f            	ld	a,xl
2159  0006 a101          	cp	a,#1
2160  0008 2603          	jrne	L452
2161  000a               L652:
2162  000a 4f            	clr	a
2163  000b 2010          	jra	L062
2164  000d               L452:
2165  000d ae0198        	ldw	x,#408
2166  0010 89            	pushw	x
2167  0011 ae0000        	ldw	x,#0
2168  0014 89            	pushw	x
2169  0015 ae0000        	ldw	x,#L542
2170  0018 cd0000        	call	_assert_failed
2172  001b 5b04          	addw	sp,#4
2173  001d               L062:
2174                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2176  001d 0d01          	tnz	(OFST+1,sp)
2177  001f 273c          	jreq	L462
2178  0021 7b01          	ld	a,(OFST+1,sp)
2179  0023 a101          	cp	a,#1
2180  0025 2736          	jreq	L462
2181  0027 7b01          	ld	a,(OFST+1,sp)
2182  0029 a102          	cp	a,#2
2183  002b 2730          	jreq	L462
2184  002d 7b01          	ld	a,(OFST+1,sp)
2185  002f a103          	cp	a,#3
2186  0031 272a          	jreq	L462
2187  0033 7b01          	ld	a,(OFST+1,sp)
2188  0035 a104          	cp	a,#4
2189  0037 2724          	jreq	L462
2190  0039 7b01          	ld	a,(OFST+1,sp)
2191  003b a105          	cp	a,#5
2192  003d 271e          	jreq	L462
2193  003f 7b01          	ld	a,(OFST+1,sp)
2194  0041 a106          	cp	a,#6
2195  0043 2718          	jreq	L462
2196  0045 7b01          	ld	a,(OFST+1,sp)
2197  0047 a107          	cp	a,#7
2198  0049 2712          	jreq	L462
2199  004b 7b01          	ld	a,(OFST+1,sp)
2200  004d a108          	cp	a,#8
2201  004f 270c          	jreq	L462
2202  0051 7b01          	ld	a,(OFST+1,sp)
2203  0053 a10c          	cp	a,#12
2204  0055 2706          	jreq	L462
2205  0057 7b01          	ld	a,(OFST+1,sp)
2206  0059 a109          	cp	a,#9
2207  005b 2603          	jrne	L262
2208  005d               L462:
2209  005d 4f            	clr	a
2210  005e 2010          	jra	L662
2211  0060               L262:
2212  0060 ae0199        	ldw	x,#409
2213  0063 89            	pushw	x
2214  0064 ae0000        	ldw	x,#0
2215  0067 89            	pushw	x
2216  0068 ae0000        	ldw	x,#L542
2217  006b cd0000        	call	_assert_failed
2219  006e 5b04          	addw	sp,#4
2220  0070               L662:
2221                     ; 411   if (Channel < (uint8_t)8)
2223  0070 7b01          	ld	a,(OFST+1,sp)
2224  0072 a108          	cp	a,#8
2225  0074 242f          	jruge	L546
2226                     ; 413     if (NewState != DISABLE)
2228  0076 0d02          	tnz	(OFST+2,sp)
2229  0078 2715          	jreq	L746
2230                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2232  007a 7b01          	ld	a,(OFST+1,sp)
2233  007c 5f            	clrw	x
2234  007d 97            	ld	xl,a
2235  007e a601          	ld	a,#1
2236  0080 5d            	tnzw	x
2237  0081 2704          	jreq	L072
2238  0083               L272:
2239  0083 48            	sll	a
2240  0084 5a            	decw	x
2241  0085 26fc          	jrne	L272
2242  0087               L072:
2243  0087 ca540f        	or	a,21519
2244  008a c7540f        	ld	21519,a
2246  008d 2047          	jra	L356
2247  008f               L746:
2248                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2250  008f 7b01          	ld	a,(OFST+1,sp)
2251  0091 5f            	clrw	x
2252  0092 97            	ld	xl,a
2253  0093 a601          	ld	a,#1
2254  0095 5d            	tnzw	x
2255  0096 2704          	jreq	L472
2256  0098               L672:
2257  0098 48            	sll	a
2258  0099 5a            	decw	x
2259  009a 26fc          	jrne	L672
2260  009c               L472:
2261  009c 43            	cpl	a
2262  009d c4540f        	and	a,21519
2263  00a0 c7540f        	ld	21519,a
2264  00a3 2031          	jra	L356
2265  00a5               L546:
2266                     ; 424     if (NewState != DISABLE)
2268  00a5 0d02          	tnz	(OFST+2,sp)
2269  00a7 2717          	jreq	L556
2270                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2272  00a9 7b01          	ld	a,(OFST+1,sp)
2273  00ab a008          	sub	a,#8
2274  00ad 5f            	clrw	x
2275  00ae 97            	ld	xl,a
2276  00af a601          	ld	a,#1
2277  00b1 5d            	tnzw	x
2278  00b2 2704          	jreq	L003
2279  00b4               L203:
2280  00b4 48            	sll	a
2281  00b5 5a            	decw	x
2282  00b6 26fc          	jrne	L203
2283  00b8               L003:
2284  00b8 ca540e        	or	a,21518
2285  00bb c7540e        	ld	21518,a
2287  00be 2016          	jra	L356
2288  00c0               L556:
2289                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2291  00c0 7b01          	ld	a,(OFST+1,sp)
2292  00c2 a008          	sub	a,#8
2293  00c4 5f            	clrw	x
2294  00c5 97            	ld	xl,a
2295  00c6 a601          	ld	a,#1
2296  00c8 5d            	tnzw	x
2297  00c9 2704          	jreq	L403
2298  00cb               L603:
2299  00cb 48            	sll	a
2300  00cc 5a            	decw	x
2301  00cd 26fc          	jrne	L603
2302  00cf               L403:
2303  00cf 43            	cpl	a
2304  00d0 c4540e        	and	a,21518
2305  00d3 c7540e        	ld	21518,a
2306  00d6               L356:
2307                     ; 433 }
2310  00d6 85            	popw	x
2311  00d7 81            	ret
2344                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2344                     ; 442 {
2345                     .text:	section	.text,new
2346  0000               _ADC1_SetHighThreshold:
2348  0000 89            	pushw	x
2349       00000000      OFST:	set	0
2352                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2354  0001 54            	srlw	x
2355  0002 54            	srlw	x
2356  0003 9f            	ld	a,xl
2357  0004 c75408        	ld	21512,a
2358                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2360  0007 7b02          	ld	a,(OFST+2,sp)
2361  0009 c75409        	ld	21513,a
2362                     ; 445 }
2365  000c 85            	popw	x
2366  000d 81            	ret
2399                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2399                     ; 454 {
2400                     .text:	section	.text,new
2401  0000               _ADC1_SetLowThreshold:
2405                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2407  0000 9f            	ld	a,xl
2408  0001 c7540b        	ld	21515,a
2409                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2411  0004 54            	srlw	x
2412  0005 54            	srlw	x
2413  0006 9f            	ld	a,xl
2414  0007 c7540a        	ld	21514,a
2415                     ; 457 }
2418  000a 81            	ret
2466                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2466                     ; 467 {
2467                     .text:	section	.text,new
2468  0000               _ADC1_GetBufferValue:
2470  0000 88            	push	a
2471  0001 5205          	subw	sp,#5
2472       00000005      OFST:	set	5
2475                     ; 468   uint16_t temph = 0;
2477                     ; 469   uint8_t templ = 0;
2479                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2481  0003 a10a          	cp	a,#10
2482  0005 2403          	jruge	L613
2483  0007 4f            	clr	a
2484  0008 2010          	jra	L023
2485  000a               L613:
2486  000a ae01d8        	ldw	x,#472
2487  000d 89            	pushw	x
2488  000e ae0000        	ldw	x,#0
2489  0011 89            	pushw	x
2490  0012 ae0000        	ldw	x,#L542
2491  0015 cd0000        	call	_assert_failed
2493  0018 5b04          	addw	sp,#4
2494  001a               L023:
2495                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2497  001a c65402        	ld	a,21506
2498  001d a508          	bcp	a,#8
2499  001f 271f          	jreq	L137
2500                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2502  0021 7b06          	ld	a,(OFST+1,sp)
2503  0023 48            	sll	a
2504  0024 5f            	clrw	x
2505  0025 97            	ld	xl,a
2506  0026 d653e1        	ld	a,(21473,x)
2507  0029 6b03          	ld	(OFST-2,sp),a
2509                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2511  002b 7b06          	ld	a,(OFST+1,sp)
2512  002d 48            	sll	a
2513  002e 5f            	clrw	x
2514  002f 97            	ld	xl,a
2515  0030 d653e0        	ld	a,(21472,x)
2516  0033 5f            	clrw	x
2517  0034 97            	ld	xl,a
2518  0035 1f04          	ldw	(OFST-1,sp),x
2520                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2522  0037 1e04          	ldw	x,(OFST-1,sp)
2523  0039 7b03          	ld	a,(OFST-2,sp)
2524  003b 02            	rlwa	x,a
2525  003c 1f04          	ldw	(OFST-1,sp),x
2528  003e 202b          	jra	L337
2529  0040               L137:
2530                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2532  0040 7b06          	ld	a,(OFST+1,sp)
2533  0042 48            	sll	a
2534  0043 5f            	clrw	x
2535  0044 97            	ld	xl,a
2536  0045 d653e0        	ld	a,(21472,x)
2537  0048 5f            	clrw	x
2538  0049 97            	ld	xl,a
2539  004a 1f04          	ldw	(OFST-1,sp),x
2541                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2543  004c 7b06          	ld	a,(OFST+1,sp)
2544  004e 48            	sll	a
2545  004f 5f            	clrw	x
2546  0050 97            	ld	xl,a
2547  0051 d653e1        	ld	a,(21473,x)
2548  0054 6b03          	ld	(OFST-2,sp),a
2550                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2552  0056 1e04          	ldw	x,(OFST-1,sp)
2553  0058 4f            	clr	a
2554  0059 02            	rlwa	x,a
2555  005a 1f01          	ldw	(OFST-4,sp),x
2557  005c 7b03          	ld	a,(OFST-2,sp)
2558  005e 97            	ld	xl,a
2559  005f a640          	ld	a,#64
2560  0061 42            	mul	x,a
2561  0062 01            	rrwa	x,a
2562  0063 1a02          	or	a,(OFST-3,sp)
2563  0065 01            	rrwa	x,a
2564  0066 1a01          	or	a,(OFST-4,sp)
2565  0068 01            	rrwa	x,a
2566  0069 1f04          	ldw	(OFST-1,sp),x
2568  006b               L337:
2569                     ; 493   return ((uint16_t)temph);
2571  006b 1e04          	ldw	x,(OFST-1,sp)
2574  006d 5b06          	addw	sp,#6
2575  006f 81            	ret
2640                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2640                     ; 503 {
2641                     .text:	section	.text,new
2642  0000               _ADC1_GetAWDChannelStatus:
2644  0000 88            	push	a
2645  0001 88            	push	a
2646       00000001      OFST:	set	1
2649                     ; 504   uint8_t status = 0;
2651                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2653  0002 4d            	tnz	a
2654  0003 2728          	jreq	L623
2655  0005 a101          	cp	a,#1
2656  0007 2724          	jreq	L623
2657  0009 a102          	cp	a,#2
2658  000b 2720          	jreq	L623
2659  000d a103          	cp	a,#3
2660  000f 271c          	jreq	L623
2661  0011 a104          	cp	a,#4
2662  0013 2718          	jreq	L623
2663  0015 a105          	cp	a,#5
2664  0017 2714          	jreq	L623
2665  0019 a106          	cp	a,#6
2666  001b 2710          	jreq	L623
2667  001d a107          	cp	a,#7
2668  001f 270c          	jreq	L623
2669  0021 a108          	cp	a,#8
2670  0023 2708          	jreq	L623
2671  0025 a10c          	cp	a,#12
2672  0027 2704          	jreq	L623
2673  0029 a109          	cp	a,#9
2674  002b 2603          	jrne	L423
2675  002d               L623:
2676  002d 4f            	clr	a
2677  002e 2010          	jra	L033
2678  0030               L423:
2679  0030 ae01fb        	ldw	x,#507
2680  0033 89            	pushw	x
2681  0034 ae0000        	ldw	x,#0
2682  0037 89            	pushw	x
2683  0038 ae0000        	ldw	x,#L542
2684  003b cd0000        	call	_assert_failed
2686  003e 5b04          	addw	sp,#4
2687  0040               L033:
2688                     ; 509   if (Channel < (uint8_t)8)
2690  0040 7b02          	ld	a,(OFST+1,sp)
2691  0042 a108          	cp	a,#8
2692  0044 2414          	jruge	L567
2693                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2695  0046 7b02          	ld	a,(OFST+1,sp)
2696  0048 5f            	clrw	x
2697  0049 97            	ld	xl,a
2698  004a a601          	ld	a,#1
2699  004c 5d            	tnzw	x
2700  004d 2704          	jreq	L233
2701  004f               L433:
2702  004f 48            	sll	a
2703  0050 5a            	decw	x
2704  0051 26fc          	jrne	L433
2705  0053               L233:
2706  0053 c4540d        	and	a,21517
2707  0056 6b01          	ld	(OFST+0,sp),a
2710  0058 2014          	jra	L767
2711  005a               L567:
2712                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2714  005a 7b02          	ld	a,(OFST+1,sp)
2715  005c a008          	sub	a,#8
2716  005e 5f            	clrw	x
2717  005f 97            	ld	xl,a
2718  0060 a601          	ld	a,#1
2719  0062 5d            	tnzw	x
2720  0063 2704          	jreq	L633
2721  0065               L043:
2722  0065 48            	sll	a
2723  0066 5a            	decw	x
2724  0067 26fc          	jrne	L043
2725  0069               L633:
2726  0069 c4540c        	and	a,21516
2727  006c 6b01          	ld	(OFST+0,sp),a
2729  006e               L767:
2730                     ; 518   return ((FlagStatus)status);
2732  006e 7b01          	ld	a,(OFST+0,sp)
2735  0070 85            	popw	x
2736  0071 81            	ret
2891                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2891                     ; 528 {
2892                     .text:	section	.text,new
2893  0000               _ADC1_GetFlagStatus:
2895  0000 88            	push	a
2896  0001 88            	push	a
2897       00000001      OFST:	set	1
2900                     ; 529   uint8_t flagstatus = 0;
2902                     ; 530   uint8_t temp = 0;
2904                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2906  0002 a180          	cp	a,#128
2907  0004 2730          	jreq	L643
2908  0006 a141          	cp	a,#65
2909  0008 272c          	jreq	L643
2910  000a a140          	cp	a,#64
2911  000c 2728          	jreq	L643
2912  000e a110          	cp	a,#16
2913  0010 2724          	jreq	L643
2914  0012 a111          	cp	a,#17
2915  0014 2720          	jreq	L643
2916  0016 a112          	cp	a,#18
2917  0018 271c          	jreq	L643
2918  001a a113          	cp	a,#19
2919  001c 2718          	jreq	L643
2920  001e a114          	cp	a,#20
2921  0020 2714          	jreq	L643
2922  0022 a115          	cp	a,#21
2923  0024 2710          	jreq	L643
2924  0026 a116          	cp	a,#22
2925  0028 270c          	jreq	L643
2926  002a a117          	cp	a,#23
2927  002c 2708          	jreq	L643
2928  002e a118          	cp	a,#24
2929  0030 2704          	jreq	L643
2930  0032 a119          	cp	a,#25
2931  0034 2603          	jrne	L443
2932  0036               L643:
2933  0036 4f            	clr	a
2934  0037 2010          	jra	L053
2935  0039               L443:
2936  0039 ae0215        	ldw	x,#533
2937  003c 89            	pushw	x
2938  003d ae0000        	ldw	x,#0
2939  0040 89            	pushw	x
2940  0041 ae0000        	ldw	x,#L542
2941  0044 cd0000        	call	_assert_failed
2943  0047 5b04          	addw	sp,#4
2944  0049               L053:
2945                     ; 535   if ((Flag & 0x0F) == 0x01)
2947  0049 7b02          	ld	a,(OFST+1,sp)
2948  004b a40f          	and	a,#15
2949  004d a101          	cp	a,#1
2950  004f 2609          	jrne	L3501
2951                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2953  0051 c65403        	ld	a,21507
2954  0054 a440          	and	a,#64
2955  0056 6b01          	ld	(OFST+0,sp),a
2958  0058 2045          	jra	L5501
2959  005a               L3501:
2960                     ; 540   else if ((Flag & 0xF0) == 0x10)
2962  005a 7b02          	ld	a,(OFST+1,sp)
2963  005c a4f0          	and	a,#240
2964  005e a110          	cp	a,#16
2965  0060 2636          	jrne	L7501
2966                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2968  0062 7b02          	ld	a,(OFST+1,sp)
2969  0064 a40f          	and	a,#15
2970  0066 6b01          	ld	(OFST+0,sp),a
2972                     ; 544     if (temp < 8)
2974  0068 7b01          	ld	a,(OFST+0,sp)
2975  006a a108          	cp	a,#8
2976  006c 2414          	jruge	L1601
2977                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2979  006e 7b01          	ld	a,(OFST+0,sp)
2980  0070 5f            	clrw	x
2981  0071 97            	ld	xl,a
2982  0072 a601          	ld	a,#1
2983  0074 5d            	tnzw	x
2984  0075 2704          	jreq	L253
2985  0077               L453:
2986  0077 48            	sll	a
2987  0078 5a            	decw	x
2988  0079 26fc          	jrne	L453
2989  007b               L253:
2990  007b c4540d        	and	a,21517
2991  007e 6b01          	ld	(OFST+0,sp),a
2994  0080 201d          	jra	L5501
2995  0082               L1601:
2996                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2998  0082 7b01          	ld	a,(OFST+0,sp)
2999  0084 a008          	sub	a,#8
3000  0086 5f            	clrw	x
3001  0087 97            	ld	xl,a
3002  0088 a601          	ld	a,#1
3003  008a 5d            	tnzw	x
3004  008b 2704          	jreq	L653
3005  008d               L063:
3006  008d 48            	sll	a
3007  008e 5a            	decw	x
3008  008f 26fc          	jrne	L063
3009  0091               L653:
3010  0091 c4540c        	and	a,21516
3011  0094 6b01          	ld	(OFST+0,sp),a
3013  0096 2007          	jra	L5501
3014  0098               L7501:
3015                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3017  0098 c65400        	ld	a,21504
3018  009b 1402          	and	a,(OFST+1,sp)
3019  009d 6b01          	ld	(OFST+0,sp),a
3021  009f               L5501:
3022                     ; 557   return ((FlagStatus)flagstatus);
3024  009f 7b01          	ld	a,(OFST+0,sp)
3027  00a1 85            	popw	x
3028  00a2 81            	ret
3071                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3071                     ; 568 {
3072                     .text:	section	.text,new
3073  0000               _ADC1_ClearFlag:
3075  0000 88            	push	a
3076  0001 88            	push	a
3077       00000001      OFST:	set	1
3080                     ; 569   uint8_t temp = 0;
3082                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3084  0002 a180          	cp	a,#128
3085  0004 2730          	jreq	L663
3086  0006 a141          	cp	a,#65
3087  0008 272c          	jreq	L663
3088  000a a140          	cp	a,#64
3089  000c 2728          	jreq	L663
3090  000e a110          	cp	a,#16
3091  0010 2724          	jreq	L663
3092  0012 a111          	cp	a,#17
3093  0014 2720          	jreq	L663
3094  0016 a112          	cp	a,#18
3095  0018 271c          	jreq	L663
3096  001a a113          	cp	a,#19
3097  001c 2718          	jreq	L663
3098  001e a114          	cp	a,#20
3099  0020 2714          	jreq	L663
3100  0022 a115          	cp	a,#21
3101  0024 2710          	jreq	L663
3102  0026 a116          	cp	a,#22
3103  0028 270c          	jreq	L663
3104  002a a117          	cp	a,#23
3105  002c 2708          	jreq	L663
3106  002e a118          	cp	a,#24
3107  0030 2704          	jreq	L663
3108  0032 a119          	cp	a,#25
3109  0034 2603          	jrne	L463
3110  0036               L663:
3111  0036 4f            	clr	a
3112  0037 2010          	jra	L073
3113  0039               L463:
3114  0039 ae023c        	ldw	x,#572
3115  003c 89            	pushw	x
3116  003d ae0000        	ldw	x,#0
3117  0040 89            	pushw	x
3118  0041 ae0000        	ldw	x,#L542
3119  0044 cd0000        	call	_assert_failed
3121  0047 5b04          	addw	sp,#4
3122  0049               L073:
3123                     ; 574   if ((Flag & 0x0F) == 0x01)
3125  0049 7b02          	ld	a,(OFST+1,sp)
3126  004b a40f          	and	a,#15
3127  004d a101          	cp	a,#1
3128  004f 2606          	jrne	L7011
3129                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3131  0051 721d5403      	bres	21507,#6
3133  0055 204b          	jra	L1111
3134  0057               L7011:
3135                     ; 579   else if ((Flag & 0xF0) == 0x10)
3137  0057 7b02          	ld	a,(OFST+1,sp)
3138  0059 a4f0          	and	a,#240
3139  005b a110          	cp	a,#16
3140  005d 263a          	jrne	L3111
3141                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3143  005f 7b02          	ld	a,(OFST+1,sp)
3144  0061 a40f          	and	a,#15
3145  0063 6b01          	ld	(OFST+0,sp),a
3147                     ; 583     if (temp < 8)
3149  0065 7b01          	ld	a,(OFST+0,sp)
3150  0067 a108          	cp	a,#8
3151  0069 2416          	jruge	L5111
3152                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3154  006b 7b01          	ld	a,(OFST+0,sp)
3155  006d 5f            	clrw	x
3156  006e 97            	ld	xl,a
3157  006f a601          	ld	a,#1
3158  0071 5d            	tnzw	x
3159  0072 2704          	jreq	L273
3160  0074               L473:
3161  0074 48            	sll	a
3162  0075 5a            	decw	x
3163  0076 26fc          	jrne	L473
3164  0078               L273:
3165  0078 43            	cpl	a
3166  0079 c4540d        	and	a,21517
3167  007c c7540d        	ld	21517,a
3169  007f 2021          	jra	L1111
3170  0081               L5111:
3171                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3173  0081 7b01          	ld	a,(OFST+0,sp)
3174  0083 a008          	sub	a,#8
3175  0085 5f            	clrw	x
3176  0086 97            	ld	xl,a
3177  0087 a601          	ld	a,#1
3178  0089 5d            	tnzw	x
3179  008a 2704          	jreq	L673
3180  008c               L004:
3181  008c 48            	sll	a
3182  008d 5a            	decw	x
3183  008e 26fc          	jrne	L004
3184  0090               L673:
3185  0090 43            	cpl	a
3186  0091 c4540c        	and	a,21516
3187  0094 c7540c        	ld	21516,a
3188  0097 2009          	jra	L1111
3189  0099               L3111:
3190                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3192  0099 7b02          	ld	a,(OFST+1,sp)
3193  009b 43            	cpl	a
3194  009c c45400        	and	a,21504
3195  009f c75400        	ld	21504,a
3196  00a2               L1111:
3197                     ; 596 }
3200  00a2 85            	popw	x
3201  00a3 81            	ret
3255                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3255                     ; 617 {
3256                     .text:	section	.text,new
3257  0000               _ADC1_GetITStatus:
3259  0000 89            	pushw	x
3260  0001 88            	push	a
3261       00000001      OFST:	set	1
3264                     ; 618   ITStatus itstatus = RESET;
3266                     ; 619   uint8_t temp = 0;
3268                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3270  0002 a30080        	cpw	x,#128
3271  0005 273c          	jreq	L604
3272  0007 a30140        	cpw	x,#320
3273  000a 2737          	jreq	L604
3274  000c a30110        	cpw	x,#272
3275  000f 2732          	jreq	L604
3276  0011 a30111        	cpw	x,#273
3277  0014 272d          	jreq	L604
3278  0016 a30112        	cpw	x,#274
3279  0019 2728          	jreq	L604
3280  001b a30113        	cpw	x,#275
3281  001e 2723          	jreq	L604
3282  0020 a30114        	cpw	x,#276
3283  0023 271e          	jreq	L604
3284  0025 a30115        	cpw	x,#277
3285  0028 2719          	jreq	L604
3286  002a a30116        	cpw	x,#278
3287  002d 2714          	jreq	L604
3288  002f a30117        	cpw	x,#279
3289  0032 270f          	jreq	L604
3290  0034 a30118        	cpw	x,#280
3291  0037 270a          	jreq	L604
3292  0039 a3011c        	cpw	x,#284
3293  003c 2705          	jreq	L604
3294  003e a30119        	cpw	x,#281
3295  0041 2603          	jrne	L404
3296  0043               L604:
3297  0043 4f            	clr	a
3298  0044 2010          	jra	L014
3299  0046               L404:
3300  0046 ae026e        	ldw	x,#622
3301  0049 89            	pushw	x
3302  004a ae0000        	ldw	x,#0
3303  004d 89            	pushw	x
3304  004e ae0000        	ldw	x,#L542
3305  0051 cd0000        	call	_assert_failed
3307  0054 5b04          	addw	sp,#4
3308  0056               L014:
3309                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3311  0056 7b02          	ld	a,(OFST+1,sp)
3312  0058 97            	ld	xl,a
3313  0059 7b03          	ld	a,(OFST+2,sp)
3314  005b a4f0          	and	a,#240
3315  005d 5f            	clrw	x
3316  005e 02            	rlwa	x,a
3317  005f a30010        	cpw	x,#16
3318  0062 2636          	jrne	L7411
3319                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3321  0064 7b03          	ld	a,(OFST+2,sp)
3322  0066 a40f          	and	a,#15
3323  0068 6b01          	ld	(OFST+0,sp),a
3325                     ; 628     if (temp < 8)
3327  006a 7b01          	ld	a,(OFST+0,sp)
3328  006c a108          	cp	a,#8
3329  006e 2414          	jruge	L1511
3330                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3332  0070 7b01          	ld	a,(OFST+0,sp)
3333  0072 5f            	clrw	x
3334  0073 97            	ld	xl,a
3335  0074 a601          	ld	a,#1
3336  0076 5d            	tnzw	x
3337  0077 2704          	jreq	L214
3338  0079               L414:
3339  0079 48            	sll	a
3340  007a 5a            	decw	x
3341  007b 26fc          	jrne	L414
3342  007d               L214:
3343  007d c4540d        	and	a,21517
3344  0080 6b01          	ld	(OFST+0,sp),a
3347  0082 201d          	jra	L5511
3348  0084               L1511:
3349                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3351  0084 7b01          	ld	a,(OFST+0,sp)
3352  0086 a008          	sub	a,#8
3353  0088 5f            	clrw	x
3354  0089 97            	ld	xl,a
3355  008a a601          	ld	a,#1
3356  008c 5d            	tnzw	x
3357  008d 2704          	jreq	L614
3358  008f               L024:
3359  008f 48            	sll	a
3360  0090 5a            	decw	x
3361  0091 26fc          	jrne	L024
3362  0093               L614:
3363  0093 c4540c        	and	a,21516
3364  0096 6b01          	ld	(OFST+0,sp),a
3366  0098 2007          	jra	L5511
3367  009a               L7411:
3368                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3370  009a c65400        	ld	a,21504
3371  009d 1403          	and	a,(OFST+2,sp)
3372  009f 6b01          	ld	(OFST+0,sp),a
3374  00a1               L5511:
3375                     ; 641   return ((ITStatus)itstatus);
3377  00a1 7b01          	ld	a,(OFST+0,sp)
3380  00a3 5b03          	addw	sp,#3
3381  00a5 81            	ret
3425                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3425                     ; 663 {
3426                     .text:	section	.text,new
3427  0000               _ADC1_ClearITPendingBit:
3429  0000 89            	pushw	x
3430  0001 88            	push	a
3431       00000001      OFST:	set	1
3434                     ; 664   uint8_t temp = 0;
3436                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3438  0002 a30080        	cpw	x,#128
3439  0005 273c          	jreq	L624
3440  0007 a30140        	cpw	x,#320
3441  000a 2737          	jreq	L624
3442  000c a30110        	cpw	x,#272
3443  000f 2732          	jreq	L624
3444  0011 a30111        	cpw	x,#273
3445  0014 272d          	jreq	L624
3446  0016 a30112        	cpw	x,#274
3447  0019 2728          	jreq	L624
3448  001b a30113        	cpw	x,#275
3449  001e 2723          	jreq	L624
3450  0020 a30114        	cpw	x,#276
3451  0023 271e          	jreq	L624
3452  0025 a30115        	cpw	x,#277
3453  0028 2719          	jreq	L624
3454  002a a30116        	cpw	x,#278
3455  002d 2714          	jreq	L624
3456  002f a30117        	cpw	x,#279
3457  0032 270f          	jreq	L624
3458  0034 a30118        	cpw	x,#280
3459  0037 270a          	jreq	L624
3460  0039 a3011c        	cpw	x,#284
3461  003c 2705          	jreq	L624
3462  003e a30119        	cpw	x,#281
3463  0041 2603          	jrne	L424
3464  0043               L624:
3465  0043 4f            	clr	a
3466  0044 2010          	jra	L034
3467  0046               L424:
3468  0046 ae029b        	ldw	x,#667
3469  0049 89            	pushw	x
3470  004a ae0000        	ldw	x,#0
3471  004d 89            	pushw	x
3472  004e ae0000        	ldw	x,#L542
3473  0051 cd0000        	call	_assert_failed
3475  0054 5b04          	addw	sp,#4
3476  0056               L034:
3477                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3479  0056 7b02          	ld	a,(OFST+1,sp)
3480  0058 97            	ld	xl,a
3481  0059 7b03          	ld	a,(OFST+2,sp)
3482  005b a4f0          	and	a,#240
3483  005d 5f            	clrw	x
3484  005e 02            	rlwa	x,a
3485  005f a30010        	cpw	x,#16
3486  0062 263a          	jrne	L7711
3487                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3489  0064 7b03          	ld	a,(OFST+2,sp)
3490  0066 a40f          	and	a,#15
3491  0068 6b01          	ld	(OFST+0,sp),a
3493                     ; 673     if (temp < 8)
3495  006a 7b01          	ld	a,(OFST+0,sp)
3496  006c a108          	cp	a,#8
3497  006e 2416          	jruge	L1021
3498                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3500  0070 7b01          	ld	a,(OFST+0,sp)
3501  0072 5f            	clrw	x
3502  0073 97            	ld	xl,a
3503  0074 a601          	ld	a,#1
3504  0076 5d            	tnzw	x
3505  0077 2704          	jreq	L234
3506  0079               L434:
3507  0079 48            	sll	a
3508  007a 5a            	decw	x
3509  007b 26fc          	jrne	L434
3510  007d               L234:
3511  007d 43            	cpl	a
3512  007e c4540d        	and	a,21517
3513  0081 c7540d        	ld	21517,a
3515  0084 2021          	jra	L5021
3516  0086               L1021:
3517                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3519  0086 7b01          	ld	a,(OFST+0,sp)
3520  0088 a008          	sub	a,#8
3521  008a 5f            	clrw	x
3522  008b 97            	ld	xl,a
3523  008c a601          	ld	a,#1
3524  008e 5d            	tnzw	x
3525  008f 2704          	jreq	L634
3526  0091               L044:
3527  0091 48            	sll	a
3528  0092 5a            	decw	x
3529  0093 26fc          	jrne	L044
3530  0095               L634:
3531  0095 43            	cpl	a
3532  0096 c4540c        	and	a,21516
3533  0099 c7540c        	ld	21516,a
3534  009c 2009          	jra	L5021
3535  009e               L7711:
3536                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3538  009e 7b03          	ld	a,(OFST+2,sp)
3539  00a0 43            	cpl	a
3540  00a1 c45400        	and	a,21504
3541  00a4 c75400        	ld	21504,a
3542  00a7               L5021:
3543                     ; 686 }
3546  00a7 5b03          	addw	sp,#3
3547  00a9 81            	ret
3560                     	xdef	_ADC1_ClearITPendingBit
3561                     	xdef	_ADC1_GetITStatus
3562                     	xdef	_ADC1_ClearFlag
3563                     	xdef	_ADC1_GetFlagStatus
3564                     	xdef	_ADC1_GetAWDChannelStatus
3565                     	xdef	_ADC1_GetBufferValue
3566                     	xdef	_ADC1_SetLowThreshold
3567                     	xdef	_ADC1_SetHighThreshold
3568                     	xdef	_ADC1_GetConversionValue
3569                     	xdef	_ADC1_StartConversion
3570                     	xdef	_ADC1_AWDChannelConfig
3571                     	xdef	_ADC1_ExternalTriggerConfig
3572                     	xdef	_ADC1_ConversionConfig
3573                     	xdef	_ADC1_SchmittTriggerConfig
3574                     	xdef	_ADC1_PrescalerConfig
3575                     	xdef	_ADC1_ITConfig
3576                     	xdef	_ADC1_DataBufferCmd
3577                     	xdef	_ADC1_ScanModeCmd
3578                     	xdef	_ADC1_Cmd
3579                     	xdef	_ADC1_Init
3580                     	xdef	_ADC1_DeInit
3581                     	xref	_assert_failed
3582                     .const:	section	.text
3583  0000               L542:
3584  0000 7372635c7374  	dc.b	"src\stm8s_adc1.c",0
3604                     	end
