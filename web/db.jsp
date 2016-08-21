    <%@page import="java.sql.*" %>
<%
  Connection con =null;
  Statement stmt=null;
  Statement stmtt=null;
  Statement stmttt=null;
  //String path="C:/Users/hp/Desktop/catering/catering/catering/web/product/";

    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "");
     stmt = con.createStatement();  
     stmtt = con.createStatement();  
%> 