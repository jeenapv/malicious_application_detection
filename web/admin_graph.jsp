<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>facebook</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="lib/bootstrap.min.css">
    <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />


    <!-- Begin JavaScript -->
    <script src="Chart.js"></script>
    <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="lib/jquery.tools.js"></script>
    <script type="text/javascript" src="lib/jquery.custom.js"></script>
    <script language="javascript" type="text/javascript" src="datetimepicker.js">

    </script>


</head>
<body>
    <div id="wrap">
        <div id="logo">
            <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
        </div>

        <div id="content_top"></div>
        <div id="content">

            <%@include  file="navigation_bar.html" %>


            <div id="header"> </div>
            <h2 style="color:red">Users Log</h2>
            <div style="width: 50%">
                <canvas id="canvas" height="450" width="600"></canvas>
            </div>
            <%
                ResultSet rs = null;
                String user_name = "";
                String user_id = "";
                String difference = "";
                String coma = "";

                rs = stmt.executeQuery("select * from login");
                while (rs.next()) {

                    user_name = user_name + coma + '"' + rs.getString("name") + '"';
                    double dif;
                    try {
                        dif = Long.parseLong(rs.getString("total_time"));
                    } catch (NumberFormatException e) {
                        dif = 0;
                    }
                    //String qry = "udpate table set total_time = total_time + " + dif;
                    //String dif1 =Integer.toString(dif);
                    difference = difference + coma + dif;
                    coma = ",";
                }


            %>

            <script>
                var randomScalingFactor = function(){ return Math.round(Math.random()*100)};

                var barChartData = {
                    labels : [<%=user_name%>],
                    datasets : [
                        {
                            fillColor : "rgba(220,220,220,0.5)",
                            strokeColor : "rgba(220,220,220,0.8)",
                            highlightFill: "rgba(220,220,220,0.75)",
                            highlightStroke: "rgba(220,220,220,1)",
                            data : [<%=difference%>]
                        }
                    ]

                }
                window.onload = function(){
                    var ctx = document.getElementById("canvas").getContext("2d");
                    window.myBar = new Chart(ctx).Bar(barChartData, {
                        responsive : true
                    });
                }

            </script>
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
