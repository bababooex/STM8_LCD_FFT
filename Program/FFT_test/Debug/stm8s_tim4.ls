   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 49 void TIM4_DeInit(void)
  43                     ; 50 {
  45                     .text:	section	.text,new
  46  0000               _TIM4_DeInit:
  50                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  52  0000 725f5340      	clr	21312
  53                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  55  0004 725f5341      	clr	21313
  56                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  58  0008 725f5344      	clr	21316
  59                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  61  000c 725f5345      	clr	21317
  62                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  64  0010 35ff5346      	mov	21318,#255
  65                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  67  0014 725f5342      	clr	21314
  68                     ; 57 }
  71  0018 81            	ret
 176                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 176                     ; 66 {
 177                     .text:	section	.text,new
 178  0000               _TIM4_TimeBaseInit:
 180  0000 89            	pushw	x
 181       00000000      OFST:	set	0
 184                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 186  0001 9e            	ld	a,xh
 187  0002 4d            	tnz	a
 188  0003 2723          	jreq	L21
 189  0005 9e            	ld	a,xh
 190  0006 a101          	cp	a,#1
 191  0008 271e          	jreq	L21
 192  000a 9e            	ld	a,xh
 193  000b a102          	cp	a,#2
 194  000d 2719          	jreq	L21
 195  000f 9e            	ld	a,xh
 196  0010 a103          	cp	a,#3
 197  0012 2714          	jreq	L21
 198  0014 9e            	ld	a,xh
 199  0015 a104          	cp	a,#4
 200  0017 270f          	jreq	L21
 201  0019 9e            	ld	a,xh
 202  001a a105          	cp	a,#5
 203  001c 270a          	jreq	L21
 204  001e 9e            	ld	a,xh
 205  001f a106          	cp	a,#6
 206  0021 2705          	jreq	L21
 207  0023 9e            	ld	a,xh
 208  0024 a107          	cp	a,#7
 209  0026 2603          	jrne	L01
 210  0028               L21:
 211  0028 4f            	clr	a
 212  0029 2010          	jra	L41
 213  002b               L01:
 214  002b ae0044        	ldw	x,#68
 215  002e 89            	pushw	x
 216  002f ae0000        	ldw	x,#0
 217  0032 89            	pushw	x
 218  0033 ae0000        	ldw	x,#L56
 219  0036 cd0000        	call	_assert_failed
 221  0039 5b04          	addw	sp,#4
 222  003b               L41:
 223                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 225  003b 7b01          	ld	a,(OFST+1,sp)
 226  003d c75345        	ld	21317,a
 227                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 229  0040 7b02          	ld	a,(OFST+2,sp)
 230  0042 c75346        	ld	21318,a
 231                     ; 73 }
 234  0045 85            	popw	x
 235  0046 81            	ret
 291                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 291                     ; 82 {
 292                     .text:	section	.text,new
 293  0000               _TIM4_Cmd:
 295  0000 88            	push	a
 296       00000000      OFST:	set	0
 299                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 301  0001 4d            	tnz	a
 302  0002 2704          	jreq	L22
 303  0004 a101          	cp	a,#1
 304  0006 2603          	jrne	L02
 305  0008               L22:
 306  0008 4f            	clr	a
 307  0009 2010          	jra	L42
 308  000b               L02:
 309  000b ae0054        	ldw	x,#84
 310  000e 89            	pushw	x
 311  000f ae0000        	ldw	x,#0
 312  0012 89            	pushw	x
 313  0013 ae0000        	ldw	x,#L56
 314  0016 cd0000        	call	_assert_failed
 316  0019 5b04          	addw	sp,#4
 317  001b               L42:
 318                     ; 87   if (NewState != DISABLE)
 320  001b 0d01          	tnz	(OFST+1,sp)
 321  001d 2706          	jreq	L511
 322                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 324  001f 72105340      	bset	21312,#0
 326  0023 2004          	jra	L711
 327  0025               L511:
 328                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 330  0025 72115340      	bres	21312,#0
 331  0029               L711:
 332                     ; 95 }
 335  0029 84            	pop	a
 336  002a 81            	ret
 395                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 395                     ; 108 {
 396                     .text:	section	.text,new
 397  0000               _TIM4_ITConfig:
 399  0000 89            	pushw	x
 400       00000000      OFST:	set	0
 403                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 405  0001 9e            	ld	a,xh
 406  0002 a101          	cp	a,#1
 407  0004 2603          	jrne	L03
 408  0006 4f            	clr	a
 409  0007 2010          	jra	L23
 410  0009               L03:
 411  0009 ae006e        	ldw	x,#110
 412  000c 89            	pushw	x
 413  000d ae0000        	ldw	x,#0
 414  0010 89            	pushw	x
 415  0011 ae0000        	ldw	x,#L56
 416  0014 cd0000        	call	_assert_failed
 418  0017 5b04          	addw	sp,#4
 419  0019               L23:
 420                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 422  0019 0d02          	tnz	(OFST+2,sp)
 423  001b 2706          	jreq	L63
 424  001d 7b02          	ld	a,(OFST+2,sp)
 425  001f a101          	cp	a,#1
 426  0021 2603          	jrne	L43
 427  0023               L63:
 428  0023 4f            	clr	a
 429  0024 2010          	jra	L04
 430  0026               L43:
 431  0026 ae006f        	ldw	x,#111
 432  0029 89            	pushw	x
 433  002a ae0000        	ldw	x,#0
 434  002d 89            	pushw	x
 435  002e ae0000        	ldw	x,#L56
 436  0031 cd0000        	call	_assert_failed
 438  0034 5b04          	addw	sp,#4
 439  0036               L04:
 440                     ; 113   if (NewState != DISABLE)
 442  0036 0d02          	tnz	(OFST+2,sp)
 443  0038 270a          	jreq	L151
 444                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 446  003a c65341        	ld	a,21313
 447  003d 1a01          	or	a,(OFST+1,sp)
 448  003f c75341        	ld	21313,a
 450  0042 2009          	jra	L351
 451  0044               L151:
 452                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 454  0044 7b01          	ld	a,(OFST+1,sp)
 455  0046 43            	cpl	a
 456  0047 c45341        	and	a,21313
 457  004a c75341        	ld	21313,a
 458  004d               L351:
 459                     ; 123 }
 462  004d 85            	popw	x
 463  004e 81            	ret
 500                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 500                     ; 132 {
 501                     .text:	section	.text,new
 502  0000               _TIM4_UpdateDisableConfig:
 504  0000 88            	push	a
 505       00000000      OFST:	set	0
 508                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 510  0001 4d            	tnz	a
 511  0002 2704          	jreq	L64
 512  0004 a101          	cp	a,#1
 513  0006 2603          	jrne	L44
 514  0008               L64:
 515  0008 4f            	clr	a
 516  0009 2010          	jra	L05
 517  000b               L44:
 518  000b ae0086        	ldw	x,#134
 519  000e 89            	pushw	x
 520  000f ae0000        	ldw	x,#0
 521  0012 89            	pushw	x
 522  0013 ae0000        	ldw	x,#L56
 523  0016 cd0000        	call	_assert_failed
 525  0019 5b04          	addw	sp,#4
 526  001b               L05:
 527                     ; 137   if (NewState != DISABLE)
 529  001b 0d01          	tnz	(OFST+1,sp)
 530  001d 2706          	jreq	L371
 531                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 533  001f 72125340      	bset	21312,#1
 535  0023 2004          	jra	L571
 536  0025               L371:
 537                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 539  0025 72135340      	bres	21312,#1
 540  0029               L571:
 541                     ; 145 }
 544  0029 84            	pop	a
 545  002a 81            	ret
 604                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 604                     ; 156 {
 605                     .text:	section	.text,new
 606  0000               _TIM4_UpdateRequestConfig:
 608  0000 88            	push	a
 609       00000000      OFST:	set	0
 612                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 614  0001 4d            	tnz	a
 615  0002 2704          	jreq	L65
 616  0004 a101          	cp	a,#1
 617  0006 2603          	jrne	L45
 618  0008               L65:
 619  0008 4f            	clr	a
 620  0009 2010          	jra	L06
 621  000b               L45:
 622  000b ae009e        	ldw	x,#158
 623  000e 89            	pushw	x
 624  000f ae0000        	ldw	x,#0
 625  0012 89            	pushw	x
 626  0013 ae0000        	ldw	x,#L56
 627  0016 cd0000        	call	_assert_failed
 629  0019 5b04          	addw	sp,#4
 630  001b               L06:
 631                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 633  001b 0d01          	tnz	(OFST+1,sp)
 634  001d 2706          	jreq	L522
 635                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 637  001f 72145340      	bset	21312,#2
 639  0023 2004          	jra	L722
 640  0025               L522:
 641                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 643  0025 72155340      	bres	21312,#2
 644  0029               L722:
 645                     ; 169 }
 648  0029 84            	pop	a
 649  002a 81            	ret
 707                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 707                     ; 180 {
 708                     .text:	section	.text,new
 709  0000               _TIM4_SelectOnePulseMode:
 711  0000 88            	push	a
 712       00000000      OFST:	set	0
 715                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 717  0001 a101          	cp	a,#1
 718  0003 2703          	jreq	L66
 719  0005 4d            	tnz	a
 720  0006 2603          	jrne	L46
 721  0008               L66:
 722  0008 4f            	clr	a
 723  0009 2010          	jra	L07
 724  000b               L46:
 725  000b ae00b6        	ldw	x,#182
 726  000e 89            	pushw	x
 727  000f ae0000        	ldw	x,#0
 728  0012 89            	pushw	x
 729  0013 ae0000        	ldw	x,#L56
 730  0016 cd0000        	call	_assert_failed
 732  0019 5b04          	addw	sp,#4
 733  001b               L07:
 734                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 736  001b 0d01          	tnz	(OFST+1,sp)
 737  001d 2706          	jreq	L752
 738                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 740  001f 72165340      	bset	21312,#3
 742  0023 2004          	jra	L162
 743  0025               L752:
 744                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 746  0025 72175340      	bres	21312,#3
 747  0029               L162:
 748                     ; 193 }
 751  0029 84            	pop	a
 752  002a 81            	ret
 821                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 821                     ; 216 {
 822                     .text:	section	.text,new
 823  0000               _TIM4_PrescalerConfig:
 825  0000 89            	pushw	x
 826       00000000      OFST:	set	0
 829                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 831  0001 9f            	ld	a,xl
 832  0002 4d            	tnz	a
 833  0003 2705          	jreq	L67
 834  0005 9f            	ld	a,xl
 835  0006 a101          	cp	a,#1
 836  0008 2603          	jrne	L47
 837  000a               L67:
 838  000a 4f            	clr	a
 839  000b 2010          	jra	L001
 840  000d               L47:
 841  000d ae00da        	ldw	x,#218
 842  0010 89            	pushw	x
 843  0011 ae0000        	ldw	x,#0
 844  0014 89            	pushw	x
 845  0015 ae0000        	ldw	x,#L56
 846  0018 cd0000        	call	_assert_failed
 848  001b 5b04          	addw	sp,#4
 849  001d               L001:
 850                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 852  001d 0d01          	tnz	(OFST+1,sp)
 853  001f 272a          	jreq	L401
 854  0021 7b01          	ld	a,(OFST+1,sp)
 855  0023 a101          	cp	a,#1
 856  0025 2724          	jreq	L401
 857  0027 7b01          	ld	a,(OFST+1,sp)
 858  0029 a102          	cp	a,#2
 859  002b 271e          	jreq	L401
 860  002d 7b01          	ld	a,(OFST+1,sp)
 861  002f a103          	cp	a,#3
 862  0031 2718          	jreq	L401
 863  0033 7b01          	ld	a,(OFST+1,sp)
 864  0035 a104          	cp	a,#4
 865  0037 2712          	jreq	L401
 866  0039 7b01          	ld	a,(OFST+1,sp)
 867  003b a105          	cp	a,#5
 868  003d 270c          	jreq	L401
 869  003f 7b01          	ld	a,(OFST+1,sp)
 870  0041 a106          	cp	a,#6
 871  0043 2706          	jreq	L401
 872  0045 7b01          	ld	a,(OFST+1,sp)
 873  0047 a107          	cp	a,#7
 874  0049 2603          	jrne	L201
 875  004b               L401:
 876  004b 4f            	clr	a
 877  004c 2010          	jra	L601
 878  004e               L201:
 879  004e ae00db        	ldw	x,#219
 880  0051 89            	pushw	x
 881  0052 ae0000        	ldw	x,#0
 882  0055 89            	pushw	x
 883  0056 ae0000        	ldw	x,#L56
 884  0059 cd0000        	call	_assert_failed
 886  005c 5b04          	addw	sp,#4
 887  005e               L601:
 888                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 890  005e 7b01          	ld	a,(OFST+1,sp)
 891  0060 c75345        	ld	21317,a
 892                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 894  0063 7b02          	ld	a,(OFST+2,sp)
 895  0065 c75343        	ld	21315,a
 896                     ; 226 }
 899  0068 85            	popw	x
 900  0069 81            	ret
 937                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 937                     ; 235 {
 938                     .text:	section	.text,new
 939  0000               _TIM4_ARRPreloadConfig:
 941  0000 88            	push	a
 942       00000000      OFST:	set	0
 945                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 947  0001 4d            	tnz	a
 948  0002 2704          	jreq	L411
 949  0004 a101          	cp	a,#1
 950  0006 2603          	jrne	L211
 951  0008               L411:
 952  0008 4f            	clr	a
 953  0009 2010          	jra	L611
 954  000b               L211:
 955  000b ae00ed        	ldw	x,#237
 956  000e 89            	pushw	x
 957  000f ae0000        	ldw	x,#0
 958  0012 89            	pushw	x
 959  0013 ae0000        	ldw	x,#L56
 960  0016 cd0000        	call	_assert_failed
 962  0019 5b04          	addw	sp,#4
 963  001b               L611:
 964                     ; 240   if (NewState != DISABLE)
 966  001b 0d01          	tnz	(OFST+1,sp)
 967  001d 2706          	jreq	L333
 968                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 970  001f 721e5340      	bset	21312,#7
 972  0023 2004          	jra	L533
 973  0025               L333:
 974                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 976  0025 721f5340      	bres	21312,#7
 977  0029               L533:
 978                     ; 248 }
 981  0029 84            	pop	a
 982  002a 81            	ret
