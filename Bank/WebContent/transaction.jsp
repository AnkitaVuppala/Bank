  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*,java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>transaction page</title>
<style>
table{
width:1000px;
border-collapse: collapse;
}
table, tr, td{
border: 1px solid black;
}
td, tr{
padding: 30px;
text-align:center;
}
.g
{
padding: 100px;
align: left;
}
ul
{
list-style-type:none;
margin:0;padding:0;
overflow:hidden;
background-color:black;
color:white;
font-size: 50px;
}
ul1
{
list-style-type:none;
margin:0;padding:0;
overflow:hidden;
background-color:white;
color:white;
font-size: 50px;
}
li{
float:center;
display:inline-block;
}
table1{
width:1000px;
border-collapse: collapse;
}
td, tr{
padding: 30px;
text-align:center;
}
.submit {
       background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
    }
    .border1
{
border: 1px solid black;
width: 1170px;
height:600px;
padding:20px;
}
.s
{
white-spacing:pre;
}
</style>
</head>
<body>
<ul>
<center>
<li>
<li>TRANSACTION DETAILS</li></center>
</ul>
<ul1><li> ..</li></ul1>
<center>
<div class="border1">
<table1>
<center>
<tr>
<td><strong>Name Of The Customer: K.Sai Tejaswi</strong></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<td><strong>AMOUNT BALNCE:
 <%
 try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection	con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bank", "root", "root");
	Statement stmt =con.createStatement(); 
	String ps1 = "select balance from trans ORDER BY id DESC LIMIT 1";
	ResultSet rs1 = stmt.executeQuery(ps1);
	int j=0;
	while(rs1.next()){
		%>
		<%=rs1.getInt(1)%></strong></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<td><a href="Transaction"><button class="submit" type="button">FUND TRANSFER</button></a></td></tr></center></table1>
		<%
		j++;
	}
	%>
	<div class="s"></div>
<table>
<tr>
<thead>
<td><strong>ID</strong></td>
<td><strong>DATE</strong></td>
<td><strong>TYPE</strong></td>
<td><strong>COMMENTS</strong></td>
<td><strong>DEBIT</strong></td>
<td><strong>CREDIT</strong></td>
<td><strong>BALANCE</strong></td>
</thead></tr>
<% 
	String ps2 = "select * from trans ORDER BY id DESC LIMIT 5";
	ResultSet rs2 = stmt.executeQuery(ps2);
	int i=0;
	while(rs2.next()){
		%>
		<tbody>
		<tr >
		<td><%=rs2.getInt(1) %></td>
		<td><%=rs2.getString(2) %></td>
		<td><%=rs2.getString(3) %></td>
		<td><%=rs2.getString(4) %></td>
		<td><%=rs2.getInt(5) %></td>
		<td><%=rs2.getInt(6) %></td>
		<td><%=rs2.getInt(7) %></td>
		</tr>
		</tbody>
<% 
i++;
	}
	}
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>
 </table>
 </div>
 </center>
</body>
</html>
