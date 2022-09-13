#TITLE=SSB-JSP
#INFO
JSP 1.2 
#SORT=n

#T=HTML Comment
<!-- ^! -->
#T=<%-- comment --%>
<%-- ^! --%>
#T=<%! Declaration %>
<%! ^! %>
#T=<%= Expression %>
<%= ^! %>
#T=<% scriptlet %>
<%
    ^!
%>


#T=-----<%@-----
-----<%@-----
#T=package
package ^!;

#T=contypecn
contentType="text/html; charset=ISO-8859-1"
#T=languagejava
 language="java"
#T=importutil
import="java.util.*"


#T=<%@pagecierr
<%@ page contentType="text/html; charset=ISO-8859-1"
         import="java.util.*"
         errorPage="^!" %>
#T=<%@pagel
<%@ page language="java" import="^!" %>


#T=<%@ include %>
<%@ include file="^!" %>
#T=<%@ page%>
<%@ page
[ language="java"]
[ extends="package.class"]
[ import= "{ package.class | package.* }, ..." ]
[ session="true|false" ]
[ buffer="none|8kb|sizekb" ]
[ autoFlush="true|false" ]
[ isThreadSafe="true|false" ]
[ info="text"]
[ errorPage="relativeURL"]
[ contentType="mimeType [ ;charset=characterSet ]" |
"text/html ; charset=ISO-8859-1" ]
[ isErrorPage="true|false"] %>

#T=<%@ page sql %>
<%@ page contentType="text/html; charset=euc-kr"
         import="java.util.*,java.sql.*"
         errorPage="^!" %>
#T=<%@ taglib %>
<%@ taglib uri="^!" prefix="" %>

#T=<%@ include %>
<%@ include file="^!" %>

#T=<%@ taglib %>
<%@ taglib uri="^!" prefix="" %>
#T=<%@ include %>
<%@ include file="^!" %>

#T=<%@ taglib %>
<%@ taglib uri="^!" prefix="" %>



#T=----------
----------
#T=publ
public
#T=publ
private
#T=publc
public class {


}



#T= ---session-----
 ---session-----
#T=sess
session
#T=sessnew
session.isNew();
#T=sessgettime
session.getCreationTime()

#T= -------Bean-----------
 -------Bean-----------
#T=<jsp:fallback/>
<jsp:fallback>^!</jsp:fallback>
#T=<jsp:forward />
<jsp:forward page="^!" />
#T=<jsp:setProperty/>
<jsp:setProperty name="^!" property="*"  />
#T=<jsp:getProperty />
<jsp:getProperty name="^!" property="" />
#T=<jsp:include />
<jsp:include page="^!" />
#T=<jsp:include flush/>
<jsp:include page="^!" flush=true />
#T=<jsp:include>
<jsp:include page="^!" flush="true"></jsp:include>
#T=<jsp:param />
<jsp:param name="^!" value="" />
#T=<jsp:params >
<jsp:params>
  <jsp:param name="^!" value=""/>
</jsp:params>

#T=<jsp:plugin>
<jsp:plugin type="^!" code="" codebase="">
</jsp:plugin>

#T=<jsp:useBean />
<jsp:useBean id="^!" class="" scope="session" />
#T=<jsp:forward />
<jsp:forward page="^!" />
#T=<jsp:forward>
<jsp:forward page"^!"></jsp:forward>





#T=<jsp:useBean>
<jsp:useBean id="^!" scope="" class="">



#T= 
 
#T=------ Attributes ------
------ Attributes ------
#T= 
 
#T=align
align="^!"
#T=archive
archive="^!"
#T=attribute
attribute="^!"
#T=autoflush
autoflush="^!"
#T=beanName
beanName="^!"
#T=buffer
buffer="^!kb"
#T=charSet
charSet="^!"
#T=class
class="^!"
#T=code
code="^!"
#T=codebase
codebase="^!"
#T=contentType
contentType="^!"<A HREF=""></A>
#T=errorPage
errorPage="^!"
#T=extends
extends="^!"
#T=file
file="^!"
#T=flush
flush="^!"
#T=height
height="^!"
#T=hspace
hspace="^!"
#T=id
id="^!"
#T=iepluginurl
iepluginurl="^!"
#T=import
import="^!"
#T=info
info="^!"
#T=isErrorPage
isErrorPage="^!"
#T=isthread
isThreadSafe="true/false^!"
#T=jreversion
jreversion="^!"
#T=language
language="^!"
#T=name
name="^!"
#T=nspluginurl
nspluginurl="^!"
#T=page
page="^!"
#T=pageEncoding
pageEncoding="^!"
#T=prefix
prefix="^!"
#T=property
property="^!"
#T=session
session="^!"
#T=scope
scope="^!"
#T=type
type="^!"
#T=uri
uri="^!"
#T=value
value="^!"
#T=vspace
vspace="^!"
#T=width
width="^!"


