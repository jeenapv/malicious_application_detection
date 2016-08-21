
<%@ page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%
		
		int count=0;	
		int like;
		

ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String name=null, id=null;
String uuid=(String)session.getAttribute("uuid");
String a=(String)session.getAttribute("a");

System.out.println(uuid);
String b=(String)session.getAttribute("b");
System.out.println(b);

//String d=(String)session.getAttribute("qualification");
//System.out.println(d);


try
{
 
 String sqll="select count from friends where log='"+a+"' ";
 rs=stmt.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	//sendid=rs.getString("sendid");
	//status=rs.getString("status");
	
like=rs.getInt("count")+1;



try{
	

  ps1=con.prepareStatement("Update friends set count=? where log='"+a+"' ");
			ps1.setInt(1,like);	
			ps1.executeUpdate();

response.sendRedirect("success.jsp");

}

	catch (Exception e1) 
		{
			out.println(e1.getMessage());
				}
				
				
				}
else
{
response.sendRedirect("success.jsp");

}




}

catch(Exception e2)
{
out.print(e2);
}




				
				
				
%>
      