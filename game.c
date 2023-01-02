#include "gba.h"
#include "game.h"
#include "spritesheet.h"
#include "print.h"
#include "play.h"
#include "sound.h"
#include "star.h"
#include "map.h"


ANISPRITE fairy;
ANISPRITE dragons[4];
ANISPRITE stars[2];
ANISPRITE fire;
ANISPRITE portal;
ANISPRITE enemy;
ANISPRITE damage;
ANISPRITE power;
ANISPRITE wings;
#define DRAGONSCOUNT 4
#define STARSCOUNT 2


int timer;
int hOff;
int vOff;
int awake;
int ftimer;
int round;
int house;
int cheat;


// LEVEL ONE

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

    fairy.worldRow = SCREENHEIGHT / 2 - fairy.width / 2 + vOff;
    fairy.worldCol = SCREENWIDTH / 2 - fairy.height / 2 + hOff;
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

    if (BUTTON_HELD(BUTTON_UP)) {
        
        if (fairy.worldRow > 0 && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol, fairy.worldRow - fairy.rdel) && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol + fairy.width - fairy.cdel, fairy.worldRow - fairy.rdel)) {
            fairy.worldRow -= fairy.rdel;
            if (vOff > 0 && fairy.worldRow - vOff <= SCREENHEIGHT / 2) {
                vOff--;


            }
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (fairy.worldRow + fairy.height < MAPHEIGHT && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol, fairy.worldRow + fairy.height) && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol + fairy.width - fairy.cdel, fairy.worldRow + fairy.height)) {
            fairy.worldRow += fairy.rdel;
            if (vOff + SCREENHEIGHT < MAPHEIGHT && fairy.worldRow - vOff >= SCREENHEIGHT/2) {
                vOff++;

            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (fairy.worldCol > 0 && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol - fairy.cdel, fairy.worldRow) && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol - fairy.cdel, fairy.worldRow + fairy.height - fairy.rdel)) {
            fairy.worldCol -= fairy.cdel;
            if (hOff > 0 && fairy.worldCol - hOff <= SCREENWIDTH/2) {
                hOff--;

            }
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (fairy.worldCol + fairy.width < MAPWIDTH && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol + fairy.width, fairy.worldRow) && collisionCheck(collisionMap, MAPWIDTH, fairy.worldCol + fairy.width, fairy.worldRow + fairy.height - fairy.rdel)) {
            fairy.worldCol += fairy.cdel;

            if (hOff + SCREENWIDTH < MAPWIDTH && fairy.worldCol - hOff >= SCREENHEIGHT/2) {
                hOff++;

            }
        }
    }

    fairy.prevAniState = fairy.aniState;
    fairy.aniState = IDLE;

    if (fairy.aniCounter % 20 == 0) {
        fairy.curFrame = (fairy.curFrame + 1) % fairy.numFrames;
    }

    if (BUTTON_HELD(BUTTON_UP))
        fairy.aniState = BACK;
    if (BUTTON_HELD(BUTTON_DOWN))
        fairy.aniState = FRONT;
    if (BUTTON_HELD(BUTTON_LEFT))
        fairy.aniState = LEFT;
    if (BUTTON_HELD(BUTTON_RIGHT))
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
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 64 && fairy.worldCol > 23 && fairy.worldCol < 64 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 1) {
            wings.hide = 1;
        }
        
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 64 && fairy.worldCol > 111 && fairy.worldCol < 152 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 2) {
            wings.hide = 1;
        }

    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 64 && fairy.worldCol > 191 && fairy.worldCol < 232 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 3) {
            wings.hide = 1;
        }
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 144&& fairy.worldCol > 55 && fairy.worldCol < 96 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 4) {
            wings.hide = 1;
        }
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 144 && fairy.worldCol > 159 && fairy.worldCol < 200 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 5) {
            wings.hide = 1;
        }
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 232 && fairy.worldCol > 23 && fairy.worldCol < 64 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 6) {
            wings.hide = 1;
        }
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 232 && fairy.worldCol > 111 && fairy.worldCol < 152 && fairy.aniState == BACK && fairy.activated == 0) {
        playAnotherSong(3);
        if (house == 7) {
            wings.hide = 1;
        }
    } else if (BUTTON_PRESSED(BUTTON_A) && fairy.worldRow == 232 && fairy.worldCol > 191 && fairy.worldCol < 232 && fairy.aniState == BACK && fairy.activated == 0) {
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
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (fairy.worldRow - vOff)) | ATTR0_TALL;
        shadowOAM[0].attr1 = (COLMASK & (fairy.worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18 + fairy.aniState, fairy.curFrame * 2);
    }


}

