#TITLE=SSB-MarkDown
#INFO
Pascal cliptext file by Allen Varner.
#SORT=n

#T=Title
Title: 这里写你的文章标题
#T=Date
Date: 这里写文章的发表时间，默认为文本文件的最后修改时间
#T=Status
Status:post (draft的文章不会被别人看到, 默认为public)
#T=Tags
Tags: Tag1 Tag2
#T=居中
<center>居中渲染</center>
#T=^#一级标题
^# ^
#T=换行
<br>
#T=空格缩进
&nbsp;&nbsp;^
#T=加粗
** ^   **
#T=Repositories绝对路径链接
[链接名字](/绝对路径/文件名.md)
#T=外部链接URL
[超链接名](超链接地址 "超链接title")
#T=if
if (^!)
{
}
#T=img
![imgname](http://)
#T=link
[title](http://www.z01.com)
#T=x
*^!*
#T=```文本块```
```
^!
```
#T=line
------------
^!
#T=~删除
~~^!~~
#T=table
| ^! |   |
| ------------ | ------------ |
|   |   |
|   |   |
#T=!
<!--
^!
-->
#T=ul*
* ^!
+ 
- 
- 
#T=ul+
+ ^!
- 
- 
#T=ul-
- ^!
- 
- 
- 
- 
#T=ol
1. ^!
2.
3.
4.
5.
#T=`高亮`
`^!`
#