<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TransferCode</title>
</head>
<body bgcolor="skyblue">
<%@page import="java.sql.*"%>
<%
String account_number=request.getParameter("accno");
String aname=request.getParameter("aname");
String password=request.getParameter("pwd");
String taccount_number=request.getParameter("taccno");
int amount=Integer.parseInt(request.getParameter("tamt"));
int temp = amount; 
int amount1 = 0;

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bankmanagement","root", "");
PreparedStatement ps=conn.prepareStatement("select amount from bank_project where account_number=?");

ps.setString(1,account_number); 

ResultSet rs=ps.executeQuery();

if(rs.next())
{ 
    amount = rs.getInt(1)-temp; 
    out.print("<h3>"+temp+" is transfered to "+taccount_number); 
    out.println("<h3>WELCOME " +aname+ "...</h3>"); 

    out.println("<center><table  width='550' height='150'>"); 
    out.print("<tr><th>AMOUNT TRANSFERED</th><th>MY ACCOUNT NO.</th><th>TARGET ACCOUNT </th><th>MY BALANCE</th></tr>"); 

    out.print("<tr>"); 
    out.print("<td>" + temp+ "</td>"); 
    out.print("<td>" + account_number + "</td>"); 
    out.print("<td>" + taccount_number + "</td>"); 
    out.print("<td>" + amount + "</td>"); 
    out.print("</tr>"); 
    out.println("</center></table>"); 

   } 
PreparedStatement ps1 = conn.prepareStatement("update bank_project set amount=? where account_number=?"); 
ps1.setInt(1, amount); 
ps1.setString(2, account_number); 
ps1.executeUpdate(); 
PreparedStatement ps0 = conn.prepareStatement("select amount from bank_project where account_number=?"); 

ps0.setString(1,taccount_number); 

ResultSet rs1 = ps0.executeQuery(); 

if(rs1.next()) { 
 amount1 = temp + rs.getInt(1); 
} 

PreparedStatement ps2 = conn.prepareStatement("update bank_project set amount=? where account_number=?"); 
ps2.setInt(1,amount1); 
ps2.setString(2,taccount_number); 
ps2.executeUpdate(); 
conn.close(); 
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>