void drawWingedFairy1() {
    if (fairy.activated == 1) {
        if (BUTTON_HELD(BUTTON_LEFT)) {
            shadowOAM[0].attr0 = ((fairy.worldRow - vOff) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[0].attr1 = ((fairy.worldCol - hOff) & COLMASK) | ATTR1_MEDIUM;
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22, fairy.curFrame * 4);

        } else {
            shadowOAM[0].attr0 = ((fairy.worldRow - vOff) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[0].attr1 = ((fairy.worldCol - hOff) & COLMASK) | ATTR1_MEDIUM;
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, fairy.curFrame * 4);

        }
    }
}

void drawWings1() {

    if (wings.hide == 0) {
        shadowOAM[1].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[1].attr0 = (ROWMASK & (wings.worldRow - vOff)) | ATTR0_WIDE;
        shadowOAM[1].attr1 = (COLMASK & (wings.worldCol - hOff)) | ATTR1_MEDIUM;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(15, 17);
    }


}

void drawPortal1() {
    if (fairy.activated == 1) {
        shadowOAM[2].attr0 = (ROWMASK & (portal.worldRow - vOff))  | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[2].attr1 = (COLMASK & (portal.worldCol - hOff)) | ATTR1_MEDIUM;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8,17);
    }
    if (portal.hide == 1) {
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }
}

void drawGame1() {
    drawFairy1();
    drawWingedFairy1();
    drawWings1();
    drawPortal1();
    DMANow(3, &shadowOAM, OAM, 512); 
}

