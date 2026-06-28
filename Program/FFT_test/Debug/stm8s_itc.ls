   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  43                     ; 50 uint8_t ITC_GetCPUCC(void)
  43                     ; 51 {
  45                     .text:	section	.text,new
  46  0000               _ITC_GetCPUCC:
  50                     ; 53   _asm("push cc");
  53  0000 8a            push cc
  55                     ; 54   _asm("pop a");
  58  0001 84            pop a
  60                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  63  0002 81            	ret
  86                     ; 80 void ITC_DeInit(void)
  86                     ; 81 {
  87                     .text:	section	.text,new
  88  0000               _ITC_DeInit:
  92                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  94  0000 35ff7f70      	mov	32624,#255
  95                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  97  0004 35ff7f71      	mov	32625,#255
  98                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 100  0008 35ff7f72      	mov	32626,#255
 101                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 103  000c 35ff7f73      	mov	32627,#255
 104                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 106  0010 35ff7f74      	mov	32628,#255
 107                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 109  0014 35ff7f75      	mov	32629,#255
 110                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 112  0018 35ff7f76      	mov	32630,#255
 113                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 115  001c 35ff7f77      	mov	32631,#255
 116                     ; 90 }
 119  0020 81            	ret
 144                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 144                     ; 98 {
 145                     .text:	section	.text,new
 146  0000               _ITC_GetSoftIntStatus:
 150                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 152  0000 cd0000        	call	_ITC_GetCPUCC
 154  0003 a428          	and	a,#40
 157  0005 81            	ret
 403                     .const:	section	.text
 404  0000               L62:
 405  0000 003c          	dc.w	L14
 406  0002 003c          	dc.w	L14
 407  0004 003c          	dc.w	L14
 408  0006 003c          	dc.w	L14
 409  0008 0045          	dc.w	L34
 410  000a 0045          	dc.w	L34
 411  000c 0045          	dc.w	L34
 412  000e 0045          	dc.w	L34
 413  0010 0079          	dc.w	L102
 414  0012 0079          	dc.w	L102
 415  0014 004e          	dc.w	L54
 416  0016 004e          	dc.w	L54
 417  0018 0057          	dc.w	L74
 418  001a 0057          	dc.w	L74
 419  001c 0057          	dc.w	L74
 420  001e 0057          	dc.w	L74
 421  0020 0060          	dc.w	L15
 422  0022 0079          	dc.w	L102
 423  0024 0079          	dc.w	L102
 424  0026 0060          	dc.w	L15
 425  0028 0069          	dc.w	L35
 426  002a 0069          	dc.w	L35
 427  002c 0069          	dc.w	L35
 428  002e 0069          	dc.w	L35
 429  0030 0072          	dc.w	L55
 430                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 430                     ; 108 {
 431                     .text:	section	.text,new
 432  0000               _ITC_GetSoftwarePriority:
 434  0000 88            	push	a
 435  0001 89            	pushw	x
 436       00000002      OFST:	set	2
 439                     ; 109   uint8_t Value = 0;
 441  0002 0f02          	clr	(OFST+0,sp)
 443                     ; 110   uint8_t Mask = 0;
 445                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 447  0004 a119          	cp	a,#25
 448  0006 2403          	jruge	L41
 449  0008 4f            	clr	a
 450  0009 2010          	jra	L61
 451  000b               L41:
 452  000b ae0071        	ldw	x,#113
 453  000e 89            	pushw	x
 454  000f ae0000        	ldw	x,#0
 455  0012 89            	pushw	x
 456  0013 ae0064        	ldw	x,#L571
 457  0016 cd0000        	call	_assert_failed
 459  0019 5b04          	addw	sp,#4
 460  001b               L61:
 461                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 463  001b 7b03          	ld	a,(OFST+1,sp)
 464  001d a403          	and	a,#3
 465  001f 48            	sll	a
 466  0020 5f            	clrw	x
 467  0021 97            	ld	xl,a
 468  0022 a603          	ld	a,#3
 469  0024 5d            	tnzw	x
 470  0025 2704          	jreq	L02
 471  0027               L22:
 472  0027 48            	sll	a
 473  0028 5a            	decw	x
 474  0029 26fc          	jrne	L22
 475  002b               L02:
 476  002b 6b01          	ld	(OFST-1,sp),a
 478                     ; 118   switch (IrqNum)
 480  002d 7b03          	ld	a,(OFST+1,sp)
 482                     ; 198   default:
 482                     ; 199     break;
 483  002f a119          	cp	a,#25
 484  0031 2407          	jruge	L42
 485  0033 5f            	clrw	x
 486  0034 97            	ld	xl,a
 487  0035 58            	sllw	x
 488  0036 de0000        	ldw	x,(L62,x)
 489  0039 fc            	jp	(x)
 490  003a               L42:
 491  003a 203d          	jra	L102
 492  003c               L14:
 493                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 493                     ; 121   case ITC_IRQ_AWU:
 493                     ; 122   case ITC_IRQ_CLK:
 493                     ; 123   case ITC_IRQ_PORTA:
 493                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 495  003c c67f70        	ld	a,32624
 496  003f 1401          	and	a,(OFST-1,sp)
 497  0041 6b02          	ld	(OFST+0,sp),a
 499                     ; 125     break;
 501  0043 2034          	jra	L102
 502  0045               L34:
 503                     ; 127   case ITC_IRQ_PORTB:
 503                     ; 128   case ITC_IRQ_PORTC:
 503                     ; 129   case ITC_IRQ_PORTD:
 503                     ; 130   case ITC_IRQ_PORTE:
 503                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 505  0045 c67f71        	ld	a,32625
 506  0048 1401          	and	a,(OFST-1,sp)
 507  004a 6b02          	ld	(OFST+0,sp),a
 509                     ; 132     break;
 511  004c 202b          	jra	L102
 512  004e               L54:
 513                     ; 141   case ITC_IRQ_SPI:
 513                     ; 142   case ITC_IRQ_TIM1_OVF:
 513                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 515  004e c67f72        	ld	a,32626
 516  0051 1401          	and	a,(OFST-1,sp)
 517  0053 6b02          	ld	(OFST+0,sp),a
 519                     ; 144     break;
 521  0055 2022          	jra	L102
 522  0057               L74:
 523                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 523                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 523                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 523                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 523                     ; 150 #else
 523                     ; 151   case ITC_IRQ_TIM2_OVF:
 523                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 523                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 523                     ; 154   case ITC_IRQ_TIM3_OVF:
 523                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 525  0057 c67f73        	ld	a,32627
 526  005a 1401          	and	a,(OFST-1,sp)
 527  005c 6b02          	ld	(OFST+0,sp),a
 529                     ; 156     break;
 531  005e 2019          	jra	L102
 532  0060               L15:
 533                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 533                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 533                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 533                     ; 161   case ITC_IRQ_UART1_TX:
 533                     ; 162   case ITC_IRQ_UART1_RX:
 533                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 533                     ; 164 #if defined(STM8AF622x)
 533                     ; 165   case ITC_IRQ_UART4_TX:
 533                     ; 166   case ITC_IRQ_UART4_RX:
 533                     ; 167 #endif /*STM8AF622x */
 533                     ; 168   case ITC_IRQ_I2C:
 533                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 535  0060 c67f74        	ld	a,32628
 536  0063 1401          	and	a,(OFST-1,sp)
 537  0065 6b02          	ld	(OFST+0,sp),a
 539                     ; 170     break;
 541  0067 2010          	jra	L102
 542  0069               L35:
 543                     ; 173   case ITC_IRQ_UART2_TX:
 543                     ; 174   case ITC_IRQ_UART2_RX:
 543                     ; 175 #endif /*STM8S105 or STM8AF626x*/
 543                     ; 176 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 543                     ; 177     defined(STM8AF62Ax)
 543                     ; 178   case ITC_IRQ_UART3_TX:
 543                     ; 179   case ITC_IRQ_UART3_RX:
 543                     ; 180   case ITC_IRQ_ADC2:
 543                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 543                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 543                     ; 183     defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 543                     ; 184   case ITC_IRQ_ADC1:
 543                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 543                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 543                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 543                     ; 188 #else
 543                     ; 189   case ITC_IRQ_TIM4_OVF:
 543                     ; 190 #endif /*STM8S903 or STM8AF622x */
 543                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 545  0069 c67f75        	ld	a,32629
 546  006c 1401          	and	a,(OFST-1,sp)
 547  006e 6b02          	ld	(OFST+0,sp),a
 549                     ; 192     break;
 551  0070 2007          	jra	L102
 552  0072               L55:
 553                     ; 194   case ITC_IRQ_EEPROM_EEC:
 553                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 555  0072 c67f76        	ld	a,32630
 556  0075 1401          	and	a,(OFST-1,sp)
 557  0077 6b02          	ld	(OFST+0,sp),a
 559                     ; 196     break;
 561  0079               L75:
 562                     ; 198   default:
 562                     ; 199     break;
 564  0079               L102:
 565                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 567  0079 7b03          	ld	a,(OFST+1,sp)
 568  007b a403          	and	a,#3
 569  007d 48            	sll	a
 570  007e 5f            	clrw	x
 571  007f 97            	ld	xl,a
 572  0080 7b02          	ld	a,(OFST+0,sp)
 573  0082 5d            	tnzw	x
 574  0083 2704          	jreq	L03
 575  0085               L23:
 576  0085 44            	srl	a
 577  0086 5a            	decw	x
 578  0087 26fc          	jrne	L23
 579  0089               L03:
 580  0089 6b02          	ld	(OFST+0,sp),a
 582                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 584  008b 7b02          	ld	a,(OFST+0,sp)
 587  008d 5b03          	addw	sp,#3
 588  008f 81            	ret
 650                     	switch	.const
 651  0032               L66:
 652  0032 0091          	dc.w	L302
 653  0034 0091          	dc.w	L302
 654  0036 0091          	dc.w	L302
 655  0038 0091          	dc.w	L302
 656  003a 00a3          	dc.w	L502
 657  003c 00a3          	dc.w	L502
 658  003e 00a3          	dc.w	L502
 659  0040 00a3          	dc.w	L502
 660  0042 010d          	dc.w	L352
 661  0044 010d          	dc.w	L352
 662  0046 00b5          	dc.w	L702
 663  0048 00b5          	dc.w	L702
 664  004a 00c7          	dc.w	L112
 665  004c 00c7          	dc.w	L112
 666  004e 00c7          	dc.w	L112
 667  0050 00c7          	dc.w	L112
 668  0052 00d9          	dc.w	L312
 669  0054 010d          	dc.w	L352
 670  0056 010d          	dc.w	L352
 671  0058 00d9          	dc.w	L312
 672  005a 00eb          	dc.w	L512
 673  005c 00eb          	dc.w	L512
 674  005e 00eb          	dc.w	L512
 675  0060 00eb          	dc.w	L512
 676  0062 00fd          	dc.w	L712
 677                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 677                     ; 221 {
 678                     .text:	section	.text,new
 679  0000               _ITC_SetSoftwarePriority:
 681  0000 89            	pushw	x
 682  0001 89            	pushw	x
 683       00000002      OFST:	set	2
 686                     ; 222   uint8_t Mask = 0;
 688                     ; 223   uint8_t NewPriority = 0;
 690                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 692  0002 9e            	ld	a,xh
 693  0003 a119          	cp	a,#25
 694  0005 2403          	jruge	L63
 695  0007 4f            	clr	a
 696  0008 2010          	jra	L04
 697  000a               L63:
 698  000a ae00e2        	ldw	x,#226
 699  000d 89            	pushw	x
 700  000e ae0000        	ldw	x,#0
 701  0011 89            	pushw	x
 702  0012 ae0064        	ldw	x,#L571
 703  0015 cd0000        	call	_assert_failed
 705  0018 5b04          	addw	sp,#4
 706  001a               L04:
 707                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 709  001a 7b04          	ld	a,(OFST+2,sp)
 710  001c a102          	cp	a,#2
 711  001e 2710          	jreq	L44
 712  0020 7b04          	ld	a,(OFST+2,sp)
 713  0022 a101          	cp	a,#1
 714  0024 270a          	jreq	L44
 715  0026 0d04          	tnz	(OFST+2,sp)
 716  0028 2706          	jreq	L44
 717  002a 7b04          	ld	a,(OFST+2,sp)
 718  002c a103          	cp	a,#3
 719  002e 2603          	jrne	L24
 720  0030               L44:
 721  0030 4f            	clr	a
 722  0031 2010          	jra	L64
 723  0033               L24:
 724  0033 ae00e3        	ldw	x,#227
 725  0036 89            	pushw	x
 726  0037 ae0000        	ldw	x,#0
 727  003a 89            	pushw	x
 728  003b ae0064        	ldw	x,#L571
 729  003e cd0000        	call	_assert_failed
 731  0041 5b04          	addw	sp,#4
 732  0043               L64:
 733                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 735  0043 cd0000        	call	_ITC_GetSoftIntStatus
 737  0046 a128          	cp	a,#40
 738  0048 2603          	jrne	L05
 739  004a 4f            	clr	a
 740  004b 2010          	jra	L25
 741  004d               L05:
 742  004d ae00e6        	ldw	x,#230
 743  0050 89            	pushw	x
 744  0051 ae0000        	ldw	x,#0
 745  0054 89            	pushw	x
 746  0055 ae0064        	ldw	x,#L571
 747  0058 cd0000        	call	_assert_failed
 749  005b 5b04          	addw	sp,#4
 750  005d               L25:
 751                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 753  005d 7b03          	ld	a,(OFST+1,sp)
 754  005f a403          	and	a,#3
 755  0061 48            	sll	a
 756  0062 5f            	clrw	x
 757  0063 97            	ld	xl,a
 758  0064 a603          	ld	a,#3
 759  0066 5d            	tnzw	x
 760  0067 2704          	jreq	L45
 761  0069               L65:
 762  0069 48            	sll	a
 763  006a 5a            	decw	x
 764  006b 26fc          	jrne	L65
 765  006d               L45:
 766  006d 43            	cpl	a
 767  006e 6b01          	ld	(OFST-1,sp),a
 769                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 771  0070 7b03          	ld	a,(OFST+1,sp)
 772  0072 a403          	and	a,#3
 773  0074 48            	sll	a
 774  0075 5f            	clrw	x
 775  0076 97            	ld	xl,a
 776  0077 7b04          	ld	a,(OFST+2,sp)
 777  0079 5d            	tnzw	x
 778  007a 2704          	jreq	L06
 779  007c               L26:
 780  007c 48            	sll	a
 781  007d 5a            	decw	x
 782  007e 26fc          	jrne	L26
 783  0080               L06:
 784  0080 6b02          	ld	(OFST+0,sp),a
 786                     ; 239   switch (IrqNum)
 788  0082 7b03          	ld	a,(OFST+1,sp)
 790                     ; 329   default:
 790                     ; 330     break;
 791  0084 a119          	cp	a,#25
 792  0086 2407          	jruge	L46
 793  0088 5f            	clrw	x
 794  0089 97            	ld	xl,a
 795  008a 58            	sllw	x
 796  008b de0032        	ldw	x,(L66,x)
 797  008e fc            	jp	(x)
 798  008f               L46:
 799  008f 207c          	jra	L352
 800  0091               L302:
 801                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 801                     ; 242   case ITC_IRQ_AWU:
 801                     ; 243   case ITC_IRQ_CLK:
 801                     ; 244   case ITC_IRQ_PORTA:
 801                     ; 245     ITC->ISPR1 &= Mask;
 803  0091 c67f70        	ld	a,32624
 804  0094 1401          	and	a,(OFST-1,sp)
 805  0096 c77f70        	ld	32624,a
 806                     ; 246     ITC->ISPR1 |= NewPriority;
 808  0099 c67f70        	ld	a,32624
 809  009c 1a02          	or	a,(OFST+0,sp)
 810  009e c77f70        	ld	32624,a
 811                     ; 247     break;
 813  00a1 206a          	jra	L352
 814  00a3               L502:
 815                     ; 249   case ITC_IRQ_PORTB:
 815                     ; 250   case ITC_IRQ_PORTC:
 815                     ; 251   case ITC_IRQ_PORTD:
 815                     ; 252   case ITC_IRQ_PORTE:
 815                     ; 253     ITC->ISPR2 &= Mask;
 817  00a3 c67f71        	ld	a,32625
 818  00a6 1401          	and	a,(OFST-1,sp)
 819  00a8 c77f71        	ld	32625,a
 820                     ; 254     ITC->ISPR2 |= NewPriority;
 822  00ab c67f71        	ld	a,32625
 823  00ae 1a02          	or	a,(OFST+0,sp)
 824  00b0 c77f71        	ld	32625,a
 825                     ; 255     break;
 827  00b3 2058          	jra	L352
 828  00b5               L702:
 829                     ; 264   case ITC_IRQ_SPI:
 829                     ; 265   case ITC_IRQ_TIM1_OVF:
 829                     ; 266     ITC->ISPR3 &= Mask;
 831  00b5 c67f72        	ld	a,32626
 832  00b8 1401          	and	a,(OFST-1,sp)
 833  00ba c77f72        	ld	32626,a
 834                     ; 267     ITC->ISPR3 |= NewPriority;
 836  00bd c67f72        	ld	a,32626
 837  00c0 1a02          	or	a,(OFST+0,sp)
 838  00c2 c77f72        	ld	32626,a
 839                     ; 268     break;
 841  00c5 2046          	jra	L352
 842  00c7               L112:
 843                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 843                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 843                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 843                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 843                     ; 274 #else
 843                     ; 275   case ITC_IRQ_TIM2_OVF:
 843                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 843                     ; 277 #endif /*STM8S903 or STM8AF622x */
 843                     ; 278   case ITC_IRQ_TIM3_OVF:
 843                     ; 279     ITC->ISPR4 &= Mask;
 845  00c7 c67f73        	ld	a,32627
 846  00ca 1401          	and	a,(OFST-1,sp)
 847  00cc c77f73        	ld	32627,a
 848                     ; 280     ITC->ISPR4 |= NewPriority;
 850  00cf c67f73        	ld	a,32627
 851  00d2 1a02          	or	a,(OFST+0,sp)
 852  00d4 c77f73        	ld	32627,a
 853                     ; 281     break;
 855  00d7 2034          	jra	L352
 856  00d9               L312:
 857                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 857                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 857                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 857                     ; 286   case ITC_IRQ_UART1_TX:
 857                     ; 287   case ITC_IRQ_UART1_RX:
 857                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 857                     ; 289 #if defined(STM8AF622x)
 857                     ; 290   case ITC_IRQ_UART4_TX:
 857                     ; 291   case ITC_IRQ_UART4_RX:
 857                     ; 292 #endif /*STM8AF622x */
 857                     ; 293   case ITC_IRQ_I2C:
 857                     ; 294     ITC->ISPR5 &= Mask;
 859  00d9 c67f74        	ld	a,32628
 860  00dc 1401          	and	a,(OFST-1,sp)
 861  00de c77f74        	ld	32628,a
 862                     ; 295     ITC->ISPR5 |= NewPriority;
 864  00e1 c67f74        	ld	a,32628
 865  00e4 1a02          	or	a,(OFST+0,sp)
 866  00e6 c77f74        	ld	32628,a
 867                     ; 296     break;
 869  00e9 2022          	jra	L352
 870  00eb               L512:
 871                     ; 299   case ITC_IRQ_UART2_TX:
 871                     ; 300   case ITC_IRQ_UART2_RX:
 871                     ; 301 #endif /*STM8S105 or STM8AF626x */
 871                     ; 302     
 871                     ; 303 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 871                     ; 304     defined(STM8AF62Ax)
 871                     ; 305   case ITC_IRQ_UART3_TX:
 871                     ; 306   case ITC_IRQ_UART3_RX:
 871                     ; 307   case ITC_IRQ_ADC2:
 871                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 871                     ; 309     
 871                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 871                     ; 311     defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 871                     ; 312   case ITC_IRQ_ADC1:
 871                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 871                     ; 314     
 871                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 871                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 871                     ; 317 #else
 871                     ; 318   case ITC_IRQ_TIM4_OVF:
 871                     ; 319 #endif /* STM8S903 or STM8AF622x */
 871                     ; 320     ITC->ISPR6 &= Mask;
 873  00eb c67f75        	ld	a,32629
 874  00ee 1401          	and	a,(OFST-1,sp)
 875  00f0 c77f75        	ld	32629,a
 876                     ; 321     ITC->ISPR6 |= NewPriority;
 878  00f3 c67f75        	ld	a,32629
 879  00f6 1a02          	or	a,(OFST+0,sp)
 880  00f8 c77f75        	ld	32629,a
 881                     ; 322     break;
 883  00fb 2010          	jra	L352
 884  00fd               L712:
 885                     ; 324   case ITC_IRQ_EEPROM_EEC:
 885                     ; 325     ITC->ISPR7 &= Mask;
 887  00fd c67f76        	ld	a,32630
 888  0100 1401          	and	a,(OFST-1,sp)
 889  0102 c77f76        	ld	32630,a
 890                     ; 326     ITC->ISPR7 |= NewPriority;
 892  0105 c67f76        	ld	a,32630
 893  0108 1a02          	or	a,(OFST+0,sp)
 894  010a c77f76        	ld	32630,a
 895                     ; 327     break;
 897  010d               L122:
 898                     ; 329   default:
 898                     ; 330     break;
 900  010d               L352:
 901                     ; 332 }
 904  010d 5b04          	addw	sp,#4
 905  010f 81            	ret
 918                     	xdef	_ITC_GetSoftwarePriority
 919                     	xdef	_ITC_SetSoftwarePriority
 920                     	xdef	_ITC_GetSoftIntStatus
 921                     	xdef	_ITC_DeInit
 922                     	xdef	_ITC_GetCPUCC
 923                     	xref	_assert_failed
 924                     	switch	.const
 925  0064               L571:
 926  0064 7372635c7374  	dc.b	"src\stm8s_itc.c",0
 946                     	end
