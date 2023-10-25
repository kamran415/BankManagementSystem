<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Balance</title>
<link rel="stylesheet" href="styles.css" type="text/css"/>
</head>
<body>
<h1>BANK MANAGEMENT SYSTEM<p></p></h1>
<br>
<nav>
  <ul>
  <li><a href="Home.jsp"><b>Home<b></b></a><li>
 <li><a href="New_Account.jsp"><b>New Account<b></b></a><li>
 <li><a href="Balance.jsp"><b>Balance<b></b></a><li>
 <li><a href="Deposit.jsp"><b>Deposit<b></a><li>
 <li><a href="Withdraw.jsp"><b>Withdraw<b></a><li>
 <li><a href="Transfer.jsp"><b>Transfer<b></a><li>
 <li><a href="Close_Account.jsp"><b>Close A/C<b></a><li>
 <li><a href="Aboutus.jsp"><b>Aboutus<b></a><li>
 <li><a href="Login.jsp"><b>Login<b></a><li>
  </ul>
</nav>
<h4 style="color:red"><center>EXTRA ORDINARY SERVICES</center></h4>
<br>
<form name="form1"action="BalanceCode.jsp" method="post" target="_blank">
<center>
<div class="wrapper">
	<div class="input-data">
            <h3 style="color:blue"><center>BALANCE FORM</center></h3>
         </div>
         <br><br>
         
         <div class="input-data">
            <input type="text" name="accno" required>
            <div class="underline"></div>
            <label>Account Number:</label>
         </div>
         <br><br>
       
         <div class="input-data">
            <input type="text" name="uname" required>
            <div class="underline"></div>
            <label>UserName:</label>
         </div>
         <br><br>

         <div class="input-data">
            <input type="password" name="pwd" required>
            <div class="underline"></div>
            <label>Password:</label>
         </div>
         <br><br>
         
        <div class="button">
        <table>
            <center>
            <tr>
  		<td><button input type="submit" value="Register">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      	<td><button input type="reset" value="Reset">Reset</button></td>
      	</tr>
      	</center>
      	</table>
      	</div>
      	</div>
     </center>
</form>
</body>
</html>