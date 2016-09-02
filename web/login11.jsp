<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>
<%
    String a = request.getParameter("log");
    String b = request.getParameter("email");
    
    String c = request.getParameter("pass");
    PreparedStatement ps = null;
    ResultSet rs = null;
    String userid = null;

    String w = null, id = null;
    int count;
    int count1;
    if ((a.equals("Admin")) & (b.equals("admin@gmail.com")) & (c.equals("admin"))) {
        response.sendRedirect("adminview.jsp");
    }
    try {
        String stttt = "select id,name,email,remail,password from login where email='" + b + "' AND password='" + c + "' ";
        System.out.println(stttt);
        rs = stmt.executeQuery(stttt);


        if (rs.next()) {
            id = rs.getString(1);
            String emailid = rs.getString(3);
            
            String name = rs.getString(2);
            session.setAttribute("name", name);

            String remail = rs.getString(4);
            System.out.println(remail);
            session.setAttribute("remail", remail);
            session.setAttribute("emailid", emailid);
            session.setAttribute("uid", id);
            String password =  rs.getString(5);
            session.setAttribute("pwd", password);
            
           long millis = System.currentTimeMillis();
           
            stmt.executeUpdate("update login set login_time='"+millis+"' where id="+id+" ");
            /*
            count=rs.getInt(5);
            session.setAttribute("count",count);
            count1=rs.getInt(6);
            session.setAttribute("cc",count1);
            System.out.println("count1");
             */
            //	w=rs.getString(3);
            //session.setAttribute("w",w);		
            response.sendRedirect("email_send.jsp");
            //response.sendRedirect("fb_activation.jsp?success");
        } else {
            out.println("enter correct user name and password");
        }
        session.setAttribute("a", a);
        session.setAttribute("b", b);
        session.setAttribute("c", c);
    } catch (Exception e1) {
        out.println(e1.getMessage());
    }

%>