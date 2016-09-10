<%@ page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@ page import="java.io.*"%>

<% Blob image = null;

    byte[] imgData = null;
    String uid = request.getParameter("uid");
    if(uid==null) {
        uid = "1";
    }

    ResultSet rs = null;


    try {

        rs = stmt.executeQuery("select photo from login where id='" + uid + "' ");

        while (rs.next()) {

            image = rs.getBlob(1);

            imgData = image.getBytes(1, (int) image.length());

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