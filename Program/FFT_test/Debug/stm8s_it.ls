   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  44                     ; 54 {
  45                     .text:	section	.text,new
  46  0000               f_NonHandledInterrupt:
  50                     ; 58 }
  53  0000 80            	iret
  75                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  75                     ; 67 {
  76                     .text:	section	.text,new
  77  0000               f_TRAP_IRQHandler:
  81                     ; 71 }
  84  0000 80            	iret
 106                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 106                     ; 79 
 106                     ; 80 {
 107                     .text:	section	.text,new
 108  0000               f_TLI_IRQHandler:
 112                     ; 84 }
 115  0000 80            	iret
 137                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 137                     ; 92 {
 138                     .text:	section	.text,new
 139  0000               f_AWU_IRQHandler:
 143                     ; 96 }
 146  0000 80            	iret
 168                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 168                     ; 104 {
 169                     .text:	section	.text,new
 170  0000               f_CLK_IRQHandler:
 174                     ; 108 }
 177  0000 80            	iret
 200                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 200                     ; 116 {
 201                     .text:	section	.text,new
 202  0000               f_EXTI_PORTA_IRQHandler:
 206                     ; 120 }
 209  0000 80            	iret
 232                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 232                     ; 128 {
 233                     .text:	section	.text,new
 234  0000               f_EXTI_PORTB_IRQHandler:
 238                     ; 132 }
 241  0000 80            	iret
 264                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 264                     ; 140 {
 265                     .text:	section	.text,new
 266  0000               f_EXTI_PORTC_IRQHandler:
 270                     ; 144 }
 273  0000 80            	iret
 296                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 296                     ; 152 {
 297                     .text:	section	.text,new
 298  0000               f_EXTI_PORTD_IRQHandler:
 302                     ; 156 }
 305  0000 80            	iret
 328                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 328                     ; 164 {
 329                     .text:	section	.text,new
 330  0000               f_EXTI_PORTE_IRQHandler:
 334                     ; 168 }
 337  0000 80            	iret
 359                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 359                     ; 216 {
 360                     .text:	section	.text,new
 361  0000               f_SPI_IRQHandler:
 365                     ; 220 }
 368  0000 80            	iret
 391                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 391                     ; 228 {
 392                     .text:	section	.text,new
 393  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 397                     ; 232 }
 400  0000 80            	iret
 423                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 423                     ; 240 {
 424                     .text:	section	.text,new
 425  0000               f_TIM1_CAP_COM_IRQHandler:
 429                     ; 244 }
 432  0000 80            	iret
 455                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 455                     ; 278  {
 456                     .text:	section	.text,new
 457  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 461                     ; 282  }
 464  0000 80            	iret
 487                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 487                     ; 290  {
 488                     .text:	section	.text,new
 489  0000               f_TIM2_CAP_COM_IRQHandler:
 493                     ; 294  }
 496  0000 80            	iret
 520                     ; 304  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)//1uS cnt
 520                     ; 305  {
 521                     .text:	section	.text,new
 522  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 524  0000 8a            	push	cc
 525  0001 84            	pop	a
 526  0002 a4bf          	and	a,#191
 527  0004 88            	push	a
 528  0005 86            	pop	cc
 529  0006 3b0002        	push	c_x+2
 530  0009 be00          	ldw	x,c_x
 531  000b 89            	pushw	x
 532  000c 3b0002        	push	c_y+2
 533  000f be00          	ldw	x,c_y
 534  0011 89            	pushw	x
 537                     ; 307    TIM3_ClearITPendingBit(TIM3_IT_UPDATE);
 539  0012 a601          	ld	a,#1
 540  0014 cd0000        	call	_TIM3_ClearITPendingBit
 542                     ; 308  }
 545  0017 85            	popw	x
 546  0018 bf00          	ldw	c_y,x
 547  001a 320002        	pop	c_y+2
 548  001d 85            	popw	x
 549  001e bf00          	ldw	c_x,x
 550  0020 320002        	pop	c_x+2
 551  0023 80            	iret
 574                     ; 315  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 574                     ; 316  {
 575                     .text:	section	.text,new
 576  0000               f_TIM3_CAP_COM_IRQHandler:
 580                     ; 320  }
 583  0000 80            	iret
 605                     ; 381 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 605                     ; 382 {
 606                     .text:	section	.text,new
 607  0000               f_I2C_IRQHandler:
 611                     ; 386 }
 614  0000 80            	iret
 637                     ; 394  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 637                     ; 395  {
 638                     .text:	section	.text,new
 639  0000               f_UART2_TX_IRQHandler:
 643                     ; 399  }
 646  0000 80            	iret
 669                     ; 406  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 669                     ; 407  {
 670                     .text:	section	.text,new
 671  0000               f_UART2_RX_IRQHandler:
 675                     ; 411  }
 678  0000 80            	iret
 700                     ; 460  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 700                     ; 461  {
 701                     .text:	section	.text,new
 702  0000               f_ADC1_IRQHandler:
 706                     ; 465  }
 709  0000 80            	iret
 735                     ; 486 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)//ms cnt+nyquist
 735                     ; 487 {  
 736                     .text:	section	.text,new
 737  0000               f_TIM4_UPD_OVF_IRQHandler:
 739  0000 8a            	push	cc
 740  0001 84            	pop	a
 741  0002 a4bf          	and	a,#191
 742  0004 88            	push	a
 743  0005 86            	pop	cc
 744  0006 3b0002        	push	c_x+2
 745  0009 be00          	ldw	x,c_x
 746  000b 89            	pushw	x
 747  000c 3b0002        	push	c_y+2
 748  000f be00          	ldw	x,c_y
 749  0011 89            	pushw	x
 752                     ; 488 	 if(count)
 754  0012 ae0000        	ldw	x,#_count
 755  0015 cd0000        	call	c_lzmp
 757  0018 2708          	jreq	L172
 758                     ; 490       count--;
 760  001a ae0000        	ldw	x,#_count
 761  001d a601          	ld	a,#1
 762  001f cd0000        	call	c_lgsbc
 764  0022               L172:
 765                     ; 492 	 isr_flag = SET;
 767  0022 35010000      	mov	_isr_flag,#1
 768                     ; 493    TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 770  0026 a601          	ld	a,#1
 771  0028 cd0000        	call	_TIM4_ClearITPendingBit
 773                     ; 494 }
 776  002b 85            	popw	x
 777  002c bf00          	ldw	c_y,x
 778  002e 320002        	pop	c_y+2
 779  0031 85            	popw	x
 780  0032 bf00          	ldw	c_x,x
 781  0034 320002        	pop	c_x+2
 782  0037 80            	iret
 805                     ; 501 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 805                     ; 502 {
 806                     .text:	section	.text,new
 807  0000               f_EEPROM_EEC_IRQHandler:
 811                     ; 506 }
 814  0000 80            	iret
 826                     	xdef	f_EEPROM_EEC_IRQHandler
 827                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 828                     	xdef	f_ADC1_IRQHandler
 829                     	xdef	f_UART2_TX_IRQHandler
 830                     	xdef	f_UART2_RX_IRQHandler
 831                     	xdef	f_I2C_IRQHandler
 832                     	xdef	f_TIM3_CAP_COM_IRQHandler
 833                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 834                     	xdef	f_TIM2_CAP_COM_IRQHandler
 835                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 836                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 837                     	xdef	f_TIM1_CAP_COM_IRQHandler
 838                     	xdef	f_SPI_IRQHandler
 839                     	xdef	f_EXTI_PORTE_IRQHandler
 840                     	xdef	f_EXTI_PORTD_IRQHandler
 841                     	xdef	f_EXTI_PORTC_IRQHandler
 842                     	xdef	f_EXTI_PORTB_IRQHandler
 843                     	xdef	f_EXTI_PORTA_IRQHandler
 844                     	xdef	f_CLK_IRQHandler
 845                     	xdef	f_AWU_IRQHandler
 846                     	xdef	f_TLI_IRQHandler
 847                     	xdef	f_TRAP_IRQHandler
 848                     	xdef	f_NonHandledInterrupt
 849                     	xref	_isr_flag
 850                     	xref	_count
 851                     	xref	_TIM4_ClearITPendingBit
 852                     	xref	_TIM3_ClearITPendingBit
 853                     	xref.b	c_x
 854                     	xref.b	c_y
 873                     	xref	c_lgsbc
 874                     	xref	c_lzmp
 875                     	end