#T= 
 
#T= align
align="^!"
#T= archive
archive="^!"
#T= charset
charset="^!"
#T= class
class="^!"
#T= code
code="^!"
#T= codeBase
codeBase="^!"
#T= contentType
contentType="^!"
#T= errorPage
errorPage="^!"
#T= extends
extends="^!"
#T= file
file="^!"
#T= flush
flush="^!"
#T= jreversion
jreversion="^!"
#T= height
height="^!"
#T= hspace
hspace="^!"
#T= id
id="^!"
#T= iepluginurl
iepluginurl="^!"
#T= implements
implements="^!"
#T= import
import="^!"
#T= info
info="^!"
#T= isErrorPage
isErrorPage="^!"
#T= nspluginurl
nspluginurl="^!"
#T= param
param="^!"
#T= prefix
prefix="^!"
#T= property
property="^!"
#T= scope
scope="^!"
#T= session
session="^!"
#T= type
type="^!"
#T= uri
uri="^!"
#T= value
value="^!"
#T= vspace
vspace="^!"
#T= width
width="^!"


#T= 
 
#T=------ Implicit Objects ------
------ Implicit Objects ------
#T= 
 
#T=application
application^!
#T=config
config^!
#T=exception
exception^!
#T=out
out^!
#T=out.c
out.clear();
#T=page
page^!
#T=pageContext
pageContext^!
#T=request
request^!
#T=response
response^!
#T=session
session^!

#T=<tagPrefix:name>
<tagPrefix:name attribute="^!"></tagPrefix:name>

#T= 
 
#T= 
 
#T=IMPLICIT OBJECTS
 
#T= 
 
#T= request
request
#T= response
response
#T= pageContext
pageContext
#T= session
session
#T= application
application
#T= out
out
#T= config
config
#T= page
page
#T= exception
exception


#T= 
 
#T= 
 
#T=<Interfaces>
<Interfaces>
#T=Servlet
Servlet
#T=ServletConfig
ServletConfig
#T=ServletContext
ServletContext
#T=ServletRequest
ServletRequest
#T=ServletResponse
ServletResponse
#T=SingleThreadModel
SingleThreadModel
#T= 
 
#T=HttpServletRequest
HttpServletRequest
#T=HttpServletResponse
HttpServletResponse
#T=HttpSession
HttpSession
#T=HttpSessionBindingListener
HttpSessionBindingListener
#T=HttpSessionContext
HttpSessionContext
#T= 
 
#T=HttpJspPage
HttpJspPage
#T=JspPage
JspPage
#T=BodyTag
BodyTag
#T=Tag
Tag
#T= 
 
#T=<Classes>
<Classes>
#T=GenericServlet
GenericServlet
#T=ServletInputStream
ServletInputStream
#T=ServletOutputStream
ServletOutputStream
#T= 
 
#T=Cookie
Cookie
#T=HttpServlet
HttpServlet
#T=HttpSessionBindingEvent
HttpSessionBindingEvent
#T=HttpUtils
HttpUtils
#T= 
 
#T=JspEngineInfo
JspEngineInfo
#T=JspFactory
JspFactory
#T=JspWriter
JspWriter
#T=PageContext
PageContext
#T=BodyContent
BodyContent
#T=BodyTagSupport
BodyTagSupport
#T=TagAttributeInfo
TagAttributeInfo
#T=TagData
TagData
#T=TagExtraInfo
TagExtraInfo
#T=TagInfo
TagInfo
#T=TagLibraryInfo
TagLibraryInfo
#T=TagSupport
TagSupport
#T=VariableInfo
VariableInfo
#T= 
 
#T=<Exceptions>
<Exceptions>
#T=ServletException
ServletException
#T=UnavailableException
UnavailableException
#T= 
 
#T=JspError
JspError
#T=JspException
JspException
#T=string
String

#T=---------HTML 4.0---------
---------HTML 4.0---------
#T=!--
<!-- ^! -->
#T=!DOCTYPE
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
#T=A
<A HREF="">^!</A>
#T=ABBR
<ABBR>^!</ABBR>
#T=ACRONYM
<ACRONYM>^!</ACRONYM>
#T=ADDRESS
<ADDRESS>^!</ADDRESS>
#T=APPLET
<APPLET CODE="^!" WIDTH="" HEIGHT="">
</APPLET>
#T=AREA
<AREA SHAPE="^!" HREF="" COORDS="" ALT="">
#T=B
<B>^!</B>
#T=BASE
<BASE HREF="^!">
#T=BASEFONT
<BASEFONT SIZE="^!">
#T=BDO
<BDO DIR="">^!</BDO>
#T=BIG
<BIG>^!</BIG>
#T=BLOCKQUOTE
<BLOCKQUOTE>^!</BLOCKQUOTE>
#T=BODY
<BODY>
^!
</BODY>
#T=BR
<BR>
#T=BUTTON
<BUTTON>^!</BUTTON>
#T=CAPTION
<CAPTION>^!</CAPTION>
#T=CENTER
<CENTER>^!</CENTER>
#T=CITE
<CITE>^!</CITE>
#T=CODE
<CODE>^!</CODE>
#T=COL
<COL>
#T=COLGROUP
<COLGROUP>^!</COLGROUP>
#T=DD
<DD>
#T=DEL
<DEL>^!</DEL>
#T=DFN
<DFN>^!</DFN>
#T=DIR
<DIR>^!</DIR>
#T=DIV
<DIV ALIGN="">^!</DIV>
#T=DL
<DL>
	<DT>^!
	<DD>
