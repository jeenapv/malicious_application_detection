
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>

<%
String a=(String)session.getAttribute("a");
String msg=(String)session.getAttribute("msg");
String b=(String)session.getAttribute("remail");
String b1=null,c=null;
try {


PreparedStatement stmt1 = con.prepareStatement("select id,name from login where log='"+a+"' AND email='"+b+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 b1=rs1.getString(1);
c=rs1.getString(2);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}


PreparedStatement ps = null;

	ResultSet rs = null;
		
//String s="facebook";

	
	try
	{
		
		

		ps = con.prepareStatement("insert into message(id1,name,msg,log) values(?,?,?,'"+a+"')");
		ps.setString(1,b1);
ps.setString(2,c);

ps.setString(3,msg);
ps.executeUpdate();

response.sendRedirect("fb_page.jsp?sucess");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>