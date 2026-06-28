   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  15                     	switch	.data
  16  0000               _isr_flag:
  17  0000 00            	dc.b	0
  18                     .const:	section	.text
  19  0000               _sw_delay:
  20  0000 01f4          	dc.w	500
  21  0002               _characters1:
  22  0002 00            	dc.b	0
  23  0003 00            	dc.b	0
  24  0004 00            	dc.b	0
  25  0005 00            	dc.b	0
  26  0006 00            	dc.b	0
  27  0007 00            	dc.b	0
  28  0008 00            	dc.b	0
  29  0009 0e            	dc.b	14
  30  000a 00            	dc.b	0
  31  000b 00            	dc.b	0
  32  000c 00            	dc.b	0
  33  000d 00            	dc.b	0
  34  000e 00            	dc.b	0
  35  000f 00            	dc.b	0
  36  0010 0e            	dc.b	14
  37  0011 0e            	dc.b	14
  38  0012 00            	dc.b	0
  39  0013 00            	dc.b	0
  40  0014 00            	dc.b	0
  41  0015 00            	dc.b	0
  42  0016 00            	dc.b	0
  43  0017 0e            	dc.b	14
  44  0018 0e            	dc.b	14
  45  0019 0e            	dc.b	14
  46  001a 00            	dc.b	0
  47  001b 00            	dc.b	0
  48  001c 00            	dc.b	0
  49  001d 00            	dc.b	0
  50  001e 0e            	dc.b	14
  51  001f 0e            	dc.b	14
  52  0020 0e            	dc.b	14
  53  0021 0e            	dc.b	14
  54  0022 00            	dc.b	0
  55  0023 00            	dc.b	0
  56  0024 00            	dc.b	0
  57  0025 0e            	dc.b	14
  58  0026 0e            	dc.b	14
  59  0027 0e            	dc.b	14
  60  0028 0e            	dc.b	14
  61  0029 0e            	dc.b	14
  62  002a 00            	dc.b	0
  63  002b 00            	dc.b	0
  64  002c 0e            	dc.b	14
  65  002d 0e            	dc.b	14
  66  002e 0e            	dc.b	14
  67  002f 0e            	dc.b	14
  68  0030 0e            	dc.b	14
  69  0031 0e            	dc.b	14
  70  0032 00            	dc.b	0
  71  0033 0e            	dc.b	14
  72  0034 0e            	dc.b	14
  73  0035 0e            	dc.b	14
  74  0036 0e            	dc.b	14
  75  0037 0e            	dc.b	14
  76  0038 0e            	dc.b	14
  77  0039 0e            	dc.b	14
  78  003a 0e            	dc.b	14
  79  003b 0e            	dc.b	14
  80  003c 0e            	dc.b	14
  81  003d 0e            	dc.b	14
  82  003e 0e            	dc.b	14
  83  003f 0e            	dc.b	14
  84  0040 0e            	dc.b	14
  85  0041 0e            	dc.b	14
  86  0042               _characters2:
  87  0042 00            	dc.b	0
  88  0043 00            	dc.b	0
  89  0044 00            	dc.b	0
  90  0045 00            	dc.b	0
  91  0046 00            	dc.b	0
  92  0047 00            	dc.b	0
  93  0048 00            	dc.b	0
  94  0049 1f            	dc.b	31
  95  004a 00            	dc.b	0
  96  004b 00            	dc.b	0
  97  004c 00            	dc.b	0
  98  004d 00            	dc.b	0
  99  004e 00            	dc.b	0
 100  004f 00            	dc.b	0
 101  0050 1f            	dc.b	31
 102  0051 1f            	dc.b	31
 103  0052 00            	dc.b	0
 104  0053 00            	dc.b	0
 105  0054 00            	dc.b	0
 106  0055 00            	dc.b	0
 107  0056 00            	dc.b	0
 108  0057 1f            	dc.b	31
 109  0058 1f            	dc.b	31
 110  0059 1f            	dc.b	31
 111  005a 00            	dc.b	0
 112  005b 00            	dc.b	0
 113  005c 00            	dc.b	0
 114  005d 00            	dc.b	0
 115  005e 1f            	dc.b	31
 116  005f 1f            	dc.b	31
 117  0060 1f            	dc.b	31
 118  0061 1f            	dc.b	31
 119  0062 00            	dc.b	0
 120  0063 00            	dc.b	0
 121  0064 00            	dc.b	0
 122  0065 1f            	dc.b	31
 123  0066 1f            	dc.b	31
 124  0067 1f            	dc.b	31
 125  0068 1f            	dc.b	31
 126  0069 1f            	dc.b	31
 127  006a 00            	dc.b	0
 128  006b 00            	dc.b	0
 129  006c 1f            	dc.b	31
 130  006d 1f            	dc.b	31
 131  006e 1f            	dc.b	31
 132  006f 1f            	dc.b	31
 133  0070 1f            	dc.b	31
 134  0071 1f            	dc.b	31
 135  0072 00            	dc.b	0
 136  0073 1f            	dc.b	31
 137  0074 1f            	dc.b	31
 138  0075 1f            	dc.b	31
 139  0076 1f            	dc.b	31
 140  0077 1f            	dc.b	31
 141  0078 1f            	dc.b	31
 142  0079 1f            	dc.b	31
 143  007a 1f            	dc.b	31
 144  007b 1f            	dc.b	31
 145  007c 1f            	dc.b	31
 146  007d 1f            	dc.b	31
 147  007e 1f            	dc.b	31
 148  007f 1f            	dc.b	31
 149  0080 1f            	dc.b	31
 150  0081 1f            	dc.b	31
 151  0082               _characters3:
 152  0082 00            	dc.b	0
 153  0083 00            	dc.b	0
 154  0084 00            	dc.b	0
 155  0085 00            	dc.b	0
 156  0086 00            	dc.b	0
 157  0087 00            	dc.b	0
 158  0088 00            	dc.b	0
 159  0089 0a            	dc.b	10
 160  008a 00            	dc.b	0
 161  008b 00            	dc.b	0
 162  008c 00            	dc.b	0
 163  008d 00            	dc.b	0
 164  008e 00            	dc.b	0
 165  008f 00            	dc.b	0
 166  0090 0a            	dc.b	10
 167  0091 0a            	dc.b	10
 168  0092 00            	dc.b	0
 169  0093 00            	dc.b	0
 170  0094 00            	dc.b	0
 171  0095 00            	dc.b	0
 172  0096 00            	dc.b	0
 173  0097 0a            	dc.b	10
 174  0098 0a            	dc.b	10
 175  0099 0a            	dc.b	10
 176  009a 00            	dc.b	0
 177  009b 00            	dc.b	0
 178  009c 00            	dc.b	0
 179  009d 00            	dc.b	0
 180  009e 0a            	dc.b	10
 181  009f 0a            	dc.b	10
 182  00a0 0a            	dc.b	10
 183  00a1 0a            	dc.b	10
 184  00a2 00            	dc.b	0
 185  00a3 00            	dc.b	0
 186  00a4 00            	dc.b	0
 187  00a5 0a            	dc.b	10
 188  00a6 0a            	dc.b	10
 189  00a7 0a            	dc.b	10
 190  00a8 0a            	dc.b	10
 191  00a9 0a            	dc.b	10
 192  00aa 00            	dc.b	0
 193  00ab 00            	dc.b	0
 194  00ac 0a            	dc.b	10
 195  00ad 0a            	dc.b	10
 196  00ae 0a            	dc.b	10
 197  00af 0a            	dc.b	10
 198  00b0 0a            	dc.b	10
 199  00b1 0a            	dc.b	10
 200  00b2 00            	dc.b	0
 201  00b3 0a            	dc.b	10
 202  00b4 0a            	dc.b	10
 203  00b5 0a            	dc.b	10
 204  00b6 0a            	dc.b	10
 205  00b7 0a            	dc.b	10
 206  00b8 0a            	dc.b	10
 207  00b9 0a            	dc.b	10
 208  00ba 0a            	dc.b	10
 209  00bb 0a            	dc.b	10
 210  00bc 0a            	dc.b	10
 211  00bd 0a            	dc.b	10
 212  00be 0a            	dc.b	10
 213  00bf 0a            	dc.b	10
 214  00c0 0a            	dc.b	10
 215  00c1 0a            	dc.b	10
 272                     ; 85 void main(void)
 272                     ; 86 {
 274                     .text:	section	.text,new
 275  0000               _main:
 279                     ; 87     Init_CLK();
 281  0000 cd0000        	call	_Init_CLK
 283                     ; 88     Init_GPIO();
 285  0003 cd0000        	call	_Init_GPIO
 287                     ; 89     Init_ADC(CHANNEL);
 289  0006 4f            	clr	a
 290  0007 cd0000        	call	_Init_ADC
 292                     ; 90     TIM4_Config();
 294  000a cd0000        	call	_TIM4_Config
 296                     ; 92     lcd_init(); 
 298  000d cd0000        	call	_lcd_init
 300                     ; 93     lcd_command(LCD_DISPLAY_CLEAR);  // clear once
 302  0010 a601          	ld	a,#1
 303  0012 cd0000        	call	_lcd_command
 305                     ; 94 		m=memory_load_m();// load mode saved by user
 307  0015 cd0000        	call	_memory_load_m
 309  0018 c70002        	ld	_m,a
 310                     ; 95 		if (m<1 || m>3){ //if out of bounds
 312  001b 725d0002      	tnz	_m
 313  001f 2707          	jreq	L13
 315  0021 c60002        	ld	a,_m
 316  0024 a104          	cp	a,#4
 317  0026 2504          	jrult	L72
 318  0028               L13:
 319                     ; 96 			m=1;
 321  0028 35010002      	mov	_m,#1
 322  002c               L72:
 323                     ; 98 		last_m=0; // in start always different
 325  002c 725f0001      	clr	_last_m
 326                     ; 99 		enableInterrupts();
 329  0030 9a            rim
 331  0031               L33:
 332                     ; 102 		 if (m != last_m){
 334  0031 c60002        	ld	a,_m
 335  0034 c10001        	cp	a,_last_m
 336  0037 2603          	jrne	L6
 337  0039 cc0117        	jp	L73
 338  003c               L6:
 339                     ; 103 				switch (m) {
 341  003c c60002        	ld	a,_m
 343                     ; 133 								break;
 344  003f 4a            	dec	a
 345  0040 270d          	jreq	L3
 346  0042 4a            	dec	a
 347  0043 274e          	jreq	L5
 348  0045 4a            	dec	a
 349  0046 2603cc00d6    	jreq	L7
 350  004b ac170117      	jpf	L73
 351  004f               L3:
 352                     ; 104 						case 1:
 352                     ; 105 								for (i = 0; i < 8; i++) {
 354  004f 725f0000      	clr	_i
 355  0053               L54:
 356                     ; 106 										lcd_store_symbol(i, (uint8_t*)characters1[i]);
 358  0053 c60000        	ld	a,_i
 359  0056 97            	ld	xl,a
 360  0057 a608          	ld	a,#8
 361  0059 42            	mul	x,a
 362  005a 1c0002        	addw	x,#_characters1
 363  005d 89            	pushw	x
 364  005e c60000        	ld	a,_i
 365  0061 cd0000        	call	_lcd_store_symbol
 367  0064 85            	popw	x
 368                     ; 105 								for (i = 0; i < 8; i++) {
 370  0065 725c0000      	inc	_i
 373  0069 c60000        	ld	a,_i
 374  006c a108          	cp	a,#8
 375  006e 25e3          	jrult	L54
 376                     ; 108 								lcd_command(LCD_DISPLAY_CLEAR);
 378  0070 a601          	ld	a,#1
 379  0072 cd0000        	call	_lcd_command
 381                     ; 109 								lcd_puts("250Hz  STYLE 1  4kHz");
 383  0075 ae00fc        	ldw	x,#L35
 384  0078 cd0000        	call	_lcd_puts
 386                     ; 110 								memory_save_m();
 388  007b cd0000        	call	_memory_save_m
 390                     ; 111 								last_m = m;
 392  007e 5500020001    	mov	_last_m,_m
 393                     ; 112 								delay(500);
 395  0083 ae01f4        	ldw	x,#500
 396  0086 89            	pushw	x
 397  0087 ae0000        	ldw	x,#0
 398  008a 89            	pushw	x
 399  008b cd0000        	call	_delay
 401  008e 5b04          	addw	sp,#4
 402                     ; 113 								break;
 404  0090 cc0117        	jra	L73
 405  0093               L5:
 406                     ; 114 						case 2:
 406                     ; 115 								for (i = 0; i < 8; i++) {
 408  0093 725f0000      	clr	_i
 409  0097               L55:
 410                     ; 116 										lcd_store_symbol(i, (uint8_t*)characters2[i]);
 412  0097 c60000        	ld	a,_i
 413  009a 97            	ld	xl,a
 414  009b a608          	ld	a,#8
 415  009d 42            	mul	x,a
 416  009e 1c0042        	addw	x,#_characters2
 417  00a1 89            	pushw	x
 418  00a2 c60000        	ld	a,_i
 419  00a5 cd0000        	call	_lcd_store_symbol
 421  00a8 85            	popw	x
 422                     ; 115 								for (i = 0; i < 8; i++) {
 424  00a9 725c0000      	inc	_i
 427  00ad c60000        	ld	a,_i
 428  00b0 a108          	cp	a,#8
 429  00b2 25e3          	jrult	L55
 430                     ; 118 								lcd_command(LCD_DISPLAY_CLEAR);
 432  00b4 a601          	ld	a,#1
 433  00b6 cd0000        	call	_lcd_command
 435                     ; 119 								lcd_puts("250Hz  STYLE 2  4kHz");
 437  00b9 ae00e7        	ldw	x,#L36
 438  00bc cd0000        	call	_lcd_puts
 440                     ; 120 								memory_save_m();
 442  00bf cd0000        	call	_memory_save_m
 444                     ; 121 								last_m = m;
 446  00c2 5500020001    	mov	_last_m,_m
 447                     ; 122 								delay(500);
 449  00c7 ae01f4        	ldw	x,#500
 450  00ca 89            	pushw	x
 451  00cb ae0000        	ldw	x,#0
 452  00ce 89            	pushw	x
 453  00cf cd0000        	call	_delay
 455  00d2 5b04          	addw	sp,#4
 456                     ; 123 								break;
 458  00d4 2041          	jra	L73
 459  00d6               L7:
 460                     ; 124 						case 3:
 460                     ; 125 								for (i = 0; i < 8; i++) {
 462  00d6 725f0000      	clr	_i
 463  00da               L56:
 464                     ; 126 										lcd_store_symbol(i, (uint8_t*)characters3[i]);
 466  00da c60000        	ld	a,_i
 467  00dd 97            	ld	xl,a
 468  00de a608          	ld	a,#8
 469  00e0 42            	mul	x,a
 470  00e1 1c0082        	addw	x,#_characters3
 471  00e4 89            	pushw	x
 472  00e5 c60000        	ld	a,_i
 473  00e8 cd0000        	call	_lcd_store_symbol
 475  00eb 85            	popw	x
 476                     ; 125 								for (i = 0; i < 8; i++) {
 478  00ec 725c0000      	inc	_i
 481  00f0 c60000        	ld	a,_i
 482  00f3 a108          	cp	a,#8
 483  00f5 25e3          	jrult	L56
 484                     ; 128 								lcd_command(LCD_DISPLAY_CLEAR);
 486  00f7 a601          	ld	a,#1
 487  00f9 cd0000        	call	_lcd_command
 489                     ; 129 								lcd_puts("250Hz  STYLE 3  4kHz");
 491  00fc ae00d2        	ldw	x,#L37
 492  00ff cd0000        	call	_lcd_puts
 494                     ; 130 								memory_save_m();
 496  0102 cd0000        	call	_memory_save_m
 498                     ; 131 								last_m = m;
 500  0105 5500020001    	mov	_last_m,_m
 501                     ; 132 								delay(500);
 503  010a ae01f4        	ldw	x,#500
 504  010d 89            	pushw	x
 505  010e ae0000        	ldw	x,#0
 506  0111 89            	pushw	x
 507  0112 cd0000        	call	_delay
 509  0115 5b04          	addw	sp,#4
 510                     ; 133 								break;
 512  0117               L34:
 513  0117               L73:
 514                     ; 136 				if (GPIO_ReadInputPin(VISUAL_BTN) == RESET) {//mode select	
 516  0117 4b20          	push	#32
 517  0119 ae5014        	ldw	x,#20500
 518  011c cd0000        	call	_GPIO_ReadInputPin
 520  011f 5b01          	addw	sp,#1
 521  0121 4d            	tnz	a
 522  0122 260f          	jrne	L57
 523                     ; 137 										m++; 
 525  0124 725c0002      	inc	_m
 526                     ; 138 										if (m > 3)
 528  0128 c60002        	ld	a,_m
 529  012b a104          	cp	a,#4
 530  012d 2504          	jrult	L57
 531                     ; 139 										m = 1;
 533  012f 35010002      	mov	_m,#1
 534  0133               L57:
 535                     ; 141         capture_wave(N_SAMPLE);
 537  0133 ae0040        	ldw	x,#64
 538  0136 cd0000        	call	_capture_wave
 540                     ; 142         fix_fft(capture, bfly_buff);
 542  0139 ae002b        	ldw	x,#_bfly_buff
 543  013c 89            	pushw	x
 544  013d ae012b        	ldw	x,#_capture
 545  0140 cd0000        	call	_fix_fft
 547  0143 85            	popw	x
 548                     ; 143         fft_out(bfly_buff, capture);
 550  0144 ae012b        	ldw	x,#_capture
 551  0147 89            	pushw	x
 552  0148 ae002b        	ldw	x,#_bfly_buff
 553  014b cd0000        	call	_fft_out
 555  014e 85            	popw	x
 556                     ; 144         calcAvgbyBand(capture, N_SAMPLE >> 1, bandFft);
 558  014f ae0003        	ldw	x,#_bandFft
 559  0152 89            	pushw	x
 560  0153 ae0020        	ldw	x,#32
 561  0156 89            	pushw	x
 562  0157 ae012b        	ldw	x,#_capture
 563  015a cd0000        	call	_calcAvgbyBand
 565  015d 5b04          	addw	sp,#4
 566                     ; 145         normalizeBand(bandFft, NOISE, 1024, CLIP_HEIGHT, GAIN);
 568  015f 4b64          	push	#100
 569  0161 4b18          	push	#24
 570  0163 ae0400        	ldw	x,#1024
 571  0166 89            	pushw	x
 572  0167 ae0003        	ldw	x,#3
 573  016a 89            	pushw	x
 574  016b ae0003        	ldw	x,#_bandFft
 575  016e cd0000        	call	_normalizeBand
 577  0171 5b06          	addw	sp,#6
 578                     ; 146         set_level(bandFft);
 580  0173 ae0003        	ldw	x,#_bandFft
 581  0176 cd0000        	call	_set_level
 584  0179 ac310031      	jpf	L33
 699                     ; 154 void calcAvgbyBand(int16_t *ptrData, uint16_t bufSize, uint16_t *ptrBand)
 699                     ; 155 {
 700                     .text:	section	.text,new
 701  0000               _calcAvgbyBand:
 703  0000 89            	pushw	x
 704  0001 5216          	subw	sp,#22
 705       00000016      OFST:	set	22
 708                     ; 156     float average = 0;
 710  0003 ae0000        	ldw	x,#0
 711  0006 1f15          	ldw	(OFST-1,sp),x
 712  0008 ae0000        	ldw	x,#0
 713  000b 1f13          	ldw	(OFST-3,sp),x
 715                     ; 158     float freqFactor = 1.28; 
 717  000d ce00d0        	ldw	x,L351+2
 718  0010 1f03          	ldw	(OFST-19,sp),x
 719  0012 ce00ce        	ldw	x,L351
 720  0015 1f01          	ldw	(OFST-21,sp),x
 722                     ; 159     uint16_t nSamp = 0;
 724  0017 5f            	clrw	x
 725  0018 1f0f          	ldw	(OFST-7,sp),x
 727                     ; 160     uint8_t j = 0;
 729  001a 0f0a          	clr	(OFST-12,sp)
 731                     ; 164     float max_freq = ((float)(bufSize - 1) * SAMP_FREQ) / N_SAMPLE;
 733  001c 1e1b          	ldw	x,(OFST+5,sp)
 734  001e 5a            	decw	x
 735  001f cd0000        	call	c_uitof
 737  0022 ae00ca        	ldw	x,#L361
 738  0025 cd0000        	call	c_fmul
 740  0028 ae00c6        	ldw	x,#L371
 741  002b cd0000        	call	c_fdiv
 743  002e 96            	ldw	x,sp
 744  002f 1c0006        	addw	x,#OFST-16
 745  0032 cd0000        	call	c_rtol
 748                     ; 166     float freqbase = max_freq;
 750  0035 1e08          	ldw	x,(OFST-14,sp)
 751  0037 1f0d          	ldw	(OFST-9,sp),x
 752  0039 1e06          	ldw	x,(OFST-16,sp)
 753  003b 1f0b          	ldw	(OFST-11,sp),x
 755                     ; 168     for (k = 0; k < BANDS - 1; k++) {
 757  003d 0f05          	clr	(OFST-17,sp)
 759  003f               L771:
 760                     ; 169         freqbase /= freqFactor;
 762  003f 96            	ldw	x,sp
 763  0040 1c0001        	addw	x,#OFST-21
 764  0043 cd0000        	call	c_ltor
 766  0046 96            	ldw	x,sp
 767  0047 1c000b        	addw	x,#OFST-11
 768  004a cd0000        	call	c_fgdiv
 771                     ; 168     for (k = 0; k < BANDS - 1; k++) {
 773  004d 0c05          	inc	(OFST-17,sp)
 777  004f 7b05          	ld	a,(OFST-17,sp)
 778  0051 a113          	cp	a,#19
 779  0053 25ea          	jrult	L771
 780                     ; 172     for (i = 2; i < bufSize; i++)//get rid of noise at lower freq
 782  0055 ae0002        	ldw	x,#2
 783  0058 1f11          	ldw	(OFST-5,sp),x
 786  005a acfc00fc      	jpf	L112
 787  005e               L502:
 788                     ; 174         freq = (i * 1.0 * SAMP_FREQ) / N_SAMPLE;
 790  005e 1e11          	ldw	x,(OFST-5,sp)
 791  0060 cd0000        	call	c_uitof
 793  0063 ae00c2        	ldw	x,#L122
 794  0066 cd0000        	call	c_fmul
 796  0069 ae00ca        	ldw	x,#L361
 797  006c cd0000        	call	c_fmul
 799  006f ae00c6        	ldw	x,#L371
 800  0072 cd0000        	call	c_fdiv
 802  0075 96            	ldw	x,sp
 803  0076 1c0006        	addw	x,#OFST-16
 804  0079 cd0000        	call	c_rtol
 807                     ; 175         average += ptrData[i];
 809  007c 1e11          	ldw	x,(OFST-5,sp)
 810  007e 58            	sllw	x
 811  007f 72fb17        	addw	x,(OFST+1,sp)
 812  0082 fe            	ldw	x,(x)
 813  0083 cd0000        	call	c_itof
 815  0086 96            	ldw	x,sp
 816  0087 1c0013        	addw	x,#OFST-3
 817  008a cd0000        	call	c_fgadd
 820                     ; 176         nSamp++;
 822  008d 1e0f          	ldw	x,(OFST-7,sp)
 823  008f 1c0001        	addw	x,#1
 824  0092 1f0f          	ldw	(OFST-7,sp),x
 826                     ; 178         if (freq > freqbase && j < BANDS)
 828  0094 9c            	rvf
 829  0095 96            	ldw	x,sp
 830  0096 1c0006        	addw	x,#OFST-16
 831  0099 cd0000        	call	c_ltor
 833  009c 96            	ldw	x,sp
 834  009d 1c000b        	addw	x,#OFST-11
 835  00a0 cd0000        	call	c_fcmp
 837  00a3 2d50          	jrsle	L522
 839  00a5 7b0a          	ld	a,(OFST-12,sp)
 840  00a7 a114          	cp	a,#20
 841  00a9 244a          	jruge	L522
 842                     ; 180             average /= (1.0 + nSamp);
 844  00ab 1e0f          	ldw	x,(OFST-7,sp)
 845  00ad cd0000        	call	c_uitof
 847  00b0 ae00c2        	ldw	x,#L122
 848  00b3 cd0000        	call	c_fadd
 850  00b6 96            	ldw	x,sp
 851  00b7 1c0013        	addw	x,#OFST-3
 852  00ba cd0000        	call	c_fgdiv
 855                     ; 181             ptrBand[j++] = (uint16_t)average;
 857  00bd 96            	ldw	x,sp
 858  00be 1c0013        	addw	x,#OFST-3
 859  00c1 cd0000        	call	c_ltor
 861  00c4 cd0000        	call	c_ftoi
 863  00c7 7b0a          	ld	a,(OFST-12,sp)
 864  00c9 9097          	ld	yl,a
 865  00cb 0c0a          	inc	(OFST-12,sp)
 867  00cd 909f          	ld	a,yl
 868  00cf 905f          	clrw	y
 869  00d1 9097          	ld	yl,a
 870  00d3 9058          	sllw	y
 871  00d5 72f91d        	addw	y,(OFST+7,sp)
 872  00d8 90ff          	ldw	(y),x
 873                     ; 182             freqbase *= freqFactor;
 875  00da 96            	ldw	x,sp
 876  00db 1c0001        	addw	x,#OFST-21
 877  00de cd0000        	call	c_ltor
 879  00e1 96            	ldw	x,sp
 880  00e2 1c000b        	addw	x,#OFST-11
 881  00e5 cd0000        	call	c_fgmul
 884                     ; 183             average = 0;
 886  00e8 ae0000        	ldw	x,#0
 887  00eb 1f15          	ldw	(OFST-1,sp),x
 888  00ed ae0000        	ldw	x,#0
 889  00f0 1f13          	ldw	(OFST-3,sp),x
 891                     ; 184             nSamp = 0;
 893  00f2 5f            	clrw	x
 894  00f3 1f0f          	ldw	(OFST-7,sp),x
 896  00f5               L522:
 897                     ; 172     for (i = 2; i < bufSize; i++)//get rid of noise at lower freq
 899  00f5 1e11          	ldw	x,(OFST-5,sp)
 900  00f7 1c0001        	addw	x,#1
 901  00fa 1f11          	ldw	(OFST-5,sp),x
 903  00fc               L112:
 906  00fc 1e11          	ldw	x,(OFST-5,sp)
 907  00fe 131b          	cpw	x,(OFST+5,sp)
 908  0100 2403          	jruge	L21
 909  0102 cc005e        	jp	L502
 910  0105               L21:
 911                     ; 188     if (j < BANDS && nSamp > 0) {
 913  0105 7b0a          	ld	a,(OFST-12,sp)
 914  0107 a114          	cp	a,#20
 915  0109 242d          	jruge	L722
 917  010b 1e0f          	ldw	x,(OFST-7,sp)
 918  010d 2729          	jreq	L722
 919                     ; 189         average /= (1.0 * nSamp);
 921  010f 1e0f          	ldw	x,(OFST-7,sp)
 922  0111 cd0000        	call	c_uitof
 924  0114 ae00c2        	ldw	x,#L122
 925  0117 cd0000        	call	c_fmul
 927  011a 96            	ldw	x,sp
 928  011b 1c0013        	addw	x,#OFST-3
 929  011e cd0000        	call	c_fgdiv
 932                     ; 190         ptrBand[j] = (uint16_t)average;
 934  0121 96            	ldw	x,sp
 935  0122 1c0013        	addw	x,#OFST-3
 936  0125 cd0000        	call	c_ltor
 938  0128 cd0000        	call	c_ftoi
 940  012b 7b0a          	ld	a,(OFST-12,sp)
 941  012d 905f          	clrw	y
 942  012f 9097          	ld	yl,a
 943  0131 9058          	sllw	y
 944  0133 72f91d        	addw	y,(OFST+7,sp)
 945  0136 90ff          	ldw	(y),x
 946  0138               L722:
 947                     ; 192 }
 950  0138 5b18          	addw	sp,#24
 951  013a 81            	ret
1028                     ; 196 void normalizeBand(uint16_t *ptrBand, uint16_t noise, uint16_t max_input, uint8_t max_output, uint8_t gain)
1028                     ; 197 {
1029                     .text:	section	.text,new
1030  0000               _normalizeBand:
1032  0000 89            	pushw	x
1033  0001 5207          	subw	sp,#7
1034       00000007      OFST:	set	7
1037                     ; 200     for (i = 0; i < BANDS; i++)
1039  0003 0f05          	clr	(OFST-2,sp)
1041  0005               L362:
1042                     ; 202         aux = ptrBand[i];
1044  0005 7b05          	ld	a,(OFST-2,sp)
1045  0007 5f            	clrw	x
1046  0008 97            	ld	xl,a
1047  0009 58            	sllw	x
1048  000a 72fb08        	addw	x,(OFST+1,sp)
1049  000d fe            	ldw	x,(x)
1050  000e 1f06          	ldw	(OFST-1,sp),x
1052                     ; 204         if (aux > noise)
1054  0010 1e06          	ldw	x,(OFST-1,sp)
1055  0012 130c          	cpw	x,(OFST+5,sp)
1056  0014 2341          	jrule	L172
1057                     ; 207             aux = (aux - noise) * gain;
1059  0016 1e06          	ldw	x,(OFST-1,sp)
1060  0018 72f00c        	subw	x,(OFST+5,sp)
1061  001b 7b11          	ld	a,(OFST+10,sp)
1062  001d cd0000        	call	c_bmulx
1064  0020 1f06          	ldw	(OFST-1,sp),x
1066                     ; 210             if (aux > max_input) aux = max_input;
1068  0022 1e06          	ldw	x,(OFST-1,sp)
1069  0024 130e          	cpw	x,(OFST+7,sp)
1070  0026 2304          	jrule	L372
1073  0028 1e0e          	ldw	x,(OFST+7,sp)
1074  002a 1f06          	ldw	(OFST-1,sp),x
1076  002c               L372:
1077                     ; 213             ptrBand[i] = (uint16_t)((uint32_t)aux * max_output / max_input);
1079  002c 1e0e          	ldw	x,(OFST+7,sp)
1080  002e cd0000        	call	c_uitolx
1082  0031 96            	ldw	x,sp
1083  0032 1c0001        	addw	x,#OFST-6
1084  0035 cd0000        	call	c_rtol
1087  0038 1e06          	ldw	x,(OFST-1,sp)
1088  003a 7b10          	ld	a,(OFST+9,sp)
1089  003c cd0000        	call	c_cmulx
1091  003f 96            	ldw	x,sp
1092  0040 1c0001        	addw	x,#OFST-6
1093  0043 cd0000        	call	c_ludv
1095  0046 be02          	ldw	x,c_lreg+2
1096  0048 7b05          	ld	a,(OFST-2,sp)
1097  004a 905f          	clrw	y
1098  004c 9097          	ld	yl,a
1099  004e 9058          	sllw	y
1100  0050 72f908        	addw	y,(OFST+1,sp)
1101  0053 90ff          	ldw	(y),x
1103  0055 200b          	jra	L572
1104  0057               L172:
1105                     ; 217             ptrBand[i] = 0;
1107  0057 7b05          	ld	a,(OFST-2,sp)
1108  0059 5f            	clrw	x
1109  005a 97            	ld	xl,a
1110  005b 58            	sllw	x
1111  005c 72fb08        	addw	x,(OFST+1,sp)
1112  005f 905f          	clrw	y
1113  0061 ff            	ldw	(x),y
1114  0062               L572:
1115                     ; 200     for (i = 0; i < BANDS; i++)
1117  0062 0c05          	inc	(OFST-2,sp)
1121  0064 7b05          	ld	a,(OFST-2,sp)
1122  0066 a114          	cp	a,#20
1123  0068 259b          	jrult	L362
1124                     ; 220 }
1127  006a 5b09          	addw	sp,#9
1128  006c 81            	ret
1193                     ; 225 void set_level(uint16_t *ptr)
1193                     ; 226 {
1194                     .text:	section	.text,new
1195  0000               _set_level:
1197  0000 89            	pushw	x
1198  0001 5206          	subw	sp,#6
1199       00000006      OFST:	set	6
1202                     ; 229     for (y = 1; y < 4; y++)//shift for text, otherwise y=0
1204  0003 a601          	ld	a,#1
1205  0005 6b05          	ld	(OFST-1,sp),a
1207  0007               L523:
1208                     ; 231         lcd_gotoxy(0, y);
1210  0007 7b05          	ld	a,(OFST-1,sp)
1211  0009 5f            	clrw	x
1212  000a 97            	ld	xl,a
1213  000b cd0000        	call	_lcd_gotoxy
1215                     ; 232         for (x = 0; x < 20; x++)
1217  000e 0f03          	clr	(OFST-3,sp)
1219  0010               L333:
1220                     ; 234             n = (uint8_t)*(ptr + x);
1222  0010 7b03          	ld	a,(OFST-3,sp)
1223  0012 5f            	clrw	x
1224  0013 97            	ld	xl,a
1225  0014 58            	sllw	x
1226  0015 72fb07        	addw	x,(OFST+1,sp)
1227  0018 e601          	ld	a,(1,x)
1228  001a 6b06          	ld	(OFST+0,sp),a
1230                     ; 235             a = n >> 3;                // which row (0..3)
1232  001c 7b06          	ld	a,(OFST+0,sp)
1233  001e 44            	srl	a
1234  001f 44            	srl	a
1235  0020 44            	srl	a
1236  0021 6b04          	ld	(OFST-2,sp),a
1238                     ; 236             if (a == (3 - y))
1240  0023 7b04          	ld	a,(OFST-2,sp)
1241  0025 5f            	clrw	x
1242  0026 97            	ld	xl,a
1243  0027 1f01          	ldw	(OFST-5,sp),x
1245  0029 a600          	ld	a,#0
1246  002b 97            	ld	xl,a
1247  002c a603          	ld	a,#3
1248  002e 1005          	sub	a,(OFST-1,sp)
1249  0030 2401          	jrnc	L02
1250  0032 5a            	decw	x
1251  0033               L02:
1252  0033 02            	rlwa	x,a
1253  0034 1301          	cpw	x,(OFST-5,sp)
1254  0036 2623          	jrne	L143
1255                     ; 238                 n = (n >= 8) ? (n - a * 8) : n;
1257  0038 7b06          	ld	a,(OFST+0,sp)
1258  003a a108          	cp	a,#8
1259  003c 250a          	jrult	L22
1260  003e 7b04          	ld	a,(OFST-2,sp)
1261  0040 48            	sll	a
1262  0041 48            	sll	a
1263  0042 48            	sll	a
1264  0043 1006          	sub	a,(OFST+0,sp)
1265  0045 40            	neg	a
1266  0046 2002          	jra	L42
1267  0048               L22:
1268  0048 7b06          	ld	a,(OFST+0,sp)
1269  004a               L42:
1270  004a 6b06          	ld	(OFST+0,sp),a
1272                     ; 239                 n = (n > 0) ? (n - 1) : ' ';
1274  004c 0d06          	tnz	(OFST+0,sp)
1275  004e 2705          	jreq	L62
1276  0050 7b06          	ld	a,(OFST+0,sp)
1277  0052 4a            	dec	a
1278  0053 2002          	jra	L03
1279  0055               L62:
1280  0055 a620          	ld	a,#32
1281  0057               L03:
1282  0057 6b06          	ld	(OFST+0,sp),a
1285  0059 201e          	jra	L343
1286  005b               L143:
1287                     ; 243                 n = (a >= (3 - y)) ? 7 : ' ';
1289  005b 9c            	rvf
1290  005c 7b04          	ld	a,(OFST-2,sp)
1291  005e 5f            	clrw	x
1292  005f 97            	ld	xl,a
1293  0060 1f01          	ldw	(OFST-5,sp),x
1295  0062 a600          	ld	a,#0
1296  0064 97            	ld	xl,a
1297  0065 a603          	ld	a,#3
1298  0067 1005          	sub	a,(OFST-1,sp)
1299  0069 2401          	jrnc	L43
1300  006b 5a            	decw	x
1301  006c               L43:
1302  006c 02            	rlwa	x,a
1303  006d 1301          	cpw	x,(OFST-5,sp)
1304  006f 2c04          	jrsgt	L23
1305  0071 a607          	ld	a,#7
1306  0073 2002          	jra	L63
1307  0075               L23:
1308  0075 a620          	ld	a,#32
1309  0077               L63:
1310  0077 6b06          	ld	(OFST+0,sp),a
1312  0079               L343:
1313                     ; 245             lcd_data(n);               // write custom character
1315  0079 7b06          	ld	a,(OFST+0,sp)
1316  007b cd0000        	call	_lcd_data
1318                     ; 232         for (x = 0; x < 20; x++)
1320  007e 0c03          	inc	(OFST-3,sp)
1324  0080 7b03          	ld	a,(OFST-3,sp)
1325  0082 a114          	cp	a,#20
1326  0084 258a          	jrult	L333
1327                     ; 229     for (y = 1; y < 4; y++)//shift for text, otherwise y=0
1329  0086 0c05          	inc	(OFST-1,sp)
1333  0088 7b05          	ld	a,(OFST-1,sp)
1334  008a a104          	cp	a,#4
1335  008c 2403          	jruge	L04
1336  008e cc0007        	jp	L523
1337  0091               L04:
1338                     ; 248 }
1341  0091 5b08          	addw	sp,#8
1342  0093 81            	ret
1395                     ; 253 void capture_wave(uint16_t cnt)
1395                     ; 254 {
1396                     .text:	section	.text,new
1397  0000               _capture_wave:
1399  0000 89            	pushw	x
1400  0001 5203          	subw	sp,#3
1401       00000003      OFST:	set	3
1404                     ; 255     u8  i   = 0;
1406  0003 0f03          	clr	(OFST+0,sp)
1408                     ; 256     u16 adc = 0;
1410                     ; 258     isr_flag = RESET;
1412  0005 725f0000      	clr	_isr_flag
1413  0009               L563:
1414                     ; 262         if (isr_flag)
1416  0009 725d0000      	tnz	_isr_flag
1417  000d 274c          	jreq	L763
1418                     ; 264             isr_flag = RESET;
1420  000f 725f0000      	clr	_isr_flag
1421                     ; 266             ADC1->CR1 |= ADC1_CR1_ADON;
1423  0013 72105401      	bset	21505,#0
1425  0017               L773:
1426                     ; 267             while (ADC1_GetFlagStatus(ADC1_FLAG_EOC) == RESET);
1428  0017 a680          	ld	a,#128
1429  0019 cd0000        	call	_ADC1_GetFlagStatus
1431  001c 4d            	tnz	a
1432  001d 27f8          	jreq	L773
1433                     ; 269             adc = ADC1_GetConversionValue() - 511;
1435  001f cd0000        	call	_ADC1_GetConversionValue
1437  0022 1d01ff        	subw	x,#511
1438  0025 1f01          	ldw	(OFST-2,sp),x
1440                     ; 271             bfly_buff[position[i]].real = FIX(adc, ham[i]);
1442  0027 7b03          	ld	a,(OFST+0,sp)
1443  0029 5f            	clrw	x
1444  002a 97            	ld	xl,a
1445  002b 58            	sllw	x
1446  002c de0000        	ldw	x,(_ham,x)
1447  002f 89            	pushw	x
1448  0030 1e03          	ldw	x,(OFST+0,sp)
1449  0032 cd0000        	call	_FIX
1451  0035 85            	popw	x
1452  0036 7b03          	ld	a,(OFST+0,sp)
1453  0038 5f            	clrw	x
1454  0039 97            	ld	xl,a
1455  003a d60000        	ld	a,(_position,x)
1456  003d 97            	ld	xl,a
1457  003e a604          	ld	a,#4
1458  0040 42            	mul	x,a
1459  0041 90be02        	ldw	y,c_lreg+2
1460  0044 df002b        	ldw	(_bfly_buff,x),y
1461                     ; 272             bfly_buff[i].image = 0;
1463  0047 7b03          	ld	a,(OFST+0,sp)
1464  0049 97            	ld	xl,a
1465  004a a604          	ld	a,#4
1466  004c 42            	mul	x,a
1467  004d 905f          	clrw	y
1468  004f df002d        	ldw	(_bfly_buff+2,x),y
1469                     ; 274             i++;
1471  0052 0c03          	inc	(OFST+0,sp)
1473                     ; 275             cnt--;
1475  0054 1e04          	ldw	x,(OFST+1,sp)
1476  0056 1d0001        	subw	x,#1
1477  0059 1f04          	ldw	(OFST+1,sp),x
1478  005b               L763:
1479                     ; 278     while (cnt);
1481  005b 1e04          	ldw	x,(OFST+1,sp)
1482  005d 26aa          	jrne	L563
1483                     ; 279 }
1486  005f 5b05          	addw	sp,#5
1487  0061 81            	ret
1514                     ; 285 void TIM4_Config(void)
1514                     ; 286 {
1515                     .text:	section	.text,new
1516  0000               _TIM4_Config:
1520                     ; 287     TIM4_TimeBaseInit(TIM4_PRESCALER_16, TIM4_PERIOD);
1522  0000 ae047c        	ldw	x,#1148
1523  0003 cd0000        	call	_TIM4_TimeBaseInit
1525                     ; 288     TIM4_ClearFlag(TIM4_FLAG_UPDATE);
1527  0006 a601          	ld	a,#1
1528  0008 cd0000        	call	_TIM4_ClearFlag
1530                     ; 289     TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
1532  000b ae0101        	ldw	x,#257
1533  000e cd0000        	call	_TIM4_ITConfig
1535                     ; 290     TIM4_Cmd(ENABLE);
1537  0011 a601          	ld	a,#1
1538  0013 cd0000        	call	_TIM4_Cmd
1540                     ; 291 }
1543  0016 81            	ret
1570                     ; 293 void TIM3_Config(void)
1570                     ; 294 {
1571                     .text:	section	.text,new
1572  0000               _TIM3_Config:
1576                     ; 295     TIM3_TimeBaseInit(TIM3_PRESCALER_16, 0xFFFF);
1578  0000 aeffff        	ldw	x,#65535
1579  0003 89            	pushw	x
1580  0004 a604          	ld	a,#4
1581  0006 cd0000        	call	_TIM3_TimeBaseInit
1583  0009 85            	popw	x
1584                     ; 296     TIM3_ClearFlag(TIM3_FLAG_UPDATE);
1586  000a ae0001        	ldw	x,#1
1587  000d cd0000        	call	_TIM3_ClearFlag
1589                     ; 297     TIM3_ITConfig(TIM4_IT_UPDATE, ENABLE);
1591  0010 ae0101        	ldw	x,#257
1592  0013 cd0000        	call	_TIM3_ITConfig
1594                     ; 298     TIM3_Cmd(ENABLE);
1596  0016 a601          	ld	a,#1
1597  0018 cd0000        	call	_TIM3_Cmd
1599                     ; 299 }
1602  001b 81            	ret
1633                     ; 301 void Init_CLK(void)
1633                     ; 302 {
1634                     .text:	section	.text,new
1635  0000               _Init_CLK:
1639                     ; 303     CLK_DeInit();
1641  0000 cd0000        	call	_CLK_DeInit
1643                     ; 304     CLK_HSECmd(DISABLE);
1645  0003 4f            	clr	a
1646  0004 cd0000        	call	_CLK_HSECmd
1648                     ; 305     CLK_LSICmd(DISABLE);
1650  0007 4f            	clr	a
1651  0008 cd0000        	call	_CLK_LSICmd
1653                     ; 306     CLK_HSICmd(ENABLE);
1655  000b a601          	ld	a,#1
1656  000d cd0000        	call	_CLK_HSICmd
1658                     ; 307     CLK_ClockSwitchCmd(ENABLE);
1660  0010 a601          	ld	a,#1
1661  0012 cd0000        	call	_CLK_ClockSwitchCmd
1663                     ; 308     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
1665  0015 4f            	clr	a
1666  0016 cd0000        	call	_CLK_HSIPrescalerConfig
1668                     ; 309     CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
1670  0019 4f            	clr	a
1671  001a cd0000        	call	_CLK_SYSCLKConfig
1673                     ; 310     CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
1675  001d a680          	ld	a,#128
1676  001f cd0000        	call	_CLK_SYSCLKConfig
1678                     ; 311     CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
1680  0022 4b00          	push	#0
1681  0024 4b00          	push	#0
1682  0026 ae01e1        	ldw	x,#481
1683  0029 cd0000        	call	_CLK_ClockSwitchConfig
1685  002c 85            	popw	x
1686                     ; 312 }
1689  002d 81            	ret
1714                     ; 317 void Init_GPIO(void)
1714                     ; 318 {
1715                     .text:	section	.text,new
1716  0000               _Init_GPIO:
1720                     ; 319     GPIO_DeInit(GPIOA);
1722  0000 ae5000        	ldw	x,#20480
1723  0003 cd0000        	call	_GPIO_DeInit
1725                     ; 320     GPIO_DeInit(GPIOB);
1727  0006 ae5005        	ldw	x,#20485
1728  0009 cd0000        	call	_GPIO_DeInit
1730                     ; 321     GPIO_DeInit(GPIOC);
1732  000c ae500a        	ldw	x,#20490
1733  000f cd0000        	call	_GPIO_DeInit
1735                     ; 322     GPIO_DeInit(GPIOD);
1737  0012 ae500f        	ldw	x,#20495
1738  0015 cd0000        	call	_GPIO_DeInit
1740                     ; 323 		GPIO_Init(VISUAL_BTN, GPIO_MODE_IN_PU_NO_IT);
1742  0018 4b40          	push	#64
1743  001a 4b20          	push	#32
1744  001c ae5014        	ldw	x,#20500
1745  001f cd0000        	call	_GPIO_Init
1747  0022 85            	popw	x
1748                     ; 324 }
1751  0023 81            	ret
1784                     ; 326 void delay(uint32_t nTime)
1784                     ; 327 {
1785                     .text:	section	.text,new
1786  0000               _delay:
1788       00000000      OFST:	set	0
1791                     ; 328     count = nTime;
1793  0000 1e05          	ldw	x,(OFST+5,sp)
1794  0002 cf01ad        	ldw	_count+2,x
1795  0005 1e03          	ldw	x,(OFST+3,sp)
1796  0007 cf01ab        	ldw	_count,x
1798  000a               L364:
1799                     ; 329     while (count)
1801  000a ae01ab        	ldw	x,#_count
1802  000d cd0000        	call	c_lzmp
1804  0010 26f8          	jrne	L364
1805                     ; 333 }
1808  0012 81            	ret
1843                     ; 335 void Init_ADC(uint8_t channel)
1843                     ; 336 {
1844                     .text:	section	.text,new
1845  0000               _Init_ADC:
1847  0000 88            	push	a
1848       00000000      OFST:	set	0
1851                     ; 337     ADC1_DeInit();
1853  0001 cd0000        	call	_ADC1_DeInit
1855                     ; 338     ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
1855                     ; 339               channel,
1855                     ; 340               ADC1_PRESSEL_FCPU_D4,// set to 4 MHz on 5 V
1855                     ; 341               ADC1_EXTTRIG_TIM, DISABLE,
1855                     ; 342               ADC1_ALIGN_RIGHT,
1855                     ; 343               ADC1_SCHMITTTRIG_ALL, DISABLE);
1857  0004 4b00          	push	#0
1858  0006 4bff          	push	#255
1859  0008 4b08          	push	#8
1860  000a 4b00          	push	#0
1861  000c 4b00          	push	#0
1862  000e 4b20          	push	#32
1863  0010 7b07          	ld	a,(OFST+7,sp)
1864  0012 5f            	clrw	x
1865  0013 97            	ld	xl,a
1866  0014 cd0000        	call	_ADC1_Init
1868  0017 5b06          	addw	sp,#6
1869                     ; 344     ADC1_Cmd(ENABLE);
1871  0019 a601          	ld	a,#1
1872  001b cd0000        	call	_ADC1_Cmd
1874                     ; 345 }
1877  001e 84            	pop	a
1878  001f 81            	ret
1904                     ; 347 void memory_save_m() {
1905                     .text:	section	.text,new
1906  0000               _memory_save_m:
1910                     ; 348     FLASH_Unlock(FLASH_MEMTYPE_DATA);
1912  0000 a6f7          	ld	a,#247
1913  0002 cd0000        	call	_FLASH_Unlock
1915                     ; 349     FLASH_ProgramByte(MODE_ADDR, m);
1917  0005 3b0002        	push	_m
1918  0008 ae4000        	ldw	x,#16384
1919  000b 89            	pushw	x
1920  000c ae0000        	ldw	x,#0
1921  000f 89            	pushw	x
1922  0010 cd0000        	call	_FLASH_ProgramByte
1924  0013 5b05          	addw	sp,#5
1925                     ; 350 }
1928  0015 81            	ret
1953                     ; 351 uint8_t memory_load_m(){
1954                     .text:	section	.text,new
1955  0000               _memory_load_m:
1959                     ; 352     FLASH_Unlock(FLASH_MEMTYPE_DATA);
1961  0000 a6f7          	ld	a,#247
1962  0002 cd0000        	call	_FLASH_Unlock
1964                     ; 353 		return FLASH_ReadByte(MODE_ADDR);
1966  0005 ae4000        	ldw	x,#16384
1967  0008 89            	pushw	x
1968  0009 ae0000        	ldw	x,#0
1969  000c 89            	pushw	x
1970  000d cd0000        	call	_FLASH_ReadByte
1972  0010 5b04          	addw	sp,#4
1975  0012 81            	ret
2017                     ; 357 void assert_failed(u8 *file, u32 line)
2017                     ; 358 {
2018                     .text:	section	.text,new
2019  0000               _assert_failed:
2021  0000 89            	pushw	x
2022       00000000      OFST:	set	0
2025                     ; 359     (void)file;
2027                     ; 360     (void)line;
2029  0001               L345:
2031  0001 20fe          	jra	L345
2178                     	xdef	_main
2179                     	xdef	_TIM3_Config
2180                     	xdef	_memory_load_m
2181                     	xdef	_memory_save_m
2182                     	xdef	_set_level
2183                     	xdef	_normalizeBand
2184                     	xdef	_calcAvgbyBand
2185                     	xdef	_capture_wave
2186                     	xdef	_characters3
2187                     	xdef	_characters2
2188                     	xdef	_characters1
2189                     	switch	.bss
2190  0000               _i:
2191  0000 00            	ds.b	1
2192                     	xdef	_i
2193  0001               _last_m:
2194  0001 00            	ds.b	1
2195                     	xdef	_last_m
2196  0002               _m:
2197  0002 00            	ds.b	1
2198                     	xdef	_m
2199  0003               _bandFft:
2200  0003 000000000000  	ds.b	40
2201                     	xdef	_bandFft
2202  002b               _bfly_buff:
2203  002b 000000000000  	ds.b	256
2204                     	xdef	_bfly_buff
2205  012b               _capture:
2206  012b 000000000000  	ds.b	128
2207                     	xdef	_capture
2208                     	xdef	_sw_delay
2209                     	xdef	_isr_flag
2210                     	xdef	_delay
2211                     	xdef	_TIM4_Config
2212                     	xdef	_Init_ADC
2213                     	xdef	_Init_GPIO
2214                     	xdef	_Init_CLK
2215  01ab               _count:
2216  01ab 00000000      	ds.b	4
2217                     	xdef	_count
2218                     	xref	_lcd_store_symbol
2219                     	xref	_lcd_puts
2220                     	xref	_lcd_gotoxy
2221                     	xref	_lcd_init
2222                     	xref	_lcd_data
2223                     	xref	_lcd_command
2224                     	xref	_FIX
2225                     	xref	_fft_out
2226                     	xref	_fix_fft
2227                     	xref	_position
2228                     	xref	_ham
2229                     	xdef	_assert_failed
2230                     	xref	_TIM4_ClearFlag
2231                     	xref	_TIM4_ITConfig
2232                     	xref	_TIM4_Cmd
2233                     	xref	_TIM4_TimeBaseInit
2234                     	xref	_TIM3_ClearFlag
2235                     	xref	_TIM3_ITConfig
2236                     	xref	_TIM3_Cmd
2237                     	xref	_TIM3_TimeBaseInit
2238                     	xref	_GPIO_ReadInputPin
2239                     	xref	_GPIO_Init
2240                     	xref	_GPIO_DeInit
2241                     	xref	_FLASH_ReadByte
2242                     	xref	_FLASH_ProgramByte
2243                     	xref	_FLASH_Unlock
2244                     	xref	_CLK_SYSCLKConfig
2245                     	xref	_CLK_HSIPrescalerConfig
2246                     	xref	_CLK_ClockSwitchConfig
2247                     	xref	_CLK_ClockSwitchCmd
2248                     	xref	_CLK_LSICmd
2249                     	xref	_CLK_HSICmd
2250                     	xref	_CLK_HSECmd
2251                     	xref	_CLK_DeInit
2252                     	xref	_ADC1_GetFlagStatus
2253                     	xref	_ADC1_GetConversionValue
2254                     	xref	_ADC1_Cmd
2255                     	xref	_ADC1_Init
2256                     	xref	_ADC1_DeInit
2257                     	switch	.const
2258  00c2               L122:
2259  00c2 3f800000      	dc.w	16256,0
2260  00c6               L371:
2261  00c6 42800000      	dc.w	17024,0
2262  00ca               L361:
2263  00ca 45fa0000      	dc.w	17914,0
2264  00ce               L351:
2265  00ce 3fa3d70a      	dc.w	16291,-10486
2266  00d2               L37:
2267  00d2 323530487a20  	dc.b	"250Hz  STYLE 3  4k"
2268  00e4 487a00        	dc.b	"Hz",0
2269  00e7               L36:
2270  00e7 323530487a20  	dc.b	"250Hz  STYLE 2  4k"
2271  00f9 487a00        	dc.b	"Hz",0
2272  00fc               L35:
2273  00fc 323530487a20  	dc.b	"250Hz  STYLE 1  4k"
2274  010e 487a00        	dc.b	"Hz",0
2275                     	xref.b	c_lreg
2276                     	xref.b	c_x
2296                     	xref	c_lzmp
2297                     	xref	c_ludv
2298                     	xref	c_uitolx
2299                     	xref	c_cmulx
2300                     	xref	c_bmulx
2301                     	xref	c_fgmul
2302                     	xref	c_ftoi
2303                     	xref	c_fadd
2304                     	xref	c_fcmp
2305                     	xref	c_fgadd
2306                     	xref	c_itof
2307                     	xref	c_fgdiv
2308                     	xref	c_ltor
2309                     	xref	c_rtol
2310                     	xref	c_fdiv
2311                     	xref	c_fmul
2312                     	xref	c_uitof
2313                     	end
