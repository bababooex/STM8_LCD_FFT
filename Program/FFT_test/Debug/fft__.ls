   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  15                     .const:	section	.text
  16  0000               _ham:
  17  0000 0478          	dc.w	1144
  18  0002 1106          	dc.w	4358
  19  0004 1d89          	dc.w	7561
  20  0006 29fa          	dc.w	10746
  21  0008 3651          	dc.w	13905
  22  000a 4287          	dc.w	17031
  23  000c 4e93          	dc.w	20115
  24  000e 5a70          	dc.w	23152
  25  0010 6614          	dc.w	26132
  26  0012 7179          	dc.w	29049
  27  0014 7c99          	dc.w	31897
  28  0016 876c          	dc.w	-30868
  29  0018 91eb          	dc.w	-28181
  30  001a 9c10          	dc.w	-25584
  31  001c a5d5          	dc.w	-23083
  32  001e af33          	dc.w	-20685
  33  0020 b826          	dc.w	-18394
  34  0022 c0a7          	dc.w	-16217
  35  0024 c8b1          	dc.w	-14159
  36  0026 d040          	dc.w	-12224
  37  0028 d74d          	dc.w	-10419
  38  002a ddd7          	dc.w	-8745
  39  002c e3d7          	dc.w	-7209
  40  002e e94b          	dc.w	-5813
  41  0030 ee2f          	dc.w	-4561
  42  0032 f280          	dc.w	-3456
  43  0034 f63c          	dc.w	-2500
  44  0036 f95f          	dc.w	-1697
  45  0038 fbe9          	dc.w	-1047
  46  003a fdd8          	dc.w	-552
  47  003c ff2a          	dc.w	-214
  48  003e ffde          	dc.w	-34
  49  0040 fff5          	dc.w	-11
  50  0042 ff6e          	dc.w	-146
  51  0044 fe49          	dc.w	-439
  52  0046 fc88          	dc.w	-888
  53  0048 fa2b          	dc.w	-1493
  54  004a f733          	dc.w	-2253
  55  004c f3a4          	dc.w	-3164
  56  004e ef7d          	dc.w	-4227
  57  0050 eac4          	dc.w	-5436
  58  0052 e579          	dc.w	-6791
  59  0054 dfa1          	dc.w	-8287
  60  0056 d93f          	dc.w	-9921
  61  0058 d257          	dc.w	-11689
  62  005a caed          	dc.w	-13587
  63  005c c306          	dc.w	-15610
  64  005e baa7          	dc.w	-17753
  65  0060 b1d4          	dc.w	-20012
  66  0062 a894          	dc.w	-22380
  67  0064 9eed          	dc.w	-24851
  68  0066 94e3          	dc.w	-27421
  69  0068 8a7d          	dc.w	-30083
  70  006a 7fc2          	dc.w	32706
  71  006c 74b8          	dc.w	29880
  72  006e 6966          	dc.w	26982
  73  0070 5dd3          	dc.w	24019
  74  0072 5206          	dc.w	20998
  75  0074 4606          	dc.w	17926
  76  0076 39dc          	dc.w	14812
  77  0078 2d8e          	dc.w	11662
  78  007a 2123          	dc.w	8483
  79  007c 14a4          	dc.w	5284
  80  007e 0819          	dc.w	2073
  81  0080               _position:
  82  0080 00            	dc.b	0
  83  0081 20            	dc.b	32
  84  0082 10            	dc.b	16
  85  0083 30            	dc.b	48
  86  0084 08            	dc.b	8
  87  0085 28            	dc.b	40
  88  0086 18            	dc.b	24
  89  0087 38            	dc.b	56
  90  0088 04            	dc.b	4
  91  0089 24            	dc.b	36
  92  008a 14            	dc.b	20
  93  008b 34            	dc.b	52
  94  008c 0c            	dc.b	12
  95  008d 2c            	dc.b	44
  96  008e 1c            	dc.b	28
  97  008f 3c            	dc.b	60
  98  0090 02            	dc.b	2
  99  0091 22            	dc.b	34
 100  0092 12            	dc.b	18
 101  0093 32            	dc.b	50
 102  0094 0a            	dc.b	10
 103  0095 2a            	dc.b	42
 104  0096 1a            	dc.b	26
 105  0097 3a            	dc.b	58
 106  0098 06            	dc.b	6
 107  0099 26            	dc.b	38
 108  009a 16            	dc.b	22
 109  009b 36            	dc.b	54
 110  009c 0e            	dc.b	14
 111  009d 2e            	dc.b	46
 112  009e 1e            	dc.b	30
 113  009f 3e            	dc.b	62
 114  00a0 01            	dc.b	1
 115  00a1 21            	dc.b	33
 116  00a2 11            	dc.b	17
 117  00a3 31            	dc.b	49
 118  00a4 09            	dc.b	9
 119  00a5 29            	dc.b	41
 120  00a6 19            	dc.b	25
 121  00a7 39            	dc.b	57
 122  00a8 05            	dc.b	5
 123  00a9 25            	dc.b	37
 124  00aa 15            	dc.b	21
 125  00ab 35            	dc.b	53
 126  00ac 0d            	dc.b	13
 127  00ad 2d            	dc.b	45
 128  00ae 1d            	dc.b	29
 129  00af 3d            	dc.b	61
 130  00b0 03            	dc.b	3
 131  00b1 23            	dc.b	35
 132  00b2 13            	dc.b	19
 133  00b3 33            	dc.b	51
 134  00b4 0b            	dc.b	11
 135  00b5 2b            	dc.b	43
 136  00b6 1b            	dc.b	27
 137  00b7 3b            	dc.b	59
 138  00b8 07            	dc.b	7
 139  00b9 27            	dc.b	39
 140  00ba 17            	dc.b	23
 141  00bb 37            	dc.b	55
 142  00bc 0f            	dc.b	15
 143  00bd 2f            	dc.b	47
 144  00be 1f            	dc.b	31
 145  00bf 3f            	dc.b	63
 146  00c0               _COS:
 147  00c0 7fff          	dc.w	32767
 148  00c2 7f5f          	dc.w	32607
 149  00c4 7d82          	dc.w	32130
 150  00c6 7a6c          	dc.w	31340
 151  00c8 7625          	dc.w	30245
 152  00ca 70b8          	dc.w	28856
 153  00cc 6a31          	dc.w	27185
 154  00ce 62a2          	dc.w	25250
 155  00d0 5a1c          	dc.w	23068
 156  00d2 50b7          	dc.w	20663
 157  00d4 4688          	dc.w	18056
 158  00d6 3ba9          	dc.w	15273
 159  00d8 3035          	dc.w	12341
 160  00da 2449          	dc.w	9289
 161  00dc 1803          	dc.w	6147
 162  00de 0b81          	dc.w	2945
 163  00e0 fee2          	dc.w	-286
 164  00e2 f246          	dc.w	-3514
 165  00e4 e5cc          	dc.w	-6708
 166  00e6 d994          	dc.w	-9836
 167  00e8 cdbb          	dc.w	-12869
 168  00ea c260          	dc.w	-15776
 169  00ec b79e          	dc.w	-18530
 170  00ee ad91          	dc.w	-21103
 171  00f0 a451          	dc.w	-23471
 172  00f2 9bf6          	dc.w	-25610
 173  00f4 9494          	dc.w	-27500
 174  00f6 8e3e          	dc.w	-29122
 175  00f8 8903          	dc.w	-30461
 176  00fa 84f1          	dc.w	-31503
 177  00fc 8212          	dc.w	-32238
 178  00fe 806d          	dc.w	-32659
 179  0100               _SIN:
 180  0100 0000          	dc.w	0
 181  0102 0c9e          	dc.w	3230
 182  0104 191c          	dc.w	6428
 183  0106 255b          	dc.w	9563
 184  0108 313d          	dc.w	12605
 185  010a 3ca5          	dc.w	15525
 186  010c 4775          	dc.w	18293
 187  010e 5194          	dc.w	20884
 188  0110 5ae7          	dc.w	23271
 189  0112 6357          	dc.w	25431
 190  0114 6ad0          	dc.w	27344
 191  0116 713e          	dc.w	28990
 192  0118 7692          	dc.w	30354
 193  011a 7abf          	dc.w	31423
 194  011c 7db9          	dc.w	32185
 195  011e 7f7a          	dc.w	32634
 196  0120 7ffe          	dc.w	32766
 197  0122 7f42          	dc.w	32578
 198  0124 7d49          	dc.w	32073
 199  0126 7a18          	dc.w	31256
 200  0128 75b6          	dc.w	30134
 201  012a 702f          	dc.w	28719
 202  012c 6990          	dc.w	27024
 203  012e 61ea          	dc.w	25066
 204  0130 5950          	dc.w	22864
 205  0132 4fd8          	dc.w	20440
 206  0134 4598          	dc.w	17816
 207  0136 3aab          	dc.w	15019
 208  0138 2f2c          	dc.w	12076
 209  013a 2337          	dc.w	9015
 210  013c 16ea          	dc.w	5866
 211  013e 0a64          	dc.w	2660
 263                     ; 139 s32 FIX_MPY(s16 a, s16 b)
 263                     ; 140 {
 265                     .text:	section	.text,new
 266  0000               _FIX_MPY:
 268  0000 89            	pushw	x
 269  0001 5204          	subw	sp,#4
 270       00000004      OFST:	set	4
 273                     ; 141   s32  c  = a;
 275  0003 cd0000        	call	c_itolx
 277  0006 96            	ldw	x,sp
 278  0007 1c0001        	addw	x,#OFST-3
 279  000a cd0000        	call	c_rtol
 282                     ; 142   c *= b;
 284  000d 1e09          	ldw	x,(OFST+5,sp)
 285  000f cd0000        	call	c_itolx
 287  0012 96            	ldw	x,sp
 288  0013 1c0001        	addw	x,#OFST-3
 289  0016 cd0000        	call	c_lgmul
 292                     ; 143   return (c>>15);
 294  0019 96            	ldw	x,sp
 295  001a 1c0001        	addw	x,#OFST-3
 296  001d cd0000        	call	c_ltor
 298  0020 a60f          	ld	a,#15
 299  0022 cd0000        	call	c_lrsh
 303  0025 5b06          	addw	sp,#6
 304  0027 81            	ret
 350                     ; 146 s32 FIX(s16 a,u16 b)
 350                     ; 147 {
 351                     .text:	section	.text,new
 352  0000               _FIX:
 354  0000 89            	pushw	x
 355  0001 5204          	subw	sp,#4
 356       00000004      OFST:	set	4
 359                     ; 148   s32 c  = a;
 361  0003 cd0000        	call	c_itolx
 363  0006 96            	ldw	x,sp
 364  0007 1c0001        	addw	x,#OFST-3
 365  000a cd0000        	call	c_rtol
 368                     ; 149   c *= b;
 370  000d 1e09          	ldw	x,(OFST+5,sp)
 371  000f cd0000        	call	c_uitolx
 373  0012 96            	ldw	x,sp
 374  0013 1c0001        	addw	x,#OFST-3
 375  0016 cd0000        	call	c_lgmul
 378                     ; 150   return (c>>16);
 380  0019 96            	ldw	x,sp
 381  001a 1c0001        	addw	x,#OFST-3
 382  001d cd0000        	call	c_ltor
 384  0020 a610          	ld	a,#16
 385  0022 cd0000        	call	c_lrsh
 389  0025 5b06          	addw	sp,#6
 390  0027 81            	ret
 545                     ; 158 void fix_fft(s16 *inp, complex_t *compl )
 545                     ; 159 {
 546                     .text:	section	.text,new
 547  0000               _fix_fft:
 549  0000 89            	pushw	x
 550  0001 5214          	subw	sp,#20
 551       00000014      OFST:	set	20
 554                     ; 160   char  i = 0, j, l = 1, k = N, istep, m;
 558  0003 a601          	ld	a,#1
 559  0005 6b0b          	ld	(OFST-9,sp),a
 563  0007 a605          	ld	a,#5
 564  0009 6b05          	ld	(OFST-15,sp),a
 567  000b ac640164      	jpf	L141
 568  000f               L531:
 569                     ; 173     istep = l << 1;
 571  000f 7b0b          	ld	a,(OFST-9,sp)
 572  0011 48            	sll	a
 573  0012 6b06          	ld	(OFST-14,sp),a
 575                     ; 174     for (m = 0; m < l; ++m)
 577  0014 0f0e          	clr	(OFST-6,sp)
 580  0016 ac550155      	jpf	L151
 581  001a               L541:
 582                     ; 176       j = m << k;
 584  001a 7b05          	ld	a,(OFST-15,sp)
 585  001c 5f            	clrw	x
 586  001d 97            	ld	xl,a
 587  001e 7b0e          	ld	a,(OFST-6,sp)
 588  0020 5d            	tnzw	x
 589  0021 2704          	jreq	L21
 590  0023               L41:
 591  0023 48            	sll	a
 592  0024 5a            	decw	x
 593  0025 26fc          	jrne	L41
 594  0027               L21:
 595  0027 6b14          	ld	(OFST+0,sp),a
 597                     ; 179       wr = COS[j];
 599  0029 7b14          	ld	a,(OFST+0,sp)
 600  002b 5f            	clrw	x
 601  002c 97            	ld	xl,a
 602  002d 58            	sllw	x
 603  002e de00c0        	ldw	x,(_COS,x)
 604  0031 1f07          	ldw	(OFST-13,sp),x
 606                     ; 180       wi = SIN[j];
 608  0033 7b14          	ld	a,(OFST+0,sp)
 609  0035 5f            	clrw	x
 610  0036 97            	ld	xl,a
 611  0037 58            	sllw	x
 612  0038 de0100        	ldw	x,(_SIN,x)
 613  003b 1f09          	ldw	(OFST-11,sp),x
 615                     ; 182       for (i = m; i < N_SAMPLE; i += istep)
 617  003d 7b0e          	ld	a,(OFST-6,sp)
 618  003f 6b13          	ld	(OFST-1,sp),a
 621  0041 ac4a014a      	jpf	L161
 622  0045               L551:
 623                     ; 184         j = i + l;       
 625  0045 7b13          	ld	a,(OFST-1,sp)
 626  0047 1b0b          	add	a,(OFST-9,sp)
 627  0049 6b14          	ld	(OFST+0,sp),a
 629                     ; 185         tr = compl[j].real;
 631  004b 7b14          	ld	a,(OFST+0,sp)
 632  004d 97            	ld	xl,a
 633  004e a604          	ld	a,#4
 634  0050 42            	mul	x,a
 635  0051 72fb19        	addw	x,(OFST+5,sp)
 636  0054 fe            	ldw	x,(x)
 637  0055 1f11          	ldw	(OFST-3,sp),x
 639                     ; 186         if(m)
 641  0057 0d0e          	tnz	(OFST-6,sp)
 642  0059 2603          	jrne	L61
 643  005b cc0110        	jp	L561
 644  005e               L61:
 645                     ; 188           ti = FIX_MPY(wi,tr); 
 647  005e 1e11          	ldw	x,(OFST-3,sp)
 648  0060 89            	pushw	x
 649  0061 1e0b          	ldw	x,(OFST-9,sp)
 650  0063 cd0000        	call	_FIX_MPY
 652  0066 85            	popw	x
 653  0067 be02          	ldw	x,c_lreg+2
 654  0069 1f0c          	ldw	(OFST-8,sp),x
 656                     ; 189           tr = FIX_MPY(wr,tr);
 658  006b 1e11          	ldw	x,(OFST-3,sp)
 659  006d 89            	pushw	x
 660  006e 1e09          	ldw	x,(OFST-11,sp)
 661  0070 cd0000        	call	_FIX_MPY
 663  0073 85            	popw	x
 664  0074 be02          	ldw	x,c_lreg+2
 665  0076 1f11          	ldw	(OFST-3,sp),x
 667                     ; 191           if (compl[j].image)
 669  0078 7b14          	ld	a,(OFST+0,sp)
 670  007a 97            	ld	xl,a
 671  007b a604          	ld	a,#4
 672  007d 42            	mul	x,a
 673  007e 72fb19        	addw	x,(OFST+5,sp)
 674  0081 e603          	ld	a,(3,x)
 675  0083 ea02          	or	a,(2,x)
 676  0085 2752          	jreq	L761
 677                     ; 193             tr  -= FIX_MPY(wi,compl[j].image);
 679  0087 7b14          	ld	a,(OFST+0,sp)
 680  0089 97            	ld	xl,a
 681  008a a604          	ld	a,#4
 682  008c 42            	mul	x,a
 683  008d 72fb19        	addw	x,(OFST+5,sp)
 684  0090 ee02          	ldw	x,(2,x)
 685  0092 89            	pushw	x
 686  0093 1e0b          	ldw	x,(OFST-9,sp)
 687  0095 cd0000        	call	_FIX_MPY
 689  0098 85            	popw	x
 690  0099 96            	ldw	x,sp
 691  009a 1c0001        	addw	x,#OFST-19
 692  009d cd0000        	call	c_rtol
 695  00a0 1e11          	ldw	x,(OFST-3,sp)
 696  00a2 cd0000        	call	c_itolx
 698  00a5 96            	ldw	x,sp
 699  00a6 1c0001        	addw	x,#OFST-19
 700  00a9 cd0000        	call	c_lsub
 702  00ac be02          	ldw	x,c_lreg+2
 703  00ae 1f11          	ldw	(OFST-3,sp),x
 705                     ; 194             ti  += FIX_MPY(wr,compl[j].image);                                            
 707  00b0 7b14          	ld	a,(OFST+0,sp)
 708  00b2 97            	ld	xl,a
 709  00b3 a604          	ld	a,#4
 710  00b5 42            	mul	x,a
 711  00b6 72fb19        	addw	x,(OFST+5,sp)
 712  00b9 ee02          	ldw	x,(2,x)
 713  00bb 89            	pushw	x
 714  00bc 1e09          	ldw	x,(OFST-11,sp)
 715  00be cd0000        	call	_FIX_MPY
 717  00c1 85            	popw	x
 718  00c2 96            	ldw	x,sp
 719  00c3 1c0001        	addw	x,#OFST-19
 720  00c6 cd0000        	call	c_rtol
 723  00c9 1e0c          	ldw	x,(OFST-8,sp)
 724  00cb cd0000        	call	c_itolx
 726  00ce 96            	ldw	x,sp
 727  00cf 1c0001        	addw	x,#OFST-19
 728  00d2 cd0000        	call	c_ladd
 730  00d5 be02          	ldw	x,c_lreg+2
 731  00d7 1f0c          	ldw	(OFST-8,sp),x
 733  00d9               L761:
 734                     ; 196           qi = compl[i].image;
 736  00d9 7b13          	ld	a,(OFST-1,sp)
 737  00db 97            	ld	xl,a
 738  00dc a604          	ld	a,#4
 739  00de 42            	mul	x,a
 740  00df 72fb19        	addw	x,(OFST+5,sp)
 741  00e2 ee02          	ldw	x,(2,x)
 742  00e4 1f0f          	ldw	(OFST-5,sp),x
 744                     ; 198           compl[j].image = qi - ti;
 746  00e6 1e0f          	ldw	x,(OFST-5,sp)
 747  00e8 72f00c        	subw	x,(OFST-8,sp)
 748  00eb 7b14          	ld	a,(OFST+0,sp)
 749  00ed 905f          	clrw	y
 750  00ef 9097          	ld	yl,a
 751  00f1 9058          	sllw	y
 752  00f3 9058          	sllw	y
 753  00f5 72f919        	addw	y,(OFST+5,sp)
 754  00f8 90ef02        	ldw	(2,y),x
 755                     ; 199           compl[i].image = qi + ti;         
 757  00fb 1e0f          	ldw	x,(OFST-5,sp)
 758  00fd 72fb0c        	addw	x,(OFST-8,sp)
 759  0100 7b13          	ld	a,(OFST-1,sp)
 760  0102 905f          	clrw	y
 761  0104 9097          	ld	yl,a
 762  0106 9058          	sllw	y
 763  0108 9058          	sllw	y
 764  010a 72f919        	addw	y,(OFST+5,sp)
 765  010d 90ef02        	ldw	(2,y),x
 766  0110               L561:
 767                     ; 201         qr = compl[i].real;
 769  0110 7b13          	ld	a,(OFST-1,sp)
 770  0112 97            	ld	xl,a
 771  0113 a604          	ld	a,#4
 772  0115 42            	mul	x,a
 773  0116 72fb19        	addw	x,(OFST+5,sp)
 774  0119 fe            	ldw	x,(x)
 775  011a 1f0f          	ldw	(OFST-5,sp),x
 777                     ; 202         compl[j].real = qr - tr;
 779  011c 1e0f          	ldw	x,(OFST-5,sp)
 780  011e 72f011        	subw	x,(OFST-3,sp)
 781  0121 7b14          	ld	a,(OFST+0,sp)
 782  0123 905f          	clrw	y
 783  0125 9097          	ld	yl,a
 784  0127 9058          	sllw	y
 785  0129 9058          	sllw	y
 786  012b 72f919        	addw	y,(OFST+5,sp)
 787  012e 90ff          	ldw	(y),x
 788                     ; 203         compl[i].real = qr + tr;        
 790  0130 1e0f          	ldw	x,(OFST-5,sp)
 791  0132 72fb11        	addw	x,(OFST-3,sp)
 792  0135 7b13          	ld	a,(OFST-1,sp)
 793  0137 905f          	clrw	y
 794  0139 9097          	ld	yl,a
 795  013b 9058          	sllw	y
 796  013d 9058          	sllw	y
 797  013f 72f919        	addw	y,(OFST+5,sp)
 798  0142 90ff          	ldw	(y),x
 799                     ; 182       for (i = m; i < N_SAMPLE; i += istep)
 801  0144 7b13          	ld	a,(OFST-1,sp)
 802  0146 1b06          	add	a,(OFST-14,sp)
 803  0148 6b13          	ld	(OFST-1,sp),a
 805  014a               L161:
 808  014a 7b13          	ld	a,(OFST-1,sp)
 809  014c a140          	cp	a,#64
 810  014e 2403          	jruge	L02
 811  0150 cc0045        	jp	L551
 812  0153               L02:
 813                     ; 174     for (m = 0; m < l; ++m)
 815  0153 0c0e          	inc	(OFST-6,sp)
 817  0155               L151:
 820  0155 7b0e          	ld	a,(OFST-6,sp)
 821  0157 110b          	cp	a,(OFST-9,sp)
 822  0159 2403          	jruge	L22
 823  015b cc001a        	jp	L541
 824  015e               L22:
 825                     ; 206     --k;
 827  015e 0a05          	dec	(OFST-15,sp)
 829                     ; 207     l = istep;
 831  0160 7b06          	ld	a,(OFST-14,sp)
 832  0162 6b0b          	ld	(OFST-9,sp),a
 834  0164               L141:
 835                     ; 171   while (l < N_SAMPLE)
 837  0164 7b0b          	ld	a,(OFST-9,sp)
 838  0166 a140          	cp	a,#64
 839  0168 2403          	jruge	L42
 840  016a cc000f        	jp	L531
 841  016d               L42:
 842                     ; 209 }
 845  016d 5b16          	addw	sp,#22
 846  016f 81            	ret
 915                     ; 213 void fft_out(complex_t *compl, s16 *out )
 915                     ; 214 {
 916                     .text:	section	.text,new
 917  0000               _fft_out:
 919  0000 89            	pushw	x
 920  0001 5209          	subw	sp,#9
 921       00000009      OFST:	set	9
 924                     ; 219   for (k=0; k < (N_SAMPLE/2); k++)
 926  0003 0f09          	clr	(OFST+0,sp)
 928  0005               L322:
 929                     ; 221     temp  = compl[k].real;
 931  0005 7b09          	ld	a,(OFST+0,sp)
 932  0007 97            	ld	xl,a
 933  0008 a604          	ld	a,#4
 934  000a 42            	mul	x,a
 935  000b 72fb0a        	addw	x,(OFST+1,sp)
 936  000e fe            	ldw	x,(x)
 937  000f cd0000        	call	c_itolx
 939  0012 96            	ldw	x,sp
 940  0013 1c0005        	addw	x,#OFST-4
 941  0016 cd0000        	call	c_rtol
 944                     ; 222     temp *= temp;
 946  0019 96            	ldw	x,sp
 947  001a 1c0005        	addw	x,#OFST-4
 948  001d cd0000        	call	c_ltor
 950  0020 96            	ldw	x,sp
 951  0021 1c0005        	addw	x,#OFST-4
 952  0024 cd0000        	call	c_lgmul
 955                     ; 223     place = compl[k].image;
 957  0027 7b09          	ld	a,(OFST+0,sp)
 958  0029 97            	ld	xl,a
 959  002a a604          	ld	a,#4
 960  002c 42            	mul	x,a
 961  002d 72fb0a        	addw	x,(OFST+1,sp)
 962  0030 ee02          	ldw	x,(2,x)
 963  0032 cd0000        	call	c_itolx
 965  0035 96            	ldw	x,sp
 966  0036 1c0001        	addw	x,#OFST-8
 967  0039 cd0000        	call	c_rtol
 970                     ; 225     place *= place;
 972  003c 96            	ldw	x,sp
 973  003d 1c0001        	addw	x,#OFST-8
 974  0040 cd0000        	call	c_ltor
 976  0043 96            	ldw	x,sp
 977  0044 1c0001        	addw	x,#OFST-8
 978  0047 cd0000        	call	c_lgmul
 981                     ; 226     temp  += place; 
 983  004a 96            	ldw	x,sp
 984  004b 1c0001        	addw	x,#OFST-8
 985  004e cd0000        	call	c_ltor
 987  0051 96            	ldw	x,sp
 988  0052 1c0005        	addw	x,#OFST-4
 989  0055 cd0000        	call	c_lgadd
 992                     ; 228     out[k] = sqrt16(temp);
 994  0058 1e07          	ldw	x,(OFST-2,sp)
 995  005a 89            	pushw	x
 996  005b 1e07          	ldw	x,(OFST-2,sp)
 997  005d 89            	pushw	x
 998  005e cd0000        	call	_sqrt16
1000  0061 5b04          	addw	sp,#4
1001  0063 7b09          	ld	a,(OFST+0,sp)
1002  0065 905f          	clrw	y
1003  0067 9097          	ld	yl,a
1004  0069 9058          	sllw	y
1005  006b 72f90e        	addw	y,(OFST+5,sp)
1006  006e 90ff          	ldw	(y),x
1007                     ; 219   for (k=0; k < (N_SAMPLE/2); k++)
1009  0070 0c09          	inc	(OFST+0,sp)
1013  0072 7b09          	ld	a,(OFST+0,sp)
1014  0074 a120          	cp	a,#32
1015  0076 258d          	jrult	L322
1016                     ; 230 }
1019  0078 5b0b          	addw	sp,#11
1020  007a 81            	ret
1066                     	switch	.const
1067  0140               L23:
1068  0140 0000003f      	dc.l	63
1069                     ; 239 u16 sqrt16(u32 x)
1069                     ; 240 {
1070                     .text:	section	.text,new
1071  0000               _sqrt16:
1073  0000 5208          	subw	sp,#8
1074       00000008      OFST:	set	8
1077                     ; 242    b = x;
1079  0002 1e0d          	ldw	x,(OFST+5,sp)
1080  0004 1f03          	ldw	(OFST-5,sp),x
1081  0006 1e0b          	ldw	x,(OFST+3,sp)
1082  0008 1f01          	ldw	(OFST-7,sp),x
1084                     ; 243    a = x = 0x3f;
1086  000a ae003f        	ldw	x,#63
1087  000d 1f0d          	ldw	(OFST+5,sp),x
1088  000f ae0000        	ldw	x,#0
1089  0012 1f0b          	ldw	(OFST+3,sp),x
1090                     ; 244    x = b/x;
1092  0014 96            	ldw	x,sp
1093  0015 1c0001        	addw	x,#OFST-7
1094  0018 cd0000        	call	c_ltor
1096  001b ae0140        	ldw	x,#L23
1097  001e cd0000        	call	c_ludv
1099  0021 96            	ldw	x,sp
1100  0022 1c000b        	addw	x,#OFST+3
1101  0025 cd0000        	call	c_rtol
1103                     ; 245    a = x = (x+a)>>1;
1105  0028 96            	ldw	x,sp
1106  0029 1c000b        	addw	x,#OFST+3
1107  002c cd0000        	call	c_ltor
1109  002f a63f          	ld	a,#63
1110  0031 cd0000        	call	c_ladc
1112  0034 3400          	srl	c_lreg
1113  0036 3601          	rrc	c_lreg+1
1114  0038 3602          	rrc	c_lreg+2
1115  003a 3603          	rrc	c_lreg+3
1116  003c 96            	ldw	x,sp
1117  003d 1c000b        	addw	x,#OFST+3
1118  0040 cd0000        	call	c_rtol
1120  0043 1e0d          	ldw	x,(OFST+5,sp)
1121  0045 1f07          	ldw	(OFST-1,sp),x
1122  0047 1e0b          	ldw	x,(OFST+3,sp)
1123  0049 1f05          	ldw	(OFST-3,sp),x
1125                     ; 246    x = b/x;
1127  004b 96            	ldw	x,sp
1128  004c 1c0001        	addw	x,#OFST-7
1129  004f cd0000        	call	c_ltor
1131  0052 96            	ldw	x,sp
1132  0053 1c000b        	addw	x,#OFST+3
1133  0056 cd0000        	call	c_ludv
1135  0059 96            	ldw	x,sp
1136  005a 1c000b        	addw	x,#OFST+3
1137  005d cd0000        	call	c_rtol
1139                     ; 247    a = x = (x+a)>>1;
1141  0060 96            	ldw	x,sp
1142  0061 1c000b        	addw	x,#OFST+3
1143  0064 cd0000        	call	c_ltor
1145  0067 96            	ldw	x,sp
1146  0068 1c0005        	addw	x,#OFST-3
1147  006b cd0000        	call	c_ladd
1149  006e 3400          	srl	c_lreg
1150  0070 3601          	rrc	c_lreg+1
1151  0072 3602          	rrc	c_lreg+2
1152  0074 3603          	rrc	c_lreg+3
1153  0076 96            	ldw	x,sp
1154  0077 1c000b        	addw	x,#OFST+3
1155  007a cd0000        	call	c_rtol
1157  007d 1e0d          	ldw	x,(OFST+5,sp)
1158  007f 1f07          	ldw	(OFST-1,sp),x
1159  0081 1e0b          	ldw	x,(OFST+3,sp)
1160  0083 1f05          	ldw	(OFST-3,sp),x
1162                     ; 248    x = b/x;
1164  0085 96            	ldw	x,sp
1165  0086 1c0001        	addw	x,#OFST-7
1166  0089 cd0000        	call	c_ltor
1168  008c 96            	ldw	x,sp
1169  008d 1c000b        	addw	x,#OFST+3
1170  0090 cd0000        	call	c_ludv
1172  0093 96            	ldw	x,sp
1173  0094 1c000b        	addw	x,#OFST+3
1174  0097 cd0000        	call	c_rtol
1176                     ; 249    x = (x+a)>>1;
1178  009a 96            	ldw	x,sp
1179  009b 1c000b        	addw	x,#OFST+3
1180  009e cd0000        	call	c_ltor
1182  00a1 96            	ldw	x,sp
1183  00a2 1c0005        	addw	x,#OFST-3
1184  00a5 cd0000        	call	c_ladd
1186  00a8 3400          	srl	c_lreg
1187  00aa 3601          	rrc	c_lreg+1
1188  00ac 3602          	rrc	c_lreg+2
1189  00ae 3603          	rrc	c_lreg+3
1190  00b0 96            	ldw	x,sp
1191  00b1 1c000b        	addw	x,#OFST+3
1192  00b4 cd0000        	call	c_rtol
1194                     ; 250    return(x);
1196  00b7 1e0d          	ldw	x,(OFST+5,sp)
1199  00b9 5b08          	addw	sp,#8
1200  00bb 81            	ret
1255                     	xdef	_sqrt16
1256                     	xdef	_SIN
1257                     	xdef	_COS
1258                     	xdef	_FIX
1259                     	xdef	_FIX_MPY
1260                     	xdef	_fft_out
1261                     	xdef	_fix_fft
1262                     	xdef	_position
1263                     	xdef	_ham
1264                     	xref.b	c_lreg
1265                     	xref.b	c_x
1284                     	xref	c_ladc
1285                     	xref	c_ludv
1286                     	xref	c_lgadd
1287                     	xref	c_ladd
1288                     	xref	c_lsub
1289                     	xref	c_uitolx
1290                     	xref	c_lrsh
1291                     	xref	c_ltor
1292                     	xref	c_lgmul
1293                     	xref	c_rtol
1294                     	xref	c_itolx
1295                     	end
