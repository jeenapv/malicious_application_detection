<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
    File file = null;
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    ServletContext context = pageContext.getServletContext();
    String filePath = context.getInitParameter("file-upload");

    // Verify the content type
    String contentType = request.getContentType();
    if ((contentType.indexOf("multipart/form-data") >= 0)) {

        DiskFileItemFactory factory = new DiskFileItemFactory();
        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);
        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File("c:\\temp"));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        // maximum file size to be uploaded.
        upload.setSizeMax(maxFileSize);
        try {
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);

            // Process the uploaded file items
            Iterator i = fileItems.iterator();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>JSP File upload</title>");
            out.println("</head>");
            out.println("<body>");
            String userMessage = "";
            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    // Get the uploaded file parameters
                    String fieldName = fi.getFieldName();
                    out.write("fieldName " + fieldName);
                    System.out.println("fieldName " + fieldName);
                    String fileName = fi.getName();
                    out.write("fileName " + fileName);
                    System.out.println("fileName " + fileName);
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();
                    // Write the file
                    if (fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath
                                + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath
                                + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    fi.write(file);
                    out.println("Uploaded Filename: " + filePath
                            + fileName + "<br>");
                    System.out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                } else {
                    String name = fi.getFieldName();//text1
                    String value = fi.getString();
                    System.out.println("Values other than file ........");
                    System.out.println(name);
                    System.out.println(value);
                    if (name.toLowerCase().trim().equals("message")) {
                        userMessage = value;
                    }
                }
            }
            out.println("</body>");
            out.println("</html>");
            if (file != null) {
                System.out.println(file.getAbsolutePath());
                PreparedStatement ps = null;
                try {
                    FileInputStream fis;
                    fis = new FileInputStream(file);
                    String email = (String) session.getAttribute("emailid");

                    String a = (String) session.getAttribute("a");
                    String name = (String) session.getAttribute("name");
                    String uid = (String) session.getAttribute("uid");

                    ps = con.prepareStatement("insert into photo(id1,name,photo,msg,log) values(?,?,?,?,'" + a + "')");
                    ps.setString(1, uid);
                    ps.setString(2, name);
                    fis = new FileInputStream(file);
                    ps.setBinaryStream(3, (InputStream) fis, (int) (file.length()));
                    ps.setString(4, userMessage);
                    ps.executeUpdate();
                    response.sendRedirect("fb_page.jsp?success");
                    //ps = con.prepareStatement("update login set photo=? where email='" + email + "'");
                    //ps.setBinaryStream(1, (InputStream) fis, (int) (file.length()));
                    //ps.executeUpdate();
                    //response.sendRedirect("fb_page.jsp");
                } catch (Exception r) {
                    out.println(r.getMessage());
                }

            } else {
                System.out.println("File is null");
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }
    } else {
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet upload</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>No file uploaded</p>");
        out.println("</body>");
        out.println("</html>");
    }
%>
