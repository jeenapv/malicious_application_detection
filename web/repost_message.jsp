
<%@ page import="java.io.*"%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>

<%


String message =  (String)session.getAttribute("message");
String to_uid = (String)session.getAttribute("to_uid");
String uid=(String)session.getAttribute("uid");
String name=(String)session.getAttribute("name");

String b1=null,c=null;

PreparedStatement ps = null;
ResultSet rs = null;
boolean flag= true;


  
   
     
    
     rs = stmttt.executeQuery("select * from malicious_afected where to_userid="+to_uid+" and user_id="+uid+"   ");
     if(rs.next()) {
            String countString = rs.getString("afected_count");
            int countVal = Integer.parseInt(countString);
            System.out.print(countVal+"coubtttttt");
            if(countVal >= 3) {
                %>
                <h2 style="font-color:red"><center>Sorry! You Are Blocked</center></h2>    
                
                <%
            } else {
             stmt.execute("insert into message(id1,name,msg,to_uid) values("+uid+",'"+name+"','"+message+"', "+to_uid+")");
     
             stmtt.execute ("update malicious_afected set afected_count = afected_count+1 where to_userid="+to_uid+" and user_id="+uid+"  " );   
             response.sendRedirect("fb_page.jsp?sucess");
            }
     }else{
         stmtt.execute ("INSERT INTO `malicious_afected` (`user_id`, `to_userid`, `afected_count`) VALUES ("+uid+", "+to_uid+", '1')" );
          response.sendRedirect("fb_page.jsp?sucess");
     }
       
     
    

    




%>