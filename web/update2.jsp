<%@ page import="java.sql.*"%>
<%@include file="db.jsp" %>
 <%
		
		
		
		String iid=(String)session.getAttribute("uid");
		String pid=request.getQueryString();
		String a4=(String)session.getAttribute("sname");
	int count1=0;	
		

ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String sendid=null,status=null,partition=null,d=null,e=null;

String id=request.getParameter("id");





try
{
  
 String sqll="select sendid,status,count1 from friends where recid='"+iid+"'";
 rs=stmt.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	sendid=rs.getString("sendid");
	status=rs.getString("status");
	
	  
	count1=rs.getInt("count1")+1;
String status1="accept";


try{
	

  ps1=con.prepareStatement("Update friends set count1=? where status='"+status1+"'");
			ps1.setInt(1,count1);	
			ps1.executeUpdate();



}

	catch (Exception e1) 
		{
			out.println(e1.getMessage());
				
				
			
			
		}


}
else
{
response.sendRedirect("fb_page.jsp");

}



response.sendRedirect("fb_page.jsp");

}

catch(Exception e2)
{
out.print(e2);
}



%>
      