#TITLE=Default-SSB
#INFO
Java cliptext file by Allen Varner.
#SORT=n
#T=---import----
#T=imawt
import java.awt.*;
#T=imswing
import javax.swing.*;
#T=imswingjo
import javax.swing.JOptionPane;


#T=-------
#T=publ
public 
#T=publc
public class



#T=---io----
#T=printl
System.out.println("Hello World!");

#T=string
String

#T=---------
#T=exit
System.exit(0);

#T=if
if (^!) {
    ^!
}
#T=elseif
else if (^!) {
    ^!
}
#T=else
else {
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

#T=-----------------
#T=equals
.equals(^!*)


#T=---------swing-------
#T=showmessge
JOptionPane.showMessageDialog(null,"Hello Everyone");
#T=showinput
^!**=JOptionPane.showInputDialog("Please type your name");
#T=JLabe
 JLabel ^!**=new JLabel("**");
#T=---------applet-------
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
#T=class
class ^! {
    ^!
}
#T=classe
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
#T=classm
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
#T=classaa
class ^! extends Applet implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
}
#T=classfa
class ^! extends Frame implements ActionListener {
    ^!
    public void actionPerformed(ActionEvent ae) {
        Object src = ae.getSource();
        ^!
    }
}
#T=classam
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
#T=classfm
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