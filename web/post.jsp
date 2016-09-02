
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>

<%

String msg=request.getParameter("msg");
String to_uid=request.getParameter("to_uid");
session.setAttribute("to_uid", to_uid);

session.setAttribute("message", msg);
String email=(String)session.getAttribute("remail");
String uid=(String)session.getAttribute("uid");
String name=(String)session.getAttribute("name");

String b1=null,c=null;

PreparedStatement ps = null;
ResultSet rs = null;
boolean flag= true;

rs = stmt.executeQuery("select * from blacklisted_domains where domains like '%"+msg+"%' ");
while(rs.next()){
    String domains = rs.getString(2);
    flag = false;
    
}

if(flag == false){
    %><h1><center>This Message May Malicious</center></h1><br/><h2><center>Want you to post this?</center><h2><center><a href="repost_message.jsp">post<center></a><br/><a href="fb_page.jsp">return</a></center><%
}


else {
    try
    {	
    ps = con.prepareStatement("insert into message(id1,name,msg,to_uid) values(?,?,?,?)");
    ps.setString(1,uid);
    ps.setString(2,name);
    ps.setString(3,msg);
    ps.setString(4,to_uid);

    ps.executeUpdate();

    response.sendRedirect("fb_page.jsp?sucess");
    }
    catch(Exception e1)
    {
    out.println(e1.getMessage());
    }
}
%>