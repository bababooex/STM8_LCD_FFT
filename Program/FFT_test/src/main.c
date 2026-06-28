#include "fft__.h"
#include "stm8_hd44780.h"
#include "stm8s_it.h"
#include "stm8s.h"


/*
 *  FFT implementation on lcd display for STM8, that allows user to switch between three predefined bar styles, 
 *	last set configuration is saved to flash and loaded at start.
 *  V1.0.0 - too flickery, needs fix
 *  tested on stm8s005K6T6C chip
 *  Created on: 28. 6. 2026
 *  Author: Adam Fucik
 *  
 */

#define BANDS           20   // number of columns on LCD
#define TIM4_PERIOD     124         // sets sampling rate (16 MHz / 16 / 124(+1) ˜ 8 kHz)
#define SAMP_FREQ  ((float)16000000 / 16 / (TIM4_PERIOD + 1))
#define CHANNEL         ADC1_CHANNEL_0
//basically SNR
#define GAIN     100//sensitivity factor
#define NOISE  3 //noise cutoff
//
#define CLIP_HEIGHT 24 //because of text

#define VISUAL_BTN GPIOE, GPIO_PIN_5 //switching between visuals
#define MODE_ADDR 0x4000 //saving mode address

uint8_t  isr_flag = 0;     // sampling flag
uint32_t count; 
const uint16_t sw_delay=500;//ms delay switching

int16_t   capture   [N_SAMPLE];   // FFT magnitude output
complex_t bfly_buff [N_SAMPLE];   // FFT working buffer

uint16_t bandFft[BANDS];          // averaged magnitudes per band

uint8_t m, last_m;
uint8_t i;

const uint8_t characters1[8][8] = {//style 1 - spaces and filled
  {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0E},
  {0x00,0x00,0x00,0x00,0x00,0x00,0x0E,0x0E},
  {0x00,0x00,0x00,0x00,0x00,0x0E,0x0E,0x0E},
  {0x00,0x00,0x00,0x00,0x0E,0x0E,0x0E,0x0E},
  {0x00,0x00,0x00,0x0E,0x0E,0x0E,0x0E,0x0E},
  {0x00,0x00,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E},
  {0x00,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E},
  {0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E}
};

const uint8_t characters2[8][8] = {//style 2 - filled
  {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x1F},
  {0x00,0x00,0x00,0x00,0x00,0x00,0x1F,0x1F},
  {0x00,0x00,0x00,0x00,0x00,0x1F,0x1F,0x1F},
  {0x00,0x00,0x00,0x00,0x1F,0x1F,0x1F,0x1F},
  {0x00,0x00,0x00,0x1F,0x1F,0x1F,0x1F,0x1F},
  {0x00,0x00,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F},
  {0x00,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F},
  {0x1F,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F,0x1F}
};

const uint8_t characters3[8][8] = {//style 3 - hollow parallel
  {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0A},
  {0x00,0x00,0x00,0x00,0x00,0x00,0x0A,0x0A},
  {0x00,0x00,0x00,0x00,0x00,0x0A,0x0A,0x0A},
  {0x00,0x00,0x00,0x00,0x0A,0x0A,0x0A,0x0A},
  {0x00,0x00,0x00,0x0A,0x0A,0x0A,0x0A,0x0A},
  {0x00,0x00,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A},
  {0x00,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A},
  {0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A}
};

void capture_wave(uint16_t cnt);//wave capture
void calcAvgbyBand(int16_t *ptrData, uint16_t bufSize, uint16_t *ptrBand);
void normalizeBand(uint16_t *ptrBand, uint16_t noise, uint16_t max_input, uint8_t max_output, uint8_t gain);
void set_level(uint16_t *ptr);
void delay(uint32_t nTime);
void memory_save_m(void);
uint8_t memory_load_m(void);
void Init_CLK   (void);
void Init_GPIO  (void);
void Init_ADC   (uint8_t channel);
void TIM3_Config(void);
void TIM4_Config(void);

