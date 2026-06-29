# STM8_LCD_FFT
STM8 example code for FFT on LCD display, has a lot of settings in main code for best visuals. Of course, there are problems with ghosting etc. I also recommend adding LPF to filter out frequencies above 4 kHz, for this I used 680 nF capacitor along with 1 k ohm variable resistor, so I can adjust cutoff. For amplification, that is definitelly recommended, I used circuit from this website https://os.mbed.com/users/Suky/notebook/audio-spectrum-analyzer-fft-32-points-and-lcd-20x4/. I only changed variable resistor for higher gain and removed C8, because of external LPF.
- connection goes like - audio jack -> amplifier with gain setting and biasing -> LPF -> adc pin
  
This is not very precise device, I made it only for fun! I also recommend filtered voltage source, like LM7805, of course VDDA and VSSA are connected to power pins.
# Images
Will add soon...
# Credits
- https://github.com/Lendlav/stm8s103-FFT-spectrum - stm fft implementation by Lendlav
- https://github.com/ivanmorenoj/fft_esp32_lcd - I used averaging, displaying and normalization, original by Ivan Moreno
- Integer FFT by Simon Inns
