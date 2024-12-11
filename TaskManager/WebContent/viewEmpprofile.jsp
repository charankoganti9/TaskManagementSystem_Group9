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
String empid=null, name=null, email=null,gender=null,dob=null,role=null,phno=null,address=null,image=null;

%>
<table class="table table-striped" border="2">
<tr>
<th><b>EmpId</b></th>
<th><b>Name</b></th>
<th><b>Email</b></th>
<th><b>Gender</b></th>
<th><b>DOB</b></th>
<th><b>Role</b></th>
<th><b>PhoneNo</b></th>
<th><b>Address</b></th>
<th><b>Image</b></th>
<th><b>Action</b></th>
</tr>

<%

try
{
empid=session.getAttribute("empid").toString();
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  emp_reg where empid='"+empid+"'");

while(rs.next())
{

	empid=rs.getString("empid");
	name=rs.getString("empname");
	email=rs.getString("email");
	gender=rs.getString("Gender");
	dob=rs.getString("dob");
	role=rs.getString("Role");
	phno=rs.getString("phoneno"); 
     address=rs.getString("address");
     image=rs.getString("image");
	

%>
<tr>
<td><%=empid%></td>
<td ><%=name%></td>
<td><%=email%></td>
<td><%=gender%></td>
<td><%=dob %></td>
<td><%=role %></td>
<td><%=phno %></td>
<td><%=address %></td>
<td><img alt="" src="upload/<%=image%>" style="width:120px;height:120px;"></td>
<td> <a href="editprofile.jsp?empid=<%=empid%>"><input type="submit" value="EditProfile" class="btn btn-primary" ></a></td>


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