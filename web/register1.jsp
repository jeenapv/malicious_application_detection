<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.io.FileUtils"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>
<html>
    <head>
        <title> Scientific Workflow</title>

    </head>

    <body>

        <%
            
            String name = request.getParameter("name");
            session.setAttribute("name", name);
            String email = request.getParameter("email");
            session.setAttribute("email", email);

            String remail = request.getParameter("remail");
            session.setAttribute("remail", remail);
            String password = request.getParameter("password");
            String c1 = "Facebook";
            String mobile = request.getParameter("mobile");
            String gender = request.getParameter("gender");

            String dob = request.getParameter("dob");
            
            java.util.Date now = new java.util.Date();

            Date date = new SimpleDateFormat("dd-MM-yyyy").parse(dob);
            String dateCorrected = new SimpleDateFormat("yyyy-MM-dd").format(date);
            PreparedStatement ps = null;
            
            FileInputStream fis;
            File defaultImage = new File("D:\\fileUploads\\default.png");
            fis = new FileInputStream(defaultImage);
            
            ResultSet rs = null;

            try {
                ps = con.prepareStatement("insert into login(name"
                        + ",email,"
                        + "remail,"
                        + "password,"
                        + "log,"
                        + "mobile,"
                        + "log1,"
                        + "birthday,"
                        + "photo) "
                        + "values(?,?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, remail);
                ps.setString(4, password);
                ps.setString(5, c1);
                ps.setString(6, mobile);
                ps.setString(7, gender);
                ps.setString(8, dob);
                ps.setBinaryStream(9, (InputStream) fis, (int) (defaultImage.length()));

                ps.executeUpdate();

                response.sendRedirect("registration_success.jsp");
            } catch (Exception r) {
                out.println(r.getMessage());
            }

        %>
    </body>
</html>
