   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  71                     ; 14 void lcd_store_symbol(uint8_t pos, uint8_t* charmap){
  73                     .text:	section	.text,new
  74  0000               _lcd_store_symbol:
  76  0000 88            	push	a
  77  0001 88            	push	a
  78       00000001      OFST:	set	1
  81                     ; 16   if(pos>7) return;
  83  0002 a108          	cp	a,#8
  84  0004 2424          	jruge	L6
  87                     ; 17   lcd_command(LCD_SET_CGRAM | (pos*8));
  89  0006 7b02          	ld	a,(OFST+1,sp)
  90  0008 48            	sll	a
  91  0009 48            	sll	a
  92  000a 48            	sll	a
  93  000b aa40          	or	a,#64
  94  000d cd0000        	call	_lcd_command
  96                     ; 18   for(i=0;i<8;i++){
  98  0010 0f01          	clr	(OFST+0,sp)
 100  0012               L53:
 101                     ; 19     lcd_data(charmap[i]);
 103  0012 7b01          	ld	a,(OFST+0,sp)
 104  0014 5f            	clrw	x
 105  0015 97            	ld	xl,a
 106  0016 72fb05        	addw	x,(OFST+4,sp)
 107  0019 f6            	ld	a,(x)
 108  001a cd0000        	call	_lcd_data
 110                     ; 18   for(i=0;i<8;i++){
 112  001d 0c01          	inc	(OFST+0,sp)
 116  001f 7b01          	ld	a,(OFST+0,sp)
 117  0021 a108          	cp	a,#8
 118  0023 25ed          	jrult	L53
 119                     ; 21   lcd_command(LCD_SET_DDRAM | 0); // other funtions (like lcd_puts) relies that address counter points into DDRAM
 121  0025 a680          	ld	a,#128
 122  0027 cd0000        	call	_lcd_command
 124                     ; 22 }
 125  002a               L6:
 128  002a 85            	popw	x
 129  002b 81            	ret
 165                     ; 26 void lcd_puts(char* text){
 166                     .text:	section	.text,new
 167  0000               _lcd_puts:
 169  0000 89            	pushw	x
 170       00000000      OFST:	set	0
 173  0001 200d          	jra	L36
 174  0003               L16:
 175                     ; 28 		lcd_data(*text);
 177  0003 1e01          	ldw	x,(OFST+1,sp)
 178  0005 f6            	ld	a,(x)
 179  0006 cd0000        	call	_lcd_data
 181                     ; 29 		text++;
 183  0009 1e01          	ldw	x,(OFST+1,sp)
 184  000b 1c0001        	addw	x,#1
 185  000e 1f01          	ldw	(OFST+1,sp),x
 186  0010               L36:
 187                     ; 27 	while(*text){
 189  0010 1e01          	ldw	x,(OFST+1,sp)
 190  0012 7d            	tnz	(x)
 191  0013 26ee          	jrne	L16
 192                     ; 31 }
 195  0015 85            	popw	x
 196  0016 81            	ret
 226                     ; 34 void lcd_init(void){
 227                     .text:	section	.text,new
 228  0000               _lcd_init:
 232                     ; 35 	lcd_init_hw();
 234  0000 cd0000        	call	_lcd_init_hw
 236                     ; 37 	lcd_bus_outputs();
 238  0003 cd0000        	call	_lcd_bus_outputs
 240                     ; 39 	lcd_delay_ms(LCD_STARTUP_DELAY1);
 242  0006 a62d          	ld	a,#45
 243  0008 cd0000        	call	_lcd_delay_ms
 245                     ; 42 	lcd_bus_set(0b0011);
 247  000b a603          	ld	a,#3
 248  000d cd0000        	call	_lcd_bus_set
 250                     ; 43 	lcd_e_tick();
 252  0010 cd0000        	call	_lcd_e_tick
 254                     ; 44 	lcd_delay_ms(LCD_STARTUP_DELAY2);
 256  0013 a605          	ld	a,#5
 257  0015 cd0000        	call	_lcd_delay_ms
 259                     ; 46 	lcd_bus_set(0b0011);
 261  0018 a603          	ld	a,#3
 262  001a cd0000        	call	_lcd_bus_set
 264                     ; 47 	lcd_e_tick();
 266  001d cd0000        	call	_lcd_e_tick
 268                     ; 48 	delay_us(LCD_STARTUP_DELAY3);
 270  0020 ae0064        	ldw	x,#100
 271  0023 cd0000        	call	_delay_us
 273                     ; 50 	lcd_bus_set(0b0011);
 275  0026 a603          	ld	a,#3
 276  0028 cd0000        	call	_lcd_bus_set
 278                     ; 51 	lcd_e_tick();
 280  002b cd0000        	call	_lcd_e_tick
 282                     ; 52 	lcd_bus_set(0b0010);
 284  002e a602          	ld	a,#2
 285  0030 cd0000        	call	_lcd_bus_set
 287                     ; 53 	lcd_e_tick();
 289  0033 cd0000        	call	_lcd_e_tick
 291                     ; 54 	delay_us(LCD_COMMAND_DELAY);
 293  0036 ae001e        	ldw	x,#30
 294  0039 cd0000        	call	_delay_us
 296                     ; 59 	lcd_command(LCD_FUNCTION_SET | LCD_4BITS | LCD_2LINES | USED_FONT);
 298  003c a628          	ld	a,#40
 299  003e cd0000        	call	_lcd_command
 301                     ; 61 	lcd_command(LCD_ENTRY_MODE_SET | LCD_INCREMENT | LCD_DISPLAY_NOSHIFT);
 303  0041 a606          	ld	a,#6
 304  0043 cd0000        	call	_lcd_command
 306                     ; 62 	lcd_command(LCD_DISPLAY_ONOFF | LCD_ON | LCD_CURSOR_OFF | LCD_BLINK_OFF);
 308  0046 a60c          	ld	a,#12
 309  0048 cd0000        	call	_lcd_command
 311                     ; 63 	lcd_command(LCD_CURSOR_OR_DISPLAY_SHIFT | LCD_CURSOR_SHIFT | LCD_SHIFT_RIGHT);
 313  004b a614          	ld	a,#20
 314  004d cd0000        	call	_lcd_command
 316                     ; 64 	lcd_command(LCD_DISPLAY_CLEAR);
 318  0050 a601          	ld	a,#1
 319  0052 cd0000        	call	_lcd_command
 321                     ; 65 	lcd_command(LCD_RETURN_HOME);
 323  0055 a602          	ld	a,#2
 324  0057 cd0000        	call	_lcd_command
 326                     ; 66 }
 329  005a 81            	ret
 376                     ; 68 void lcd_gotoxy(uint8_t column, uint8_t line){
 377                     .text:	section	.text,new
 378  0000               _lcd_gotoxy:
 380  0000 89            	pushw	x
 381  0001 88            	push	a
 382       00000001      OFST:	set	1
 385                     ; 69 	uint8_t tmp=0;
 387                     ; 72 	if(column > (LCD_COLUMNS-1)){column=LCD_COLUMNS-1;}
 389  0002 9e            	ld	a,xh
 390  0003 a114          	cp	a,#20
 391  0005 2504          	jrult	L711
 394  0007 a613          	ld	a,#19
 395  0009 6b02          	ld	(OFST+1,sp),a
 396  000b               L711:
 397                     ; 73 	if(line == 0){tmp=0x00;}
 399  000b 0d03          	tnz	(OFST+2,sp)
 400  000d 2604          	jrne	L121
 403  000f 0f01          	clr	(OFST+0,sp)
 406  0011 201c          	jra	L321
 407  0013               L121:
 408                     ; 74 	else if(line==1){tmp = 0x40;}
 410  0013 7b03          	ld	a,(OFST+2,sp)
 411  0015 a101          	cp	a,#1
 412  0017 2606          	jrne	L521
 415  0019 a640          	ld	a,#64
 416  001b 6b01          	ld	(OFST+0,sp),a
 419  001d 2010          	jra	L321
 420  001f               L521:
 421                     ; 75 	else if(line==2){tmp = 0x14;}
 423  001f 7b03          	ld	a,(OFST+2,sp)
 424  0021 a102          	cp	a,#2
 425  0023 2606          	jrne	L131
 428  0025 a614          	ld	a,#20
 429  0027 6b01          	ld	(OFST+0,sp),a
 432  0029 2004          	jra	L321
 433  002b               L131:
 434                     ; 76 	else{tmp = 0x54;}
 436  002b a654          	ld	a,#84
 437  002d 6b01          	ld	(OFST+0,sp),a
 439  002f               L321:
 440                     ; 77 	tmp = tmp + column;
 442  002f 7b01          	ld	a,(OFST+0,sp)
 443  0031 1b02          	add	a,(OFST+1,sp)
 444  0033 6b01          	ld	(OFST+0,sp),a
 446                     ; 91 	lcd_command(LCD_SET_DDRAM | tmp);
 448  0035 7b01          	ld	a,(OFST+0,sp)
 449  0037 aa80          	or	a,#128
 450  0039 cd0000        	call	_lcd_command
 452                     ; 92 }
 455  003c 5b03          	addw	sp,#3
 456  003e 81            	ret
 481                     ; 95 void lcd_init_hw(void){
 482                     .text:	section	.text,new
 483  0000               _lcd_init_hw:
 487                     ; 114  GPIO_Init(LCD_RS_PORT,LCD_RS_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 489  0000 4bc0          	push	#192
 490  0002 4b01          	push	#1
 491  0004 ae500f        	ldw	x,#20495
 492  0007 cd0000        	call	_GPIO_Init
 494  000a 85            	popw	x
 495                     ; 115  GPIO_Init(LCD_RW_PORT,LCD_RW_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 497  000b 4bc0          	push	#192
 498  000d 4b04          	push	#4
 499  000f ae500f        	ldw	x,#20495
 500  0012 cd0000        	call	_GPIO_Init
 502  0015 85            	popw	x
 503                     ; 116  GPIO_Init(LCD_E_PORT,LCD_E_PIN,GPIO_MODE_OUT_PP_HIGH_SLOW);
 505  0016 4bd0          	push	#208
 506  0018 4b08          	push	#8
 507  001a ae500f        	ldw	x,#20495
 508  001d cd0000        	call	_GPIO_Init
 510  0020 85            	popw	x
 511                     ; 119  lcd_bus_outputs();
 513  0021 cd0000        	call	_lcd_bus_outputs
 515                     ; 120 }
 518  0024 81            	ret
 542                     ; 123 void lcd_bus_outputs(void){
 543                     .text:	section	.text,new
 544  0000               _lcd_bus_outputs:
 548                     ; 127  GPIO_Init(LCD_D4_PORT,LCD_D4_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 550  0000 4bc0          	push	#192
 551  0002 4b10          	push	#16
 552  0004 ae500f        	ldw	x,#20495
 553  0007 cd0000        	call	_GPIO_Init
 555  000a 85            	popw	x
 556                     ; 128  GPIO_Init(LCD_D5_PORT,LCD_D5_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 558  000b 4bc0          	push	#192
 559  000d 4b20          	push	#32
 560  000f ae500f        	ldw	x,#20495
 561  0012 cd0000        	call	_GPIO_Init
 563  0015 85            	popw	x
 564                     ; 129  GPIO_Init(LCD_D6_PORT,LCD_D6_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 566  0016 4bc0          	push	#192
 567  0018 4b40          	push	#64
 568  001a ae500f        	ldw	x,#20495
 569  001d cd0000        	call	_GPIO_Init
 571  0020 85            	popw	x
 572                     ; 130  GPIO_Init(LCD_D7_PORT,LCD_D7_PIN,GPIO_MODE_OUT_PP_LOW_SLOW);
 574  0021 4bc0          	push	#192
 575  0023 4b80          	push	#128
 576  0025 ae500f        	ldw	x,#20495
 577  0028 cd0000        	call	_GPIO_Init
 579  002b 85            	popw	x
 580                     ; 132 }
 583  002c 81            	ret
 607                     ; 135 void lcd_bus_inputs(void){
 608                     .text:	section	.text,new
 609  0000               _lcd_bus_inputs:
 613                     ; 143  GPIO_Init(LCD_D4_PORT,LCD_D4_PIN,GPIO_MODE_IN_FL_NO_IT);
 615  0000 4b00          	push	#0
 616  0002 4b10          	push	#16
 617  0004 ae500f        	ldw	x,#20495
 618  0007 cd0000        	call	_GPIO_Init
 620  000a 85            	popw	x
 621                     ; 144  GPIO_Init(LCD_D5_PORT,LCD_D5_PIN,GPIO_MODE_IN_FL_NO_IT);
 623  000b 4b00          	push	#0
 624  000d 4b20          	push	#32
 625  000f ae500f        	ldw	x,#20495
 626  0012 cd0000        	call	_GPIO_Init
 628  0015 85            	popw	x
 629                     ; 145  GPIO_Init(LCD_D6_PORT,LCD_D6_PIN,GPIO_MODE_IN_FL_NO_IT);
 631  0016 4b00          	push	#0
 632  0018 4b40          	push	#64
 633  001a ae500f        	ldw	x,#20495
 634  001d cd0000        	call	_GPIO_Init
 636  0020 85            	popw	x
 637                     ; 146  GPIO_Init(LCD_D7_PORT,LCD_D7_PIN,GPIO_MODE_IN_FL_NO_IT); 
 639  0021 4b00          	push	#0
 640  0023 4b80          	push	#128
 641  0025 ae500f        	ldw	x,#20495
 642  0028 cd0000        	call	_GPIO_Init
 644  002b 85            	popw	x
 645                     ; 148 }
 648  002c 81            	ret
 672                     ; 151 void lcd_deinit_hw(void){
 673                     .text:	section	.text,new
 674  0000               _lcd_deinit_hw:
 678                     ; 152 	GPIO_Init(LCD_RS_PORT,LCD_RS_PIN,GPIO_MODE_IN_FL_NO_IT);
 680  0000 4b00          	push	#0
 681  0002 4b01          	push	#1
 682  0004 ae500f        	ldw	x,#20495
 683  0007 cd0000        	call	_GPIO_Init
 685  000a 85            	popw	x
 686                     ; 153 	GPIO_Init(LCD_RW_PORT,LCD_RW_PIN,GPIO_MODE_IN_FL_NO_IT);
 688  000b 4b00          	push	#0
 689  000d 4b04          	push	#4
 690  000f ae500f        	ldw	x,#20495
 691  0012 cd0000        	call	_GPIO_Init
 693  0015 85            	popw	x
 694                     ; 154 	GPIO_Init(LCD_E_PORT,LCD_E_PIN,GPIO_MODE_IN_FL_NO_IT);
 696  0016 4b00          	push	#0
 697  0018 4b08          	push	#8
 698  001a ae500f        	ldw	x,#20495
 699  001d cd0000        	call	_GPIO_Init
 701  0020 85            	popw	x
 702                     ; 155 	GPIO_Init(LCD_D4_PORT,LCD_D4_PIN,GPIO_MODE_IN_FL_NO_IT);
 704  0021 4b00          	push	#0
 705  0023 4b10          	push	#16
 706  0025 ae500f        	ldw	x,#20495
 707  0028 cd0000        	call	_GPIO_Init
 709  002b 85            	popw	x
 710                     ; 156 	GPIO_Init(LCD_D5_PORT,LCD_D5_PIN,GPIO_MODE_IN_FL_NO_IT);
 712  002c 4b00          	push	#0
 713  002e 4b20          	push	#32
 714  0030 ae500f        	ldw	x,#20495
 715  0033 cd0000        	call	_GPIO_Init
 717  0036 85            	popw	x
 718                     ; 157 	GPIO_Init(LCD_D6_PORT,LCD_D6_PIN,GPIO_MODE_IN_FL_NO_IT);
 720  0037 4b00          	push	#0
 721  0039 4b40          	push	#64
 722  003b ae500f        	ldw	x,#20495
 723  003e cd0000        	call	_GPIO_Init
 725  0041 85            	popw	x
 726                     ; 158 	GPIO_Init(LCD_D7_PORT,LCD_D7_PIN,GPIO_MODE_IN_FL_NO_IT); 
 728  0042 4b00          	push	#0
 729  0044 4b80          	push	#128
 730  0046 ae500f        	ldw	x,#20495
 731  0049 cd0000        	call	_GPIO_Init
 733  004c 85            	popw	x
 734                     ; 159 }
 737  004d 81            	ret
 771                     ; 162 void lcd_bus_set(uint8_t data){
 772                     .text:	section	.text,new
 773  0000               _lcd_bus_set:
 775  0000 88            	push	a
 776       00000000      OFST:	set	0
 779                     ; 163 	if(data & (1<<0)){LCD_D4_H;}else{LCD_D4_L;}
 781  0001 a501          	bcp	a,#1
 782  0003 270b          	jreq	L112
 785  0005 4b10          	push	#16
 786  0007 ae500f        	ldw	x,#20495
 787  000a cd0000        	call	_GPIO_WriteHigh
 789  000d 84            	pop	a
 791  000e 2009          	jra	L312
 792  0010               L112:
 795  0010 4b10          	push	#16
 796  0012 ae500f        	ldw	x,#20495
 797  0015 cd0000        	call	_GPIO_WriteLow
 799  0018 84            	pop	a
 800  0019               L312:
 801                     ; 164 	if(data & (1<<1)){LCD_D5_H;}else{LCD_D5_L;}
 803  0019 7b01          	ld	a,(OFST+1,sp)
 804  001b a502          	bcp	a,#2
 805  001d 270b          	jreq	L512
 808  001f 4b20          	push	#32
 809  0021 ae500f        	ldw	x,#20495
 810  0024 cd0000        	call	_GPIO_WriteHigh
 812  0027 84            	pop	a
 814  0028 2009          	jra	L712
 815  002a               L512:
 818  002a 4b20          	push	#32
 819  002c ae500f        	ldw	x,#20495
 820  002f cd0000        	call	_GPIO_WriteLow
 822  0032 84            	pop	a
 823  0033               L712:
 824                     ; 165 	if(data & (1<<2)){LCD_D6_H;}else{LCD_D6_L;}
 826  0033 7b01          	ld	a,(OFST+1,sp)
 827  0035 a504          	bcp	a,#4
 828  0037 270b          	jreq	L122
 831  0039 4b40          	push	#64
 832  003b ae500f        	ldw	x,#20495
 833  003e cd0000        	call	_GPIO_WriteHigh
 835  0041 84            	pop	a
 837  0042 2009          	jra	L322
 838  0044               L122:
 841  0044 4b40          	push	#64
 842  0046 ae500f        	ldw	x,#20495
 843  0049 cd0000        	call	_GPIO_WriteLow
 845  004c 84            	pop	a
 846  004d               L322:
 847                     ; 166 	if(data & (1<<3)){LCD_D7_H;}else{LCD_D7_L;}
 849  004d 7b01          	ld	a,(OFST+1,sp)
 850  004f a508          	bcp	a,#8
 851  0051 270b          	jreq	L522
 854  0053 4b80          	push	#128
 855  0055 ae500f        	ldw	x,#20495
 856  0058 cd0000        	call	_GPIO_WriteHigh
 858  005b 84            	pop	a
 860  005c 2009          	jra	L722
 861  005e               L522:
 864  005e 4b80          	push	#128
 865  0060 ae500f        	ldw	x,#20495
 866  0063 cd0000        	call	_GPIO_WriteLow
 868  0066 84            	pop	a
 869  0067               L722:
 870                     ; 167 }
 873  0067 84            	pop	a
 874  0068 81            	ret
 907                     ; 170 uint8_t lcd_bus_read(void){
 908                     .text:	section	.text,new
 909  0000               _lcd_bus_read:
 911  0000 88            	push	a
 912       00000001      OFST:	set	1
 915                     ; 171 	uint8_t tmp=0;
 917  0001 0f01          	clr	(OFST+0,sp)
 919                     ; 172 	if(GPIO_ReadInputPin(LCD_D4_PORT,LCD_D4_PIN)){tmp |= 1<<0;}
 921  0003 4b10          	push	#16
 922  0005 ae500f        	ldw	x,#20495
 923  0008 cd0000        	call	_GPIO_ReadInputPin
 925  000b 5b01          	addw	sp,#1
 926  000d 4d            	tnz	a
 927  000e 2706          	jreq	L542
 930  0010 7b01          	ld	a,(OFST+0,sp)
 931  0012 aa01          	or	a,#1
 932  0014 6b01          	ld	(OFST+0,sp),a
 934  0016               L542:
 935                     ; 173 	if(GPIO_ReadInputPin(LCD_D5_PORT,LCD_D5_PIN)){tmp |= 1<<1;}
 937  0016 4b20          	push	#32
 938  0018 ae500f        	ldw	x,#20495
 939  001b cd0000        	call	_GPIO_ReadInputPin
 941  001e 5b01          	addw	sp,#1
 942  0020 4d            	tnz	a
 943  0021 2706          	jreq	L742
 946  0023 7b01          	ld	a,(OFST+0,sp)
 947  0025 aa02          	or	a,#2
 948  0027 6b01          	ld	(OFST+0,sp),a
 950  0029               L742:
 951                     ; 174 	if(GPIO_ReadInputPin(LCD_D6_PORT,LCD_D6_PIN)){tmp |= 1<<2;}
 953  0029 4b40          	push	#64
 954  002b ae500f        	ldw	x,#20495
 955  002e cd0000        	call	_GPIO_ReadInputPin
 957  0031 5b01          	addw	sp,#1
 958  0033 4d            	tnz	a
 959  0034 2706          	jreq	L152
 962  0036 7b01          	ld	a,(OFST+0,sp)
 963  0038 aa04          	or	a,#4
 964  003a 6b01          	ld	(OFST+0,sp),a
 966  003c               L152:
 967                     ; 175 	if(GPIO_ReadInputPin(LCD_D7_PORT,LCD_D7_PIN)){tmp |= 1<<3;}
 969  003c 4b80          	push	#128
 970  003e ae500f        	ldw	x,#20495
 971  0041 cd0000        	call	_GPIO_ReadInputPin
 973  0044 5b01          	addw	sp,#1
 974  0046 4d            	tnz	a
 975  0047 2706          	jreq	L352
 978  0049 7b01          	ld	a,(OFST+0,sp)
 979  004b aa08          	or	a,#8
 980  004d 6b01          	ld	(OFST+0,sp),a
 982  004f               L352:
 983                     ; 176 	return tmp;
 985  004f 7b01          	ld	a,(OFST+0,sp)
 988  0051 5b01          	addw	sp,#1
 989  0053 81            	ret
1015                     ; 180 void lcd_e_tick(void){
1016                     .text:	section	.text,new
1017  0000               _lcd_e_tick:
1021                     ; 181 	LCD_E_H;
1023  0000 4b08          	push	#8
1024  0002 ae500f        	ldw	x,#20495
1025  0005 cd0000        	call	_GPIO_WriteHigh
1027  0008 84            	pop	a
1028                     ; 182 	delay_us(LCD_E_DELAY);
1030  0009 ae0001        	ldw	x,#1
1031  000c cd0000        	call	_delay_us
1033                     ; 183 	LCD_E_L;
1035  000f 4b08          	push	#8
1036  0011 ae500f        	ldw	x,#20495
1037  0014 cd0000        	call	_GPIO_WriteLow
1039  0017 84            	pop	a
1040                     ; 184 	delay_us(LCD_E_DELAY);
1042  0018 ae0001        	ldw	x,#1
1043  001b cd0000        	call	_delay_us
1045                     ; 185 }
1048  001e 81            	ret
1085                     ; 188 void lcd_command(uint8_t command){
1086                     .text:	section	.text,new
1087  0000               _lcd_command:
1089  0000 88            	push	a
1090       00000000      OFST:	set	0
1093                     ; 189 	LCD_RS_L;
1095  0001 4b01          	push	#1
1096  0003 ae500f        	ldw	x,#20495
1097  0006 cd0000        	call	_GPIO_WriteLow
1099  0009 84            	pop	a
1100                     ; 190 	delay_us(LCD_E_DELAY);
1102  000a ae0001        	ldw	x,#1
1103  000d cd0000        	call	_delay_us
1105                     ; 191 	lcd_bus_set((command >> 4) & 0b1111);
1107  0010 7b01          	ld	a,(OFST+1,sp)
1108  0012 4e            	swap	a
1109  0013 a40f          	and	a,#15
1110  0015 cd0000        	call	_lcd_bus_set
1112                     ; 192 	lcd_e_tick();
1114  0018 cd0000        	call	_lcd_e_tick
1116                     ; 193 	lcd_bus_set(command & 0b1111);
1118  001b 7b01          	ld	a,(OFST+1,sp)
1119  001d a40f          	and	a,#15
1120  001f cd0000        	call	_lcd_bus_set
1122                     ; 194 	lcd_e_tick();
1124  0022 cd0000        	call	_lcd_e_tick
1126                     ; 195 	lcd_busy_wait();
1128  0025 cd0000        	call	_lcd_busy_wait
1130                     ; 196 }
1133  0028 84            	pop	a
1134  0029 81            	ret
1171                     ; 199 void lcd_data(uint8_t data){
1172                     .text:	section	.text,new
1173  0000               _lcd_data:
1175  0000 88            	push	a
1176       00000000      OFST:	set	0
1179                     ; 200 	LCD_RS_H;
1181  0001 4b01          	push	#1
1182  0003 ae500f        	ldw	x,#20495
1183  0006 cd0000        	call	_GPIO_WriteHigh
1185  0009 84            	pop	a
1186                     ; 201 	delay_us(LCD_E_DELAY);
1188  000a ae0001        	ldw	x,#1
1189  000d cd0000        	call	_delay_us
1191                     ; 202 	lcd_bus_set((data >> 4) & 0b1111);
1193  0010 7b01          	ld	a,(OFST+1,sp)
1194  0012 4e            	swap	a
1195  0013 a40f          	and	a,#15
1196  0015 cd0000        	call	_lcd_bus_set
1198                     ; 203 	lcd_e_tick();
1200  0018 cd0000        	call	_lcd_e_tick
1202                     ; 204 	lcd_bus_set(data & 0b1111);
1204  001b 7b01          	ld	a,(OFST+1,sp)
1205  001d a40f          	and	a,#15
1206  001f cd0000        	call	_lcd_bus_set
1208                     ; 205 	lcd_e_tick();
1210  0022 cd0000        	call	_lcd_e_tick
1212                     ; 206 	lcd_busy_wait();
1214  0025 cd0000        	call	_lcd_busy_wait
1216                     ; 207 }
1219  0028 84            	pop	a
1220  0029 81            	ret
1258                     ; 210 uint8_t lcd_read(void){
1259                     .text:	section	.text,new
1260  0000               _lcd_read:
1262  0000 88            	push	a
1263       00000001      OFST:	set	1
1266                     ; 211 	uint8_t tmp=0;
1268                     ; 212 	LCD_RS_L;
1270  0001 4b01          	push	#1
1271  0003 ae500f        	ldw	x,#20495
1272  0006 cd0000        	call	_GPIO_WriteLow
1274  0009 84            	pop	a
1275                     ; 213 	lcd_bus_inputs();
1277  000a cd0000        	call	_lcd_bus_inputs
1279                     ; 214 	LCD_RW_H;
1281  000d 4b04          	push	#4
1282  000f ae500f        	ldw	x,#20495
1283  0012 cd0000        	call	_GPIO_WriteHigh
1285  0015 84            	pop	a
1286                     ; 215 	delay_us(LCD_E_DELAY);
1288  0016 ae0001        	ldw	x,#1
1289  0019 cd0000        	call	_delay_us
1291                     ; 216 	LCD_E_H;
1293  001c 4b08          	push	#8
1294  001e ae500f        	ldw	x,#20495
1295  0021 cd0000        	call	_GPIO_WriteHigh
1297  0024 84            	pop	a
1298                     ; 217 	delay_us(LCD_E_DELAY);
1300  0025 ae0001        	ldw	x,#1
1301  0028 cd0000        	call	_delay_us
1303                     ; 218 	tmp = lcd_bus_read()<<4;
1305  002b cd0000        	call	_lcd_bus_read
1307  002e 97            	ld	xl,a
1308  002f a610          	ld	a,#16
1309  0031 42            	mul	x,a
1310  0032 9f            	ld	a,xl
1311  0033 6b01          	ld	(OFST+0,sp),a
1313                     ; 219 	LCD_E_L;
1315  0035 4b08          	push	#8
1316  0037 ae500f        	ldw	x,#20495
1317  003a cd0000        	call	_GPIO_WriteLow
1319  003d 84            	pop	a
1320                     ; 220 	delay_us(LCD_E_DELAY);
1322  003e ae0001        	ldw	x,#1
1323  0041 cd0000        	call	_delay_us
1325                     ; 221 	LCD_E_H;
1327  0044 4b08          	push	#8
1328  0046 ae500f        	ldw	x,#20495
1329  0049 cd0000        	call	_GPIO_WriteHigh
1331  004c 84            	pop	a
1332                     ; 222 	delay_us(LCD_E_DELAY);
1334  004d ae0001        	ldw	x,#1
1335  0050 cd0000        	call	_delay_us
1337                     ; 223 	tmp |= lcd_bus_read();
1339  0053 cd0000        	call	_lcd_bus_read
1341  0056 1a01          	or	a,(OFST+0,sp)
1342  0058 6b01          	ld	(OFST+0,sp),a
1344                     ; 224 	LCD_E_L;
1346  005a 4b08          	push	#8
1347  005c ae500f        	ldw	x,#20495
1348  005f cd0000        	call	_GPIO_WriteLow
1350  0062 84            	pop	a
1351                     ; 225 	delay_us(LCD_E_DELAY);
1353  0063 ae0001        	ldw	x,#1
1354  0066 cd0000        	call	_delay_us
1356                     ; 226 	LCD_RW_L;
1358  0069 4b04          	push	#4
1359  006b ae500f        	ldw	x,#20495
1360  006e cd0000        	call	_GPIO_WriteLow
1362  0071 84            	pop	a
1363                     ; 227 	lcd_bus_outputs();
1365  0072 cd0000        	call	_lcd_bus_outputs
1367                     ; 228 	return tmp;
1369  0075 7b01          	ld	a,(OFST+0,sp)
1372  0077 5b01          	addw	sp,#1
1373  0079 81            	ret
1398                     ; 233 void lcd_bus_sleep(void){
1399                     .text:	section	.text,new
1400  0000               _lcd_bus_sleep:
1404                     ; 234 LCD_RS_H;
1406  0000 4b01          	push	#1
1407  0002 ae500f        	ldw	x,#20495
1408  0005 cd0000        	call	_GPIO_WriteHigh
1410  0008 84            	pop	a
1411                     ; 235 LCD_RW_H;
1413  0009 4b04          	push	#4
1414  000b ae500f        	ldw	x,#20495
1415  000e cd0000        	call	_GPIO_WriteHigh
1417  0011 84            	pop	a
1418                     ; 236 lcd_bus_inputs();
1420  0012 cd0000        	call	_lcd_bus_inputs
1422                     ; 237 }
1425  0015 81            	ret
1451                     ; 240 void lcd_bus_wakeup(void){
1452                     .text:	section	.text,new
1453  0000               _lcd_bus_wakeup:
1457                     ; 241 LCD_RW_L;
1459  0000 4b04          	push	#4
1460  0002 ae500f        	ldw	x,#20495
1461  0005 cd0000        	call	_GPIO_WriteLow
1463  0008 84            	pop	a
1464                     ; 242 LCD_D4_H;
1466  0009 4b10          	push	#16
1467  000b ae500f        	ldw	x,#20495
1468  000e cd0000        	call	_GPIO_WriteHigh
1470  0011 84            	pop	a
1471                     ; 243 LCD_D5_H;
1473  0012 4b20          	push	#32
1474  0014 ae500f        	ldw	x,#20495
1475  0017 cd0000        	call	_GPIO_WriteHigh
1477  001a 84            	pop	a
1478                     ; 244 LCD_D6_H;
1480  001b 4b40          	push	#64
1481  001d ae500f        	ldw	x,#20495
1482  0020 cd0000        	call	_GPIO_WriteHigh
1484  0023 84            	pop	a
1485                     ; 245 LCD_D7_H;
1487  0024 4b80          	push	#128
1488  0026 ae500f        	ldw	x,#20495
1489  0029 cd0000        	call	_GPIO_WriteHigh
1491  002c 84            	pop	a
1492                     ; 246 lcd_bus_outputs();
1494  002d cd0000        	call	_lcd_bus_outputs
1496                     ; 247 }	
1499  0030 81            	ret
1532                     ; 250 uint8_t lcd_busy_wait(void){
1533                     .text:	section	.text,new
1534  0000               _lcd_busy_wait:
1536  0000 89            	pushw	x
1537       00000002      OFST:	set	2
1540                     ; 251 	uint16_t timeout=LCD_BUSY_TIMEOUT;
1542  0001 ae000a        	ldw	x,#10
1543  0004 1f01          	ldw	(OFST-1,sp),x
1546  0006 2007          	jra	L173
1547  0008               L563:
1548                     ; 253 		timeout--;
1550  0008 1e01          	ldw	x,(OFST-1,sp)
1551  000a 1d0001        	subw	x,#1
1552  000d 1f01          	ldw	(OFST-1,sp),x
1554  000f               L173:
1555                     ; 252 	while(timeout && lcd_busy()){
1557  000f 1e01          	ldw	x,(OFST-1,sp)
1558  0011 2707          	jreq	L573
1560  0013 cd0000        	call	_lcd_read
1562  0016 a580          	bcp	a,#128
1563  0018 26ee          	jrne	L563
1564  001a               L573:
1565                     ; 255 	if(timeout==0){return 1;} // error, busy still ==1
1567  001a 1e01          	ldw	x,(OFST-1,sp)
1568  001c 2604          	jrne	L773
1571  001e a601          	ld	a,#1
1573  0020 2001          	jra	L05
1574  0022               L773:
1575                     ; 256 	else{return 0;}
1577  0022 4f            	clr	a
1579  0023               L05:
1581  0023 85            	popw	x
1582  0024 81            	ret
1622                     ; 260 void lcd_delay_ms(uint8_t delay){
1623                     .text:	section	.text,new
1624  0000               _lcd_delay_ms:
1626  0000 89            	pushw	x
1627       00000002      OFST:	set	2
1630                     ; 261 	uint16_t tmp=10*(uint16_t)delay;
1632  0001 5f            	clrw	x
1633  0002 97            	ld	xl,a
1634  0003 a60a          	ld	a,#10
1635  0005 cd0000        	call	c_bmulx
1637  0008 1f01          	ldw	(OFST-1,sp),x
1640  000a 200d          	jra	L524
1641  000c               L124:
1642                     ; 263 	delay_us(100);
1644  000c ae0064        	ldw	x,#100
1645  000f cd0000        	call	_delay_us
1647                     ; 264 	tmp--;
1649  0012 1e01          	ldw	x,(OFST-1,sp)
1650  0014 1d0001        	subw	x,#1
1651  0017 1f01          	ldw	(OFST-1,sp),x
1653  0019               L524:
1654                     ; 262 	while(tmp){
1656  0019 1e01          	ldw	x,(OFST-1,sp)
1657  001b 26ef          	jrne	L124
1658                     ; 266 }
1661  001d 85            	popw	x
1662  001e 81            	ret
1675                     	xref	_delay_us
1676                     	xdef	_lcd_delay_ms
1677                     	xdef	_lcd_store_symbol
1678                     	xdef	_lcd_puts
1679                     	xdef	_lcd_gotoxy
1680                     	xdef	_lcd_init
1681                     	xdef	_lcd_bus_wakeup
1682                     	xdef	_lcd_bus_sleep
1683                     	xdef	_lcd_busy_wait
1684                     	xdef	_lcd_read
1685                     	xdef	_lcd_data
1686                     	xdef	_lcd_command
1687                     	xdef	_lcd_e_tick
1688                     	xdef	_lcd_bus_read
1689                     	xdef	_lcd_bus_inputs
1690                     	xdef	_lcd_bus_outputs
1691                     	xdef	_lcd_deinit_hw
1692                     	xdef	_lcd_init_hw
1693                     	xdef	_lcd_bus_set
1694                     	xref	_GPIO_ReadInputPin
1695                     	xref	_GPIO_WriteLow
1696                     	xref	_GPIO_WriteHigh
1697                     	xref	_GPIO_Init
1698                     	xref.b	c_x
1717                     	xref	c_bmulx
1718                     	end
