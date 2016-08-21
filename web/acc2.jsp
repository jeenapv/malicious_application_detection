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
String a=(String)session.getAttribute("a");
String b=(String)session.getAttribute("b");
String id=request.getQueryString();
String iid=(String)session.getAttribute("iid");
String bb=null,c=null,d=null,e=null,f=null;;
try {



PreparedStatement stmt1 = con.prepareStatement("select id,name from login where email='"+b+"' AND log='"+a+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 bb=rs1.getString(1);
 session.setAttribute("uid",bb);
 //session.setAttribute("id",bb);
 //System.out.println("bb");
  c=rs1.getString(2);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}

try {



PreparedStatement stmt2 = con.prepareStatement("select id,name from login where id='"+id+"' AND log='"+a+"'");

ResultSet rs2 = stmt2.executeQuery();

while(rs2.next()) {
d=rs2.getString(1);
e=rs2.getString(2);
}
session.setAttribute("name",e);
}
catch(Exception e2)
{
out.println(e2.getMessage());

}

//out.print(a);
//out.print(b);


//out.print(c);
//out.print(id);
String g="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		

String s="facebook";
	
	try
	{
		
		
		ps = con.prepareStatement("insert into friends(sendid,sendid1,recid,recid1,status,log)values(?,?,?,?,'"+g+"','"+a+"')");
		ps.setString(1,bb);
		
ps.setString(2,c);
ps.setString(3,d);
ps.setString(4,e);
//ps.seStrong(5,f);


ps.executeUpdate();

response.sendRedirect("uupdate.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
