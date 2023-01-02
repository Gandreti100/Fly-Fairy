# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
# 1 "game.h" 1

void initGame1();
void initGame2();

void updateGame1();
void updateGame2();

void drawGame1();
void drawGame2();

void updateFairy1();
void updateWingedFairy1();
void updateHouse();
void updatePortal1();
void updateFairy2();
void updateDragons2();
void updateStars2();
void updatePortal2();

void drawFairy1();
void updateWingedFairy1();
void drawWings1();
void drawPortal1();
void drawFairy2();
void drawDragons2();
void drawStars2();
void drawPortal2();
# 36 "game.h"
extern int timer;
extern ANISPRITE fairy;
extern ANISPRITE dragons[4];
extern ANISPRITE stars[2];
extern ANISPRITE fire;
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
# 3 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "game.c" 2
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
# 5 "game.c" 2
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
# 6 "game.c" 2
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
# 7 "game.c" 2
# 1 "star.h" 1


extern const unsigned int star_sampleRate;
extern const unsigned int star_length;
extern const signed char star_data[];
# 8 "game.c" 2
# 1 "map.h" 1
# 21 "map.h"
extern const unsigned short mapBitmap[32768];


extern const unsigned short mapPal[256];
# 9 "game.c" 2


ANISPRITE fairy;
ANISPRITE dragons[4];
ANISPRITE stars[2];
ANISPRITE fire;
ANISPRITE portal;
ANISPRITE enemy;
ANISPRITE damage;
ANISPRITE power;
ANISPRITE wings;




int timer;
int hOff;
int vOff;
int awake;
int ftimer;
int round;
int house;
int cheat;




unsigned char * collisionMap = (unsigned char *) mapBitmap;

enum {FRONT, BACK, RIGHT, LEFT, IDLE};



void initGame1() {
    hideSprites();

    vOff = 50;
    hOff = 10;

    fairy.width = 8;
    fairy.height = 16;
    fairy.rdel = 1;
    fairy.cdel = 1;

    fairy.worldRow = 160 / 2 - fairy.width / 2 + vOff;
    fairy.worldCol = 240 / 2 - fairy.height / 2 + hOff;
    fairy.aniCounter = 0;
    fairy.curFrame = 0;
    fairy.numFrames = 2;
    fairy.aniState = FRONT;
    fairy.activated = 0;
    fairy.lose = 0;
    fairy.pass = 0;

    wings.width = 20;
    wings.height = 16;


    house = rand() % (8) + 1;

    if (house == 1) {
        wings.worldRow = 48;
        wings.worldCol = 72;
    } else if (house == 2) {
        wings.worldRow = 48;
        wings.worldCol = 160;
    } else if (house == 3) {
        wings.worldRow = 48;
        wings.worldCol = 232;
    } else if (house == 4) {
        wings.worldRow = 128;
        wings.worldCol = 104;
    } else if (house == 5) {
        wings.worldRow = 128;
        wings.worldCol = 208;
    } else if (house == 6) {
        wings.worldRow = 216;
        wings.worldCol = 72;
    } else if (house == 7) {
        wings.worldRow = 216;
        wings.worldCol = 160;
    } else if (house == 8) {
        wings.worldRow = 216;
        wings.worldCol = 232;
    }

    portal.worldRow = rand() % (30) + 140;
    portal.worldCol = 240;
    portal.width = 16;
    portal.height = 32;
    portal.rdel = 0;
    portal.cdel = 0;
    portal.hide = 1;


}