1032                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1032                     ; 258 {
1033                     .text:	section	.text,new
1034  0000               _TIM4_GenerateEvent:
1036  0000 88            	push	a
1037       00000000      OFST:	set	0
1040                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
1042  0001 a101          	cp	a,#1
1043  0003 2603          	jrne	L221
1044  0005 4f            	clr	a
1045  0006 2010          	jra	L421
1046  0008               L221:
1047  0008 ae0104        	ldw	x,#260
1048  000b 89            	pushw	x
1049  000c ae0000        	ldw	x,#0
1050  000f 89            	pushw	x
1051  0010 ae0000        	ldw	x,#L56
1052  0013 cd0000        	call	_assert_failed
1054  0016 5b04          	addw	sp,#4
1055  0018               L421:
1056                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1058  0018 7b01          	ld	a,(OFST+1,sp)
1059  001a c75343        	ld	21315,a
1060                     ; 264 }
1063  001d 84            	pop	a
1064  001e 81            	ret
1096                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1096                     ; 273 {
1097                     .text:	section	.text,new
1098  0000               _TIM4_SetCounter:
1102                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1104  0000 c75344        	ld	21316,a
1105                     ; 276 }
1108  0003 81            	ret
1140                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1140                     ; 285 {
1141                     .text:	section	.text,new
1142  0000               _TIM4_SetAutoreload:
1146                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1148  0000 c75346        	ld	21318,a
1149                     ; 288 }
1152  0003 81            	ret
1175                     ; 295 uint8_t TIM4_GetCounter(void)
1175                     ; 296 {
1176                     .text:	section	.text,new
1177  0000               _TIM4_GetCounter:
1181                     ; 298   return (uint8_t)(TIM4->CNTR);
1183  0000 c65344        	ld	a,21316
1186  0003 81            	ret
1210                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1210                     ; 307 {
1211                     .text:	section	.text,new
1212  0000               _TIM4_GetPrescaler:
1216                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1218  0000 c65345        	ld	a,21317
1221  0003 81            	ret
1301                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1301                     ; 320 {
1302                     .text:	section	.text,new
1303  0000               _TIM4_GetFlagStatus:
1305  0000 88            	push	a
1306  0001 88            	push	a
1307       00000001      OFST:	set	1
1310                     ; 321   FlagStatus bitstatus = RESET;
1312                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1314  0002 a101          	cp	a,#1
1315  0004 2603          	jrne	L041
1316  0006 4f            	clr	a
1317  0007 2010          	jra	L241
1318  0009               L041:
1319  0009 ae0144        	ldw	x,#324
1320  000c 89            	pushw	x
1321  000d ae0000        	ldw	x,#0
1322  0010 89            	pushw	x
1323  0011 ae0000        	ldw	x,#L56
1324  0014 cd0000        	call	_assert_failed
1326  0017 5b04          	addw	sp,#4
1327  0019               L241:
1328                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1330  0019 c65342        	ld	a,21314
1331  001c 1502          	bcp	a,(OFST+1,sp)
1332  001e 2706          	jreq	L374
1333                     ; 328     bitstatus = SET;
1335  0020 a601          	ld	a,#1
1336  0022 6b01          	ld	(OFST+0,sp),a
1339  0024 2002          	jra	L574
1340  0026               L374:
1341                     ; 332     bitstatus = RESET;
1343  0026 0f01          	clr	(OFST+0,sp)
1345  0028               L574:
1346                     ; 334   return ((FlagStatus)bitstatus);
1348  0028 7b01          	ld	a,(OFST+0,sp)
1351  002a 85            	popw	x
1352  002b 81            	ret
1388                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1388                     ; 345 {
1389                     .text:	section	.text,new
1390  0000               _TIM4_ClearFlag:
1392  0000 88            	push	a
1393       00000000      OFST:	set	0
1396                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1398  0001 a101          	cp	a,#1
1399  0003 2603          	jrne	L641
1400  0005 4f            	clr	a
1401  0006 2010          	jra	L051
1402  0008               L641:
1403  0008 ae015b        	ldw	x,#347
1404  000b 89            	pushw	x
1405  000c ae0000        	ldw	x,#0
1406  000f 89            	pushw	x
1407  0010 ae0000        	ldw	x,#L56
1408  0013 cd0000        	call	_assert_failed
1410  0016 5b04          	addw	sp,#4
1411  0018               L051:
1412                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1414  0018 7b01          	ld	a,(OFST+1,sp)
1415  001a 43            	cpl	a
1416  001b c75342        	ld	21314,a
1417                     ; 351 }
1420  001e 84            	pop	a
1421  001f 81            	ret
1482                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1482                     ; 361 {
1483                     .text:	section	.text,new
1484  0000               _TIM4_GetITStatus:
1486  0000 88            	push	a
1487  0001 89            	pushw	x
1488       00000002      OFST:	set	2
1491                     ; 362   ITStatus bitstatus = RESET;
1493                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1497                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1499  0002 a101          	cp	a,#1
1500  0004 2603          	jrne	L451
1501  0006 4f            	clr	a
1502  0007 2010          	jra	L651
1503  0009               L451:
1504  0009 ae016f        	ldw	x,#367
1505  000c 89            	pushw	x
1506  000d ae0000        	ldw	x,#0
1507  0010 89            	pushw	x
1508  0011 ae0000        	ldw	x,#L56
1509  0014 cd0000        	call	_assert_failed
1511  0017 5b04          	addw	sp,#4
1512  0019               L651:
1513                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1515  0019 c65342        	ld	a,21314
1516  001c 1403          	and	a,(OFST+1,sp)
1517  001e 6b01          	ld	(OFST-1,sp),a
1519                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1521  0020 c65341        	ld	a,21313
1522  0023 1403          	and	a,(OFST+1,sp)
1523  0025 6b02          	ld	(OFST+0,sp),a
1525                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1527  0027 0d01          	tnz	(OFST-1,sp)
1528  0029 270a          	jreq	L345
1530  002b 0d02          	tnz	(OFST+0,sp)
1531  002d 2706          	jreq	L345
1532                     ; 375     bitstatus = (ITStatus)SET;
1534  002f a601          	ld	a,#1
1535  0031 6b02          	ld	(OFST+0,sp),a
1538  0033 2002          	jra	L545
1539  0035               L345:
1540                     ; 379     bitstatus = (ITStatus)RESET;
1542  0035 0f02          	clr	(OFST+0,sp)
1544  0037               L545:
1545                     ; 381   return ((ITStatus)bitstatus);
1547  0037 7b02          	ld	a,(OFST+0,sp)
1550  0039 5b03          	addw	sp,#3
1551  003b 81            	ret
1588                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1588                     ; 392 {
1589                     .text:	section	.text,new
1590  0000               _TIM4_ClearITPendingBit:
1592  0000 88            	push	a
1593       00000000      OFST:	set	0
1596                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1598  0001 a101          	cp	a,#1
1599  0003 2603          	jrne	L261
1600  0005 4f            	clr	a
1601  0006 2010          	jra	L461
1602  0008               L261:
1603  0008 ae018a        	ldw	x,#394
1604  000b 89            	pushw	x
1605  000c ae0000        	ldw	x,#0
1606  000f 89            	pushw	x
1607  0010 ae0000        	ldw	x,#L56
1608  0013 cd0000        	call	_assert_failed
1610  0016 5b04          	addw	sp,#4
1611  0018               L461:
1612                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1614  0018 7b01          	ld	a,(OFST+1,sp)
1615  001a 43            	cpl	a
1616  001b c75342        	ld	21314,a
1617                     ; 398 }
1620  001e 84            	pop	a
1621  001f 81            	ret
1634                     	xdef	_TIM4_ClearITPendingBit
1635                     	xdef	_TIM4_GetITStatus
1636                     	xdef	_TIM4_ClearFlag
1637                     	xdef	_TIM4_GetFlagStatus
1638                     	xdef	_TIM4_GetPrescaler
1639                     	xdef	_TIM4_GetCounter
1640                     	xdef	_TIM4_SetAutoreload
1641                     	xdef	_TIM4_SetCounter
1642                     	xdef	_TIM4_GenerateEvent
1643                     	xdef	_TIM4_ARRPreloadConfig
1644                     	xdef	_TIM4_PrescalerConfig
1645                     	xdef	_TIM4_SelectOnePulseMode
1646                     	xdef	_TIM4_UpdateRequestConfig
1647                     	xdef	_TIM4_UpdateDisableConfig
1648                     	xdef	_TIM4_ITConfig
1649                     	xdef	_TIM4_Cmd
1650                     	xdef	_TIM4_TimeBaseInit
1651                     	xdef	_TIM4_DeInit
1652                     	xref	_assert_failed
1653                     .const:	section	.text
1654  0000               L56:
1655  0000 7372635c7374  	dc.b	"src\stm8s_tim4.c",0
1675                     	end
