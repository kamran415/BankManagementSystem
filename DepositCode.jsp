<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DepositCode</title>
</head>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String account_number=request.getParameter("accno");
String aname=request.getParameter("uname");
String password=request.getParameter("pwd");
String num1=request.getParameter("damt");
int amount=Integer.parseInt(num1);
int temp=amount;
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("select amount from bank_project where account_number=?");

ps.setString(1,account_number);

ResultSet rs=ps.executeQuery();

if(rs.next()){
		amount=amount+rs.getInt(1);
			out.print("<h3>Welcome " + aname + "...</h3>");
			out.print("<h3>your account has been credited by " + temp + "...</h3>");
			out.print("<h3>your account balance is " + amount + "...</h3>");
}
PreparedStatement ps1=conn.prepareStatement("update bank_project set amount=? where account_number=?");
ps1.setInt(1,amount);
ps1.setString(2,account_number);
ps1.executeUpdate();
conn.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>