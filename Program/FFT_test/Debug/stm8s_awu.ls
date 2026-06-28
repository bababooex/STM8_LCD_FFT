   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  15                     .const:	section	.text
  16  0000               _APR_Array:
  17  0000 00            	dc.b	0
  18  0001 1e            	dc.b	30
  19  0002 1e            	dc.b	30
  20  0003 1e            	dc.b	30
  21  0004 1e            	dc.b	30
  22  0005 1e            	dc.b	30
  23  0006 1e            	dc.b	30
  24  0007 1e            	dc.b	30
  25  0008 1e            	dc.b	30
  26  0009 1e            	dc.b	30
  27  000a 1e            	dc.b	30
  28  000b 1e            	dc.b	30
  29  000c 1e            	dc.b	30
  30  000d 3d            	dc.b	61
  31  000e 17            	dc.b	23
  32  000f 17            	dc.b	23
  33  0010 3e            	dc.b	62
  34  0011               _TBR_Array:
  35  0011 00            	dc.b	0
  36  0012 01            	dc.b	1
  37  0013 02            	dc.b	2
  38  0014 03            	dc.b	3
  39  0015 04            	dc.b	4
  40  0016 05            	dc.b	5
  41  0017 06            	dc.b	6
  42  0018 07            	dc.b	7
  43  0019 08            	dc.b	8
  44  001a 09            	dc.b	9
  45  001b 0a            	dc.b	10
  46  001c 0b            	dc.b	11
  47  001d 0c            	dc.b	12
  48  001e 0c            	dc.b	12
  49  001f 0e            	dc.b	14
  50  0020 0f            	dc.b	15
  51  0021 0f            	dc.b	15
  80                     ; 73 void AWU_DeInit(void)
  80                     ; 74 {
  82                     .text:	section	.text,new
  83  0000               _AWU_DeInit:
  87                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  89  0000 725f50f0      	clr	20720
  90                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  92  0004 353f50f1      	mov	20721,#63
  93                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
  95  0008 725f50f2      	clr	20722
  96                     ; 78 }
  99  000c 81            	ret
 262                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 262                     ; 89 {
 263                     .text:	section	.text,new
 264  0000               _AWU_Init:
 266  0000 88            	push	a
 267       00000000      OFST:	set	0
 270                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 272  0001 4d            	tnz	a
 273  0002 2740          	jreq	L21
 274  0004 a101          	cp	a,#1
 275  0006 273c          	jreq	L21
 276  0008 a102          	cp	a,#2
 277  000a 2738          	jreq	L21
 278  000c a103          	cp	a,#3
 279  000e 2734          	jreq	L21
 280  0010 a104          	cp	a,#4
 281  0012 2730          	jreq	L21
 282  0014 a105          	cp	a,#5
 283  0016 272c          	jreq	L21
 284  0018 a106          	cp	a,#6
 285  001a 2728          	jreq	L21
 286  001c a107          	cp	a,#7
 287  001e 2724          	jreq	L21
 288  0020 a108          	cp	a,#8
 289  0022 2720          	jreq	L21
 290  0024 a109          	cp	a,#9
 291  0026 271c          	jreq	L21
 292  0028 a10a          	cp	a,#10
 293  002a 2718          	jreq	L21
 294  002c a10b          	cp	a,#11
 295  002e 2714          	jreq	L21
 296  0030 a10c          	cp	a,#12
 297  0032 2710          	jreq	L21
 298  0034 a10d          	cp	a,#13
 299  0036 270c          	jreq	L21
 300  0038 a10e          	cp	a,#14
 301  003a 2708          	jreq	L21
 302  003c a10f          	cp	a,#15
 303  003e 2704          	jreq	L21
 304  0040 a110          	cp	a,#16
 305  0042 2603          	jrne	L01
 306  0044               L21:
 307  0044 4f            	clr	a
 308  0045 2010          	jra	L41
 309  0047               L01:
 310  0047 ae005b        	ldw	x,#91
 311  004a 89            	pushw	x
 312  004b ae0000        	ldw	x,#0
 313  004e 89            	pushw	x
 314  004f ae002e        	ldw	x,#L501
 315  0052 cd0000        	call	_assert_failed
 317  0055 5b04          	addw	sp,#4
 318  0057               L41:
 319                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 321  0057 721850f0      	bset	20720,#4
 322                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 324  005b c650f2        	ld	a,20722
 325  005e a4f0          	and	a,#240
 326  0060 c750f2        	ld	20722,a
 327                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 329  0063 7b01          	ld	a,(OFST+1,sp)
 330  0065 5f            	clrw	x
 331  0066 97            	ld	xl,a
 332  0067 c650f2        	ld	a,20722
 333  006a da0011        	or	a,(_TBR_Array,x)
 334  006d c750f2        	ld	20722,a
 335                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 337  0070 c650f1        	ld	a,20721
 338  0073 a4c0          	and	a,#192
 339  0075 c750f1        	ld	20721,a
 340                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 342  0078 7b01          	ld	a,(OFST+1,sp)
 343  007a 5f            	clrw	x
 344  007b 97            	ld	xl,a
 345  007c c650f1        	ld	a,20721
 346  007f da0000        	or	a,(_APR_Array,x)
 347  0082 c750f1        	ld	20721,a
 348                     ; 103 }
 351  0085 84            	pop	a
 352  0086 81            	ret
 407                     ; 112 void AWU_Cmd(FunctionalState NewState)
 407                     ; 113 {
 408                     .text:	section	.text,new
 409  0000               _AWU_Cmd:
 413                     ; 114   if (NewState != DISABLE)
 415  0000 4d            	tnz	a
 416  0001 2706          	jreq	L531
 417                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 419  0003 721850f0      	bset	20720,#4
 421  0007 2004          	jra	L731
 422  0009               L531:
 423                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 425  0009 721950f0      	bres	20720,#4
 426  000d               L731:
 427                     ; 124 }
 430  000d 81            	ret
 478                     	switch	.const
 479  0022               L42:
 480  0022 0001adb0      	dc.l	110000
 481  0026               L62:
 482  0026 000249f1      	dc.l	150001
 483  002a               L23:
 484  002a 000003e8      	dc.l	1000
 485                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 485                     ; 140 {
 486                     .text:	section	.text,new
 487  0000               _AWU_LSICalibrationConfig:
 489  0000 5206          	subw	sp,#6
 490       00000006      OFST:	set	6
 493                     ; 141   uint16_t lsifreqkhz = 0x0;
 495                     ; 142   uint16_t A = 0x0;
 497                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 499  0002 96            	ldw	x,sp
 500  0003 1c0009        	addw	x,#OFST+3
 501  0006 cd0000        	call	c_ltor
 503  0009 ae0022        	ldw	x,#L42
 504  000c cd0000        	call	c_lcmp
 506  000f 2512          	jrult	L22
 507  0011 96            	ldw	x,sp
 508  0012 1c0009        	addw	x,#OFST+3
 509  0015 cd0000        	call	c_ltor
 511  0018 ae0026        	ldw	x,#L62
 512  001b cd0000        	call	c_lcmp
 514  001e 2403          	jruge	L22
 515  0020 4f            	clr	a
 516  0021 2010          	jra	L03
 517  0023               L22:
 518  0023 ae0091        	ldw	x,#145
 519  0026 89            	pushw	x
 520  0027 ae0000        	ldw	x,#0
 521  002a 89            	pushw	x
 522  002b ae002e        	ldw	x,#L501
 523  002e cd0000        	call	_assert_failed
 525  0031 5b04          	addw	sp,#4
 526  0033               L03:
 527                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 529  0033 96            	ldw	x,sp
 530  0034 1c0009        	addw	x,#OFST+3
 531  0037 cd0000        	call	c_ltor
 533  003a ae002a        	ldw	x,#L23
 534  003d cd0000        	call	c_ludv
 536  0040 be02          	ldw	x,c_lreg+2
 537  0042 1f03          	ldw	(OFST-3,sp),x
 539                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 541  0044 1e03          	ldw	x,(OFST-3,sp)
 542  0046 54            	srlw	x
 543  0047 54            	srlw	x
 544  0048 1f05          	ldw	(OFST-1,sp),x
 546                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 548  004a 1e05          	ldw	x,(OFST-1,sp)
 549  004c 58            	sllw	x
 550  004d 58            	sllw	x
 551  004e 1f01          	ldw	(OFST-5,sp),x
 553  0050 1e03          	ldw	x,(OFST-3,sp)
 554  0052 72f001        	subw	x,(OFST-5,sp)
 555  0055 1605          	ldw	y,(OFST-1,sp)
 556  0057 9058          	sllw	y
 557  0059 905c          	incw	y
 558  005b cd0000        	call	c_imul
 560  005e 1605          	ldw	y,(OFST-1,sp)
 561  0060 9058          	sllw	y
 562  0062 9058          	sllw	y
 563  0064 bf00          	ldw	c_x,x
 564  0066 90b300        	cpw	y,c_x
 565  0069 2509          	jrult	L161
 566                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 568  006b 7b06          	ld	a,(OFST+0,sp)
 569  006d a002          	sub	a,#2
 570  006f c750f1        	ld	20721,a
 572  0072 2006          	jra	L361
 573  0074               L161:
 574                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 576  0074 7b06          	ld	a,(OFST+0,sp)
 577  0076 4a            	dec	a
 578  0077 c750f1        	ld	20721,a
 579  007a               L361:
 580                     ; 161 }
 583  007a 5b06          	addw	sp,#6
 584  007c 81            	ret
 607                     ; 168 void AWU_IdleModeEnable(void)
 607                     ; 169 {
 608                     .text:	section	.text,new
 609  0000               _AWU_IdleModeEnable:
 613                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 615  0000 721950f0      	bres	20720,#4
 616                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 618  0004 35f050f2      	mov	20722,#240
 619                     ; 175 }
 622  0008 81            	ret
 666                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 666                     ; 184 {
 667                     .text:	section	.text,new
 668  0000               _AWU_GetFlagStatus:
 672                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 674  0000 c650f0        	ld	a,20720
 675  0003 a520          	bcp	a,#32
 676  0005 2603          	jrne	L04
 677  0007 4f            	clr	a
 678  0008 2002          	jra	L24
 679  000a               L04:
 680  000a a601          	ld	a,#1
 681  000c               L24:
 684  000c 81            	ret
 719                     	xdef	_TBR_Array
 720                     	xdef	_APR_Array
 721                     	xdef	_AWU_GetFlagStatus
 722                     	xdef	_AWU_IdleModeEnable
 723                     	xdef	_AWU_LSICalibrationConfig
 724                     	xdef	_AWU_Cmd
 725                     	xdef	_AWU_Init
 726                     	xdef	_AWU_DeInit
 727                     	xref	_assert_failed
 728                     	switch	.const
 729  002e               L501:
 730  002e 7372635c7374  	dc.b	"src\stm8s_awu.c",0
 731                     	xref.b	c_lreg
 732                     	xref.b	c_x
 752                     	xref	c_imul
 753                     	xref	c_ludv
 754                     	xref	c_lcmp
 755                     	xref	c_ltor
 756                     	end
