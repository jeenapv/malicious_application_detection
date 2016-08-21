<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>

<%
String appid = "";
	appid = request.getParameter("appid");

	if(appid!=""){
		stmt.execute("delete from applications where app_id="+appid+"");
		response.sendRedirect("view_applications.jsp");
	}

%>