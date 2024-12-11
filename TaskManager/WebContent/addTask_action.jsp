<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");

int status=0;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into dailytask (esid,subject,task)values('"+s1+"','"+s3+"','"+s2+"')");

if(i>0){
	out.println("Added successfully");
	response.sendRedirect("adminHome.jsp");
}
else{
	out.println("connection error");
}
con.close();
}
catch(Exception e)
{
e.printStackTrace();	
}


%>
</body>
</html>