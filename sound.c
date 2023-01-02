#include "gba.h"
#include "sound.h"



void setupSounds() {

    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;

}



void playSoundA(const signed char* sound, int length, int looping) {

    // Set DMA channel to 1
    dma[1].cnt = 0;
    DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    // Set up timer 0

    REG_TM0CNT = 0;
    int ticks = (PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ);

    REG_TM0D = -ticks;
    REG_TM0CNT = TIMER_ON;



    // Initialize struct members of soundA
    soundA.data = sound;
    soundA.length = length;
    soundA.looping = looping;
    soundA.frequency = SOUND_FREQ;
    soundA.isPlaying = 1;
    soundA.duration = ((VBLANK_FREQ * length) / SOUND_FREQ);
    soundA.vBlankCount = 0;



}

void playSoundB(const signed char* sound, int length, int looping) {

    // Set DMA channel to 2
    dma[2].cnt = 0;
    DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    // Set up timer 1

    REG_TM1CNT = 0;
    int ticks = (PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ);

    REG_TM1D = -ticks;
    REG_TM1CNT = TIMER_ON;


    // Initialize struct members of soundB
    soundB.data = sound;
    soundB.length = length;
    soundB.looping = looping;
    soundB.frequency = SOUND_FREQ;
    soundB.isPlaying = 1;
    soundB.duration = ((VBLANK_FREQ * length) / SOUND_FREQ);
    soundB.vBlankCount = 0;



}

void pauseSounds() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;

    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;



}

void unpauseSounds() {

    soundA.isPlaying = 1;
    soundB.isPlaying = 1;

    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;

}

void stopSounds() {

    soundA.isPlaying = 0;
    soundB.isPlaying = 0;

    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;

    dma[1].cnt = 0;
    dma[2].cnt = 0;

}