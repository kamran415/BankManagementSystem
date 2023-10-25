<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WithdrawCode</title>
</head>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String account_number=request.getParameter("accno");
String aname=request.getParameter("uname");
String password=request.getParameter("pwd");
String num1=request.getParameter("wamt");
int amount=Integer.parseInt(num1);
Connection conn=null;
int acc=0;

try
{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("update bank_project set amount=amount-? where account_number=? and aname=? and password=?");

ps.setInt(1,amount);
ps.setString(2,account_number);
ps.setString(3,aname);
ps.setString(4,password);

ps.executeUpdate();

PreparedStatement ps1=conn.prepareStatement("select amount from bank_project where account_number=? and aname=? and password=?");
ps1.setString(1,account_number);
ps1.setString(2,aname);
ps1.setString(3,password);

ResultSet rs=ps1.executeQuery();
while(rs.next())
{
	 
	 try
	 {
		 out.println("Your balance has decrease :- " +amount+" Your Current balance is : "+rs.getString(1));
	 }
	 catch(Exception e)
	 {
		 out.print(e);
	 }
}
conn.close();
}
catch(Exception ex)
{
	out.print(ex);
}
finally
{
	if(conn!=null)
		conn.close();
		out.print(" ");
}
%>
</body>
</html>