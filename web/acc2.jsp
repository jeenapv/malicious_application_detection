<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
String uid=(String)session.getAttribute("uid");
String name=(String)session.getAttribute("name");
String to_id=request.getQueryString();
String iid=(String)session.getAttribute("iid");
String bb=null,c=null,d=null,e=null,f=null;;
String to_name = null;
try {



PreparedStatement stmt1 = con.prepareStatement("select id,name from login where id='"+to_id+"' ");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 to_name=rs1.getString(2);
 
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}

String g="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		

String s="facebook";
	
	try
	{
		
		
		ps = con.prepareStatement("insert into friends(sendid,sendid1,recid,recid1,status,log)values(?,?,?,?,'"+g+"','Facebook')");
		ps.setString(1,uid);
		
ps.setString(2,name);
ps.setString(3,to_id);
ps.setString(4,to_name);
//ps.seStrong(5,f);


ps.executeUpdate();
response.sendRedirect("fb_page.jsp");

//response.sendRedirect("uupdate.jsp");
}
catch(Exception e1)
{
    %><h2>Already Sent Friend Request</h2><%

}
%>
</body>
</html>
