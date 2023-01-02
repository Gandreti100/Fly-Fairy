#include "gba.h"
#include "play.h"
#include "sound.h"
#include "intro.h"
#include "gameplay.h"
#include "star.h"
#include "bell.h"
#include "print.h"


SONG songs[SONGCOUNT];

int second;
int i;

void init() {
    i = 28;
    songs[0].sampleRate = intro_sampleRate;
    songs[0].length = intro_length;
    songs[0].data = (signed char*) intro_data;

    songs[1].sampleRate = gameplay_sampleRate;
    songs[1].length = gameplay_length;
    songs[1].data = (signed char*) gameplay_data;

    songs[2].sampleRate = star_sampleRate;
    songs[2].length = star_length;
    songs[2].data = (signed char*) star_data;

    songs[3].sampleRate = bell_sampleRate;
    songs[3].length = bell_length;
    songs[3].data = (signed char*) bell_data;

    playSong(0);

}

void playSong(int s) {
    playSoundA(songs[s].data,songs[s].length,1);
}

void playAnotherSong(int s) {
    playSoundB(songs[s].data,songs[s].length-200,0);
}


void setupInterrupts() {

    // Disable interrupt master enable register
    REG_IME = 0;


    // Enable VBlank interrupts
    REG_IE = INT_VBLANK;
    REG_DISPSTAT = INT_VBLANK_ENABLE;



    // Set interrupt handling function

    REG_INTERRUPT = interruptHandler;



    
    // Re-enable interrupt master enable register
    REG_IME = 1;


}

void interruptHandler() {

    // Disable interrupt master enable register

    REG_IME = 0;


    // If interrupt flag register identifies a VBlank interrupt
    if (REG_IF & INT_VBLANK) {

        // Handle soundA
        if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.looping) {
                    playSoundA(soundA.data, soundA.length, soundA.looping);
                } else {
                    soundA.isPlaying = 0;
                    REG_TM0CNT = TIMER_OFF;
                    dma[1].cnt = 0;
                }
            }
        }


        // Handle soundB

        if (soundB.isPlaying) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.looping) {
                    playSoundB(soundB.data, soundB.length, soundB.looping);
                } else {
                    soundB.isPlaying = 0;
                    REG_TM1CNT = TIMER_OFF;
                    dma[2].cnt = 0;
                }
            }
        }

    } 

    if (REG_IF & INT_TM2) {
        

        second++;
        
        
        if (second > 4 && i > 22) {
            SCREENBLOCK[31].tilemap[OFFSET(i, 1, 32)] = 0;
            i--;
            second = 0;
        }

        

    


    }
    

    // Notify GBA that the interrupt has been handled

    REG_IF = REG_IF;


	// Re-enable interrupt master enable register

    REG_IME = 1;


}
