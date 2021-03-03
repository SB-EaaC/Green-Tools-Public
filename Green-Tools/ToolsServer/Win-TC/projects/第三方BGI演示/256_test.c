/* Svga64k.bgi 测试文件 */

#include "graphics.h"
#include "Svga256.h"
#include "stdio.h"
#include "fcntl.h"
#include "malloc.h"
#include "io.h"

int huge Return_SVGA256(void)
{
  return(SVGA320x200x256); /* 返回各种分辨率的对应编号 0～6 宏定义参见 Svga256.h */
}

int main(void)
{
  int width, height, i=DETECT, j=0, x0, y0, fp;
  unsigned char fix, *buffer, pix24b[4];
  DacPalette256 dac256;
  installuserdriver("Svga256", Return_SVGA256); /* 对于svga256必需执行该函数以安装BGI驱动 */
  initgraph(&i, &j, ""); /* 执行TC默认的BGI初始化函数 */

  if((fp = open("xy_256.bmp", O_RDONLY | O_BINARY)) == -1)
  {
    puts("Can't find file ""xy_256.bmp"".");
    return 1;
  }
  lseek(fp, 18, SEEK_SET);
  read(fp, &width, 4);
  read(fp, &height, 4);
  fix = (width % 4) ? (4 - width % 4) : 0;
  x0 = (320 - width) / 2;
  y0 = (200 - height) / 2;
  lseek(fp, 54, SEEK_SET);
  for(i = 0; i < 256; i++) /* 按照该图片的DAC色表设置色彩寄存器 */
  {
    read(fp, pix24b, 4); /* 读取DAC分量信息 */
    /* 设置调色板 */
    dac256[i][0] = pix24b[2] >> 2;
    dac256[i][1] = pix24b[1] >> 2;
    dac256[i][2] = pix24b[0] >> 2;
  }
  setvgapalette256(&dac256); /* 应用调色板, 定义参见 Svga256.h */
  buffer = (unsigned char *)malloc(width);
  for(j = height - 1; j >= 0; j--)
  {
    read(fp, buffer, width);
    lseek(fp, fix, SEEK_CUR);
    for(i = 0; i < width; i++)
      putpixel(x0+i, y0+j, buffer[i]);
  }
  free(buffer);
  close(fp);
  getch();
  closegraph();
  return 0;
}

