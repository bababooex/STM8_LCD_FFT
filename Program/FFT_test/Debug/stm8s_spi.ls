   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 50 void SPI_DeInit(void)
  43                     ; 51 {
  45                     .text:	section	.text,new
  46  0000               _SPI_DeInit:
  50                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  52  0000 725f5200      	clr	20992
  53                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  55  0004 725f5201      	clr	20993
  56                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  58  0008 725f5202      	clr	20994
  59                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  61  000c 35025203      	mov	20995,#2
  62                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  64  0010 35075205      	mov	20997,#7
  65                     ; 57 }
  68  0014 81            	ret
 383                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 383                     ; 79 {
 384                     .text:	section	.text,new
 385  0000               _SPI_Init:
 387  0000 89            	pushw	x
 388  0001 88            	push	a
 389       00000001      OFST:	set	1
 392                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 394  0002 9e            	ld	a,xh
 395  0003 4d            	tnz	a
 396  0004 2705          	jreq	L21
 397  0006 9e            	ld	a,xh
 398  0007 a180          	cp	a,#128
 399  0009 2603          	jrne	L01
 400  000b               L21:
 401  000b 4f            	clr	a
 402  000c 2010          	jra	L41
 403  000e               L01:
 404  000e ae0051        	ldw	x,#81
 405  0011 89            	pushw	x
 406  0012 ae0000        	ldw	x,#0
 407  0015 89            	pushw	x
 408  0016 ae0000        	ldw	x,#L102
 409  0019 cd0000        	call	_assert_failed
 411  001c 5b04          	addw	sp,#4
 412  001e               L41:
 413                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 415  001e 0d03          	tnz	(OFST+2,sp)
 416  0020 272a          	jreq	L02
 417  0022 7b03          	ld	a,(OFST+2,sp)
 418  0024 a108          	cp	a,#8
 419  0026 2724          	jreq	L02
 420  0028 7b03          	ld	a,(OFST+2,sp)
 421  002a a110          	cp	a,#16
 422  002c 271e          	jreq	L02
 423  002e 7b03          	ld	a,(OFST+2,sp)
 424  0030 a118          	cp	a,#24
 425  0032 2718          	jreq	L02
 426  0034 7b03          	ld	a,(OFST+2,sp)
 427  0036 a120          	cp	a,#32
 428  0038 2712          	jreq	L02
 429  003a 7b03          	ld	a,(OFST+2,sp)
 430  003c a128          	cp	a,#40
 431  003e 270c          	jreq	L02
 432  0040 7b03          	ld	a,(OFST+2,sp)
 433  0042 a130          	cp	a,#48
 434  0044 2706          	jreq	L02
 435  0046 7b03          	ld	a,(OFST+2,sp)
 436  0048 a138          	cp	a,#56
 437  004a 2603          	jrne	L61
 438  004c               L02:
 439  004c 4f            	clr	a
 440  004d 2010          	jra	L22
 441  004f               L61:
 442  004f ae0052        	ldw	x,#82
 443  0052 89            	pushw	x
 444  0053 ae0000        	ldw	x,#0
 445  0056 89            	pushw	x
 446  0057 ae0000        	ldw	x,#L102
 447  005a cd0000        	call	_assert_failed
 449  005d 5b04          	addw	sp,#4
 450  005f               L22:
 451                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 453  005f 7b06          	ld	a,(OFST+5,sp)
 454  0061 a104          	cp	a,#4
 455  0063 2704          	jreq	L62
 456  0065 0d06          	tnz	(OFST+5,sp)
 457  0067 2603          	jrne	L42
 458  0069               L62:
 459  0069 4f            	clr	a
 460  006a 2010          	jra	L03
 461  006c               L42:
 462  006c ae0053        	ldw	x,#83
 463  006f 89            	pushw	x
 464  0070 ae0000        	ldw	x,#0
 465  0073 89            	pushw	x
 466  0074 ae0000        	ldw	x,#L102
 467  0077 cd0000        	call	_assert_failed
 469  007a 5b04          	addw	sp,#4
 470  007c               L03:
 471                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 473  007c 0d07          	tnz	(OFST+6,sp)
 474  007e 2706          	jreq	L43
 475  0080 7b07          	ld	a,(OFST+6,sp)
 476  0082 a102          	cp	a,#2
 477  0084 2603          	jrne	L23
 478  0086               L43:
 479  0086 4f            	clr	a
 480  0087 2010          	jra	L63
 481  0089               L23:
 482  0089 ae0054        	ldw	x,#84
 483  008c 89            	pushw	x
 484  008d ae0000        	ldw	x,#0
 485  0090 89            	pushw	x
 486  0091 ae0000        	ldw	x,#L102
 487  0094 cd0000        	call	_assert_failed
 489  0097 5b04          	addw	sp,#4
 490  0099               L63:
 491                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 493  0099 0d08          	tnz	(OFST+7,sp)
 494  009b 2706          	jreq	L24
 495  009d 7b08          	ld	a,(OFST+7,sp)
 496  009f a101          	cp	a,#1
 497  00a1 2603          	jrne	L04
 498  00a3               L24:
 499  00a3 4f            	clr	a
 500  00a4 2010          	jra	L44
 501  00a6               L04:
 502  00a6 ae0055        	ldw	x,#85
 503  00a9 89            	pushw	x
 504  00aa ae0000        	ldw	x,#0
 505  00ad 89            	pushw	x
 506  00ae ae0000        	ldw	x,#L102
 507  00b1 cd0000        	call	_assert_failed
 509  00b4 5b04          	addw	sp,#4
 510  00b6               L44:
 511                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 513  00b6 0d09          	tnz	(OFST+8,sp)
 514  00b8 2712          	jreq	L05
 515  00ba 7b09          	ld	a,(OFST+8,sp)
 516  00bc a104          	cp	a,#4
 517  00be 270c          	jreq	L05
 518  00c0 7b09          	ld	a,(OFST+8,sp)
 519  00c2 a180          	cp	a,#128
 520  00c4 2706          	jreq	L05
 521  00c6 7b09          	ld	a,(OFST+8,sp)
 522  00c8 a1c0          	cp	a,#192
 523  00ca 2603          	jrne	L64
 524  00cc               L05:
 525  00cc 4f            	clr	a
 526  00cd 2010          	jra	L25
 527  00cf               L64:
 528  00cf ae0056        	ldw	x,#86
 529  00d2 89            	pushw	x
 530  00d3 ae0000        	ldw	x,#0
 531  00d6 89            	pushw	x
 532  00d7 ae0000        	ldw	x,#L102
 533  00da cd0000        	call	_assert_failed
 535  00dd 5b04          	addw	sp,#4
 536  00df               L25:
 537                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 539  00df 7b0a          	ld	a,(OFST+9,sp)
 540  00e1 a102          	cp	a,#2
 541  00e3 2704          	jreq	L65
 542  00e5 0d0a          	tnz	(OFST+9,sp)
 543  00e7 2603          	jrne	L45
 544  00e9               L65:
 545  00e9 4f            	clr	a
 546  00ea 2010          	jra	L06
 547  00ec               L45:
 548  00ec ae0057        	ldw	x,#87
 549  00ef 89            	pushw	x
 550  00f0 ae0000        	ldw	x,#0
 551  00f3 89            	pushw	x
 552  00f4 ae0000        	ldw	x,#L102
 553  00f7 cd0000        	call	_assert_failed
 555  00fa 5b04          	addw	sp,#4
 556  00fc               L06:
 557                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 559  00fc 0d0b          	tnz	(OFST+10,sp)
 560  00fe 2703          	jreq	L26
 561  0100 4f            	clr	a
 562  0101 2010          	jra	L46
 563  0103               L26:
 564  0103 ae0058        	ldw	x,#88
 565  0106 89            	pushw	x
 566  0107 ae0000        	ldw	x,#0
 567  010a 89            	pushw	x
 568  010b ae0000        	ldw	x,#L102
 569  010e cd0000        	call	_assert_failed
 571  0111 5b04          	addw	sp,#4
 572  0113               L46:
 573                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 573                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 575  0113 7b07          	ld	a,(OFST+6,sp)
 576  0115 1a08          	or	a,(OFST+7,sp)
 577  0117 6b01          	ld	(OFST+0,sp),a
 579  0119 7b02          	ld	a,(OFST+1,sp)
 580  011b 1a03          	or	a,(OFST+2,sp)
 581  011d 1a01          	or	a,(OFST+0,sp)
 582  011f c75200        	ld	20992,a
 583                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 585  0122 7b09          	ld	a,(OFST+8,sp)
 586  0124 1a0a          	or	a,(OFST+9,sp)
 587  0126 c75201        	ld	20993,a
 588                     ; 97   if (Mode == SPI_MODE_MASTER)
 590  0129 7b06          	ld	a,(OFST+5,sp)
 591  012b a104          	cp	a,#4
 592  012d 2606          	jrne	L302
 593                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 595  012f 72105201      	bset	20993,#0
 597  0133 2004          	jra	L502
 598  0135               L302:
 599                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 601  0135 72115201      	bres	20993,#0
 602  0139               L502:
 603                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 605  0139 c65200        	ld	a,20992
 606  013c 1a06          	or	a,(OFST+5,sp)
 607  013e c75200        	ld	20992,a
 608                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 610  0141 7b0b          	ld	a,(OFST+10,sp)
 611  0143 c75205        	ld	20997,a
 612                     ; 111 }
 615  0146 5b03          	addw	sp,#3
 616  0148 81            	ret
 672                     ; 119 void SPI_Cmd(FunctionalState NewState)
 672                     ; 120 {
 673                     .text:	section	.text,new
 674  0000               _SPI_Cmd:
 676  0000 88            	push	a
 677       00000000      OFST:	set	0
 680                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 682  0001 4d            	tnz	a
 683  0002 2704          	jreq	L27
 684  0004 a101          	cp	a,#1
 685  0006 2603          	jrne	L07
 686  0008               L27:
 687  0008 4f            	clr	a
 688  0009 2010          	jra	L47
 689  000b               L07:
 690  000b ae007a        	ldw	x,#122
 691  000e 89            	pushw	x
 692  000f ae0000        	ldw	x,#0
 693  0012 89            	pushw	x
 694  0013 ae0000        	ldw	x,#L102
 695  0016 cd0000        	call	_assert_failed
 697  0019 5b04          	addw	sp,#4
 698  001b               L47:
 699                     ; 124   if (NewState != DISABLE)
 701  001b 0d01          	tnz	(OFST+1,sp)
 702  001d 2706          	jreq	L532
 703                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 705  001f 721c5200      	bset	20992,#6
 707  0023 2004          	jra	L732
 708  0025               L532:
 709                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 711  0025 721d5200      	bres	20992,#6
 712  0029               L732:
 713                     ; 132 }
 716  0029 84            	pop	a
 717  002a 81            	ret
 825                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 825                     ; 142 {
 826                     .text:	section	.text,new
 827  0000               _SPI_ITConfig:
 829  0000 89            	pushw	x
 830  0001 88            	push	a
 831       00000001      OFST:	set	1
 834                     ; 143   uint8_t itpos = 0;
 836                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 838  0002 9e            	ld	a,xh
 839  0003 a117          	cp	a,#23
 840  0005 270f          	jreq	L201
 841  0007 9e            	ld	a,xh
 842  0008 a106          	cp	a,#6
 843  000a 270a          	jreq	L201
 844  000c 9e            	ld	a,xh
 845  000d a105          	cp	a,#5
 846  000f 2705          	jreq	L201
 847  0011 9e            	ld	a,xh
 848  0012 a134          	cp	a,#52
 849  0014 2603          	jrne	L001
 850  0016               L201:
 851  0016 4f            	clr	a
 852  0017 2010          	jra	L401
 853  0019               L001:
 854  0019 ae0091        	ldw	x,#145
 855  001c 89            	pushw	x
 856  001d ae0000        	ldw	x,#0
 857  0020 89            	pushw	x
 858  0021 ae0000        	ldw	x,#L102
 859  0024 cd0000        	call	_assert_failed
 861  0027 5b04          	addw	sp,#4
 862  0029               L401:
 863                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 865  0029 0d03          	tnz	(OFST+2,sp)
 866  002b 2706          	jreq	L011
 867  002d 7b03          	ld	a,(OFST+2,sp)
 868  002f a101          	cp	a,#1
 869  0031 2603          	jrne	L601
 870  0033               L011:
 871  0033 4f            	clr	a
 872  0034 2010          	jra	L211
 873  0036               L601:
 874  0036 ae0092        	ldw	x,#146
 875  0039 89            	pushw	x
 876  003a ae0000        	ldw	x,#0
 877  003d 89            	pushw	x
 878  003e ae0000        	ldw	x,#L102
 879  0041 cd0000        	call	_assert_failed
 881  0044 5b04          	addw	sp,#4
 882  0046               L211:
 883                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 885  0046 7b02          	ld	a,(OFST+1,sp)
 886  0048 a40f          	and	a,#15
 887  004a 5f            	clrw	x
 888  004b 97            	ld	xl,a
 889  004c a601          	ld	a,#1
 890  004e 5d            	tnzw	x
 891  004f 2704          	jreq	L411
 892  0051               L611:
 893  0051 48            	sll	a
 894  0052 5a            	decw	x
 895  0053 26fc          	jrne	L611
 896  0055               L411:
 897  0055 6b01          	ld	(OFST+0,sp),a
 899                     ; 151   if (NewState != DISABLE)
 901  0057 0d03          	tnz	(OFST+2,sp)
 902  0059 270a          	jreq	L703
 903                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 905  005b c65202        	ld	a,20994
 906  005e 1a01          	or	a,(OFST+0,sp)
 907  0060 c75202        	ld	20994,a
 909  0063 2009          	jra	L113
 910  0065               L703:
 911                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 913  0065 7b01          	ld	a,(OFST+0,sp)
 914  0067 43            	cpl	a
 915  0068 c45202        	and	a,20994
 916  006b c75202        	ld	20994,a
 917  006e               L113:
 918                     ; 159 }
 921  006e 5b03          	addw	sp,#3
 922  0070 81            	ret
 954                     ; 166 void SPI_SendData(uint8_t Data)
 954                     ; 167 {
 955                     .text:	section	.text,new
 956  0000               _SPI_SendData:
 960                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 962  0000 c75204        	ld	20996,a
 963                     ; 169 }
 966  0003 81            	ret
 989                     ; 176 uint8_t SPI_ReceiveData(void)
 989                     ; 177 {
 990                     .text:	section	.text,new
 991  0000               _SPI_ReceiveData:
 995                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 997  0000 c65204        	ld	a,20996
1000  0003 81            	ret
1037                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1037                     ; 188 {
1038                     .text:	section	.text,new
1039  0000               _SPI_NSSInternalSoftwareCmd:
1041  0000 88            	push	a
1042       00000000      OFST:	set	0
1045                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1047  0001 4d            	tnz	a
1048  0002 2704          	jreq	L031
1049  0004 a101          	cp	a,#1
1050  0006 2603          	jrne	L621
1051  0008               L031:
1052  0008 4f            	clr	a
1053  0009 2010          	jra	L231
1054  000b               L621:
1055  000b ae00be        	ldw	x,#190
1056  000e 89            	pushw	x
1057  000f ae0000        	ldw	x,#0
1058  0012 89            	pushw	x
1059  0013 ae0000        	ldw	x,#L102
1060  0016 cd0000        	call	_assert_failed
1062  0019 5b04          	addw	sp,#4
1063  001b               L231:
1064                     ; 192   if (NewState != DISABLE)
1066  001b 0d01          	tnz	(OFST+1,sp)
1067  001d 2706          	jreq	L553
1068                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1070  001f 72105201      	bset	20993,#0
1072  0023 2004          	jra	L753
1073  0025               L553:
1074                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1076  0025 72115201      	bres	20993,#0
1077  0029               L753:
1078                     ; 200 }
1081  0029 84            	pop	a
1082  002a 81            	ret
1105                     ; 207 void SPI_TransmitCRC(void)
1105                     ; 208 {
1106                     .text:	section	.text,new
1107  0000               _SPI_TransmitCRC:
1111                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1113  0000 72185201      	bset	20993,#4
1114                     ; 210 }
1117  0004 81            	ret
1154                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1154                     ; 219 {
1155                     .text:	section	.text,new
1156  0000               _SPI_CalculateCRCCmd:
1158  0000 88            	push	a
1159       00000000      OFST:	set	0
1162                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1164  0001 4d            	tnz	a
1165  0002 2704          	jreq	L241
1166  0004 a101          	cp	a,#1
1167  0006 2603          	jrne	L041
1168  0008               L241:
1169  0008 4f            	clr	a
1170  0009 2010          	jra	L441
1171  000b               L041:
1172  000b ae00dd        	ldw	x,#221
1173  000e 89            	pushw	x
1174  000f ae0000        	ldw	x,#0
1175  0012 89            	pushw	x
1176  0013 ae0000        	ldw	x,#L102
1177  0016 cd0000        	call	_assert_failed
1179  0019 5b04          	addw	sp,#4
1180  001b               L441:
1181                     ; 223   if (NewState != DISABLE)
1183  001b 0d01          	tnz	(OFST+1,sp)
1184  001d 2706          	jreq	L704
1185                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1187  001f 721a5201      	bset	20993,#5
1189  0023 2004          	jra	L114
1190  0025               L704:
1191                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1193  0025 721b5201      	bres	20993,#5
1194  0029               L114:
1195                     ; 231 }
1198  0029 84            	pop	a
1199  002a 81            	ret
1262                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1262                     ; 239 {
1263                     .text:	section	.text,new
1264  0000               _SPI_GetCRC:
1266  0000 88            	push	a
1267  0001 88            	push	a
1268       00000001      OFST:	set	1
1271                     ; 240   uint8_t crcreg = 0;
1273                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1275  0002 a101          	cp	a,#1
1276  0004 2703          	jreq	L251
1277  0006 4d            	tnz	a
1278  0007 2603          	jrne	L051
1279  0009               L251:
1280  0009 4f            	clr	a
1281  000a 2010          	jra	L451
1282  000c               L051:
1283  000c ae00f3        	ldw	x,#243
1284  000f 89            	pushw	x
1285  0010 ae0000        	ldw	x,#0
1286  0013 89            	pushw	x
1287  0014 ae0000        	ldw	x,#L102
1288  0017 cd0000        	call	_assert_failed
1290  001a 5b04          	addw	sp,#4
1291  001c               L451:
1292                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1294  001c 0d02          	tnz	(OFST+1,sp)
1295  001e 2707          	jreq	L344
1296                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1298  0020 c65207        	ld	a,20999
1299  0023 6b01          	ld	(OFST+0,sp),a
1302  0025 2005          	jra	L544
1303  0027               L344:
1304                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1306  0027 c65206        	ld	a,20998
1307  002a 6b01          	ld	(OFST+0,sp),a
1309  002c               L544:
1310                     ; 255   return crcreg;
1312  002c 7b01          	ld	a,(OFST+0,sp)
1315  002e 85            	popw	x
1316  002f 81            	ret
1341                     ; 263 void SPI_ResetCRC(void)
1341                     ; 264 {
1342                     .text:	section	.text,new
1343  0000               _SPI_ResetCRC:
1347                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1349  0000 a601          	ld	a,#1
1350  0002 cd0000        	call	_SPI_CalculateCRCCmd
1352                     ; 270   SPI_Cmd(ENABLE);
1354  0005 a601          	ld	a,#1
1355  0007 cd0000        	call	_SPI_Cmd
1357                     ; 271 }
1360  000a 81            	ret
1384                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1384                     ; 279 {
1385                     .text:	section	.text,new
1386  0000               _SPI_GetCRCPolynomial:
1390                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1392  0000 c65205        	ld	a,20997
1395  0003 81            	ret
1452                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1452                     ; 289 {
1453                     .text:	section	.text,new
1454  0000               _SPI_BiDirectionalLineConfig:
1456  0000 88            	push	a
1457       00000000      OFST:	set	0
1460                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1462  0001 4d            	tnz	a
1463  0002 2704          	jreq	L661
1464  0004 a101          	cp	a,#1
1465  0006 2603          	jrne	L461
1466  0008               L661:
1467  0008 4f            	clr	a
1468  0009 2010          	jra	L071
1469  000b               L461:
1470  000b ae0123        	ldw	x,#291
1471  000e 89            	pushw	x
1472  000f ae0000        	ldw	x,#0
1473  0012 89            	pushw	x
1474  0013 ae0000        	ldw	x,#L102
1475  0016 cd0000        	call	_assert_failed
1477  0019 5b04          	addw	sp,#4
1478  001b               L071:
1479                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1481  001b 0d01          	tnz	(OFST+1,sp)
1482  001d 2706          	jreq	L515
1483                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1485  001f 721c5201      	bset	20993,#6
1487  0023 2004          	jra	L715
1488  0025               L515:
1489                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1491  0025 721d5201      	bres	20993,#6
1492  0029               L715:
1493                     ; 301 }
1496  0029 84            	pop	a
1497  002a 81            	ret
1619                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1619                     ; 312 {
1620                     .text:	section	.text,new
1621  0000               _SPI_GetFlagStatus:
1623  0000 88            	push	a
1624  0001 88            	push	a
1625       00000001      OFST:	set	1
1628                     ; 313   FlagStatus status = RESET;
1630                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1632  0002 a140          	cp	a,#64
1633  0004 2718          	jreq	L671
1634  0006 a120          	cp	a,#32
1635  0008 2714          	jreq	L671
1636  000a a110          	cp	a,#16
1637  000c 2710          	jreq	L671
1638  000e a108          	cp	a,#8
1639  0010 270c          	jreq	L671
1640  0012 a102          	cp	a,#2
1641  0014 2708          	jreq	L671
1642  0016 a101          	cp	a,#1
1643  0018 2704          	jreq	L671
1644  001a a180          	cp	a,#128
1645  001c 2603          	jrne	L471
1646  001e               L671:
1647  001e 4f            	clr	a
1648  001f 2010          	jra	L002
1649  0021               L471:
1650  0021 ae013b        	ldw	x,#315
1651  0024 89            	pushw	x
1652  0025 ae0000        	ldw	x,#0
1653  0028 89            	pushw	x
1654  0029 ae0000        	ldw	x,#L102
1655  002c cd0000        	call	_assert_failed
1657  002f 5b04          	addw	sp,#4
1658  0031               L002:
1659                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1661  0031 c65203        	ld	a,20995
1662  0034 1502          	bcp	a,(OFST+1,sp)
1663  0036 2706          	jreq	L575
1664                     ; 320     status = SET; /* SPI_FLAG is set */
1666  0038 a601          	ld	a,#1
1667  003a 6b01          	ld	(OFST+0,sp),a
1670  003c 2002          	jra	L775
1671  003e               L575:
1672                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1674  003e 0f01          	clr	(OFST+0,sp)
1676  0040               L775:
1677                     ; 328   return status;
1679  0040 7b01          	ld	a,(OFST+0,sp)
1682  0042 85            	popw	x
1683  0043 81            	ret
1719                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1719                     ; 347 {
1720                     .text:	section	.text,new
1721  0000               _SPI_ClearFlag:
1723  0000 88            	push	a
1724       00000000      OFST:	set	0
1727                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1729  0001 a110          	cp	a,#16
1730  0003 2704          	jreq	L602
1731  0005 a108          	cp	a,#8
1732  0007 2603          	jrne	L402
1733  0009               L602:
1734  0009 4f            	clr	a
1735  000a 2010          	jra	L012
1736  000c               L402:
1737  000c ae015c        	ldw	x,#348
1738  000f 89            	pushw	x
1739  0010 ae0000        	ldw	x,#0
1740  0013 89            	pushw	x
1741  0014 ae0000        	ldw	x,#L102
1742  0017 cd0000        	call	_assert_failed
1744  001a 5b04          	addw	sp,#4
1745  001c               L012:
1746                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1748  001c 7b01          	ld	a,(OFST+1,sp)
1749  001e 43            	cpl	a
1750  001f c75203        	ld	20995,a
1751                     ; 351 }
1754  0022 84            	pop	a
1755  0023 81            	ret
1830                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1830                     ; 367 {
1831                     .text:	section	.text,new
1832  0000               _SPI_GetITStatus:
1834  0000 88            	push	a
1835  0001 89            	pushw	x
1836       00000002      OFST:	set	2
1839                     ; 368   ITStatus pendingbitstatus = RESET;
1841                     ; 369   uint8_t itpos = 0;
1843                     ; 370   uint8_t itmask1 = 0;
1845                     ; 371   uint8_t itmask2 = 0;
1847                     ; 372   uint8_t enablestatus = 0;
1849                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1851  0002 a165          	cp	a,#101
1852  0004 2714          	jreq	L612
1853  0006 a155          	cp	a,#85
1854  0008 2710          	jreq	L612
1855  000a a145          	cp	a,#69
1856  000c 270c          	jreq	L612
1857  000e a134          	cp	a,#52
1858  0010 2708          	jreq	L612
1859  0012 a117          	cp	a,#23
1860  0014 2704          	jreq	L612
1861  0016 a106          	cp	a,#6
1862  0018 2603          	jrne	L412
1863  001a               L612:
1864  001a 4f            	clr	a
1865  001b 2010          	jra	L022
1866  001d               L412:
1867  001d ae0175        	ldw	x,#373
1868  0020 89            	pushw	x
1869  0021 ae0000        	ldw	x,#0
1870  0024 89            	pushw	x
1871  0025 ae0000        	ldw	x,#L102
1872  0028 cd0000        	call	_assert_failed
1874  002b 5b04          	addw	sp,#4
1875  002d               L022:
1876                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1878  002d 7b03          	ld	a,(OFST+1,sp)
1879  002f a40f          	and	a,#15
1880  0031 5f            	clrw	x
1881  0032 97            	ld	xl,a
1882  0033 a601          	ld	a,#1
1883  0035 5d            	tnzw	x
1884  0036 2704          	jreq	L222
1885  0038               L422:
1886  0038 48            	sll	a
1887  0039 5a            	decw	x
1888  003a 26fc          	jrne	L422
1889  003c               L222:
1890  003c 6b01          	ld	(OFST-1,sp),a
1892                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1894  003e 7b03          	ld	a,(OFST+1,sp)
1895  0040 4e            	swap	a
1896  0041 a40f          	and	a,#15
1897  0043 6b02          	ld	(OFST+0,sp),a
1899                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1901  0045 7b02          	ld	a,(OFST+0,sp)
1902  0047 5f            	clrw	x
1903  0048 97            	ld	xl,a
1904  0049 a601          	ld	a,#1
1905  004b 5d            	tnzw	x
1906  004c 2704          	jreq	L622
1907  004e               L032:
1908  004e 48            	sll	a
1909  004f 5a            	decw	x
1910  0050 26fc          	jrne	L032
1911  0052               L622:
1912  0052 6b02          	ld	(OFST+0,sp),a
1914                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1916  0054 c65203        	ld	a,20995
1917  0057 1402          	and	a,(OFST+0,sp)
1918  0059 6b02          	ld	(OFST+0,sp),a
1920                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1922  005b c65202        	ld	a,20994
1923  005e 1501          	bcp	a,(OFST-1,sp)
1924  0060 270a          	jreq	L156
1926  0062 0d02          	tnz	(OFST+0,sp)
1927  0064 2706          	jreq	L156
1928                     ; 387     pendingbitstatus = SET;
1930  0066 a601          	ld	a,#1
1931  0068 6b02          	ld	(OFST+0,sp),a
1934  006a 2002          	jra	L356
1935  006c               L156:
1936                     ; 392     pendingbitstatus = RESET;
1938  006c 0f02          	clr	(OFST+0,sp)
1940  006e               L356:
1941                     ; 395   return  pendingbitstatus;
1943  006e 7b02          	ld	a,(OFST+0,sp)
1946  0070 5b03          	addw	sp,#3
1947  0072 81            	ret
1991                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1991                     ; 413 {
1992                     .text:	section	.text,new
1993  0000               _SPI_ClearITPendingBit:
1995  0000 88            	push	a
1996  0001 88            	push	a
1997       00000001      OFST:	set	1
2000                     ; 414   uint8_t itpos = 0;
2002                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2004  0002 a145          	cp	a,#69
2005  0004 2704          	jreq	L632
2006  0006 a134          	cp	a,#52
2007  0008 2603          	jrne	L432
2008  000a               L632:
2009  000a 4f            	clr	a
2010  000b 2010          	jra	L042
2011  000d               L432:
2012  000d ae019f        	ldw	x,#415
2013  0010 89            	pushw	x
2014  0011 ae0000        	ldw	x,#0
2015  0014 89            	pushw	x
2016  0015 ae0000        	ldw	x,#L102
2017  0018 cd0000        	call	_assert_failed
2019  001b 5b04          	addw	sp,#4
2020  001d               L042:
2021                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2023  001d 7b02          	ld	a,(OFST+1,sp)
2024  001f a4f0          	and	a,#240
2025  0021 4e            	swap	a
2026  0022 a40f          	and	a,#15
2027  0024 5f            	clrw	x
2028  0025 97            	ld	xl,a
2029  0026 a601          	ld	a,#1
2030  0028 5d            	tnzw	x
2031  0029 2704          	jreq	L242
2032  002b               L442:
2033  002b 48            	sll	a
2034  002c 5a            	decw	x
2035  002d 26fc          	jrne	L442
2036  002f               L242:
2037  002f 6b01          	ld	(OFST+0,sp),a
2039                     ; 422   SPI->SR = (uint8_t)(~itpos);
2041  0031 7b01          	ld	a,(OFST+0,sp)
2042  0033 43            	cpl	a
2043  0034 c75203        	ld	20995,a
2044                     ; 424 }
2047  0037 85            	popw	x
2048  0038 81            	ret
2061                     	xdef	_SPI_ClearITPendingBit
2062                     	xdef	_SPI_GetITStatus
2063                     	xdef	_SPI_ClearFlag
2064                     	xdef	_SPI_GetFlagStatus
2065                     	xdef	_SPI_BiDirectionalLineConfig
2066                     	xdef	_SPI_GetCRCPolynomial
2067                     	xdef	_SPI_ResetCRC
2068                     	xdef	_SPI_GetCRC
2069                     	xdef	_SPI_CalculateCRCCmd
2070                     	xdef	_SPI_TransmitCRC
2071                     	xdef	_SPI_NSSInternalSoftwareCmd
2072                     	xdef	_SPI_ReceiveData
2073                     	xdef	_SPI_SendData
2074                     	xdef	_SPI_ITConfig
2075                     	xdef	_SPI_Cmd
2076                     	xdef	_SPI_Init
2077                     	xdef	_SPI_DeInit
2078                     	xref	_assert_failed
2079                     .const:	section	.text
2080  0000               L102:
2081  0000 7372635c7374  	dc.b	"src\stm8s_spi.c",0
2101                     	end
