   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
 109                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 109                     ; 54 {
 111                     .text:	section	.text,new
 112  0000               _GPIO_DeInit:
 116                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 118  0000 7f            	clr	(x)
 119                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 121  0001 6f02          	clr	(2,x)
 122                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 124  0003 6f03          	clr	(3,x)
 125                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 127  0005 6f04          	clr	(4,x)
 128                     ; 59 }
 131  0007 81            	ret
 372                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 372                     ; 72 {
 373                     .text:	section	.text,new
 374  0000               _GPIO_Init:
 376  0000 89            	pushw	x
 377       00000000      OFST:	set	0
 380                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 382  0001 0d06          	tnz	(OFST+6,sp)
 383  0003 2742          	jreq	L21
 384  0005 7b06          	ld	a,(OFST+6,sp)
 385  0007 a140          	cp	a,#64
 386  0009 273c          	jreq	L21
 387  000b 7b06          	ld	a,(OFST+6,sp)
 388  000d a120          	cp	a,#32
 389  000f 2736          	jreq	L21
 390  0011 7b06          	ld	a,(OFST+6,sp)
 391  0013 a160          	cp	a,#96
 392  0015 2730          	jreq	L21
 393  0017 7b06          	ld	a,(OFST+6,sp)
 394  0019 a1a0          	cp	a,#160
 395  001b 272a          	jreq	L21
 396  001d 7b06          	ld	a,(OFST+6,sp)
 397  001f a1e0          	cp	a,#224
 398  0021 2724          	jreq	L21
 399  0023 7b06          	ld	a,(OFST+6,sp)
 400  0025 a180          	cp	a,#128
 401  0027 271e          	jreq	L21
 402  0029 7b06          	ld	a,(OFST+6,sp)
 403  002b a1c0          	cp	a,#192
 404  002d 2718          	jreq	L21
 405  002f 7b06          	ld	a,(OFST+6,sp)
 406  0031 a1b0          	cp	a,#176
 407  0033 2712          	jreq	L21
 408  0035 7b06          	ld	a,(OFST+6,sp)
 409  0037 a1f0          	cp	a,#240
 410  0039 270c          	jreq	L21
 411  003b 7b06          	ld	a,(OFST+6,sp)
 412  003d a190          	cp	a,#144
 413  003f 2706          	jreq	L21
 414  0041 7b06          	ld	a,(OFST+6,sp)
 415  0043 a1d0          	cp	a,#208
 416  0045 2603          	jrne	L01
 417  0047               L21:
 418  0047 4f            	clr	a
 419  0048 2010          	jra	L41
 420  004a               L01:
 421  004a ae004d        	ldw	x,#77
 422  004d 89            	pushw	x
 423  004e ae0000        	ldw	x,#0
 424  0051 89            	pushw	x
 425  0052 ae0000        	ldw	x,#L771
 426  0055 cd0000        	call	_assert_failed
 428  0058 5b04          	addw	sp,#4
 429  005a               L41:
 430                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 432  005a 0d05          	tnz	(OFST+5,sp)
 433  005c 2703          	jreq	L61
 434  005e 4f            	clr	a
 435  005f 2010          	jra	L02
 436  0061               L61:
 437  0061 ae004e        	ldw	x,#78
 438  0064 89            	pushw	x
 439  0065 ae0000        	ldw	x,#0
 440  0068 89            	pushw	x
 441  0069 ae0000        	ldw	x,#L771
 442  006c cd0000        	call	_assert_failed
 444  006f 5b04          	addw	sp,#4
 445  0071               L02:
 446                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 448  0071 1e01          	ldw	x,(OFST+1,sp)
 449  0073 7b05          	ld	a,(OFST+5,sp)
 450  0075 43            	cpl	a
 451  0076 e404          	and	a,(4,x)
 452  0078 e704          	ld	(4,x),a
 453                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 455  007a 7b06          	ld	a,(OFST+6,sp)
 456  007c a580          	bcp	a,#128
 457  007e 271f          	jreq	L102
 458                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 460  0080 7b06          	ld	a,(OFST+6,sp)
 461  0082 a510          	bcp	a,#16
 462  0084 2708          	jreq	L302
 463                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 465  0086 1e01          	ldw	x,(OFST+1,sp)
 466  0088 f6            	ld	a,(x)
 467  0089 1a05          	or	a,(OFST+5,sp)
 468  008b f7            	ld	(x),a
 470  008c 2007          	jra	L502
 471  008e               L302:
 472                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 474  008e 1e01          	ldw	x,(OFST+1,sp)
 475  0090 7b05          	ld	a,(OFST+5,sp)
 476  0092 43            	cpl	a
 477  0093 f4            	and	a,(x)
 478  0094 f7            	ld	(x),a
 479  0095               L502:
 480                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 482  0095 1e01          	ldw	x,(OFST+1,sp)
 483  0097 e602          	ld	a,(2,x)
 484  0099 1a05          	or	a,(OFST+5,sp)
 485  009b e702          	ld	(2,x),a
 487  009d 2009          	jra	L702
 488  009f               L102:
 489                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 491  009f 1e01          	ldw	x,(OFST+1,sp)
 492  00a1 7b05          	ld	a,(OFST+5,sp)
 493  00a3 43            	cpl	a
 494  00a4 e402          	and	a,(2,x)
 495  00a6 e702          	ld	(2,x),a
 496  00a8               L702:
 497                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 499  00a8 7b06          	ld	a,(OFST+6,sp)
 500  00aa a540          	bcp	a,#64
 501  00ac 270a          	jreq	L112
 502                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 504  00ae 1e01          	ldw	x,(OFST+1,sp)
 505  00b0 e603          	ld	a,(3,x)
 506  00b2 1a05          	or	a,(OFST+5,sp)
 507  00b4 e703          	ld	(3,x),a
 509  00b6 2009          	jra	L312
 510  00b8               L112:
 511                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 513  00b8 1e01          	ldw	x,(OFST+1,sp)
 514  00ba 7b05          	ld	a,(OFST+5,sp)
 515  00bc 43            	cpl	a
 516  00bd e403          	and	a,(3,x)
 517  00bf e703          	ld	(3,x),a
 518  00c1               L312:
 519                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 521  00c1 7b06          	ld	a,(OFST+6,sp)
 522  00c3 a520          	bcp	a,#32
 523  00c5 270a          	jreq	L512
 524                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 526  00c7 1e01          	ldw	x,(OFST+1,sp)
 527  00c9 e604          	ld	a,(4,x)
 528  00cb 1a05          	or	a,(OFST+5,sp)
 529  00cd e704          	ld	(4,x),a
 531  00cf 2009          	jra	L712
 532  00d1               L512:
 533                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 535  00d1 1e01          	ldw	x,(OFST+1,sp)
 536  00d3 7b05          	ld	a,(OFST+5,sp)
 537  00d5 43            	cpl	a
 538  00d6 e404          	and	a,(4,x)
 539  00d8 e704          	ld	(4,x),a
 540  00da               L712:
 541                     ; 131 }
 544  00da 85            	popw	x
 545  00db 81            	ret
 589                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 589                     ; 142 {
 590                     .text:	section	.text,new
 591  0000               _GPIO_Write:
 593  0000 89            	pushw	x
 594       00000000      OFST:	set	0
 597                     ; 143   GPIOx->ODR = PortVal;
 599  0001 7b05          	ld	a,(OFST+5,sp)
 600  0003 1e01          	ldw	x,(OFST+1,sp)
 601  0005 f7            	ld	(x),a
 602                     ; 144 }
 605  0006 85            	popw	x
 606  0007 81            	ret
 653                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 653                     ; 155 {
 654                     .text:	section	.text,new
 655  0000               _GPIO_WriteHigh:
 657  0000 89            	pushw	x
 658       00000000      OFST:	set	0
 661                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 663  0001 f6            	ld	a,(x)
 664  0002 1a05          	or	a,(OFST+5,sp)
 665  0004 f7            	ld	(x),a
 666                     ; 157 }
 669  0005 85            	popw	x
 670  0006 81            	ret
 717                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 717                     ; 168 {
 718                     .text:	section	.text,new
 719  0000               _GPIO_WriteLow:
 721  0000 89            	pushw	x
 722       00000000      OFST:	set	0
 725                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 727  0001 7b05          	ld	a,(OFST+5,sp)
 728  0003 43            	cpl	a
 729  0004 f4            	and	a,(x)
 730  0005 f7            	ld	(x),a
 731                     ; 170 }
 734  0006 85            	popw	x
 735  0007 81            	ret
 782                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 782                     ; 181 {
 783                     .text:	section	.text,new
 784  0000               _GPIO_WriteReverse:
 786  0000 89            	pushw	x
 787       00000000      OFST:	set	0
 790                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 792  0001 f6            	ld	a,(x)
 793  0002 1805          	xor	a,(OFST+5,sp)
 794  0004 f7            	ld	(x),a
 795                     ; 183 }
 798  0005 85            	popw	x
 799  0006 81            	ret
 837                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 837                     ; 192 {
 838                     .text:	section	.text,new
 839  0000               _GPIO_ReadOutputData:
 843                     ; 193   return ((uint8_t)GPIOx->ODR);
 845  0000 f6            	ld	a,(x)
 848  0001 81            	ret
 885                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 885                     ; 203 {
 886                     .text:	section	.text,new
 887  0000               _GPIO_ReadInputData:
 891                     ; 204   return ((uint8_t)GPIOx->IDR);
 893  0000 e601          	ld	a,(1,x)
 896  0002 81            	ret
 964                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 964                     ; 214 {
 965                     .text:	section	.text,new
 966  0000               _GPIO_ReadInputPin:
 968  0000 89            	pushw	x
 969       00000000      OFST:	set	0
 972                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 974  0001 e601          	ld	a,(1,x)
 975  0003 1405          	and	a,(OFST+5,sp)
 978  0005 85            	popw	x
 979  0006 81            	ret
1058                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1058                     ; 226 {
1059                     .text:	section	.text,new
1060  0000               _GPIO_ExternalPullUpConfig:
1062  0000 89            	pushw	x
1063       00000000      OFST:	set	0
1066                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1068  0001 0d05          	tnz	(OFST+5,sp)
1069  0003 2703          	jreq	L24
1070  0005 4f            	clr	a
1071  0006 2010          	jra	L44
1072  0008               L24:
1073  0008 ae00e4        	ldw	x,#228
1074  000b 89            	pushw	x
1075  000c ae0000        	ldw	x,#0
1076  000f 89            	pushw	x
1077  0010 ae0000        	ldw	x,#L771
1078  0013 cd0000        	call	_assert_failed
1080  0016 5b04          	addw	sp,#4
1081  0018               L44:
1082                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1084  0018 0d06          	tnz	(OFST+6,sp)
1085  001a 2706          	jreq	L05
1086  001c 7b06          	ld	a,(OFST+6,sp)
1087  001e a101          	cp	a,#1
1088  0020 2603          	jrne	L64
1089  0022               L05:
1090  0022 4f            	clr	a
1091  0023 2010          	jra	L25
1092  0025               L64:
1093  0025 ae00e5        	ldw	x,#229
1094  0028 89            	pushw	x
1095  0029 ae0000        	ldw	x,#0
1096  002c 89            	pushw	x
1097  002d ae0000        	ldw	x,#L771
1098  0030 cd0000        	call	_assert_failed
1100  0033 5b04          	addw	sp,#4
1101  0035               L25:
1102                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1104  0035 0d06          	tnz	(OFST+6,sp)
1105  0037 270a          	jreq	L374
1106                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1108  0039 1e01          	ldw	x,(OFST+1,sp)
1109  003b e603          	ld	a,(3,x)
1110  003d 1a05          	or	a,(OFST+5,sp)
1111  003f e703          	ld	(3,x),a
1113  0041 2009          	jra	L574
1114  0043               L374:
1115                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1117  0043 1e01          	ldw	x,(OFST+1,sp)
1118  0045 7b05          	ld	a,(OFST+5,sp)
1119  0047 43            	cpl	a
1120  0048 e403          	and	a,(3,x)
1121  004a e703          	ld	(3,x),a
1122  004c               L574:
1123                     ; 238 }
1126  004c 85            	popw	x
1127  004d 81            	ret
1140                     	xdef	_GPIO_ExternalPullUpConfig
1141                     	xdef	_GPIO_ReadInputPin
1142                     	xdef	_GPIO_ReadOutputData
1143                     	xdef	_GPIO_ReadInputData
1144                     	xdef	_GPIO_WriteReverse
1145                     	xdef	_GPIO_WriteLow
1146                     	xdef	_GPIO_WriteHigh
1147                     	xdef	_GPIO_Write
1148                     	xdef	_GPIO_Init
1149                     	xdef	_GPIO_DeInit
1150                     	xref	_assert_failed
1151                     .const:	section	.text
1152  0000               L771:
1153  0000 7372635c7374  	dc.b	"src\stm8s_gpio.c",0
1173                     	end
