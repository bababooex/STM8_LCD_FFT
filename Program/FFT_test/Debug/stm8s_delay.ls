   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  60                     ; 4 void delay_us(unsigned int  value)
  60                     ; 5 {
  62                     .text:	section	.text,new
  63  0000               _delay_us:
  65  0000 89            	pushw	x
  66       00000002      OFST:	set	2
  69                     ; 6 	register unsigned int loops =  (dly_const * value) ;
  71  0001 cd0000        	call	c_uitof
  73  0004 ae0000        	ldw	x,#L33
  74  0007 cd0000        	call	c_fmul
  76  000a cd0000        	call	c_ftoi
  78  000d 1f01          	ldw	(OFST-1,sp),x
  81  000f 2008          	jra	L34
  82  0011               L73:
  83                     ; 10 		_asm ("nop");
  86  0011 9d            nop
  88                     ; 11 		loops--;
  90  0012 1e01          	ldw	x,(OFST-1,sp)
  91  0014 1d0001        	subw	x,#1
  92  0017 1f01          	ldw	(OFST-1,sp),x
  94  0019               L34:
  95                     ; 8 	while(loops)
  97  0019 1e01          	ldw	x,(OFST-1,sp)
  98  001b 26f4          	jrne	L73
  99                     ; 13 }
 103  001d 85            	popw	x
 104  001e 81            	ret
 137                     ; 16 void delay_ms(unsigned int  value)
 137                     ; 17 {
 138                     .text:	section	.text,new
 139  0000               _delay_ms:
 141  0000 89            	pushw	x
 142       00000000      OFST:	set	0
 145  0001 200d          	jra	L56
 146  0003               L36:
 147                     ; 20 		delay_us(1000);
 149  0003 ae03e8        	ldw	x,#1000
 150  0006 cd0000        	call	_delay_us
 152                     ; 21 		value--;
 154  0009 1e01          	ldw	x,(OFST+1,sp)
 155  000b 1d0001        	subw	x,#1
 156  000e 1f01          	ldw	(OFST+1,sp),x
 157  0010               L56:
 158                     ; 18 	while(value)
 160  0010 1e01          	ldw	x,(OFST+1,sp)
 161  0012 26ef          	jrne	L36
 162                     ; 23 }
 166  0014 85            	popw	x
 167  0015 81            	ret
 180                     	xdef	_delay_ms
 181                     	xdef	_delay_us
 182                     .const:	section	.text
 183  0000               L33:
 184  0000 3f800000      	dc.w	16256,0
 185                     	xref.b	c_x
 205                     	xref	c_ftoi
 206                     	xref	c_fmul
 207                     	xref	c_uitof
 208                     	end
