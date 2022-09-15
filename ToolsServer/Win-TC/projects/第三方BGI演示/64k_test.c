/* Svga64k.bgi �����ļ� */

#include "graphics.h"
#include "Svga64k.h"
#include "stdio.h"
#include "fcntl.h"
#include "malloc.h"
#include "io.h"

int huge Return_SVGA64K(void)
{
  return(0); /* ���ظ��ֱַ��ʵĶ�Ӧ��� 0��6 �궨��μ� Svga64k.h */
}

typedef struct    /*16Mrgb��������*/
{
  unsigned char b;
  unsigned char g;
  unsigned char r;
}
rgb16M;

void putpoint65536(int x, int y, rgb16M color)
{
  setrgbpalette(1026, color.r >> 3, color.g >> 2, color.b >> 3);
  putpixel(x, y, 0);
}

int main(void)
{
  int width, height, i = DETECT, j = 0, x0, y0, fp;
  char fix;
  rgb16M *buffer;
  installuserdriver("Svga64K", Return_SVGA64K); /*����svga64k����ִ�иú����԰�װBGI����*/
  initgraph(&i, &j, ""); /* ִ��TCĬ�ϵ�BGI��ʼ������ */

  if((fp = open("xy_tc.bmp", O_RDONLY | O_BINARY)) == -1)
  {
    puts("Can't find file ""xy_tc.bmp"".");
    return 1;
  }
  lseek(fp, 18, SEEK_SET);
  read(fp, &width, 4);
  read(fp, &height, 4);
  fix = width % 4;
  x0 = (320 - width) / 2;
  y0 = (200 - height) / 2;
  lseek(fp, 54, SEEK_SET);
  buffer = (rgb16M *)malloc(width*sizeof(rgb16M));

  for(j = height - 1; j >= 0; j--)
  {
    read(fp, buffer, width*sizeof(rgb16M));
    lseek(fp, fix, SEEK_CUR);
    for(i = 0; i < width; i++)
      putpoint65536(x0 + i, y0 + j, buffer[i]);
  }
  free(buffer);
  close(fp);
  getch();
  closegraph();
  return 0;
}
