# 1 "play.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "play.c"
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
# 2 "play.c" 2
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
# 3 "play.c" 2
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
# 4 "play.c" 2
# 1 "intro.h" 1


extern const unsigned int intro_sampleRate;
extern const unsigned int intro_length;
extern const signed char intro_data[];
# 5 "play.c" 2
# 1 "gameplay.h" 1


extern const unsigned int gameplay_sampleRate;
extern const unsigned int gameplay_length;
extern const signed char gameplay_data[];
# 6 "play.c" 2
# 1 "star.h" 1


extern const unsigned int star_sampleRate;
extern const unsigned int star_length;
extern const signed char star_data[];
# 7 "play.c" 2
# 1 "bell.h" 1


extern const unsigned int bell_sampleRate;
extern const unsigned int bell_length;
extern const signed char bell_data[];
# 8 "play.c" 2
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
# 9 "play.c" 2


SONG songs[3];

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


    *(unsigned short*)0x4000208 = 0;



    *(unsigned short*)0x4000200 = 1 << 0;
    *(unsigned short*)0x4000004 = 1 << 3;





    *((ihp*)0x03007FFC) = interruptHandler;





    *(unsigned short*)0x4000208 = 1;


}

void interruptHandler() {



    *(unsigned short*)0x4000208 = 0;



    if (*(volatile unsigned short*)0x4000202 & 1 << 0) {


        if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.looping) {
                    playSoundA(soundA.data, soundA.length, soundA.looping);
                } else {
                    soundA.isPlaying = 0;
                    *(volatile unsigned short*)0x4000102 = (0<<7);
                    dma[1].cnt = 0;
                }
            }
        }




        if (soundB.isPlaying) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.looping) {
                    playSoundB(soundB.data, soundB.length, soundB.looping);
                } else {
                    soundB.isPlaying = 0;
                    *(volatile unsigned short*)0x4000106 = (0<<7);
                    dma[2].cnt = 0;
                }
            }
        }

    }

    if (*(volatile unsigned short*)0x4000202 & 1<<5) {


        second++;


        if (second > 4 && i > 22) {
            ((screenblock *)0x6000000)[31].tilemap[((1) * (32) + (i))] = 0;
            i--;
            second = 0;
        }






    }




    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;




    *(unsigned short*)0x4000208 = 1;


}
