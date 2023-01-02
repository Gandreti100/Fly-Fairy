//Prototypes
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

//Constants
#define DRAGONSCOUNT 4
#define STARSCOUNT 2
#define MAPHEIGHT 256
#define MAPWIDTH 256

//Variables
extern int timer;
extern ANISPRITE fairy;
extern ANISPRITE dragons[4];
extern ANISPRITE stars[2];
extern ANISPRITE fire;
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];