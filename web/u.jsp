<%@ page import="java.sql.*,databaseconnection.*"%>
<%
    String iid = (String) session.getAttribute("uid");
    String pid = request.getQueryString();
    String a4 = (String) session.getAttribute("sname");
    int acount = 0;

    Connection con = null;
    ResultSet rs = null;
    PreparedStatement ps = null;
    Statement st = null;

    ResultSet rs1 = null;
    PreparedStatement ps1 = null;
    Statement st1 = null;
    String sendid = null, status = null, partition = null, d = null, e = null;

    String id = (String) session.getAttribute("uid");

    try {
        con = databasecon.getconnection();
        st = con.createStatement();
        String sqll = "select id ,acount from login where id='" + id + "'";
        rs = st.executeQuery(sqll);
        if (rs.next()) {
            //a=rs.getString(1);
            acount = rs.getInt("acount") + 1;
            String status1 = "accept";
            try {
                Connection con1 = databasecon.getconnection();

                ps1 = con1.prepareStatement("Update login set acount=? where id='" + id + "'");
                ps1.setInt(1, acount);
                ps1.executeUpdate();
            } catch (Exception e1) {
            }
        } else {
            System.out.println("");
        }
        System.out.println("");
    } catch (Exception e2) {
    }
    out.println("<div class='incorrect-login-main'>");
    out.println("<link href='styles.css' rel='stylesheet' type='text/css' media='screen'>");
    out.println("<div class='incorrect-login-main'>");
    out.println("<center>");
    out.println("<div>You have entered incorrect activation code");
    out.println("</div>");
    out.println("</center>");
    out.println("<center>");
    out.println("<div>Please check your email correctly");
    out.println("</div>");
    out.println("</center>");
    out.println("<center>");
    out.println("<div>And login again");
    out.println("</div>");
    out.println("</center>");
    out.println("<br>");
    out.println("<center><div><a class='incorrect-login-log-again-button' href='login.jsp'>Login</a>");
    out.println("</div>");
    out.println("</center>");
    out.println("</div>");
    out.println("");
    out.println("");
    out.println("");
%>