void updateFairy1() {

    if (fairy.activated == 1) {
        fairy.width = 20;
        fairy.height = 24;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {

        if (fairy.worldRow > 0 && collisionCheck(collisionMap, 256, fairy.worldCol, fairy.worldRow - fairy.rdel) && collisionCheck(collisionMap, 256, fairy.worldCol + fairy.width - fairy.cdel, fairy.worldRow - fairy.rdel)) {
            fairy.worldRow -= fairy.rdel;
            if (vOff > 0 && fairy.worldRow - vOff <= 160 / 2) {
                vOff--;


            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (fairy.worldRow + fairy.height < 256 && collisionCheck(collisionMap, 256, fairy.worldCol, fairy.worldRow + fairy.height) && collisionCheck(collisionMap, 256, fairy.worldCol + fairy.width - fairy.cdel, fairy.worldRow + fairy.height)) {
            fairy.worldRow += fairy.rdel;
            if (vOff + 160 < 256 && fairy.worldRow - vOff >= 160/2) {
                vOff++;

            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (fairy.worldCol > 0 && collisionCheck(collisionMap, 256, fairy.worldCol - fairy.cdel, fairy.worldRow) && collisionCheck(collisionMap, 256, fairy.worldCol - fairy.cdel, fairy.worldRow + fairy.height - fairy.rdel)) {
            fairy.worldCol -= fairy.cdel;
            if (hOff > 0 && fairy.worldCol - hOff <= 240/2) {
                hOff--;

            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (fairy.worldCol + fairy.width < 256 && collisionCheck(collisionMap, 256, fairy.worldCol + fairy.width, fairy.worldRow) && collisionCheck(collisionMap, 256, fairy.worldCol + fairy.width, fairy.worldRow + fairy.height - fairy.rdel)) {
            fairy.worldCol += fairy.cdel;

            if (hOff + 240 < 256 && fairy.worldCol - hOff >= 160/2) {
                hOff++;

            }
        }
    }

    fairy.prevAniState = fairy.aniState;
    fairy.aniState = IDLE;

    if (fairy.aniCounter % 20 == 0) {
        fairy.curFrame = (fairy.curFrame + 1) % fairy.numFrames;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
        fairy.aniState = BACK;
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
        fairy.aniState = FRONT;
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))
        fairy.aniState = LEFT;
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
        fairy.aniState = RIGHT;

    if (fairy.aniState == IDLE) {
        fairy.curFrame = 0;
        fairy.aniCounter = 0;
        fairy.aniState = fairy.prevAniState;
    } else {
        fairy.aniCounter++;
    }

    if (collision(wings.worldCol, wings.worldRow, wings.width, wings.height, fairy.worldCol, fairy.worldRow, fairy.width, fairy.height) && wings.hide == 1) {
        fairy.activated = 1;
        portal.hide = 0;
        wings.hide = 0;
        cheat = 0;


    }

}

void updateWingedFairy1() {
    if (fairy.activated == 1) {
        fairy.numFrames = 4;
        if (fairy.aniCounter % 20 == 0) {

            if (fairy.curFrame < fairy.numFrames - 1) {
                fairy.curFrame++;
            } else {
                fairy.curFrame = 0;
            }
        }
        fairy.aniCounter++;
    }
}

void updateHouse() {

    if (cheat == 1 && fairy.activated == 0) {
        wings.hide = 1;
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 64 && fairy.worldCol > 23 && fairy.worldCol < 64 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 1) {
            wings.hide = 1;
        }

    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 64 && fairy.worldCol > 111 && fairy.worldCol < 152 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 2) {
            wings.hide = 1;
        }

    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 64 && fairy.worldCol > 191 && fairy.worldCol < 232 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 3) {
            wings.hide = 1;
        }
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 144&& fairy.worldCol > 55 && fairy.worldCol < 96 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 4) {
            wings.hide = 1;
        }
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 144 && fairy.worldCol > 159 && fairy.worldCol < 200 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 5) {
            wings.hide = 1;
        }
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 232 && fairy.worldCol > 23 && fairy.worldCol < 64 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 6) {
            wings.hide = 1;
        }
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 232 && fairy.worldCol > 111 && fairy.worldCol < 152 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 7) {
            wings.hide = 1;
        }
    } else if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && fairy.worldRow == 232 && fairy.worldCol > 191 && fairy.worldCol < 232 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 8) {
            wings.hide = 1;
        }
    }


}

void updatePortal1() {
    if (collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, portal.worldCol, portal.worldRow, portal.width, portal.height) && (portal.hide == 0)) {
        portal.hide = 1;
        fairy.pass = 1;
    }

}

void updateGame1() {
    updateFairy1();
    updateWingedFairy1();
    updateHouse();
    updatePortal1();

}

void drawFairy1() {
    if (fairy.hide) {
        shadowOAM[0].attr0 |= (2 << 8);
    } else {
        shadowOAM[0].attr0 = (0xFF & (fairy.worldRow - vOff)) | (2 << 14);
        shadowOAM[0].attr1 = (0x1FF & (fairy.worldCol - hOff)) | (0 << 14);
        shadowOAM[0].attr2 = ((0)<<12) | ((fairy.curFrame * 2)*32+(18 + fairy.aniState));
    }


}

