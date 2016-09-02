<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String uid=(String)session.getAttribute("uid");

String pid=request.getQueryString();


String h="Accept";
PreparedStatement ps4 = null;

ResultSet rs4 = null;
try
{
    
ps4 = con.prepareStatement("update friends set status='"+h+"' where sendid='"+pid+"'AND recid='"+uid+"' ");
	
ps4.executeUpdate();

response.sendRedirect("update2.jsp?success");
}
catch(Exception e4)
{
out.println(e4.getMessage());
}

%>