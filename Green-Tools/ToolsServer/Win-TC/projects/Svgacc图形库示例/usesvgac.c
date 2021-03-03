/*************** svgacc.lib SVGAÍ¼ÐÎÀ©Õ¹¿âÊ¾Àý ***************/

#include <stdlib.h>
#include <conio.h>
#include "svgacc.h"

void main(void)
{
 int vmode, colr, y, i, index;
 PaletteData orgpal, newpal;

 vmode = videomodeget();

 if ( !whichvga() )
  exit(1);
 if ( whichmem() < 512)
  exit(1);
 res640();
 palget(orgpal,0,255);
 for (index=0;index<256;index++) {
  newpal[index].r = index / 4;
  newpal[index].g = index / 4;
  newpal[index].b = index / 4;
 }
 colr = 0;
 for (y=0;y<480;y++) {
 drwline(1,colr++,0,y,639,y);
 if (colr>255)
 colr = 0;
 }
 palchgauto(orgpal,newpal,0,255,2);
 palchgauto(newpal,orgpal,0,255,2);
 getch();
 videomodeset(vmode);
 exit(0);
}
