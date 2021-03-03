/*************** 中文DOS环境运行示例 ***************/

/* 生成EXE程序后，使用Win-TC工具集的“中文DOS环境运行”工具运行 */

#include "stdio.h"

int main(void)
{
  char s[256];
  puts("中文输入演示，输入一行字符再回车，程序将重复你的输入");
  puts("在输入时，你可以尝试使用CCDOS自带的中文输入法输入中文");
  puts("Alt+F2或Alt+F3切换到中文输入，Alt+F10切换到英文输入");
  puts("现在开始进行测试：");
  gets(s);
  puts(s);
  return 0;
}
