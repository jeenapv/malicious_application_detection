<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db1.jsp" %>
<%
    String log = request.getParameter("log");
    String email = request.getParameter("email");

    String pass = request.getParameter("pass");
    PreparedStatement ps = null;
    ResultSet rs = null;
    String userid = null;

    String w = null, id = null;
    int count;
    int count1;
    if ((log.equals("Admin")) & (email.equals("admin@gmail.com")) & (pass.equals("admin123"))) {
        session.setAttribute("uid", "1");
        response.sendRedirect("adminview.jsp");
    }
    try {
        String stttt = "select id,name,email,remail,password,blocked_status from login where email='" + email + "' AND password='" + pass + "' ";
        System.out.println(stttt);
        rs = stmt.executeQuery(stttt);

        if (rs.next()) {
           String status = rs.getString(6);
           
               if(status.equals("1")){
                   
                               out.println("<body style='background-color: turquoise' ><center><h2>Sorry You are blocked by admin</h2></center></body>");

               }
               else{
                   id = rs.getString(1);
            String emailid = rs.getString(3);

            String name = rs.getString(2);
            session.setAttribute("name", name);

            String remail = rs.getString(4);
            System.out.println(remail);
            session.setAttribute("remail", remail);
            session.setAttribute("emailid", emailid);
            session.setAttribute("uid", id);
            String password = rs.getString(5);
            session.setAttribute("pwd", password);

            long millis = System.currentTimeMillis();

            stmt.executeUpdate("update login set login_time='" + millis + "' where id=" + id + " ");
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
               }
            
        } else {
            out.println("<div class='incorrect-login-main'>");
            out.println("<link href='styles.css' rel='stylesheet' type='text/css' media='screen'>");
            out.println("<center>");
            out.println("<div>You have entered incorrected email id or password!");
            out.println("</div> ");
            out.println("</center>");
            out.println("<center>");
            out.println("<div>Are you sure you are " + email + " ? If yes login again<br>");
            out.println("</div>");
            out.println("<br>");
            out.println("<br>");
            out.println("</center>");
            out.println("<center><div><a class='incorrect-login-log-again-button' href='login.jsp'>Login again</a>");
            out.println("</div>");
            out.println("</center>");
            out.println("</div>");

        }
        session.setAttribute("a", log);
        session.setAttribute("b", email);
        session.setAttribute("c", pass);
    } catch (Exception e1) {
        out.println(e1.getMessage());
    }



%>