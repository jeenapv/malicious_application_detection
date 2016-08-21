<%@include file="db.jsp" %>
<%@ page import="java.io.*"%>



<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String appname = request.getParameter("appname");
String descr = request.getParameter("appDescription");
String categories= request.getParameter("categories");
String companyName = request.getParameter("companyName");

String permission[]= request.getParameterValues("permission");
String pp= "";
if(permission != null)
{
%>
<h4>I likes fruit/s mostly</h4>
<ul>
<%
for(int i=0; i<permission.length; i++)
{
	pp = permission[i]+","+pp;
%>

<%
}

%>

</ul>
<li><%=pp%></li>
<%
}


String query = "INSERT INTO `facebook`.`applications` (`app_name`, `app_description`, `categories`, `company`, `permissions`, `rating`, `users_count`,`app_review`,`internal_links`,`external_links`) VALUES ('"+appname+"', '"+descr+"', '"+categories+"','"+companyName+"', '"+pp+"', '1', '1','','','')";

stmt.execute(query);
	response.sendRedirect("view_applications.jsp");

%>