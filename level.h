
//{{BLOCK(level)

//======================================================================
//
//	level, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 4 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 128 + 2048 = 2688
//
//	Time-stamp: 2022-12-09, 10:59:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL_H
#define GRIT_LEVEL_H

#define levelTilesLen 128
extern const unsigned short levelTiles[64];

#define levelMapLen 2048
extern const unsigned short levelMap[1024];

#define levelPalLen 512
extern const unsigned short levelPal[256];

#endif // GRIT_LEVEL_H

//}}BLOCK(level)
