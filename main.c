#include "gba.h" 
#include "print.h"
#include "spritesheet.h"
#include "start.h"
#include "pause.h"
#include "instructions.h"
#include "win.h"
#include "lose.h"
#include "bg.h"
#include "bg2.h"
#include "level.h"
#include "sound.h"
#include "play.h"
#include "village.h"


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
        //Update buttons
        oldButtons = buttons;
        buttons = BUTTONS;
        mgba_open();

        //State Machine
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
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    buttons = BUTTONS;
    oldButtons = 0;
    init();
    setupSounds();
    setupInterrupts();
    goToStart();
}

void goToStart() {
    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    hOff = 0;
    REG_BG0HOFF = hOff;

    // Setup main menu background
    DMANow(3, startPal, PALETTE, startPalLen / 2);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[31], startMapLen / 2);

    
    state = START;
}

void start() {
    //start screen animation
    if (ptimer > 0) {
        ptimer--;
    }
    if (ptimer < 250) {
        PALETTE[9] = YELLOW;
    } else if (ptimer <= 500) {
        PALETTE[9] = WHITE;
    }
    if (ptimer == 0) {
        ptimer = 500;
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame1();
        initGame1();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }   

    

     
}

void goToInstructions() {
    state = INSTRUCTIONS;


    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus
    
    hOff = 0;
    REG_BG0HOFF = hOff;

    // Setup instructions background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    DMANow(3, instructionsPal, PALETTE, instructionsPalLen / 2);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen / 2);

}

void instructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToGame1() {
    waitForVBlank();
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE; // Enable sprites
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL | 0; 
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL | 1;

    DMANow(3, villagePal, PALETTE, 256);
    

    DMANow(3, levelTiles, &CHARBLOCK[0], levelTilesLen / 2);
    DMANow(3, levelMap, &SCREENBLOCK[31], levelMapLen / 2);

    DMANow(3, villageTiles, &CHARBLOCK[1], villageTilesLen / 2);
    DMANow(3, villageMap, &SCREENBLOCK[30], villageMapLen / 2);


    if (restore == 1) {
        unpauseSounds();
    } else {
        playSong(1);

    }

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2); // Switch to game palette
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_TM2CNT = 0;
    REG_TM2D = (65536 - 16384);
    REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
    
    state = GAME1;
}

void game1() {
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        restore = 1;
        goToPause();
        
    }

    if (SCREENBLOCK[31].tilemap[OFFSET(23, 1, 32)] == 0 && fairy.pass != 1) {
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

    if (BUTTON_PRESSED(BUTTON_B)) {
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

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE; // Enable sprites
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL | 1;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(29) | BG_4BPP | BG_SIZE_SMALL | 2;

    if (restore == 2) {
        unpauseSounds();
    } else if (resume == 1) {
        pauseSounds();
    } else {
        playSong(1);

    }

    REG_TM2CNT = TIMER_OFF;

    REG_BLDCNT = 0 << 4 | BLD_STD | 0 << 10;
    REG_BLDALPHA = 0 << 3 | 0 << 11;

    

    

    DMANow(3, bgPal, PALETTE, bgPalLen / 2);

    DMANow(3, bg2Tiles, &CHARBLOCK[1], bg2TilesLen / 2);
    DMANow(3, bg2Map, &SCREENBLOCK[30], bg2MapLen / 2);

    DMANow(3, bgTiles, &CHARBLOCK[2], bgTilesLen / 2);
    DMANow(3, bgMap, &SCREENBLOCK[29], bgMapLen / 2);

    



    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2); // Switch to game palette
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    state = GAME2;

}

void game2() {
    hOff++;
    REG_BG1HOFF = (hOff/2);
    REG_BG2HOFF = hOff;

    

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        restore = 2;
        goToPause();

    } else {
        unpauseSounds();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
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

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    hOff = 0;
    REG_BG0HOFF = hOff;

    


    // Setup pause background
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[30], pauseMapLen / 2);

}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        
        if (restore == 1) {
            goToGame1();
        } else if (restore == 2) {
            goToGame2();
        } 
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSounds();
        initialize();
    }
}

void goToWin() {
    state = WIN;
    stopSounds();

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    // Setup win background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    hOff = 0;
    REG_BG0HOFF = hOff;

    DMANow(3, winPal, PALETTE, winPalLen / 2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen / 2);
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}

void goToLose() {
    state = LOSE;
    stopSounds();

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    // Setup lose background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    hOff = 0;
    REG_BG0HOFF = hOff;
    
    DMANow(3, losePal, PALETTE, losePalLen / 2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}

