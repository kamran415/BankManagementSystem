<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Close_AccountCode</title>
</head>
<body>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String account_number=request.getParameter("accno");

String aname=request.getParameter("uname");
String password=request.getParameter("pwd");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
	PreparedStatement ps=conn.prepareStatement("delete from bank_project where account_number=?");
	ps.setString(1,account_number);
	int i=ps.executeUpdate();
	out.println(i+"Your Account has been Closed Successfully...");
	conn.close();
}  
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>