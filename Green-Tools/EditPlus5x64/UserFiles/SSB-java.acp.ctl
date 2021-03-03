#TITLE=SSB-Java
#INFO
Java 2006.06 V1.0
EditPlus  auto completion file.
Author: Sun shu bin 
TEL:86-(0)13840939258
MAIL:DLSHUBIN@163.COM
HOMEPAGE:www.learnstorm.com

#SORT=n

#T=---import----
---import----
#T=impawt
import java.awt.*;
#T=impswing
import javax.swing.*;
#T=impswingjo
import javax.swing.JOptionPane;

#T=-------
-------
#T=private
private
#T=protected
protected
#T=default
default
#T=public 
public 
#T=final
final
#T=publicclass
public class

#T=static
static
#T=void
void
#T=abstract
abstract
#T=----
----
#T=int
int
#T=string
String

#T=---io----
---io----
#T=println
System.out.println("Hello World!");

#T=---Error----
---Error----
#T=trycatch
try{
......
 }catch( ExceptionName1 e ){
 ......
 }catch( ExceptionName2 e ){
 ......
 }
 ......
 }finally{
 ......
}
#T=throw
throw
#T=---------
---------
#T=exit
System.exit(0);

#T=if
if (^!) {
    ^!
}
else {
    ^!
}
#T=else
else {
    ^!
}
#T=elseif
else if (^!) {
    ^!
}
#T=while
while (^!) {
    ^!
}
#T=whilech
while ((ch = in.read()) != -1) {
    ^!
}
#T=whileline
while ((line = in.readLine()) != null) {
    ^!
}
#T=for
for (^!; ^!; ^!) {
    ^!
}
#T=fori
for (int i = 0; i < n; i++) {
    ^!
}
#T=forj
for (int j = 0; j < n; j++) {
    ^!
}
#T=fork
for (int k = 0; k < n; k++) {
    ^!
}
#T=forim
for (int i = 0; i < m; i++) {
    ^!
}
#T=forjm
for (int j = 0; j < m; j++) {
    ^!
}
#T=forkm
for (int k = 0; k < m; k++) {
    ^!
}
#T=switch
switch (^!) {
    case ^!:
        ^!
        break;
    default:
        ^!
        break;
}
#T=do
do {
    ^!
}while (^!);

#T=--java.lang.Object--
-----------------
#T=equals
.equals(^!*)


#T=getClass
getClass()
#T=toString
toString()
#T=finalize
finalize()
#T=notify
notify()
#T=notifyAll
notifyAll()
#T=wait
wait()
#T=****SWING*****

#T=JFrame
JFrame
#T=JApplet
JApplet
#T=JDialog
JDialog
#T=JWindow
JWindow
#T=******AWT******
---------AWT-------
#T=Frame
Frame
#T=Panel
Panel
#T=setSize
.setSize(200,200); 
#T=setBackground
.setBackground(Color.red);
#T=setVisible
.setVisible(true);
#T=add
.add(^!);
#T=pack
.pack();
#T=FlowLayout(); 
FlowLayout(); 
#T=FlowLayout(FlowLayout.LEFT);
FlowLayout(FlowLayout.LEFT);
#T=FlowLayout(FlowLayout.RIGHT,20,40);
FlowLayout(FlowLayout.RIGHT,20,40);
#T=setLayout(new BorderLayout())
.setLayout(new BorderLayout());
#T=setLayout(new GridLayout(3,2))
.setLayout(new GridLayout(3,2)); 
#T=showmessge
JOptionPane.showMessageDialog(null,"Hello Everyone");
#T=showinput
^!**=JOptionPane.showInputDialog("Please type your name");
#T=addActionListener
.addActionListener(new ButtonHandler());
#T=Button
Button
#T=JLabe
 JLabel ^!**=new JLabel("**");
#T=---------applet-------
---------applet-------
#T=applet
<APPLET CODE=".class" WIDTH="640" HEIGHT="480">
</APPLET>
#T=appinit
public void init()
{
     Container c=getContentPane();
	c.add(greeting);
}

#T=---------class-------
---------class-------
#T=class
class ^! {
    ^!
}
#T=classextends
class ^! extends ^! {
    ^!
}
#T=classi
class ^! implements ^! {
    ^!
}
#T=classei
class ^! extends ^!
         implements ^! {
    ^!
}
#T=classmain
class ^! {
    public static void main(String[] args) {
        System.out.println(^!);
    }
}
#T=classApplet
class ^! extends Applet {
    ^!
    public void paint(Graphics g) {
        ^!
    }
}
#T=classf
class ^! extends Frame {
    ^!
    public void paint(Graphics g) {
        ^!
    }
}
#T=classextends Applet implements ActionListener
class ^! extends Applet implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
}
#T=classextends Frame implements ActionListener
class ^! extends Frame implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
}
#T=classextends Applet
class ^! extends Applet {
    ^!
    public static void main(String[] args) {
        Frame f = new Frame("Test Applet");
        Applet applet = new Applet();
        f.add(applet);
        f.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }
        });
        f.setSize(400, 400);
        f.setVisible(true);
    }
}
#T=classMyFrame extends Frame
class ^!MyFrame extends Frame {
    ^!
    public static void main(String[] args) {
        ^!MyFrame app = new ^!NyFrame("My Frame");
        app.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }
        });
        app.setSize(500, 500);
        app.setVisible(true);
    }
}
#T=classaam
class ^! extends Applet implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
    ^!
    public static void main(String[] args) {
        Frame f = new Frame("Test Applet");
        Applet applet = new Applet();
        f.add(applet);
        f.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }
        });
        f.setSize(400, 400);
        f.setVisible(true);
    }
}
#T=classfam
class ^!MyFrame extends Frame implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
    ^!
    public static void main(String[] args) {
        ^!MyFrame app = new ^!NyFrame("My Frame");
        app.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }
        });
        app.setSize(500, 500);
        app.setVisible(true);
    }
}
#T=-----interface-----
-----interface-----
#T=interface
interface ^! {
    ^!
}
#T=interfacee
interface ^! extends ^! {
    ^!
}
#T=try
try {
    ^!
}
catch (Exeption ex) {
    ex.printStackTrace();
}
finally {
    ^!
}
#