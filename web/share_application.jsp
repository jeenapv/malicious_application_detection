<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>facebook</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link rel="stylesheet" href="lib/bootstrap.min.css">

        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		
		
		<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>
    	<script type="text/javascript" src="lib/jquery.custom.js"></script>
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>

		<style>

		.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #ffffff;
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffaaaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #56aaff 5%, #ffaaaa 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #56aaff), color-stop(1, #ffaaaa) ); 
	background:-moz-linear-gradient( center top, #56aaff 5%, #ffaaaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#56aaff", endColorstr="#ffaaaa");	background: -o-linear-gradient(top,#56aaff,ffaaaa);

	background-color:#56aaff;

	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:16px;
	font-size:14px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ea0b77 5%, #ffffff 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ea0b77), color-stop(1, #ffffff) );
	background:-moz-linear-gradient( center top, #ea0b77 5%, #ffffff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ea0b77", endColorstr="#ffffff");	background: -o-linear-gradient(top,#ea0b77,ffffff);

	background-color:#ea0b77;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#000000;
}

.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
		
		</style>
    </head>
    <body>
        <div id="wrap">
            <div id="logo">
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
              
            </div>

            <div id="content_top"></div>
            <div id="content">
                 <%@include  file="navigation_user.html" %>
                <div id="header">
                    
					
                </div>

                
    <div id="index_content"> 
<%	
	ResultSet rs=null;
	ResultSet rss=null;

	String appid = request.getParameter("appid");



try
{
        String app_id;
	String app_name;
	String app_description = null;
	String categories = null;
	String company = null;
	String permissions;
	String rating;
        rating = null;
	String user_count;
        user_count = null;
	String app_review;
	String internal_links;
        internal_links = null;
	String external_links;
        external_links = null;
	String permissions_count;
        permissions_count = null;
        String totalcount =null;
 String sqll="select * from applications where app_id="+appid+" ";
 rs=stmt.executeQuery(sqll);
 while(rs.next()){
	  
	 app_id=rs.getString("app_id");
         app_name=rs.getString("app_name");
	 app_description=rs.getString("app_description");
	 categories=rs.getString("categories");
	 company=rs.getString("company");
	 permissions=rs.getString("permissions");
	 rating=rs.getString("rating");
	 user_count=rs.getString("users_count");
	 app_review=rs.getString("app_review");
	 internal_links=rs.getString("internal_links");
	 external_links=rs.getString("external_links");
	 permissions_count=rs.getString("permissions_count");
	
	String sqlll="select count(*) as count from login ";
 	rss=stmtt.executeQuery(sqlll);
 	while(rss.next()){
 	totalcount = rss.getString("count");
        }


	}
int companyGiven         =    0;
int categroyGiven        =    0;
int descriptionGiven     =    0;
double appStatus  =  0;  // Result variable.	
double permissionCount      =    Double.parseDouble(permissions_count);
double totalRating          =    Double.parseDouble(rating);
double installedUserCount   =    Double.parseDouble(user_count);
double totalUserCount       =    Double.parseDouble(totalcount);
double internelLinks        =    Double.parseDouble(internal_links);
double externalLinks        =    Double.parseDouble(external_links);
if(company!=null) {
	 companyGiven = 1;
}
if(categories!=null) {
	categroyGiven = 1;
}
if(app_description!=null) {
	descriptionGiven = 1;
}

//----------Permission count   30%---------------------

appStatus = appStatus+((100-(100*permissionCount/42))/100)*30;  //30 if permissionCount is 0 and 0 if app count is 42.

//appStatus = 100.11;

//----------Rating    30%---------------------
appStatus = appStatus+((totalRating/5)*30);

//----------User Count  10%---------------------
appStatus = appStatus+((installedUserCount/totalUserCount)*10);

//----------Internal/External links   20%---------------------
double count = ((internelLinks/(externalLinks*2))*20);

if(count>20){
 count = 20;
}

appStatus = appStatus+count;
//----------Company Given  3%---------------------
appStatus = appStatus+(companyGiven*3);
//----------Category given 3%---------------------
appStatus = appStatus+(categroyGiven*3);
//----------Description given 3%---------------------
appStatus = appStatus+(descriptionGiven*3);

if(appStatus < 41){
%><h2 style="color:red;text-align:center">This Application may Malicious</h2><%
}
else{
%>
  <h2 style="color:red;text-align:center">App is <%=appStatus%>% of good</h2><%
}

}
catch(Exception e2){
	
}

	%>
      <div style="clear: both"></div>
              </div>


                <div id="footer_box">
                    <div id="footer_box_top"></div>
                    <div id="footer_box_bg">
                    
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		
			
        <p><font size="+2" color="#FFCC00"><b>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;
		<marquee scrollamount="5" width="40">&lt;&lt;&lt;&lt;&lt;</marquee>
		Detecting Malicious Facebook Applications<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;&gt;&gt;</marquee>
			
</b></font> 
        </p>
        <div style="clear: both"></div>
                    </div>
                    <div id="footer_box_bot"></div>
                </div>
            </div>
            <div id="content_bot"></div>
        </div>
        <div id="footer">
                <div class="red_hr"></div>
                 </div>
    </body>
</html>
