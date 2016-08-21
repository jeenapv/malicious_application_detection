<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%@include file="db.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<% Blob image = null;

byte[ ] imgData = null ;


String log=(String)session.getAttribute("a");
ResultSet rs = null;
String email=(String)session.getAttribute("emailid");
String pass=(String)session.getAttribute("c");
try {



rs = stmt.executeQuery("select photo from login where log='"+log+"' AND email='"+email+"' AND password='"+pass+"'");

while(rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} /*else {

out.println("Display Blob Example");

out.println("image not found for given image");

return;

}
*/
// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {



stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 