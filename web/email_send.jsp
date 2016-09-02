<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@include file="db.jsp" %>
<%
String emailid=(String)session.getAttribute("emailid");
int a=(int) (Math.random() * 1000000);
String mid=(String)session.getAttribute("mid");
String idd=(String)session.getAttribute("iid");
String oo="This is Your facebook activation Code";
String c =Integer.toString(a);
session.setAttribute("pop",c);
System.out.println(c);
String filename=(String)session.getAttribute("filename");

String hostt="", user="", pass="";

hostt ="smtp.gmail.com"; //"smtp.gmail.com";

user ="manoj.mohanan23@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="9388651882"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =emailid; // out going email id

String from ="manoj.mohanan23@gmail.com"; //Email id of the recipient
//String subject=(String)session.getAttribute("subject");
String subject ="welcome";

String messageText ="<b>"+emailid+"</b><br>Activation Code:"+c+"<br>Message:"+oo+"";

//session.setAttribute("userid",userid);
//session.setAttribute("password",c);

boolean sessionDebug = true;
try{
Properties props = System.getProperties();
        String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", hostt);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
   
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);

transport.sendMessage(msg, msg.getAllRecipients());
transport.close();
//out.println("message successfully sended"); // assume it was sent
//response.sendRedirect("up.jsp");
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}

%>
<%@ page import="java.sql.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
String id=(String)session.getAttribute("uid");


try
{

PreparedStatement ps1=con.prepareStatement("update login set scode=? where id='"+id+"'");

ps1.setString(1,c);
//ps1.setString(2,dd);

ps1.executeUpdate();

         
 response.sendRedirect("fb_activation.jsp?success");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				



%>

