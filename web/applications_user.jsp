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

		
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		
            


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
	
	<div >
      <table  class="table app-tbl" align="center">
     <thead>
        <tr>
          <td   >App Id</td>
          <td width="">App Name</td>
          <td width="">Description</td>
          <td width="">Categories</td>
          
		   <td width="">Rating</td>
		  


        </tr>
        <thead>
        <%
		
		
		

		

ResultSet rs=null;




try
{
    
 String sqll="select * from applications ";
 rs=stmt.executeQuery(sqll);
 while(rs.next()){
	  
	
	String app_id=rs.getString("app_id");
	String app_name=rs.getString("app_name");
	String app_description=rs.getString("app_description");
	String categories=rs.getString("categories");
	String company=rs.getString("company");
	String permissions=rs.getString("permissions");
	String rating=rs.getString("rating");
	String user_count=rs.getString("users_count");
	String app_review=rs.getString("app_review");
	String internal_links=rs.getString("internal_links");
	String external_links=rs.getString("external_links");


	

	
	%>
        <tr> 
          <td id="<%=app_id%>">
            000<%=app_id%>
          </td>
          <td >
            <%=app_name%>
          </td>
          <td >
            <%=app_description%>
          </td>
          <td >
            <%=categories%>
          </td>
		 
          <td >
            <%=rating%>
          </td>
          <td >
            <a class="loading-send" href="share_application.jsp?appid=<%=app_id%>&appname=<%=app_name%>"> Share </a>
          </td>
          
      
        </tr>
        <% 

}


}

catch(Exception e2)
{
out.print(e2);
}





%>
      </table>
      </div>
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
<div style="display:none" class="app-loader2">
</div>
<style>
.app-loader {
    background: url("images/progress_bar.gif")no-repeat scroll center center #FFF;
    position: absolute;
    height: 100%;
    width: 100%;
	    top: 0;
    border: 0;
    left: 0;
    right: 0;
}
</style>  
<script>
$(document).ready(function(){
		$('.loading-send').click(function(e){
			e.preventDefault();
			$('.app-loader2').show();  
			$('.app-loader2').addClass('app-loader');
		    var href = e.currentTarget.getAttribute('href');
			setTimeout(function(){ 
				 window.location=href;
				}, 4000);
		});
	});
</script> 
    </body>
</html>