void drawWingedFairy1() {
    if (fairy.activated == 1) {
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
            shadowOAM[0].attr0 = ((fairy.worldRow - vOff) & 0xFF) | (0 << 13) | (0 << 14);
            shadowOAM[0].attr1 = ((fairy.worldCol - hOff) & 0x1FF) | (2 << 14);
            shadowOAM[0].attr2 = ((0)<<12) | ((fairy.curFrame * 4)*32+(22));

        } else {
            shadowOAM[0].attr0 = ((fairy.worldRow - vOff) & 0xFF) | (0 << 13) | (0 << 14);
            shadowOAM[0].attr1 = ((fairy.worldCol - hOff) & 0x1FF) | (2 << 14);
            shadowOAM[0].attr2 = ((0)<<12) | ((fairy.curFrame * 4)*32+(8));

        }
    }
}

void drawWings1() {

    if (wings.hide == 0) {
        shadowOAM[1].attr0 |= (2 << 8);
    } else {
        shadowOAM[1].attr0 = (0xFF & (wings.worldRow - vOff)) | (1 << 14);
        shadowOAM[1].attr1 = (0x1FF & (wings.worldCol - hOff)) | (2 << 14);
        shadowOAM[1].attr2 = ((0)<<12) | ((17)*32+(15));
    }


}

void drawPortal1() {
    if (fairy.activated == 1) {
        shadowOAM[2].attr0 = (0xFF & (portal.worldRow - vOff)) | (0 << 13) | (2 << 14);
        shadowOAM[2].attr1 = (0x1FF & (portal.worldCol - hOff)) | (2 << 14);
        shadowOAM[2].attr2 = ((0)<<12) | ((17)*32+(8));
    }
    if (portal.hide == 1) {
        shadowOAM[2].attr0 = (2 << 8);
    }
}

void drawGame1() {
    drawFairy1();
    drawWingedFairy1();
    drawWings1();
    drawPortal1();
    DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}



void initGame2() {
    hideSprites();

    fairy.worldRow = 0;
    fairy.worldCol = 120;
    fairy.rdel = 4;
    fairy.cdel = 0;
    fairy.width = 20;
    fairy.height = 24;
    fairy.curFrame = 0;
    fairy.numFrames = 4;
    fairy.lose = 0;
    fairy.power = 0;
    fairy.bubble = 0;
    fairy.invisible = 0;
    fairy.activated = 0;
    fairy.pass = 0;

    for (int i = 0; i < 2; i++) {
        stars[i].width = 16;
        stars[i].height = 16;
        stars[i].rdel = 0;
        stars[i].cdel = 1;
        stars[i].hide = 0;
        stars[i].worldRow = rand() % 100 + 10;


    }
    stars[0].worldCol = 200;
    stars[1].worldCol = 370;



    for (int i = 0; i < 4; i++) {
        dragons[i].width = 64;
        dragons[i].height = 40;
        dragons[i].rdel = 0;
        dragons[i].cdel = 1;
        dragons[i].hide = 0;
        dragons[i].worldRow = rand() % 90;
        dragons[i].curFrame = 0;
        dragons[i].numFrames = 3;
        dragons[i].chase = 0;


    }
    dragons[0].worldCol = 200;
    dragons[1].worldCol = 250;
    dragons[2].worldCol = 400;
    dragons[3].worldCol = 450;


    fire.width = 16;
    fire.height = 16;
    fire.rdel = 0;
    fire.cdel = (int)(0.25 * 8);
    fire.hide = 1;
    fire.worldCol = 0;
    fire.worldRow = 0;

    wings.hide = 0;

    portal.worldRow = rand() % (100) + 30;
    portal.worldCol = 240;
    portal.width = 16;
    portal.height = 32;
    portal.rdel = 0;
    portal.cdel = 1;
    portal.hide = 1;


    timer = 0;
    ftimer = 0;
    round = 0;

    awake = rand() % 2 + 2;



}

void updateFairy2() {
    if (fairy.aniCounter % 20 == 0) {

        if (fairy.curFrame < fairy.numFrames - 1) {
            fairy.curFrame++;
        } else {
            fairy.curFrame = 0;
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (fairy.worldRow > 0) {
            fairy.worldRow -= fairy.rdel;
        }
    } else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (fairy.worldRow < 128) {
            fairy.worldRow += fairy.rdel;
        }
    }
    fairy.aniCounter++;

   if (collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, (fire.worldCol >> 3), fire.worldRow, fire.width, fire.height) && (fire.hide == 0) && cheat == 0) {
        fairy.lose = 1;
    }

}

