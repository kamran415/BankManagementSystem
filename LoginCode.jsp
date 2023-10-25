<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginCode</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%
String aname=request.getParameter("aname");
String password=request.getParameter("pwd");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("select * from bank_project where aname=? and password=?");
ps.setString(1,aname);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();

if(rs.next())
	{
	response.sendRedirect("Home.jsp");
	}
else
{
	out.print("Invalid Username & Password");
}
conn.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>