void main(void)
{
    Init_CLK();
    Init_GPIO();
    Init_ADC(CHANNEL);
    TIM4_Config();
		//TIM3_Config();1uS nonblock
    lcd_init(); 
    lcd_command(LCD_DISPLAY_CLEAR);  // clear once
		m=memory_load_m();// load mode saved by user
		if (m<1 || m>3){ //if out of bounds
			m=1;
		}
		last_m=0; // in start always different
		enableInterrupts();
    while (1)
    {
		 if (m != last_m){
				switch (m) {
						case 1:
								for (i = 0; i < 8; i++) {
										lcd_store_symbol(i, (uint8_t*)characters1[i]);
								}
								lcd_command(LCD_DISPLAY_CLEAR);
								lcd_puts("250Hz  STYLE 1  4kHz");
								memory_save_m();
								last_m = m;
								delay(500);
								break;
						case 2:
								for (i = 0; i < 8; i++) {
										lcd_store_symbol(i, (uint8_t*)characters2[i]);
								}
								lcd_command(LCD_DISPLAY_CLEAR);
								lcd_puts("250Hz  STYLE 2  4kHz");
								memory_save_m();
								last_m = m;
								delay(500);
								break;
						case 3:
								for (i = 0; i < 8; i++) {
										lcd_store_symbol(i, (uint8_t*)characters3[i]);
								}
								lcd_command(LCD_DISPLAY_CLEAR);
								lcd_puts("250Hz  STYLE 3  4kHz");
								memory_save_m();
								last_m = m;
								delay(500);
								break;
						}
				}
				if (GPIO_ReadInputPin(VISUAL_BTN) == RESET) {//mode select	
										m++; 
										if (m > 3)
										m = 1;
				}
        capture_wave(N_SAMPLE);
        fix_fft(capture, bfly_buff);
        fft_out(bfly_buff, capture);
        calcAvgbyBand(capture, N_SAMPLE >> 1, bandFft);
        normalizeBand(bandFft, NOISE, 1024, CLIP_HEIGHT, GAIN);
        set_level(bandFft);
    }
		
}

//log averaging
void calcAvgbyBand(int16_t *ptrData, uint16_t bufSize, uint16_t *ptrBand)
{
    float average = 0;
    float freq;
    float freqFactor = 1.28; 
    uint16_t nSamp = 0;
    uint8_t j = 0;
    uint16_t i;

    float max_freq = ((float)(bufSize - 1) * SAMP_FREQ) / N_SAMPLE;

    float freqbase = max_freq;
    uint8_t k;
    for (k = 0; k < BANDS - 1; k++) {
        freqbase /= freqFactor;
    }

    for (i = 2; i < bufSize; i++)//get rid of noise at lower freq
    {
        freq = (i * 1.0 * SAMP_FREQ) / N_SAMPLE;
        average += ptrData[i];
        nSamp++;

        if (freq > freqbase && j < BANDS)
        {
            average /= (1.0 + nSamp);
            ptrBand[j++] = (uint16_t)average;
            freqbase *= freqFactor;
            average = 0;
            nSamp = 0;
        }
    }

    if (j < BANDS && nSamp > 0) {
        average /= (1.0 * nSamp);
        ptrBand[j] = (uint16_t)average;
    }
}
//linear normalization
void normalizeBand(uint16_t *ptrBand, uint16_t noise, uint16_t max_input, uint8_t max_output, uint8_t gain)
{
    uint16_t aux;
		uint8_t i;
    for (i = 0; i < BANDS; i++)
    {
        aux = ptrBand[i];
        
        if (aux > noise)
        {
            // Remove noise floor, then amplify
            aux = (aux - noise) * gain;
            
            // Clamp to max_input
            if (aux > max_input) aux = max_input;
            
            // Scale linearly to 0..max_output
            ptrBand[i] = (uint16_t)((uint32_t)aux * max_output / max_input);
        }
        else
        {
            ptrBand[i] = 0;
        }
    }
}