// LEVEL TWO

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

    for (int i = 0; i < STARSCOUNT; i++) {
        stars[i].width = 16;
        stars[i].height = 16;
        stars[i].rdel = 0;
        stars[i].cdel = 1;
        stars[i].hide = 0;
        stars[i].worldRow = rand() % 100 + 10;
        

    }
    stars[0].worldCol = 200;
    stars[1].worldCol = 370;



    for (int i = 0; i < DRAGONSCOUNT; i++) {
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
    if (BUTTON_HELD(BUTTON_UP)) {
        if (fairy.worldRow > 0) {
            fairy.worldRow -= fairy.rdel; 
        }
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
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

    for (int i = 0; i < DRAGONSCOUNT; i++) {
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
                shadowOAM[STARSCOUNT+DRAGONSCOUNT+2].attr0 = (fire.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
                shadowOAM[STARSCOUNT+DRAGONSCOUNT+2].attr1 = ((fire.worldCol >> 3) & COLMASK) | ATTR1_MEDIUM;
                shadowOAM[STARSCOUNT+DRAGONSCOUNT+2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(11, 17);
                

            }
    

        }
        
        if (round < 3) {
            if (dragons[awake].chase == 0 && (fairy.worldCol > (dragons[DRAGONSCOUNT-1].worldCol + dragons[DRAGONSCOUNT-1].width + 90))) {
                round++;
                awake = rand() % 2 + 2;
                for (int i = 0; i < DRAGONSCOUNT; i++) {
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
                    
                for (int i = 0; i < STARSCOUNT; i++) {
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

 
       for (int i = 0; i < STARSCOUNT; i++) {
           if (collision(stars[i].worldCol, stars[i].worldRow, stars[i].width, stars[i].height, dragons[i].worldCol, dragons[i].worldRow, dragons[i].width, dragons[i].height)) {
               stars[i].worldRow = rand() % 100 + 10;
           }
 
       }
      
   }

            
} 


void updateStars2() {
    for (int i = 0; i < STARSCOUNT; i++) {
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

        if (BUTTON_PRESSED(BUTTON_A) && dragons[awake].chase != 1) {
            fairy.bubble = 1;
        }
        
    }


}

void updatePortal2() {
    if (round == 3 && dragons[awake].chase == 0 && (fairy.worldCol > (dragons[DRAGONSCOUNT-1].worldCol + dragons[DRAGONSCOUNT-1].width + 50))) {
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


    shadowOAM[0].attr0 = (fairy.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (fairy.worldCol & COLMASK) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, fairy.curFrame * 4);
    if ((fairy.bubble == 1) && (fairy.power > 0) && (dragons[awake].chase != 1)) {   
        timer++; 
        if (timer <= 240) {
            fairy.invisible = 1;
           
            REG_BLDCNT = 1 << 4 | BLD_STD | 1 << 10;
            REG_BLDALPHA = 1 << 3 | 1 << 11;
            shadowOAM[0].attr0 = (fairy.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
            shadowOAM[0].attr1 = (fairy.worldCol & COLMASK) | ATTR1_MEDIUM;
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(12, fairy.curFrame * 4);
            
        } else {
            fairy.invisible = 0;
            fairy.bubble = 0;
            fairy.power--;
            timer = 0;
            REG_BLDCNT = 0;
            REG_BLDALPHA = 0;
        }
           
    } 

}


    



void drawDragons2() {
    for (int i = 0; i < DRAGONSCOUNT; i++) {
        shadowOAM[i+1].attr0 = (dragons[i].worldRow & ROWMASK)  | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+1].attr1 = (dragons[i].worldCol & COLMASK) | ATTR1_LARGE;
        shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,9); 


        if (dragons[i].hide == 1) {
            shadowOAM[i+1].attr0 = ATTR0_HIDE;
        }

        if (i == awake) {
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0); 
        }

        if (dragons[i].chase == 1) {

            shadowOAM[i+1].attr0 = ATTR0_HIDE;

            if (dragons[i].aniCounter % 20 == 0) {
        
                if (dragons[i].curFrame < dragons[i].numFrames - 1) {
                    dragons[i].curFrame++;
                } else {
                    dragons[i].curFrame = 0;
                } 
            }
            dragons[i].aniCounter++;

            shadowOAM[i+1].attr0 = (fairy.worldRow & ROWMASK)  | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[i+1].attr1 = (fairy.worldCol - 120 & COLMASK) | ATTR1_LARGE;
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 18 + dragons[i].curFrame * 4); 

        }

        if (fire.hide == 1) {
            shadowOAM[STARSCOUNT+DRAGONSCOUNT+2].attr0 = ATTR0_HIDE;

        }
        
    }
   
}

void drawStars2() {
    for (int i = 0; i < STARSCOUNT; i++) {
        shadowOAM[i+DRAGONSCOUNT+1].attr0 = (stars[i].worldRow & ROWMASK)  | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+DRAGONSCOUNT+1].attr1 = (stars[i].worldCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[i+DRAGONSCOUNT+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16,0);

        

        if (stars[i].hide == 1) {
            shadowOAM[i+DRAGONSCOUNT+1].attr0 = ATTR0_HIDE;
        }

    }
}

void drawPortal2() {

    shadowOAM[STARSCOUNT+DRAGONSCOUNT+1].attr0 = (portal.worldRow & ROWMASK)  | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[STARSCOUNT+DRAGONSCOUNT+1].attr1 = (portal.worldCol & COLMASK) | ATTR1_MEDIUM;
    shadowOAM[STARSCOUNT+DRAGONSCOUNT+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8,17);
    

    if (portal.hide == 1) {
        shadowOAM[STARSCOUNT+DRAGONSCOUNT+1].attr0 = ATTR0_HIDE;
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
    DMANow(3, &shadowOAM, OAM, 512); 
}


