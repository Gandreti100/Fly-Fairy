
//{{BLOCK(village)

//======================================================================
//
//	village, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 206 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6592 + 2048 = 9152
//
//	Time-stamp: 2022-12-08, 01:19:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_VILLAGE_H
#define GRIT_VILLAGE_H

#define villageTilesLen 6592
extern const unsigned short villageTiles[3296];

#define villageMapLen 2048
extern const unsigned short villageMap[1024];

#define villagePalLen 512
extern const unsigned short villagePal[256];

#endif // GRIT_VILLAGE_H

//}}BLOCK(village)
