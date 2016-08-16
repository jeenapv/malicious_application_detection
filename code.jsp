<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String key=request.getParameter("key");
	
	
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from login where pcode='"+key+"'";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(!rs.next())
		{
		
		out.println("your post activation Code is wrong.....................");
		
			
		}
	    else
	     {
		 response.sendRedirect("post.jsp");
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