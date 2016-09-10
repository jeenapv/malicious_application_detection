<%-- 
    Document   : fileUploadTest
    Created on : Sep 10, 2016, 7:05:48 AM
    Author     : kakes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="lib/bootstrap.min.css">
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="content_top"></div>
    <center>
        <h3>Choose image:</h3>
        <form action="UploadFile.jsp" method="post"
              enctype="multipart/form-data">
            <input type="file" name="file" size="50" />
            <br />
            <input type="submit" value="Upload File" />
        </form>
    </center>
</body>
</html>
