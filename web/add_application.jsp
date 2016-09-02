<%@page import="java.lang.String"%>
<%@include file="db.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Random"%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
        String sqlll="select count(*) as count from login ";
 	ResultSet rss=null;
        String totalcount = null; 
        rss=stmtt.executeQuery(sqlll);
 	while(rss.next()){
 	totalcount = rss.getString("count");
        }
        int total_user_count = Integer.parseInt(totalcount);
	Random rand = new Random();
    // nextInt is normally exclusive of the top value,
    // so add 1 to make it inclusive
    int rating = rand.nextInt((5 - 1) + 1) + 1;
    int user_count = rand.nextInt((total_user_count - 0) + 1) + 0;
    int internal_links = rand.nextInt((100 - 1) + 1) + 1;
    int external_links = rand.nextInt((100 - 1) + 1) + 1;
    
String appname = request.getParameter("appname");
String descr = request.getParameter("appDescription");
String categories= request.getParameter("categories");
String companyName = request.getParameter("companyName");

String permission[]= request.getParameterValues("permission");

int permissions_count = permission.length;

String pp= "";
if(permission != null)
{
%>
<h4>I likes fruit/s mostly</h4>
<ul>
<%
for(int i=0; i<permission.length; i++)
{
	pp = permission[i]+","+pp;
%>

<%
}

%>

</ul>
<li><%=pp%></li>
<%
}


String query = "INSERT INTO `facebook`.`applications` (`app_name`, `app_description`, `categories`, `company`, `permissions`, `permissions_count`, `rating`, `users_count`,`app_review`,`internal_links`,`external_links`) VALUES ('"+appname+"', '"+descr+"', '"+categories+"','"+companyName+"', '"+pp+"',"+permissions_count+" , "+rating+", "+user_count+",'',"+internal_links+","+external_links+")";

stmt.execute(query);
       
        String a = request.getParameter("id");
            
            if(a == "1"){
                response.sendRedirect("view_applications.jsp");
            }
               else{
            	response.sendRedirect("applications_user.jsp");

                       }
           

%>