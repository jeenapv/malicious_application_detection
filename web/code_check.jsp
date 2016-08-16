<%@ page import="java.sql.*" errorPage=""%>
<%@include file="db.jsp" %>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
        String key=request.getParameter("key");
	
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from login where scode='"+key+"'";
	try
	{
	    
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(!rs.next())
		{
		%>
		<font size="4" color="#FF0000"><b>
		<%
		response.sendRedirect("u.jsp");
		out.println(" your  are not eligible for post your message because your activation Code is wrong.....................");
		
			%>
			</b></font>
			<%
		}
	    else
	     {
		 //response.sendRedirect("status_sendemail.jsp");
                response.sendRedirect("fb_page.jsp?success");
	  }
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>