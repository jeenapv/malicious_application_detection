<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");

//PreparedStatement stmt1 = con1.prepareStatement("select id,name from login ");

/*ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 bb=rs1.getString(1);
 system.Out.Print(bb);
}*/

%>