#TITLE=SSB-VBScript
#INFO
VBScript 2006.06 V1.0
EditPlus  auto completion file.
Author: Sun shubin 
TEL:86-(0)13840939258
MAIL:DLSHUBIN@163.COM
HOMEPAGE: www.learningPub.net
#SORT=n

#T=-------
-------
#T=Option Explicit
Option Explicit
#T=private
private
#T=public 
public 
#T=Friend
Friend

#T=static
static

#T=void
void
#T=abstract
abstract
#T=----
----
#T=Const
Const
#T=int
int
#T=string
String

#T=---io----
---io----
#T=println
System.out.println("Hello World!");



#T=---------
---------
#T=Set
Set myCell = Worksheets("Sheet1").Range("A1")

#T=if
If ^! Then

Else

End If

#T=elseif 
elseif ^!   Then

#T=Select
Select Case ^!
Case 
Case 
Case Else
End Select

#T=Case 
Case ^!

#T=With
With Worksheets("Sheet1").Range("A1:C10")
    .Value = 30
    .Font.Bold = True
    .Interior.Color = RGB(255, 255, 0)
End With







#T=For
For ^! = 1 To   Step  

Exit For
Next  
#T=ForEach
For Each I In TestArray
    TestArray(I) = I
Next I





#T=DoWhile
Do While ^! = 1


Loop

#T=DoUntil
Do Until ^! = 1

Loop


#T=LoopWhile
Do 


Loop While ^! = 1

#T=LoopUntil
Do 

Loop Until ^! = 1

#T=Exit Do
Exit Do





#T=---------
---------
#T=Sub
Sub SelectiveExecution()




End Sub

#T=Function
Function Factorial (ByVal MyVar As Integer)  as   
    MyVar = MyVar - 1
    If MyVar = 0 Then 
        Factorial = 1
        Exit Function
    End If
    Factorial = Factorial(MyVar) * (MyVar + 1)
End Function

#T=ByVal
ByVal
#T=---Workbooks---
---------
#T=Close
Workbooks(1).Close

#T=MsgBox
MsgBox
MsgBox Title:="Answer Box", Prompt:="Your answer is correct!"


#T=Workbooks
Workbooks("Book1").

#T=Worksheets
Worksheets("Sheet1").

#T=Range
Range("A1:C10")


#T=Cells(1, 1)
Cells(1, 1)

#T=.Value
.Value
#T=.Formula
.Formula
#T=.Interior.Color 
.Interior.Color = RGB(255, 255, 0)
#T=.Font.Bold 
.Font.Bold = True
#T=.Font.Name
.Font.Name = "Arial"
#T=.Font.Size = 8
.Font.Size = 8








