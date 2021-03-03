#TITLE=SSB-JScript
#INFO
EditPlus JScript auto completion file.
Author: Sun shubin 
Contact: www.learnstorm.com
#SORT=n
#T=if
if (^!)
{
}
#T=else
else
{
	^!
}
#T=elseif
else if (^!)
{
}

#T=switch
switch (^!)
{
case :

}
#T=case
case ^!:
#T=catch
catch (^!)
{
}
#T=default
default:^!
#T=while
while (^!)
{
}
#T=with
with (^!)
{
}
#T=do
do
{
} while (^!);


#T=eval
eval (^!)
#T=finally
finally
{
	^!
}
#T=for
for (var i=0; i<^!; i++)
{
}
#T=forin
for (var i in ^!)
{
}
#T=break
break;
#T=br
break;
#T=cont
continue;
#T=function
function ^! ()
{
}
#T=func
function ^! ()
{
}
#T=return
return ^!;
#T=ret
return ^!;
#T=try
try
{
	^!
}
catch ()
{
}
#T=typeof
typeof (^!)
#T=---Convenient Expressions--
#T=and
&& ^!
#T=or
|| ^!
#T=efalse
= false;
#T=enull
= null;
#T=eqfalse
= false;
#T=eqnull
= null;
#T=eqtrue
= true;
#T=etrue
= true;
#T=ge
>= 
#T=gt
> 
#T=is
== ^!
#T=isfalse
== false
#T=isnull
== null
#T=iss
== "^!"
#T=istrue
== true
#T=le
<= 
#T=lt
< 
#T=ne
!= ^!
#T=nefalse
!= false
#T=nenull
!= null
#T=nes
!= "^!"
#T=netrue
!= true
#T=nofalse
!= false
#T=nonull
!= null
#T=notrue
!= true
#T=----Typed Notation------
#T=tarray
/*Array*/ 
#T=varray
var /*Array */ ^! = new Array ();
#T=tbool
/*bool*/ 
#T=bool
var /*bool*/ 
#T=tchar
/*char*/ 
#T=char
var /*char*/ 
#T=tconst
/*const*/ 
#T=const
var /*const*/ 
#T=tdate
/*Date*/ 
#T=vdate
var /*Date*/ 
#T=tdic
/*Dictionary*/ 
#T=vdic
var /*Dictionary*/ ^! = new Dictionary ();
#T=tfloat
/*float*/ 
#T=float
var /*float*/ 
#T=tint
/*int*/ 
#T=int
var /*int*/ 
#T=tobject
/*object*/ 
#T=vobject
var /*object*/ ^! = new Object ();
#T=tregexp
/*RegExp*/ 
#T=vregexp
var /*RegExp*/ ^! = new RegExp ();
#T=tstring
/*string*/ 
#T=string
var /*string*/ ^!
#T=tvoid
/*void*/ 
#T=tclass
/* class */ 
#T=class
function /* class */ ^! {
}
#T=public
/*public*/ 
#T=pub
/*public*/ 
#T=private
/*private*/ 
#T=pri
/*private*/ 
#T=/*
/*^!*/ 
#