<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>

<%

	
	
	String userId = request.getParameter("uid");
	String status = request.getParameter("status");
	int status1 = Integer.parseInt(status);
	
	if(status1 == 0){
		
		stmt.executeUpdate("update login set blocked_status=1 where id="+userId+"");
	}
	else{
		stmt.executeUpdate("update login set blocked_status=0 where id="+userId+"");
	}	
	response.sendRedirect("view.jsp#"+userId);

%>