void updateDragons2() {

    for (int i = 0; i < 4; i++) {
        dragons[i].worldCol -= dragons[i].cdel;



        if ((dragons[i].worldCol + dragons[i].width) <= 0) {
            dragons[i].hide = 1;

        }



        if (collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, dragons[i].worldCol, dragons[i].worldRow, dragons[i].width, dragons[i].height) && (dragons[i].hide == 0)) {
            fairy.lose = 1;
        }

        if (((dragons[awake].worldCol - 10 < fairy.worldCol) && (fairy.worldCol < dragons[awake].worldCol + dragons[awake].width + 10)) && (fairy.invisible == 0) && (dragons[awake].worldRow < fairy.worldRow) && (dragons[awake].hide == 0)) {
            dragons[awake].chase = 1;
        }



        if (dragons[awake].chase == 1) {

            ftimer++;
            if (ftimer % 200 == 0) {
                fire.hide = 0;
                fire.worldCol = (fairy.worldCol - 60) << 3;
                fire.worldRow = fairy.worldRow + 10;

            }

            if (ftimer > 799) {
                fire.hide = 1;
                dragons[awake].chase = 0;
                ftimer = 0;

            } else if (ftimer > 201) {
                fire.hide = 0;
                fire.worldCol += fire.cdel;
                shadowOAM[2 +4 +2].attr0 = (fire.worldRow & 0xFF) | (0 << 13) | (0 << 14);
                shadowOAM[2 +4 +2].attr1 = ((fire.worldCol >> 3) & 0x1FF) | (2 << 14);
                shadowOAM[2 +4 +2].attr2 = ((0)<<12) | ((17)*32+(11));


            }


        }

        if (round < 3) {
            if (dragons[awake].chase == 0 && (fairy.worldCol > (dragons[4 -1].worldCol + dragons[4 -1].width + 90))) {
                round++;
                awake = rand() % 2 + 2;
                for (int i = 0; i < 4; i++) {
                    dragons[i].width = 64;
                    dragons[i].height = 40;
                    dragons[i].rdel = 0;
                    dragons[i].cdel = 1;
                    dragons[i].hide = 0;
                    dragons[i].worldRow = rand() % 90;
                    dragons[0].worldCol = 200;
                    dragons[1].worldCol = 250;
                    dragons[2].worldCol = 300;
                    dragons[3].worldCol = 400;
                }

                for (int i = 0; i < 2; i++) {
                    stars[i].width = 16;
                    stars[i].height = 16;
                    stars[i].rdel = 0;
                    stars[i].cdel = 1;
                    stars[i].hide = 0;
                    stars[i].worldRow = rand() % 100 + 10;

                }
                stars[0].worldCol = 200;
                stars[1].worldCol = 370;
            }

        }


       for (int i = 0; i < 2; i++) {
           if (collision(stars[i].worldCol, stars[i].worldRow, stars[i].width, stars[i].height, dragons[i].worldCol, dragons[i].worldRow, dragons[i].width, dragons[i].height)) {
               stars[i].worldRow = rand() % 100 + 10;
           }

       }

   }


}


void updateStars2() {
    for (int i = 0; i < 2; i++) {
        stars[i].worldCol -= stars[i].cdel;

        if ((stars[i].worldCol + stars[i].width) <= 0) {
            stars[i].hide = 1;

        }

        if (collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, stars[i].worldCol, stars[i].worldRow, stars[i].width, stars[i].height)) {
            if (stars[i].hide == 0) {
                fairy.power++;
                playAnotherSong(2);

            }
            stars[i].hide = 1;
        }

        if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && dragons[awake].chase != 1) {
            fairy.bubble = 1;
        }

    }


}

void updatePortal2() {
    if (round == 3 && dragons[awake].chase == 0 && (fairy.worldCol > (dragons[4 -1].worldCol + dragons[4 -1].width + 50))) {
        portal.hide = 0;
        portal.worldCol -= portal.cdel;
        if (collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, portal.worldCol, portal.worldRow, portal.width, portal.height) && (portal.hide == 0)) {
            fairy.pass = 1;
            portal.hide = 1;
        }

        if (!collision(fairy.worldCol, fairy.worldRow, fairy.width, fairy.height, portal.worldCol, portal.worldRow, portal.width, portal.height) && (fairy.worldCol >= portal.worldCol - portal.width)) {
            portal.cdel = 0;

        }

    }

}

