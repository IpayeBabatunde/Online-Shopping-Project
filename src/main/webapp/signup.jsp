<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  
  <form action ="signUpAction.jsp" method="post" >
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="text" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion" required>
  <option value="what was your first car?">what was your first car?</option>
  <option value="what is the name of your first pet?">what is the name of your first pet?</option>
  <option value="what elementary school did you attend?">what elementary school did you attend?</option>
  <option value="what is the name of the town where you were born?">what is the name of the town where you were born?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="password" placeholder="Enter Password" required>
  <input type="submit" value="signup">
   </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	

%>
<h1>Successfully Registered !</h1>
<%}%>
<%
if("invalid".equals(msg)) {
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>IPAYE ONLINE MEGA SHOPPING</h2>
    <p>This Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>