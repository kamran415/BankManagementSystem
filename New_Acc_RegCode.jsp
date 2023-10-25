<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New AccountCode</title>
</head>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String account_number=request.getParameter("accno");
String aname=request.getParameter("name");
String password=request.getParameter("pwd");
String confirm_password=request.getParameter("cpwd");
String amount=request.getParameter("amt");
String address=request.getParameter("addr");
String mobile_number=request.getParameter("mnum");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("insert into bank_project values(?,?,?,?,?,?)");
ps.setString(1,account_number);
ps.setString(2,aname);
ps.setString(3,password);
ps.setString(4,amount);
ps.setString(5,address);
ps.setString(6,mobile_number);

int i=ps.executeUpdate();
out.println(i+"Your Account has been Created Successfully...");
conn.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>