void drawFairy2() {


    shadowOAM[0].attr0 = (fairy.worldRow & 0xFF) | (0 << 13) | (0 << 14);
    shadowOAM[0].attr1 = (fairy.worldCol & 0x1FF) | (2 << 14);
    shadowOAM[0].attr2 = ((0)<<12) | ((fairy.curFrame * 4)*32+(8));
    if ((fairy.bubble == 1) && (fairy.power > 0) && (dragons[awake].chase != 1)) {
        timer++;
        if (timer <= 240) {
            fairy.invisible = 1;

            (*(volatile unsigned short *)0x4000050) = 1 << 4 | (1 << 6) | 1 << 10;
            (*(volatile unsigned short *)0x4000052) = 1 << 3 | 1 << 11;
            shadowOAM[0].attr0 = (fairy.worldRow & 0xFF) | (0 << 13) | (0 << 14) | (1 << 10);
            shadowOAM[0].attr1 = (fairy.worldCol & 0x1FF) | (2 << 14);
            shadowOAM[0].attr2 = ((0)<<12) | ((fairy.curFrame * 4)*32+(12));

        } else {
            fairy.invisible = 0;
            fairy.bubble = 0;
            fairy.power--;
            timer = 0;
            (*(volatile unsigned short *)0x4000050) = 0;
            (*(volatile unsigned short *)0x4000052) = 0;
        }

    }

}






void drawDragons2() {
    for (int i = 0; i < 4; i++) {
        shadowOAM[i+1].attr0 = (dragons[i].worldRow & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[i+1].attr1 = (dragons[i].worldCol & 0x1FF) | (3 << 14);
        shadowOAM[i+1].attr2 = ((0)<<12) | ((9)*32+(0));


        if (dragons[i].hide == 1) {
            shadowOAM[i+1].attr0 = (2 << 8);
        }

        if (i == awake) {
            shadowOAM[i+1].attr2 = ((0)<<12) | ((0)*32+(0));
        }

        if (dragons[i].chase == 1) {

            shadowOAM[i+1].attr0 = (2 << 8);

            if (dragons[i].aniCounter % 20 == 0) {

                if (dragons[i].curFrame < dragons[i].numFrames - 1) {
                    dragons[i].curFrame++;
                } else {
                    dragons[i].curFrame = 0;
                }
            }
            dragons[i].aniCounter++;

            shadowOAM[i+1].attr0 = (fairy.worldRow & 0xFF) | (0 << 13) | (1 << 14);
            shadowOAM[i+1].attr1 = (fairy.worldCol - 120 & 0x1FF) | (3 << 14);
            shadowOAM[i+1].attr2 = ((0)<<12) | ((18 + dragons[i].curFrame * 4)*32+(0));

        }

        if (fire.hide == 1) {
            shadowOAM[2 +4 +2].attr0 = (2 << 8);

        }

    }

}

void drawStars2() {
    for (int i = 0; i < 2; i++) {
        shadowOAM[i+4 +1].attr0 = (stars[i].worldRow & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[i+4 +1].attr1 = (stars[i].worldCol & 0x1FF) | (1 << 14);
        shadowOAM[i+4 +1].attr2 = ((0)<<12) | ((0)*32+(16));



        if (stars[i].hide == 1) {
            shadowOAM[i+4 +1].attr0 = (2 << 8);
        }

    }
}

void drawPortal2() {

    shadowOAM[2 +4 +1].attr0 = (portal.worldRow & 0xFF) | (0 << 13) | (2 << 14);
    shadowOAM[2 +4 +1].attr1 = (portal.worldCol & 0x1FF) | (2 << 14);
    shadowOAM[2 +4 +1].attr2 = ((0)<<12) | ((17)*32+(8));


    if (portal.hide == 1) {
        shadowOAM[2 +4 +1].attr0 = (2 << 8);
    }
}


void updateGame2() {
    updateFairy2();
    updateDragons2();
    updateStars2();
    updatePortal2();
}


void drawGame2() {
    drawFairy2();
    drawDragons2();
    drawStars2();
    drawPortal2();
    DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}