//bar draw
void set_level(uint16_t *ptr)
{
    uint8_t a, n, x, y;

    for (y = 1; y < 4; y++)//shift for text, otherwise y=0
    {
        lcd_gotoxy(0, y);
        for (x = 0; x < 20; x++)
        {
            n = (uint8_t)*(ptr + x);
            a = n >> 3;                // which row (0..3)
            if (a == (3 - y))
            {
                n = (n >= 8) ? (n - a * 8) : n;
                n = (n > 0) ? (n - 1) : ' ';
            }
            else
            {
                n = (a >= (3 - y)) ? 7 : ' ';
            }
            lcd_data(n);               // write custom character
        }
    }
}

//ADC sets sampling
void capture_wave(uint16_t cnt)
{
    u8  i   = 0;
    u16 adc = 0;

    isr_flag = RESET;

    do
    {
        if (isr_flag)
        {
            isr_flag = RESET;

            ADC1->CR1 |= ADC1_CR1_ADON;
            while (ADC1_GetFlagStatus(ADC1_FLAG_EOC) == RESET);

            adc = ADC1_GetConversionValue() - 511;

            bfly_buff[position[i]].real = FIX(adc, ham[i]);
            bfly_buff[i].image = 0;

            i++;
            cnt--;
        }
    }
    while (cnt);
}


//timers
void TIM4_Config(void)
{
    TIM4_TimeBaseInit(TIM4_PRESCALER_16, TIM4_PERIOD);
    TIM4_ClearFlag(TIM4_FLAG_UPDATE);
    TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
    TIM4_Cmd(ENABLE);
}

void TIM3_Config(void)
{
    TIM3_TimeBaseInit(TIM3_PRESCALER_16, 0xFFFF);
    TIM3_ClearFlag(TIM3_FLAG_UPDATE);
    TIM3_ITConfig(TIM4_IT_UPDATE, ENABLE);
    TIM3_Cmd(ENABLE);
}

void Init_CLK(void)
{
    CLK_DeInit();
    CLK_HSECmd(DISABLE);
    CLK_LSICmd(DISABLE);
    CLK_HSICmd(ENABLE);
    CLK_ClockSwitchCmd(ENABLE);
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
    CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
    CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
}

//------------------------------------------------------------------------------
// GPIO – set all pins as inputs (prevent floating)
//------------------------------------------------------------------------------
void Init_GPIO(void)
{
    GPIO_DeInit(GPIOA);
    GPIO_DeInit(GPIOB);
    GPIO_DeInit(GPIOC);
    GPIO_DeInit(GPIOD);
		GPIO_Init(VISUAL_BTN, GPIO_MODE_IN_PU_NO_IT);
}
//nonblocking delay
void delay(uint32_t nTime)
{
    count = nTime;
    while (count)
    {
        continue;
    }
}
//adc
void Init_ADC(uint8_t channel)
{
    ADC1_DeInit();
    ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
              channel,
              ADC1_PRESSEL_FCPU_D4,// set to 4 MHz on 5 V
              ADC1_EXTTRIG_TIM, DISABLE,
              ADC1_ALIGN_RIGHT,
              ADC1_SCHMITTTRIG_ALL, DISABLE);
    ADC1_Cmd(ENABLE);
}
//memory save mode
void memory_save_m() {
    FLASH_Unlock(FLASH_MEMTYPE_DATA);
    FLASH_ProgramByte(MODE_ADDR, m);
}
uint8_t memory_load_m(){
    FLASH_Unlock(FLASH_MEMTYPE_DATA);
		return FLASH_ReadByte(MODE_ADDR);
}

#ifdef USE_FULL_ASSERT
void assert_failed(u8 *file, u32 line)
{
    (void)file;
    (void)line;
    while (1) {}
}
#endif