</DL>
#T=DT
<DT>
#T=EM
<EM>^!</EM>
#T=FIELDSET
<FIELDSET>
	<LEGEND>^!</LEGEND>
</FIELDSET>
#T=FONT
<FONT SIZE="">^!</FONT>
#T=FORM
<FORM METHOD=POST ACTION="">
^!
</FORM>
#T=FRAME
<FRAME SRC="^!" NAME="">
#T=FRAMESET
<FRAMESET ROWS="^!," COLS=",">
	<FRAME SRC="" NAME="">
	<FRAME SRC="" NAME="">
</FRAMESET>
#T=H1
<H1>^!</H1>
#T=H2
<H2>^!</H2>
#T=H3
<H3>^!</H3>
#T=H4
<H4>^!</H4>
#T=H5
<H5>^!</H5>
#T=H6
<H6>^!</H6>
#T=HEAD
<HEAD>
^!
</HEAD>
#T=HR
<HR>
#T=HTML
<HTML>
^!
</HTML>
#T=I
<I>^!</I>
#T=IFRAME
<IFRAME NAME="" SRC="" WIDTH="" HEIGHT="">^!</IFRAME>
#T=IMG
<IMG SRC="" WIDTH="" HEIGHT="" BORDER="0" ALT="^!">
#T=INPUT
<INPUT TYPE="^!" NAME="">
#T=INS
<INS>^!</INS>
#T=ISINDEX
<ISINDEX>
#T=KBD
<KBD>^!</KBD>
#T=LABEL
<LABEL>^!</LABEL>
#T=LEGEND
<LEGEND>^!</LEGEND>
#T=LI
<LI>
#T=LINK
<LINK REL="^!" HREF="" TYPE="">
#T=MAP
<MAP NAME="^!">
</MAP>
#T=MENU
<MENU>^!</MENU>
#T=META
<META NAME="^!" CONTENT="">
#T=NOFRAMES
<NOFRAMES>
^!
</NOFRAMES>
#T=NOSCRIPT
<NOSCRIPT>
^!
</NOSCRIPT>
#T=OBJECT
<OBJECT ID="" WIDTH="" HEIGHT="" CLASSID="">
^!
</OBJECT>
#T=OL
<OL>
	<LI>^!
	<LI>
</OL>
#T=OPTGROUP
<OPTGROUP LABEL="">
^!
</OPTGROUP>
#T=OPTION
<OPTION>^!</OPTION>
#T=P
<P>
#T=PARAM
<PARAM NAME="^!" VALUE="">
#T=PRE
<PRE>^!</PRE>
#T=Q
<Q>^!</Q>
#T=S
<S>^!</S>
#T=SAMP
<SAMP>^!</SAMP>
#T=SCRIPT
<SCRIPT LANGUAGE="JavaScript">
<!--
^!
//-->
</SCRIPT>
#T=SELECT
<SELECT NAME="">^!</SELECT>
#T=SMALL
<SMALL>^!</SMALL>
#T=SPAN
<SPAN CLASS="">^!</SPAN>
#T=STRIKE
<STRIKE>^!</STRIKE>
#T=STRONG
<STRONG>^!</STRONG>
#T=STYLE
<STYLE TYPE="text/css" TITLE="">
^!
</STYLE>
#T=SUB
<SUB>^!</SUB>
#T=SUP
<SUP>^!</SUP>
#T=TABLE
<TABLE>
<TR>
	<TD>^!
	<TD>
</TABLE>
#T=TBODY
<TBODY>^!</TBODY>
#T=TD
<TD>
#T=TEXTAREA
<TEXTAREA NAME="" ROWS="" COLS="">^!</TEXTAREA>
#T=TFOOT
<TFOOT>^!</TFOOT>
#T=TH
<TH>
#T=THEAD
<THEAD>^!</THEAD>
#T=TITLE
<TITLE>^!</TITLE>
#T=TR
<TR>
#T=TT
<TT>^!</TT>
#T=U
<U>^!</U>
#T=UL
<UL>
	<LI>^!
	<LI>
</UL>
#T=VAR
<VAR>^!</VAR>

#