<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BalanceCode</title>
</head>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String num=request.getParameter("accno");

String aname=request.getParameter("uname");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("select * from bank_project where account_number=? and aname=?");

ps.setString(1,num);
ps.setString(2,aname);
ResultSet rs=ps.executeQuery();
ResultSetMetaData rsmt=rs.getMetaData();
int count=rsmt.getColumnCount();

out.println("<table border=1>");
out.println("<tr>");
for(int i=1;i<=count;i++)
{
	  out.println("<td <font color=red size=3>"+rsmt.getColumnName(i)+"</td>");
}
out.println("</tr>");
while(rs.next())
{
	out.println("<tr>");
	for(int i=1;i<=count; i++)
	{
		out.println("<td>"+rs.getString(i)+"</td>");
	}
	out.println("</tr>");
}
	out.println("</table>");
	conn.close();
}
catch(Exception e)
{
	out.print("Exception:"+e);
}

%>
</body>
</html>