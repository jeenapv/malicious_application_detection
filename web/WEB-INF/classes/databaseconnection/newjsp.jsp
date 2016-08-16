<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%
 String to = "manoj.mohanan18@yahoo.com";
String from ="manoj.mohanan23@gmail.com";
String host ="smtp.gmail.com"; //"smtp.gmail.com";

 String user ="manoj.mohanan23@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

String pass ="9388651882";

 String FROM_NAME = "AMzrocket";  
boolean sessionDebug = true;
  String subject ="welcome";
  String messageText ="sdfdf";
  
        Properties props = new Properties();  
        props.put("mail.smtp.host", host);  
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.debug", "true");  
        props.put("mail.smtp.ssl.enable", "false");  
        props.put("mail.smtp.starttls.enable","false");

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


%>