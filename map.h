
//{{BLOCK(map)

//======================================================================
//
//	map, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ bitmap not compressed
//	Total size: 512 + 65536 = 66048
//
//	Time-stamp: 2022-12-07, 23:16:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP_H
#define GRIT_MAP_H

#define mapBitmapLen 65536
extern const unsigned short mapBitmap[32768];

#define mapPalLen 512
extern const unsigned short mapPal[256];

#endif // GRIT_MAP_H

//}}BLOCK(map)
