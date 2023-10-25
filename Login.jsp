<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Bank Login</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="center">
      <h1><img src="bank1.jpg"></h1>
 <form name="form1" action="LoginCode.jsp" method="post">
        <div class="txt_field">
          <input type="text" name="aname" required>
          <span></span>
          <label>Account Name</label>
        </div>
        <div class="txt_field">
          <input type="password" name="pwd" required>
          <span></span>
          <label>Password</label>
        </div>
        <input type="submit" value="Login">
        <div class="signup_link">
          Not a member? <a href="New_Account.jsp">Signup</a>
        </div>
    </div>
</form>
</body>
</html>