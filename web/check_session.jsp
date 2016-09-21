<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%
String uid = (String)session.getAttribute("uid");
if(!uid.equals(null)){
    
response.sendRedirect("login.jsp");
}


%>

