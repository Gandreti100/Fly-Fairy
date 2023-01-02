#ifndef PLAY_H
#define PLAY_H

#define SONGCOUNT 3
#define INT_VBLANK_ENABLE 1 << 3


typedef struct {
    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} SONG;

SONG songs[SONGCOUNT];

void init();
void interruptHandler();
void setupInterrupts();
void playSong(int);


#endif