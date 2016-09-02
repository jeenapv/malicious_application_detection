
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>

<%

String appid=request.getParameter("appid");
String app_name=request.getParameter("appname");

String uid=(String)session.getAttribute("uid");
String to_id=request.getParameter("to_uid");
ResultSet rs=null;
//String name=(String)session.getAttribute("name");

    try
    
    {
    rs = stmt.executeQuery("select * from application_shared where  app_id="+appid+" and shared_userid='"+uid+"' and to_userid="+to_id+" ");   
    if(rs.next()){
        
        String count = rs.getString(6);
        
        int count1 = Integer.parseInt(count);
        // out.println(count1);
        if(count1 == 3){
            %> <h2 style="font-color:red"><center>Sorry! You Are Blocked for sharing this App to this User</center></h2>
            <center><a href="fb_page.jsp"> Return</a></center><%
        }else{
            stmt.executeUpdate("update application_shared set count=count+1 where app_id= "+appid+" ");
            response.sendRedirect("fb_page.jsp?sucess");    
        }
        
    }else{
       stmt.execute("INSERT INTO application_shared (`app_id`, `app_name`, `shared_userid`, to_userid,count) VALUES ("+appid+", '"+app_name+"', '"+uid+"', "+to_id+",1)");
    response.sendRedirect("fb_page.jsp?sucess");    
    }
//        
    }
    catch(Exception e1)
    {
    out.println(e1.getMessage());
    }

%>