# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;





int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row);
# 43 "gba.h"
extern volatile unsigned short *videoBuffer;
# 68 "gba.h"
void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);
void waitForVBlank();





void flipPage();
void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 120 "gba.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;
# 149 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 160 "gba.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 200 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 258 "gba.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int lose;
    int power;
    int bubble;
    int hide;
    int invisible;
    int chase;
    int pass;
    int activated;
} ANISPRITE;
# 321 "gba.h"
typedef void (*ihp)(void);
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "main.c" 2
# 1 "start.h" 1
# 22 "start.h"
extern const unsigned short startTiles[16384];


extern const unsigned short startMap[1024];


extern const unsigned short startPal[256];
# 5 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[16384];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 6 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[6480];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 7 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[8640];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 8 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[9568];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 9 "main.c" 2
# 1 "bg.h" 1
# 22 "bg.h"
extern const unsigned short bgTiles[4944];


extern const unsigned short bgMap[1024];


extern const unsigned short bgPal[256];
# 10 "main.c" 2
# 1 "bg2.h" 1
# 22 "bg2.h"
extern const unsigned short bg2Tiles[32];


extern const unsigned short bg2Map[1024];


extern const unsigned short bg2Pal[256];
# 11 "main.c" 2
# 1 "level.h" 1
# 22 "level.h"
extern const unsigned short levelTiles[64];


extern const unsigned short levelMap[1024];


extern const unsigned short levelPal[256];
# 12 "main.c" 2
# 1 "sound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int looping;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 13 "main.c" 2
# 1 "play.h" 1







typedef struct {
    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} SONG;

SONG songs[3];

void init();
void interruptHandler();
void setupInterrupts();
void playSong(int);
# 14 "main.c" 2
# 1 "village.h" 1
# 22 "village.h"
extern const unsigned short villageTiles[3296];


extern const unsigned short villageMap[1024];


extern const unsigned short villagePal[256];
# 15 "main.c" 2


enum
{
    START,
    INSTRUCTIONS,
    GAME1,
    GAME2,
    PAUSE,
    WIN,
    LOSE
};
int state;
int hOff;
int vOff;
int restore;
int resume;
int p;
ANISPRITE fairy;
unsigned short buttons;
unsigned short oldButtons;
int ptimer = 500;
int cheat;

OBJ_ATTR shadowOAM[128];

int main() {
    initialize();
    while (1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
        mgba_open();


        switch (state)
        {
        case START:
            start();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        case GAME1:
            game1();
            break;
        case GAME2:
            game2();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

void initialize() {
    restore = 0;
    resume = 0;
    cheat = 0;
    p = 0;
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);

    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = 0;
    init();
    setupSounds();
    setupInterrupts();
    goToStart();
}

void goToStart() {
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);

    hOff = 0;
    (*(volatile unsigned short *)0x04000010) = hOff;


    DMANow(3, startPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, startTiles, &((charblock *)0x6000000)[0], 32768 / 2);
    DMANow(3, startMap, &((screenblock *)0x6000000)[31], 2048 / 2);


    state = START;
}

void start() {

    if (ptimer > 0) {
        ptimer--;
    }
    if (ptimer < 250) {
        ((unsigned short *)0x5000000)[9] = ((31) | (31) << 5 | (0) << 10);
    } else if (ptimer <= 500) {
        ((unsigned short *)0x5000000)[9] = ((31) | (31) << 5 | (31) << 10);
    }
    if (ptimer == 0) {
        ptimer = 500;
    }

    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame1();
        initGame1();
    }

    if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
        goToInstructions();
    }




}

void goToInstructions() {
    state = INSTRUCTIONS;


    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);

    hOff = 0;
    (*(volatile unsigned short *)0x04000010) = hOff;


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 12960 / 2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[31], 2048 / 2);

}

void instructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToGame1() {
    waitForVBlank();
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14) | 0;
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((30)<<8) | (0<<7) | (0<<14) | 1;

    DMANow(3, villagePal, ((unsigned short *)0x5000000), 256);


    DMANow(3, levelTiles, &((charblock *)0x6000000)[0], 128 / 2);
    DMANow(3, levelMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, villageTiles, &((charblock *)0x6000000)[1], 6592 / 2);
    DMANow(3, villageMap, &((screenblock *)0x6000000)[30], 2048 / 2);


    if (restore == 1) {
        unpauseSounds();
    } else {
        playSong(1);

    }

    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);

    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x4000108 = (65536 - 16384);
    *(volatile unsigned short*)0x400010A = 3 | (1<<7) | (1<<6);

    state = GAME1;
}

void game1() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;

    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;

    if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
        restore = 1;
        goToPause();

    }

    if (((screenblock *)0x6000000)[31].tilemap[((1) * (32) + (23))] == 0 && fairy.pass != 1) {
        p++;
        if (p > 30) {
            goToLose();
        }

    }


    if (fairy.pass == 1) {
        resume = 1;
        goToGame2();
        initGame2();
    }

    if ((!(~(oldButtons) & ((1<<1))) && (~buttons & ((1<<1))))) {
        cheat = 1;
    }



    updateGame1();
    waitForVBlank();
    drawGame1();

}

void goToGame2() {
    waitForVBlank();


    fairy.pass = 0;
    cheat = 0;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((30)<<8) | (0<<7) | (0<<14) | 1;
    (*(volatile unsigned short*)0x400000C) = ((2)<<2) | ((29)<<8) | (0<<7) | (0<<14) | 2;

    if (restore == 2) {
        unpauseSounds();
    } else if (resume == 1) {
        pauseSounds();
    } else {
        playSong(1);

    }

    *(volatile unsigned short*)0x400010A = (0<<7);

    (*(volatile unsigned short *)0x4000050) = 0 << 4 | (1 << 6) | 0 << 10;
    (*(volatile unsigned short *)0x4000052) = 0 << 3 | 0 << 11;





    DMANow(3, bgPal, ((unsigned short *)0x5000000), 512 / 2);

    DMANow(3, bg2Tiles, &((charblock *)0x6000000)[1], 64 / 2);
    DMANow(3, bg2Map, &((screenblock *)0x6000000)[30], 2048 / 2);

    DMANow(3, bgTiles, &((charblock *)0x6000000)[2], 9888 / 2);
    DMANow(3, bgMap, &((screenblock *)0x6000000)[29], 2048 / 2);





    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    state = GAME2;

}

void game2() {
    hOff++;
    (*(volatile unsigned short *)0x04000014) = (hOff/2);
    (*(volatile unsigned short *)0x04000018) = hOff;



    if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
        restore = 2;
        goToPause();

    } else {
        unpauseSounds();
    }

    if ((!(~(oldButtons) & ((1<<1))) && (~buttons & ((1<<1))))) {
        cheat = 1;
    }


    if (fairy.lose == 1) {
       goToLose();
    }


    if (fairy.pass == 1) {
        goToWin();
    }

    updateGame2();
    waitForVBlank();
    drawGame2();
}




void goToPause() {
    pauseSounds();
    state = PAUSE;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);

    hOff = 0;
    (*(volatile unsigned short *)0x04000010) = hOff;





    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((30)<<8) | (0<<7) | (0<<14);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 32768 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[30], 2048 / 2);

}

void pause() {
    if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {

        if (restore == 1) {
            goToGame1();
        } else if (restore == 2) {
            goToGame2();
        }
    }

    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSounds();
        initialize();
    }
}

void goToWin() {
    state = WIN;
    stopSounds();

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);
    hOff = 0;
    (*(volatile unsigned short *)0x04000010) = hOff;

    DMANow(3, winPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 17280 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[31], 2048 / 2);
}

void win() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        initialize();
    }
}

void goToLose() {
    state = LOSE;
    stopSounds();

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);
    hOff = 0;
    (*(volatile unsigned short *)0x04000010) = hOff;

    DMANow(3, losePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 19136 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);
}

void lose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        initialize();
    }
}
