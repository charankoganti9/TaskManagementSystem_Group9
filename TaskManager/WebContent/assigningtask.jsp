<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body><br><br>
<%
String id=null, employeeid=null, taskname=null,taskdetails=null;

%>
<table class="table table-striped" border="2">
<tr>
<th><b>Id</b></th>
<th><b>EmployeeId</b></th>
<th><b>TaskName</b></th>
<th><b>TaskDeatails</b></th>
<th><b>Action</b></th>
</tr>

<%

try
{
	   taskname=session.getAttribute("empid").toString();    
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  dailytask where esid='"+taskname+"'");

while(rs.next())
{

	id=rs.getString("id");
	employeeid=rs.getString("esid");
   taskname=rs.getString("subject"); 
	taskdetails=rs.getString("task");
	

%>
<tr>
<td><%=id%></td>
<td ><%=employeeid%></td>
<td><%=taskname%></td>
<td><%=taskdetails%></td>



</tr>
<%
}}
catch(Exception e){
	e.printStackTrace();
}

%>

</table>
</body>
</html>