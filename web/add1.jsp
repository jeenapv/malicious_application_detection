<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>
<%
FileInputStream fis;
String msg=request.getParameter("msg");
String msg1=request.getParameter("msg1");
String a=(String)session.getAttribute("a");
String bb=null,c=null;
String f1="C:\\Users\\manoj\\Documents\\NetBeansProjects\\malicious_application_detection\\web\\images\\gallery\\";
String z =  f1+msg1;
String s="facebook";
String b=(String)session.getAttribute("b");
File image=new File(z);

String name = (String)session.getAttribute("name");

String uid = (String)session.getAttribute("uid");

PreparedStatement ps = null;

	ResultSet rs = null;
	
	try
	{
		ps = con.prepareStatement("insert into photo(id1,name,photo,msg,log) values(?,?,?,?,'"+a+"')");
		
                ps.setString(1,uid);
	
                ps.setString(2,name);


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