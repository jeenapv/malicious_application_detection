<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>

<html lang="en">

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
<script language="javascript" type="text/javascript" src="datetimepicker.js">

</script>
<script src="lib/jquery.min.js"></script>
  <script src="lib/bootstrap.min.js"></script>
		
    </head>
    <body>
        <div id="wrap">
            <div id="logo">
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
              
            </div>

            <div id="content_top"></div>
            <div id="content">
            <% String a = request.getParameter("id");
            if(!a.equals("1")){
            %>
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Facebook</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="adminview.jsp">Home</a></li>
                            <li class="dropdown">
                              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Application
                              <span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="application.jsp">Add Application</a></li>
                                <li><a href="view_applications.jsp">View Applications</a></li>
                                
                              </ul>
                            </li>
                            <li><a href="view.jsp">Users</a></li>

                        </ul>
                            <%}%>
                        </div>
                    </nav>
                
                
    
    <div class="container-fluid">
        <h2>Add Application</h2>
	  <form action="add_application.jsp?id=1" method="POST">
    <div class="form-group">
      <label for="appname">App Name *</label>
      <input type="text" class="form-control" id="appname" name="appname" placeholder="App Name" required>
    </div>
    
     <div class="form-group">
      <label for="appDescription">App Description *</label>
      <textarea  class="form-control" id="appDescription" name="appDescription" placeholder="App Descrption" required></textarea>
    </div>
    <div class="form-group">
      <label for="appDescription">Categories *</label>
      <textarea  class="form-control" id="categories" name="categories" placeholder="Categories" required></textarea>
    </div>
    <div class="form-group">
      <label for="appDescription">Company Name *</label>
      <input  type="text" class="form-control" id="companyName" name="companyName" placeholder="Company Name" required>
    </div>
    <div class="checkbox">
      Permissions
      <label class="custom-check"><input type="checkbox" id="public_profile" name="permission" value="public_profile">public_profile</label>
      <label class="custom-check"><input type="checkbox" id="user_friends" name="permission" value="user_friends">user_friends</label>
      <label class="custom-check"><input type="checkbox" id="email" name="permission" value="email">email</label>
      <label class="custom-check"><input type="checkbox" id="user_about_me" name="permission" value="user_about_me">user_about_me</label>

      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions.books" >user_actions.books</label>
      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions.fitness">user_actions.fitness</label>
      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions.music">user_actions.music</label>
      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions.news">user_actions.news</label>
      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions.video">user_actions.video</label>
      <label class="custom-check"><input type="checkbox" id="" name="permission" value="user_actions:{app_namespace}">user_actions:{app_namespace}</label>
      <label class="custom-check"><input type="checkbox" id="user_birthday" name="permission" value="user_birthday">user_birthday</label>
      <label class="custom-check"><input type="checkbox" id="user_education_history" nname="permission" value="user_education_history">user_education_history</label>
      <label class="custom-check"><input type="checkbox" id="user_events" name="permission" value="user_events">user_events</label>
      <label class="custom-check"><input type="checkbox" id="user_games_activity" name="permission" value="user_games_activity">user_games_activity</label>
      <label class="custom-check"><input type="checkbox" id="user_hometown" name="permission" value="user_hometow">user_hometown</label>
      <label class="custom-check"><input type="checkbox" id="user_likes" name="permission" value="user_likes">user_likes</label>
      <label class="custom-check"><input type="checkbox" id="user_location" name="permission" value="user_location">user_location</label>
      <label class="custom-check"><input type="checkbox" id="user_managed_groups" name="permission" value="user_managed_groups">user_managed_groups</label>
      <label class="custom-check"><input type="checkbox" id="user_photos" name="permission" value="user_photos">user_photos</label>
      <label class="custom-check"><input type="checkbox" id="user_posts" name="permission" value="user_posts">user_posts</label>
      <label class="custom-check"><input type="checkbox" id="user_relationships" name="permission" value="user_relationships">user_relationships</label>
      <label class="custom-check"><input type="checkbox" id="user_relationship_details"name="permission" value="user_relationship_details">user_relationship_details</label>
      <label class="custom-check"><input type="checkbox" id="user_religion_politics" name="permission" value="user_religion_politics">user_religion_politics</label>
      <label class="custom-check"><input type="checkbox" id="user_tagged_places" name="permission" value="user_tagged_places">user_tagged_places</label>
      <label class="custom-check"><input type="checkbox" id="user_videos" name="permission" value="user_videos">user_videos</label>
      <label class="custom-check"><input type="checkbox" id="user_website" name="permission" value="user_website">user_website</label>
      <label class="custom-check"><input type="checkbox" id="user_work_history" name="permission" value="user_work_history">user_work_history</label>
      <label class="custom-check"><input type="checkbox" id="read_custom_friendlists" name="permission" value="read_custom_friendlists">read_custom_friendlists</label>
      <label class="custom-check"><input type="checkbox" id="read_insights" name="permission" value="read_insights">read_insights</label>
      <label class="custom-check"><input type="checkbox" id="read_audience_network_insights" name="permission" value="read_audience_network_insights">read_audience_network_insights</label>
      <label class="custom-check"><input type="checkbox" id="read_page_mailboxes" name="permission" value="read_page_mailboxes">read_page_mailboxes</label>
      <label class="custom-check"><input type="checkbox" id="manage_pages" name="permission" value="manage_pages">manage_pages</label>
      <label class="custom-check"><input type="checkbox" id="publish_pages" name="permission" value="publish_pages">publish_pages</label>
      <label class="custom-check"><input type="checkbox" id="publish_actions" name="permission" value="publish_actions">publish_actions</label>
      <label class="custom-check"><input type="checkbox" id="rsvp_event" name="permission" value="">rsvp_event</label>
      <label class="custom-check"><input type="checkbox" id="pages_show_list" name="permission" value="rsvp_event">pages_show_list</label>
      <label class="custom-check"><input type="checkbox" id="pages_manage_cta" name="permission" value="pages_manage_cta">pages_manage_cta</label>
      <label class="custom-check"><input type="checkbox" id="pages_manage_instant_articles" name="permission" value="pages_manage_instant_articles">pages_manage_instant_articles</label>
      <label class="custom-check"><input type="checkbox" id="ads_read" name="permission" value="ads_read">ads_read</label>
      <label class="custom-check"><input type="checkbox" id="ads_management" name="permission" value="ads_management">ads_management</label>
      <label class="custom-check"><input type="checkbox" id="business_management" name="permission" value="business_management">business_management</label>
      <label class="custom-check"><input type="checkbox" id="pages_messaging" name="permission" value="pages_messaging">pages_messaging</label>
      <label class="custom-check"><input type="checkbox" id="pages_messaging_phone_number" name="permission" value="pages_messaging_phone_number">pages_messaging_phone_number</label>
    </div>
    <button type="submit" class="btn btn-block btn-primary">Add Application</button>
  </form>
  <br/>
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
