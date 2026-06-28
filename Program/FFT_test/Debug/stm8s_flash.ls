   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  76                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  76                     ; 88 {
  78                     .text:	section	.text,new
  79  0000               _FLASH_Unlock:
  81  0000 88            	push	a
  82       00000000      OFST:	set	0
  85                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  87  0001 a1fd          	cp	a,#253
  88  0003 2704          	jreq	L01
  89  0005 a1f7          	cp	a,#247
  90  0007 2603          	jrne	L6
  91  0009               L01:
  92  0009 4f            	clr	a
  93  000a 2010          	jra	L21
  94  000c               L6:
  95  000c ae005a        	ldw	x,#90
  96  000f 89            	pushw	x
  97  0010 ae0000        	ldw	x,#0
  98  0013 89            	pushw	x
  99  0014 ae0010        	ldw	x,#L73
 100  0017 cd0000        	call	_assert_failed
 102  001a 5b04          	addw	sp,#4
 103  001c               L21:
 104                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 106  001c 7b01          	ld	a,(OFST+1,sp)
 107  001e a1fd          	cp	a,#253
 108  0020 260a          	jrne	L14
 109                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 111  0022 35565062      	mov	20578,#86
 112                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 114  0026 35ae5062      	mov	20578,#174
 116  002a 2008          	jra	L34
 117  002c               L14:
 118                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 120  002c 35ae5064      	mov	20580,#174
 121                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 123  0030 35565064      	mov	20580,#86
 124  0034               L34:
 125                     ; 104 }
 128  0034 84            	pop	a
 129  0035 81            	ret
 165                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 165                     ; 113 {
 166                     .text:	section	.text,new
 167  0000               _FLASH_Lock:
 169  0000 88            	push	a
 170       00000000      OFST:	set	0
 173                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 175  0001 a1fd          	cp	a,#253
 176  0003 2704          	jreq	L02
 177  0005 a1f7          	cp	a,#247
 178  0007 2603          	jrne	L61
 179  0009               L02:
 180  0009 4f            	clr	a
 181  000a 2010          	jra	L22
 182  000c               L61:
 183  000c ae0073        	ldw	x,#115
 184  000f 89            	pushw	x
 185  0010 ae0000        	ldw	x,#0
 186  0013 89            	pushw	x
 187  0014 ae0010        	ldw	x,#L73
 188  0017 cd0000        	call	_assert_failed
 190  001a 5b04          	addw	sp,#4
 191  001c               L22:
 192                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 194  001c c6505f        	ld	a,20575
 195  001f 1401          	and	a,(OFST+1,sp)
 196  0021 c7505f        	ld	20575,a
 197                     ; 119 }
 200  0024 84            	pop	a
 201  0025 81            	ret
 224                     ; 126 void FLASH_DeInit(void)
 224                     ; 127 {
 225                     .text:	section	.text,new
 226  0000               _FLASH_DeInit:
 230                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 232  0000 725f505a      	clr	20570
 233                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 235  0004 725f505b      	clr	20571
 236                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 238  0008 35ff505c      	mov	20572,#255
 239                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 241  000c 7217505f      	bres	20575,#3
 242                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 244  0010 7213505f      	bres	20575,#1
 245                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 247  0014 c6505f        	ld	a,20575
 248                     ; 134 }
 251  0017 81            	ret
 307                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 307                     ; 143 {
 308                     .text:	section	.text,new
 309  0000               _FLASH_ITConfig:
 311  0000 88            	push	a
 312       00000000      OFST:	set	0
 315                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 317  0001 4d            	tnz	a
 318  0002 2704          	jreq	L23
 319  0004 a101          	cp	a,#1
 320  0006 2603          	jrne	L03
 321  0008               L23:
 322  0008 4f            	clr	a
 323  0009 2010          	jra	L43
 324  000b               L03:
 325  000b ae0091        	ldw	x,#145
 326  000e 89            	pushw	x
 327  000f ae0000        	ldw	x,#0
 328  0012 89            	pushw	x
 329  0013 ae0010        	ldw	x,#L73
 330  0016 cd0000        	call	_assert_failed
 332  0019 5b04          	addw	sp,#4
 333  001b               L43:
 334                     ; 147   if(NewState != DISABLE)
 336  001b 0d01          	tnz	(OFST+1,sp)
 337  001d 2706          	jreq	L121
 338                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 340  001f 7212505a      	bset	20570,#1
 342  0023 2004          	jra	L321
 343  0025               L121:
 344                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 346  0025 7213505a      	bres	20570,#1
 347  0029               L321:
 348                     ; 155 }
 351  0029 84            	pop	a
 352  002a 81            	ret
 385                     .const:	section	.text
 386  0000               L64:
 387  0000 00008000      	dc.l	32768
 388  0004               L05:
 389  0004 00010000      	dc.l	65536
 390  0008               L25:
 391  0008 00004000      	dc.l	16384
 392  000c               L45:
 393  000c 00004400      	dc.l	17408
 394                     ; 164 void FLASH_EraseByte(uint32_t Address)
 394                     ; 165 {
 395                     .text:	section	.text,new
 396  0000               _FLASH_EraseByte:
 398       00000000      OFST:	set	0
 401                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 403  0000 96            	ldw	x,sp
 404  0001 1c0003        	addw	x,#OFST+3
 405  0004 cd0000        	call	c_ltor
 407  0007 ae0000        	ldw	x,#L64
 408  000a cd0000        	call	c_lcmp
 410  000d 250f          	jrult	L44
 411  000f 96            	ldw	x,sp
 412  0010 1c0003        	addw	x,#OFST+3
 413  0013 cd0000        	call	c_ltor
 415  0016 ae0004        	ldw	x,#L05
 416  0019 cd0000        	call	c_lcmp
 418  001c 251e          	jrult	L24
 419  001e               L44:
 420  001e 96            	ldw	x,sp
 421  001f 1c0003        	addw	x,#OFST+3
 422  0022 cd0000        	call	c_ltor
 424  0025 ae0008        	ldw	x,#L25
 425  0028 cd0000        	call	c_lcmp
 427  002b 2512          	jrult	L04
 428  002d 96            	ldw	x,sp
 429  002e 1c0003        	addw	x,#OFST+3
 430  0031 cd0000        	call	c_ltor
 432  0034 ae000c        	ldw	x,#L45
 433  0037 cd0000        	call	c_lcmp
 435  003a 2403          	jruge	L04
 436  003c               L24:
 437  003c 4f            	clr	a
 438  003d 2010          	jra	L65
 439  003f               L04:
 440  003f ae00a7        	ldw	x,#167
 441  0042 89            	pushw	x
 442  0043 ae0000        	ldw	x,#0
 443  0046 89            	pushw	x
 444  0047 ae0010        	ldw	x,#L73
 445  004a cd0000        	call	_assert_failed
 447  004d 5b04          	addw	sp,#4
 448  004f               L65:
 449                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 451  004f 1e05          	ldw	x,(OFST+5,sp)
 452  0051 7f            	clr	(x)
 453                     ; 171 }
 456  0052 81            	ret
 496                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 496                     ; 182 {
 497                     .text:	section	.text,new
 498  0000               _FLASH_ProgramByte:
 500       00000000      OFST:	set	0
 503                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 505  0000 96            	ldw	x,sp
 506  0001 1c0003        	addw	x,#OFST+3
 507  0004 cd0000        	call	c_ltor
 509  0007 ae0000        	ldw	x,#L64
 510  000a cd0000        	call	c_lcmp
 512  000d 250f          	jrult	L66
 513  000f 96            	ldw	x,sp
 514  0010 1c0003        	addw	x,#OFST+3
 515  0013 cd0000        	call	c_ltor
 517  0016 ae0004        	ldw	x,#L05
 518  0019 cd0000        	call	c_lcmp
 520  001c 251e          	jrult	L46
 521  001e               L66:
 522  001e 96            	ldw	x,sp
 523  001f 1c0003        	addw	x,#OFST+3
 524  0022 cd0000        	call	c_ltor
 526  0025 ae0008        	ldw	x,#L25
 527  0028 cd0000        	call	c_lcmp
 529  002b 2512          	jrult	L26
 530  002d 96            	ldw	x,sp
 531  002e 1c0003        	addw	x,#OFST+3
 532  0031 cd0000        	call	c_ltor
 534  0034 ae000c        	ldw	x,#L45
 535  0037 cd0000        	call	c_lcmp
 537  003a 2403          	jruge	L26
 538  003c               L46:
 539  003c 4f            	clr	a
 540  003d 2010          	jra	L07
 541  003f               L26:
 542  003f ae00b8        	ldw	x,#184
 543  0042 89            	pushw	x
 544  0043 ae0000        	ldw	x,#0
 545  0046 89            	pushw	x
 546  0047 ae0010        	ldw	x,#L73
 547  004a cd0000        	call	_assert_failed
 549  004d 5b04          	addw	sp,#4
 550  004f               L07:
 551                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 553  004f 7b07          	ld	a,(OFST+7,sp)
 554  0051 1e05          	ldw	x,(OFST+5,sp)
 555  0053 f7            	ld	(x),a
 556                     ; 186 }
 559  0054 81            	ret
 592                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 592                     ; 196 {
 593                     .text:	section	.text,new
 594  0000               _FLASH_ReadByte:
 596       00000000      OFST:	set	0
 599                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 601  0000 96            	ldw	x,sp
 602  0001 1c0003        	addw	x,#OFST+3
 603  0004 cd0000        	call	c_ltor
 605  0007 ae0000        	ldw	x,#L64
 606  000a cd0000        	call	c_lcmp
 608  000d 250f          	jrult	L001
 609  000f 96            	ldw	x,sp
 610  0010 1c0003        	addw	x,#OFST+3
 611  0013 cd0000        	call	c_ltor
 613  0016 ae0004        	ldw	x,#L05
 614  0019 cd0000        	call	c_lcmp
 616  001c 251e          	jrult	L67
 617  001e               L001:
 618  001e 96            	ldw	x,sp
 619  001f 1c0003        	addw	x,#OFST+3
 620  0022 cd0000        	call	c_ltor
 622  0025 ae0008        	ldw	x,#L25
 623  0028 cd0000        	call	c_lcmp
 625  002b 2512          	jrult	L47
 626  002d 96            	ldw	x,sp
 627  002e 1c0003        	addw	x,#OFST+3
 628  0031 cd0000        	call	c_ltor
 630  0034 ae000c        	ldw	x,#L45
 631  0037 cd0000        	call	c_lcmp
 633  003a 2403          	jruge	L47
 634  003c               L67:
 635  003c 4f            	clr	a
 636  003d 2010          	jra	L201
 637  003f               L47:
 638  003f ae00c6        	ldw	x,#198
 639  0042 89            	pushw	x
 640  0043 ae0000        	ldw	x,#0
 641  0046 89            	pushw	x
 642  0047 ae0010        	ldw	x,#L73
 643  004a cd0000        	call	_assert_failed
 645  004d 5b04          	addw	sp,#4
 646  004f               L201:
 647                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 649  004f 1e05          	ldw	x,(OFST+5,sp)
 650  0051 f6            	ld	a,(x)
 653  0052 81            	ret
 693                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 693                     ; 213 {
 694                     .text:	section	.text,new
 695  0000               _FLASH_ProgramWord:
 697       00000000      OFST:	set	0
 700                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 702  0000 96            	ldw	x,sp
 703  0001 1c0003        	addw	x,#OFST+3
 704  0004 cd0000        	call	c_ltor
 706  0007 ae0000        	ldw	x,#L64
 707  000a cd0000        	call	c_lcmp
 709  000d 250f          	jrult	L211
 710  000f 96            	ldw	x,sp
 711  0010 1c0003        	addw	x,#OFST+3
 712  0013 cd0000        	call	c_ltor
 714  0016 ae0004        	ldw	x,#L05
 715  0019 cd0000        	call	c_lcmp
 717  001c 251e          	jrult	L011
 718  001e               L211:
 719  001e 96            	ldw	x,sp
 720  001f 1c0003        	addw	x,#OFST+3
 721  0022 cd0000        	call	c_ltor
 723  0025 ae0008        	ldw	x,#L25
 724  0028 cd0000        	call	c_lcmp
 726  002b 2512          	jrult	L601
 727  002d 96            	ldw	x,sp
 728  002e 1c0003        	addw	x,#OFST+3
 729  0031 cd0000        	call	c_ltor
 731  0034 ae000c        	ldw	x,#L45
 732  0037 cd0000        	call	c_lcmp
 734  003a 2403          	jruge	L601
 735  003c               L011:
 736  003c 4f            	clr	a
 737  003d 2010          	jra	L411
 738  003f               L601:
 739  003f ae00d7        	ldw	x,#215
 740  0042 89            	pushw	x
 741  0043 ae0000        	ldw	x,#0
 742  0046 89            	pushw	x
 743  0047 ae0010        	ldw	x,#L73
 744  004a cd0000        	call	_assert_failed
 746  004d 5b04          	addw	sp,#4
 747  004f               L411:
 748                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 750  004f 721c505b      	bset	20571,#6
 751                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 753  0053 721d505c      	bres	20572,#6
 754                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 756  0057 7b07          	ld	a,(OFST+7,sp)
 757  0059 1e05          	ldw	x,(OFST+5,sp)
 758  005b f7            	ld	(x),a
 759                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 761  005c 7b08          	ld	a,(OFST+8,sp)
 762  005e 1e05          	ldw	x,(OFST+5,sp)
 763  0060 e701          	ld	(1,x),a
 764                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 766  0062 7b09          	ld	a,(OFST+9,sp)
 767  0064 1e05          	ldw	x,(OFST+5,sp)
 768  0066 e702          	ld	(2,x),a
 769                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 771  0068 7b0a          	ld	a,(OFST+10,sp)
 772  006a 1e05          	ldw	x,(OFST+5,sp)
 773  006c e703          	ld	(3,x),a
 774                     ; 229 }
 777  006e 81            	ret
 819                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 819                     ; 238 {
 820                     .text:	section	.text,new
 821  0000               _FLASH_ProgramOptionByte:
 823  0000 89            	pushw	x
 824       00000000      OFST:	set	0
 827                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 829  0001 a34800        	cpw	x,#18432
 830  0004 2508          	jrult	L021
 831  0006 a34880        	cpw	x,#18560
 832  0009 2403          	jruge	L021
 833  000b 4f            	clr	a
 834  000c 2010          	jra	L221
 835  000e               L021:
 836  000e ae00f0        	ldw	x,#240
 837  0011 89            	pushw	x
 838  0012 ae0000        	ldw	x,#0
 839  0015 89            	pushw	x
 840  0016 ae0010        	ldw	x,#L73
 841  0019 cd0000        	call	_assert_failed
 843  001c 5b04          	addw	sp,#4
 844  001e               L221:
 845                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 847  001e 721e505b      	bset	20571,#7
 848                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 850  0022 721f505c      	bres	20572,#7
 851                     ; 247   if(Address == 0x4800)
 853  0026 1e01          	ldw	x,(OFST+1,sp)
 854  0028 a34800        	cpw	x,#18432
 855  002b 2607          	jrne	L722
 856                     ; 250     *((NEAR uint8_t*)Address) = Data;
 858  002d 7b05          	ld	a,(OFST+5,sp)
 859  002f 1e01          	ldw	x,(OFST+1,sp)
 860  0031 f7            	ld	(x),a
 862  0032 200c          	jra	L132
 863  0034               L722:
 864                     ; 255     *((NEAR uint8_t*)Address) = Data;
 866  0034 7b05          	ld	a,(OFST+5,sp)
 867  0036 1e01          	ldw	x,(OFST+1,sp)
 868  0038 f7            	ld	(x),a
 869                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 871  0039 7b05          	ld	a,(OFST+5,sp)
 872  003b 43            	cpl	a
 873  003c 1e01          	ldw	x,(OFST+1,sp)
 874  003e e701          	ld	(1,x),a
 875  0040               L132:
 876                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 878  0040 a6fd          	ld	a,#253
 879  0042 cd0000        	call	_FLASH_WaitForLastOperation
 881                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 883  0045 721f505b      	bres	20571,#7
 884                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 886  0049 721e505c      	bset	20572,#7
 887                     ; 263 }
 890  004d 85            	popw	x
 891  004e 81            	ret
 926                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 926                     ; 271 {
 927                     .text:	section	.text,new
 928  0000               _FLASH_EraseOptionByte:
 930  0000 89            	pushw	x
 931       00000000      OFST:	set	0
 934                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 936  0001 a34800        	cpw	x,#18432
 937  0004 2508          	jrult	L621
 938  0006 a34880        	cpw	x,#18560
 939  0009 2403          	jruge	L621
 940  000b 4f            	clr	a
 941  000c 2010          	jra	L031
 942  000e               L621:
 943  000e ae0111        	ldw	x,#273
 944  0011 89            	pushw	x
 945  0012 ae0000        	ldw	x,#0
 946  0015 89            	pushw	x
 947  0016 ae0010        	ldw	x,#L73
 948  0019 cd0000        	call	_assert_failed
 950  001c 5b04          	addw	sp,#4
 951  001e               L031:
 952                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 954  001e 721e505b      	bset	20571,#7
 955                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 957  0022 721f505c      	bres	20572,#7
 958                     ; 280   if(Address == 0x4800)
 960  0026 1e01          	ldw	x,(OFST+1,sp)
 961  0028 a34800        	cpw	x,#18432
 962  002b 2605          	jrne	L742
 963                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 965  002d 1e01          	ldw	x,(OFST+1,sp)
 966  002f 7f            	clr	(x)
 968  0030 2009          	jra	L152
 969  0032               L742:
 970                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 972  0032 1e01          	ldw	x,(OFST+1,sp)
 973  0034 7f            	clr	(x)
 974                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 976  0035 1e01          	ldw	x,(OFST+1,sp)
 977  0037 a6ff          	ld	a,#255
 978  0039 e701          	ld	(1,x),a
 979  003b               L152:
 980                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 982  003b a6fd          	ld	a,#253
 983  003d cd0000        	call	_FLASH_WaitForLastOperation
 985                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 987  0040 721f505b      	bres	20571,#7
 988                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 990  0044 721e505c      	bset	20572,#7
 991                     ; 296 }
 994  0048 85            	popw	x
 995  0049 81            	ret
1051                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1051                     ; 304 {
1052                     .text:	section	.text,new
1053  0000               _FLASH_ReadOptionByte:
1055  0000 89            	pushw	x
1056  0001 5204          	subw	sp,#4
1057       00000004      OFST:	set	4
1060                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1062                     ; 306   uint16_t res_value = 0;
1064                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1066  0003 a34800        	cpw	x,#18432
1067  0006 2508          	jrult	L431
1068  0008 a34880        	cpw	x,#18560
1069  000b 2403          	jruge	L431
1070  000d 4f            	clr	a
1071  000e 2010          	jra	L631
1072  0010               L431:
1073  0010 ae0135        	ldw	x,#309
1074  0013 89            	pushw	x
1075  0014 ae0000        	ldw	x,#0
1076  0017 89            	pushw	x
1077  0018 ae0010        	ldw	x,#L73
1078  001b cd0000        	call	_assert_failed
1080  001e 5b04          	addw	sp,#4
1081  0020               L631:
1082                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1084  0020 1e05          	ldw	x,(OFST+1,sp)
1085  0022 f6            	ld	a,(x)
1086  0023 6b01          	ld	(OFST-3,sp),a
1088                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1090  0025 1e05          	ldw	x,(OFST+1,sp)
1091  0027 e601          	ld	a,(1,x)
1092  0029 6b02          	ld	(OFST-2,sp),a
1094                     ; 315   if(Address == 0x4800)	 
1096  002b 1e05          	ldw	x,(OFST+1,sp)
1097  002d a34800        	cpw	x,#18432
1098  0030 2608          	jrne	L572
1099                     ; 317     res_value =	 value_optbyte;
1101  0032 7b01          	ld	a,(OFST-3,sp)
1102  0034 5f            	clrw	x
1103  0035 97            	ld	xl,a
1104  0036 1f03          	ldw	(OFST-1,sp),x
1107  0038 2023          	jra	L772
1108  003a               L572:
1109                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1111  003a 7b02          	ld	a,(OFST-2,sp)
1112  003c 43            	cpl	a
1113  003d 1101          	cp	a,(OFST-3,sp)
1114  003f 2617          	jrne	L103
1115                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1117  0041 7b01          	ld	a,(OFST-3,sp)
1118  0043 5f            	clrw	x
1119  0044 97            	ld	xl,a
1120  0045 4f            	clr	a
1121  0046 02            	rlwa	x,a
1122  0047 1f03          	ldw	(OFST-1,sp),x
1124                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1126  0049 7b02          	ld	a,(OFST-2,sp)
1127  004b 5f            	clrw	x
1128  004c 97            	ld	xl,a
1129  004d 01            	rrwa	x,a
1130  004e 1a04          	or	a,(OFST+0,sp)
1131  0050 01            	rrwa	x,a
1132  0051 1a03          	or	a,(OFST-1,sp)
1133  0053 01            	rrwa	x,a
1134  0054 1f03          	ldw	(OFST-1,sp),x
1137  0056 2005          	jra	L772
1138  0058               L103:
1139                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1141  0058 ae5555        	ldw	x,#21845
1142  005b 1f03          	ldw	(OFST-1,sp),x
1144  005d               L772:
1145                     ; 331   return(res_value);
1147  005d 1e03          	ldw	x,(OFST-1,sp)
1150  005f 5b06          	addw	sp,#6
1151  0061 81            	ret
1226                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1226                     ; 341 {
1227                     .text:	section	.text,new
1228  0000               _FLASH_SetLowPowerMode:
1230  0000 88            	push	a
1231       00000000      OFST:	set	0
1234                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1236  0001 a104          	cp	a,#4
1237  0003 270b          	jreq	L441
1238  0005 a108          	cp	a,#8
1239  0007 2707          	jreq	L441
1240  0009 4d            	tnz	a
1241  000a 2704          	jreq	L441
1242  000c a10c          	cp	a,#12
1243  000e 2603          	jrne	L241
1244  0010               L441:
1245  0010 4f            	clr	a
1246  0011 2010          	jra	L641
1247  0013               L241:
1248  0013 ae0157        	ldw	x,#343
1249  0016 89            	pushw	x
1250  0017 ae0000        	ldw	x,#0
1251  001a 89            	pushw	x
1252  001b ae0010        	ldw	x,#L73
1253  001e cd0000        	call	_assert_failed
1255  0021 5b04          	addw	sp,#4
1256  0023               L641:
1257                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1259  0023 c6505a        	ld	a,20570
1260  0026 a4f3          	and	a,#243
1261  0028 c7505a        	ld	20570,a
1262                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1264  002b c6505a        	ld	a,20570
1265  002e 1a01          	or	a,(OFST+1,sp)
1266  0030 c7505a        	ld	20570,a
1267                     ; 350 }
1270  0033 84            	pop	a
1271  0034 81            	ret
1330                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1330                     ; 359 {
1331                     .text:	section	.text,new
1332  0000               _FLASH_SetProgrammingTime:
1334  0000 88            	push	a
1335       00000000      OFST:	set	0
1338                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1340  0001 4d            	tnz	a
1341  0002 2704          	jreq	L451
1342  0004 a101          	cp	a,#1
1343  0006 2603          	jrne	L251
1344  0008               L451:
1345  0008 4f            	clr	a
1346  0009 2010          	jra	L651
1347  000b               L251:
1348  000b ae0169        	ldw	x,#361
1349  000e 89            	pushw	x
1350  000f ae0000        	ldw	x,#0
1351  0012 89            	pushw	x
1352  0013 ae0010        	ldw	x,#L73
1353  0016 cd0000        	call	_assert_failed
1355  0019 5b04          	addw	sp,#4
1356  001b               L651:
1357                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1359  001b 7211505a      	bres	20570,#0
1360                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1362  001f c6505a        	ld	a,20570
1363  0022 1a01          	or	a,(OFST+1,sp)
1364  0024 c7505a        	ld	20570,a
1365                     ; 365 }
1368  0027 84            	pop	a
1369  0028 81            	ret
1394                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1394                     ; 373 {
1395                     .text:	section	.text,new
1396  0000               _FLASH_GetLowPowerMode:
1400                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1402  0000 c6505a        	ld	a,20570
1403  0003 a40c          	and	a,#12
1406  0005 81            	ret
1431                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1431                     ; 383 {
1432                     .text:	section	.text,new
1433  0000               _FLASH_GetProgrammingTime:
1437                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1439  0000 c6505a        	ld	a,20570
1440  0003 a401          	and	a,#1
1443  0005 81            	ret
1475                     ; 392 uint32_t FLASH_GetBootSize(void)
1475                     ; 393 {
1476                     .text:	section	.text,new
1477  0000               _FLASH_GetBootSize:
1479  0000 5204          	subw	sp,#4
1480       00000004      OFST:	set	4
1483                     ; 394   uint32_t temp = 0;
1485                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1487  0002 c6505d        	ld	a,20573
1488  0005 5f            	clrw	x
1489  0006 97            	ld	xl,a
1490  0007 90ae0200      	ldw	y,#512
1491  000b cd0000        	call	c_umul
1493  000e 96            	ldw	x,sp
1494  000f 1c0001        	addw	x,#OFST-3
1495  0012 cd0000        	call	c_rtol
1498                     ; 400   if(FLASH->FPR == 0xFF)
1500  0015 c6505d        	ld	a,20573
1501  0018 a1ff          	cp	a,#255
1502  001a 2611          	jrne	L124
1503                     ; 402     temp += 512;
1505  001c ae0200        	ldw	x,#512
1506  001f bf02          	ldw	c_lreg+2,x
1507  0021 ae0000        	ldw	x,#0
1508  0024 bf00          	ldw	c_lreg,x
1509  0026 96            	ldw	x,sp
1510  0027 1c0001        	addw	x,#OFST-3
1511  002a cd0000        	call	c_lgadd
1514  002d               L124:
1515                     ; 406   return(temp);
1517  002d 96            	ldw	x,sp
1518  002e 1c0001        	addw	x,#OFST-3
1519  0031 cd0000        	call	c_ltor
1523  0034 5b04          	addw	sp,#4
1524  0036 81            	ret
1634                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1634                     ; 418 {
1635                     .text:	section	.text,new
1636  0000               _FLASH_GetFlagStatus:
1638  0000 88            	push	a
1639  0001 88            	push	a
1640       00000001      OFST:	set	1
1643                     ; 419   FlagStatus status = RESET;
1645                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1647  0002 a140          	cp	a,#64
1648  0004 2710          	jreq	L271
1649  0006 a108          	cp	a,#8
1650  0008 270c          	jreq	L271
1651  000a a104          	cp	a,#4
1652  000c 2708          	jreq	L271
1653  000e a102          	cp	a,#2
1654  0010 2704          	jreq	L271
1655  0012 a101          	cp	a,#1
1656  0014 2603          	jrne	L071
1657  0016               L271:
1658  0016 4f            	clr	a
1659  0017 2010          	jra	L471
1660  0019               L071:
1661  0019 ae01a5        	ldw	x,#421
1662  001c 89            	pushw	x
1663  001d ae0000        	ldw	x,#0
1664  0020 89            	pushw	x
1665  0021 ae0010        	ldw	x,#L73
1666  0024 cd0000        	call	_assert_failed
1668  0027 5b04          	addw	sp,#4
1669  0029               L471:
1670                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1672  0029 c6505f        	ld	a,20575
1673  002c 1502          	bcp	a,(OFST+1,sp)
1674  002e 2706          	jreq	L374
1675                     ; 426     status = SET; /* FLASH_FLAG is set */
1677  0030 a601          	ld	a,#1
1678  0032 6b01          	ld	(OFST+0,sp),a
1681  0034 2002          	jra	L574
1682  0036               L374:
1683                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1685  0036 0f01          	clr	(OFST+0,sp)
1687  0038               L574:
1688                     ; 434   return status;
1690  0038 7b01          	ld	a,(OFST+0,sp)
1693  003a 85            	popw	x
1694  003b 81            	ret
1783                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1783                     ; 550 {
1784                     .text:	section	.text,new
1785  0000               _FLASH_WaitForLastOperation:
1787  0000 5203          	subw	sp,#3
1788       00000003      OFST:	set	3
1791                     ; 551   uint8_t flagstatus = 0x00;
1793  0002 0f03          	clr	(OFST+0,sp)
1795                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1797  0004 aeffff        	ldw	x,#65535
1798  0007 1f01          	ldw	(OFST-2,sp),x
1800                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1802  0009 a1fd          	cp	a,#253
1803  000b 2628          	jrne	L355
1805  000d 200e          	jra	L145
1806  000f               L735:
1807                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1807                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1809  000f c6505f        	ld	a,20575
1810  0012 a405          	and	a,#5
1811  0014 6b03          	ld	(OFST+0,sp),a
1813                     ; 563         timeout--;
1815  0016 1e01          	ldw	x,(OFST-2,sp)
1816  0018 1d0001        	subw	x,#1
1817  001b 1f01          	ldw	(OFST-2,sp),x
1819  001d               L145:
1820                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1822  001d 0d03          	tnz	(OFST+0,sp)
1823  001f 261c          	jrne	L745
1825  0021 1e01          	ldw	x,(OFST-2,sp)
1826  0023 26ea          	jrne	L735
1827  0025 2016          	jra	L745
1828  0027               L155:
1829                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1829                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1831  0027 c6505f        	ld	a,20575
1832  002a a441          	and	a,#65
1833  002c 6b03          	ld	(OFST+0,sp),a
1835                     ; 572         timeout--;
1837  002e 1e01          	ldw	x,(OFST-2,sp)
1838  0030 1d0001        	subw	x,#1
1839  0033 1f01          	ldw	(OFST-2,sp),x
1841  0035               L355:
1842                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1844  0035 0d03          	tnz	(OFST+0,sp)
1845  0037 2604          	jrne	L745
1847  0039 1e01          	ldw	x,(OFST-2,sp)
1848  003b 26ea          	jrne	L155
1849  003d               L745:
1850                     ; 583   if(timeout == 0x00 )
1852  003d 1e01          	ldw	x,(OFST-2,sp)
1853  003f 2604          	jrne	L165
1854                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1856  0041 a602          	ld	a,#2
1857  0043 6b03          	ld	(OFST+0,sp),a
1859  0045               L165:
1860                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1862  0045 7b03          	ld	a,(OFST+0,sp)
1865  0047 5b03          	addw	sp,#3
1866  0049 81            	ret
1926                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1926                     ; 599 {
1927                     .text:	section	.text,new
1928  0000               _FLASH_EraseBlock:
1930  0000 89            	pushw	x
1931  0001 5206          	subw	sp,#6
1932       00000006      OFST:	set	6
1935                     ; 600   uint32_t startaddress = 0;
1937                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1939  0003 7b0b          	ld	a,(OFST+5,sp)
1940  0005 a1fd          	cp	a,#253
1941  0007 2706          	jreq	L402
1942  0009 7b0b          	ld	a,(OFST+5,sp)
1943  000b a1f7          	cp	a,#247
1944  000d 2603          	jrne	L202
1945  000f               L402:
1946  000f 4f            	clr	a
1947  0010 2010          	jra	L602
1948  0012               L202:
1949  0012 ae0262        	ldw	x,#610
1950  0015 89            	pushw	x
1951  0016 ae0000        	ldw	x,#0
1952  0019 89            	pushw	x
1953  001a ae0010        	ldw	x,#L73
1954  001d cd0000        	call	_assert_failed
1956  0020 5b04          	addw	sp,#4
1957  0022               L602:
1958                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1960  0022 7b0b          	ld	a,(OFST+5,sp)
1961  0024 a1fd          	cp	a,#253
1962  0026 2626          	jrne	L116
1963                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1965  0028 1e07          	ldw	x,(OFST+1,sp)
1966  002a a30100        	cpw	x,#256
1967  002d 2403          	jruge	L012
1968  002f 4f            	clr	a
1969  0030 2010          	jra	L212
1970  0032               L012:
1971  0032 ae0265        	ldw	x,#613
1972  0035 89            	pushw	x
1973  0036 ae0000        	ldw	x,#0
1974  0039 89            	pushw	x
1975  003a ae0010        	ldw	x,#L73
1976  003d cd0000        	call	_assert_failed
1978  0040 5b04          	addw	sp,#4
1979  0042               L212:
1980                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1982  0042 ae8000        	ldw	x,#32768
1983  0045 1f05          	ldw	(OFST-1,sp),x
1984  0047 ae0000        	ldw	x,#0
1985  004a 1f03          	ldw	(OFST-3,sp),x
1988  004c 2024          	jra	L316
1989  004e               L116:
1990                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1992  004e 1e07          	ldw	x,(OFST+1,sp)
1993  0050 a30008        	cpw	x,#8
1994  0053 2403          	jruge	L412
1995  0055 4f            	clr	a
1996  0056 2010          	jra	L612
1997  0058               L412:
1998  0058 ae026a        	ldw	x,#618
1999  005b 89            	pushw	x
2000  005c ae0000        	ldw	x,#0
2001  005f 89            	pushw	x
2002  0060 ae0010        	ldw	x,#L73
2003  0063 cd0000        	call	_assert_failed
2005  0066 5b04          	addw	sp,#4
2006  0068               L612:
2007                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2009  0068 ae4000        	ldw	x,#16384
2010  006b 1f05          	ldw	(OFST-1,sp),x
2011  006d ae0000        	ldw	x,#0
2012  0070 1f03          	ldw	(OFST-3,sp),x
2014  0072               L316:
2015                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2017  0072 1e07          	ldw	x,(OFST+1,sp)
2018  0074 a680          	ld	a,#128
2019  0076 cd0000        	call	c_cmulx
2021  0079 96            	ldw	x,sp
2022  007a 1c0003        	addw	x,#OFST-3
2023  007d cd0000        	call	c_ladd
2025  0080 be02          	ldw	x,c_lreg+2
2026  0082 1f01          	ldw	(OFST-5,sp),x
2028                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
2030  0084 721a505b      	bset	20571,#5
2031                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2033  0088 721b505c      	bres	20572,#5
2034                     ; 636     *pwFlash = (uint32_t)0;
2036  008c 1e01          	ldw	x,(OFST-5,sp)
2037  008e a600          	ld	a,#0
2038  0090 e703          	ld	(3,x),a
2039  0092 a600          	ld	a,#0
2040  0094 e702          	ld	(2,x),a
2041  0096 a600          	ld	a,#0
2042  0098 e701          	ld	(1,x),a
2043  009a a600          	ld	a,#0
2044  009c f7            	ld	(x),a
2045                     ; 644 }
2048  009d 5b08          	addw	sp,#8
2049  009f 81            	ret
2148                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2148                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2148                     ; 657 {
2149                     .text:	section	.text,new
2150  0000               _FLASH_ProgramBlock:
2152  0000 89            	pushw	x
2153  0001 5206          	subw	sp,#6
2154       00000006      OFST:	set	6
2157                     ; 658   uint16_t Count = 0;
2159                     ; 659   uint32_t startaddress = 0;
2161                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2163  0003 7b0b          	ld	a,(OFST+5,sp)
2164  0005 a1fd          	cp	a,#253
2165  0007 2706          	jreq	L422
2166  0009 7b0b          	ld	a,(OFST+5,sp)
2167  000b a1f7          	cp	a,#247
2168  000d 2603          	jrne	L222
2169  000f               L422:
2170  000f 4f            	clr	a
2171  0010 2010          	jra	L622
2172  0012               L222:
2173  0012 ae0296        	ldw	x,#662
2174  0015 89            	pushw	x
2175  0016 ae0000        	ldw	x,#0
2176  0019 89            	pushw	x
2177  001a ae0010        	ldw	x,#L73
2178  001d cd0000        	call	_assert_failed
2180  0020 5b04          	addw	sp,#4
2181  0022               L622:
2182                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2184  0022 0d0c          	tnz	(OFST+6,sp)
2185  0024 2706          	jreq	L232
2186  0026 7b0c          	ld	a,(OFST+6,sp)
2187  0028 a110          	cp	a,#16
2188  002a 2603          	jrne	L032
2189  002c               L232:
2190  002c 4f            	clr	a
2191  002d 2010          	jra	L432
2192  002f               L032:
2193  002f ae0297        	ldw	x,#663
2194  0032 89            	pushw	x
2195  0033 ae0000        	ldw	x,#0
2196  0036 89            	pushw	x
2197  0037 ae0010        	ldw	x,#L73
2198  003a cd0000        	call	_assert_failed
2200  003d 5b04          	addw	sp,#4
2201  003f               L432:
2202                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2204  003f 7b0b          	ld	a,(OFST+5,sp)
2205  0041 a1fd          	cp	a,#253
2206  0043 2626          	jrne	L166
2207                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2209  0045 1e07          	ldw	x,(OFST+1,sp)
2210  0047 a30100        	cpw	x,#256
2211  004a 2403          	jruge	L632
2212  004c 4f            	clr	a
2213  004d 2010          	jra	L042
2214  004f               L632:
2215  004f ae029a        	ldw	x,#666
2216  0052 89            	pushw	x
2217  0053 ae0000        	ldw	x,#0
2218  0056 89            	pushw	x
2219  0057 ae0010        	ldw	x,#L73
2220  005a cd0000        	call	_assert_failed
2222  005d 5b04          	addw	sp,#4
2223  005f               L042:
2224                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2226  005f ae8000        	ldw	x,#32768
2227  0062 1f03          	ldw	(OFST-3,sp),x
2228  0064 ae0000        	ldw	x,#0
2229  0067 1f01          	ldw	(OFST-5,sp),x
2232  0069 2024          	jra	L366
2233  006b               L166:
2234                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2236  006b 1e07          	ldw	x,(OFST+1,sp)
2237  006d a30008        	cpw	x,#8
2238  0070 2403          	jruge	L242
2239  0072 4f            	clr	a
2240  0073 2010          	jra	L442
2241  0075               L242:
2242  0075 ae029f        	ldw	x,#671
2243  0078 89            	pushw	x
2244  0079 ae0000        	ldw	x,#0
2245  007c 89            	pushw	x
2246  007d ae0010        	ldw	x,#L73
2247  0080 cd0000        	call	_assert_failed
2249  0083 5b04          	addw	sp,#4
2250  0085               L442:
2251                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2253  0085 ae4000        	ldw	x,#16384
2254  0088 1f03          	ldw	(OFST-3,sp),x
2255  008a ae0000        	ldw	x,#0
2256  008d 1f01          	ldw	(OFST-5,sp),x
2258  008f               L366:
2259                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2261  008f 1e07          	ldw	x,(OFST+1,sp)
2262  0091 a680          	ld	a,#128
2263  0093 cd0000        	call	c_cmulx
2265  0096 96            	ldw	x,sp
2266  0097 1c0001        	addw	x,#OFST-5
2267  009a cd0000        	call	c_lgadd
2270                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2272  009d 0d0c          	tnz	(OFST+6,sp)
2273  009f 260a          	jrne	L566
2274                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2276  00a1 7210505b      	bset	20571,#0
2277                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2279  00a5 7211505c      	bres	20572,#0
2281  00a9 2008          	jra	L766
2282  00ab               L566:
2283                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2285  00ab 7218505b      	bset	20571,#4
2286                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2288  00af 7219505c      	bres	20572,#4
2289  00b3               L766:
2290                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2292  00b3 5f            	clrw	x
2293  00b4 1f05          	ldw	(OFST-1,sp),x
2295  00b6               L176:
2296                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2298  00b6 1e0d          	ldw	x,(OFST+7,sp)
2299  00b8 72fb05        	addw	x,(OFST-1,sp)
2300  00bb f6            	ld	a,(x)
2301  00bc 1e03          	ldw	x,(OFST-3,sp)
2302  00be 72fb05        	addw	x,(OFST-1,sp)
2303  00c1 f7            	ld	(x),a
2304                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2306  00c2 1e05          	ldw	x,(OFST-1,sp)
2307  00c4 1c0001        	addw	x,#1
2308  00c7 1f05          	ldw	(OFST-1,sp),x
2312  00c9 1e05          	ldw	x,(OFST-1,sp)
2313  00cb a30080        	cpw	x,#128
2314  00ce 25e6          	jrult	L176
2315                     ; 697 }
2318  00d0 5b08          	addw	sp,#8
2319  00d2 81            	ret
2332                     	xdef	_FLASH_WaitForLastOperation
2333                     	xdef	_FLASH_ProgramBlock
2334                     	xdef	_FLASH_EraseBlock
2335                     	xdef	_FLASH_GetFlagStatus
2336                     	xdef	_FLASH_GetBootSize
2337                     	xdef	_FLASH_GetProgrammingTime
2338                     	xdef	_FLASH_GetLowPowerMode
2339                     	xdef	_FLASH_SetProgrammingTime
2340                     	xdef	_FLASH_SetLowPowerMode
2341                     	xdef	_FLASH_EraseOptionByte
2342                     	xdef	_FLASH_ProgramOptionByte
2343                     	xdef	_FLASH_ReadOptionByte
2344                     	xdef	_FLASH_ProgramWord
2345                     	xdef	_FLASH_ReadByte
2346                     	xdef	_FLASH_ProgramByte
2347                     	xdef	_FLASH_EraseByte
2348                     	xdef	_FLASH_ITConfig
2349                     	xdef	_FLASH_DeInit
2350                     	xdef	_FLASH_Lock
2351                     	xdef	_FLASH_Unlock
2352                     	xref	_assert_failed
2353                     	switch	.const
2354  0010               L73:
2355  0010 7372635c7374  	dc.b	"src\stm8s_flash.c",0
2356                     	xref.b	c_lreg
2357                     	xref.b	c_x
2358                     	xref.b	c_y
2378                     	xref	c_ladd
2379                     	xref	c_cmulx
2380                     	xref	c_lgadd
2381                     	xref	c_rtol
2382                     	xref	c_umul
2383                     	xref	c_lcmp
2384                     	xref	c_ltor
2385                     	end
