<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>
<%
FileInputStream fis;
String msg=request.getParameter("msg");
String msg1=request.getParameter("msg1");
String a=(String)session.getAttribute("a");
String bb=null,c=null;
String f1="C:\\Users\\manoj\\Documents\\NetBeansProjects\\Facebook\\web\\images\\gallery\\";
String z =  f1+msg1;
String s="facebook";
String b=(String)session.getAttribute("b");
File image=new File(z);
try {

PreparedStatement stmt1 = con.prepareStatement("select id,name from login where email='"+b+"' AND log='"+a+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 bb=rs1.getString(1);
 session.setAttribute("id",bb);
c=rs1.getString(2);
session.setAttribute("name",c);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}


PreparedStatement ps = null;

	ResultSet rs = null;
		


	
	try
	{
		
		

		ps = con.prepareStatement("insert into photo(id1,name,photo,msg,log) values(?,?,?,?,'"+a+"')");
		ps.setString(1,bb);
	
ps.setString(2,c);

fis=new FileInputStream(image);
ps.setBinaryStream(3, (InputStream)fis, (int)(image.length()));

ps.setString(4,msg);
ps.executeUpdate();

response.sendRedirect("fb_page.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>