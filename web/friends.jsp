
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>facebook</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		
		
		<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>
    	<script type="text/javascript" src="lib/jquery.custom.js"></script>

		<style>
		
		.btn {
  background: #07ed3d;
  background-image: -webkit-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -moz-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -ms-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -o-linear-gradient(top, #07ed3d, #ff0808);
  background-image: linear-gradient(to bottom, #07ed3d, #ff0808);
  -webkit-border-radius: 13;
  -moz-border-radius: 13;
  border-radius: 13px;
  text-shadow: 0px 0px 0px #121211;
  font-family: Arial;
  color: #080808;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #fcfcfc 4px;
  text-decoration: none;
}

.btn:hover {
  text-decoration: none;
}
		
		
		</style>
    </head>
    <body>
        <div id="wrap">
            <div id="logo">
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
              
            </div>

            <div id="content_top"></div>
            <div id="content">
                           <%@include  file="navigation_user.html" %>
                <div id="header">
                    
					
                </div>

                <div id="index_content">
               
			
   <table width="906"><tr><td width="397">
  
    
     
              <%
	String email=(String)session.getAttribute("b");
	
	%><div id="main">    
          
            <p><img src="user2.jsp" width="135" height="155"> </p>
            <!--<p><img src="images/defaultusr.png" width="135" height="155"></p>-->
            <p>&nbsp;</p>
 
            <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="friends.jsp">Friends</a>
            </div>
                
            <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="frd2.jsp">Friends Request</a>
            </div>
                
            <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="all_posts.jsp">Posts</a>
            </div>
                
            <div class="home_page_sub_menu">
                <form name="s" action="search2.jsp">
                    <table>
                        <tr>
                            <td>Search
                                <input style="display: block;padding-left: 5px;color: black;" type="text" name="v" size="14" placeholder="Search friends">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
              </td>
	 
	 <td width="497">
	 <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <p>&nbsp;</p>
          <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <table width="345" height="255">
              <tr><font color="#CC3399"><font size="3"><strong>Friends List</strong></font><b> 
                </b></font></tr>
				<br>
<%
String b=(String)session.getAttribute("b");

String q=null;

String a=(String)session.getAttribute("a");

String uid=(String)session.getAttribute("uid");

String s=null,s1=null;
String sendid=null,sendname=null;
try {

PreparedStatement stmt1 = con.prepareStatement("select recid,recid1,sendid,sendid1 from friends where (sendid='"+uid+"' or recid='"+uid+"') and status!='waiting' ");

ResultSet rs1= stmt1.executeQuery();

while(rs1.next()) {
 s=rs1.getString(1);
 s1=rs1.getString(2);
 sendid = rs1.getString(3);
 sendname=rs1.getString(4);




 if(rs1.getString(1).equals(uid)){
    s  = sendid;
    s1 = sendname;  
}
else{

}
%>

<tr>

<td><img src="friends1.jsp?uid=<%=s%>" height="125" width="125"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#666666" size="3"><b><%=s1%></b></font> <a href="friends2.jsp?<%=s%>"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFCC00">View 
                  Details</font> </b></a> </td>
              </tr>

<tr><td>
</td></tr>
<%
}
%>


<%
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</table>

	 
	 </td>
	 
	 
	 
	 
	 </tr></table>

                  <div style="clear: both"></div>
              </div>


                <div id="footer_box">
                    <div id="footer_box_top"></div>
                    <div id="footer_box_bg">
                    
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		
			
        <p><font size="+2" color="#FFCC00"><b>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;
		<marquee scrollamount="5" width="40">&lt;&lt;&lt;&lt;&lt;</marquee>
		Detecting Malicious Facebook Applications<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;&gt;&gt;</marquee>
			
</b></font> 
        </p>
        <div style="clear: both"></div>
                    </div>
                    <div id="footer_box_bot"></div>
                </div>
            </div>
            <div id="content_bot"></div>
        </div>
        <div id="footer">
                <div class="red_hr"></div>
                 </div>
    </body>
</html>
