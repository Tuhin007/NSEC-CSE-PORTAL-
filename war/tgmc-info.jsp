
<script type='text/javascript'>
function notEmpty(helperMsg)
{       out.println("hi");
	if(document.getElementById('n').value.length == 0 || document.getElementById('e').value.length == 0 || document.getElementById('l').value.length == 0)|| document.getElementById('d').value.length == 0 ||document.getElementById('y').value.length == 0 )

	{
		alert(helperMsg);
		
		return false;
	}
	return true;
}
</script>




<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="NSEC.Data" %>
<%@ page import="NSEC.PMF" %>
<%@ page import="java.lang.*" %>

<html>
<TITLE align="center"> PORTAL OF CSE</TITLE>
 
  <H1 align="center" color="BLUE">  
	IBM – THE GREAT MIND CHALLENGE
   
   
  
  </H1>   
  <H2 align="center">~~~~ The NETAJI SUBHASH ENGINEERING COLLEGE Chapter
  <br><br><br>
  </H2>
  
  <span class="st_twitter_large" displayText="Tweet"></span><span class="st_facebook_large" displayText="Facebook"></span><span class="st_ybuzz_large" displayText="Yahoo! Buzz"></span><span class="st_gbuzz_large" displayText="Google Buzz"></span><span class="st_email_large" displayText="Email"></span><span class="st_sharethis_large" displayText="ShareThis"></span>
  
  <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script><script type="text/javascript">stLight.options({publisher:'cb1802af-537a-4be8-96c4-abfea7b3b89c'});</script>
  
  
   
   
<body>	



<!-- Google Translate Element -->
<div id="google_translate_element" style="display:block"></div><script>
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: "en"}, "google_translate_element");
};</script>
<script src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>



<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();   
%>

<%
if( user !=null)
{
%>
	HELLO <%= user.getNickname() %>! 
	
	<p align="left"><a  href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>.)
	</p>
	<br><br>
	<form onsubmit="return notEmpty('ALL FIELDS ARE MANDATORY, please ENTER VALID INFO IN ALL THE FIELDS')"  action="/insertTgmc.jsp" method="post">
      	        
		IBM LOGIN-ID:<input type="TEXT" NAME="LOGIN" id='l'><BR>
		EMAIL-ADDRESS:<input type="text" NAME="EMAIL" id='e'><BR>

		NAME: <input type="text" NAME="NAME" id='n' ><BR>

		DEPT:		<br>
	
		<input NAME="DEPT" id='d' type="radio" value="BME">BME<BR>
		<input NAME="DEPT" id='d' type="radio" value="IT">IT<BR>
		<input NAME="DEPT" id='d' type = "radio" value="EE">EE<BR>
		<input NAME="DEPT" id='d' type = "radio" value="CSE">CSE<BR>
		<input NAME="DEPT" id='d' type = "radio" value="ECE">ECE<BR>
		<input NAME="DEPT" id='d' type = "radio" value="AEIE">AEIE<BR><br>
      		
		YEAR:<br>

		<input NAME="YEAR" id='y' type = "radio" value="1">FIRST YEAR<BR>
		<input NAME="YEAR" id='y' type = "radio" value="2">SECOND YEAR<BR>
		<input NAME="YEAR" id='y' type = "radio" value="3">THIRD YEAR<BR>
		<input NAME="YEAR" id='y' type = "radio" value="4">FOURTH YEAR<BR>
      		     
	  
	  
      <div><input type="submit" value="SUBMIT DETAILS" /></div>
	  
	  
	</form>
		<% String s= user.getNickname();
		  if(s.equals("sbose78"))  {   %> 
		  
		 <br> HIII.. ADMINISTRATOR! 

		<br><br> 	

			<a href="/DB.jsp">CLICK HERE TO VISIT DATABASE</a><BR>
			
				  
		<% } else { %>


<%		}%>
		
    
<%	
}

else	
{

%>


<p>Hello!
<a href="<%= userService.createLoginURL(request.getRequestURI()) %>">HEY, SIGN IN USING YOUR GOOGLE ACCOUNT</a>
TO ACCESS THE FILES</p>

<%


 }

 %>
 

 
</html>

