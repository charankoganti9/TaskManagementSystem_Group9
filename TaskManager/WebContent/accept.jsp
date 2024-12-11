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
try
{
	
	 String id=request.getParameter("id");  
    String status=request.getParameter("status");
    
    

	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
	Statement st=con.createStatement();
	
	int i=st.executeUpdate("update emp_reg set status='"+status+"' where empid='"+id+"' "); 

	if(i>0)
	{
		%>
	<script type="text/javascript">
	alert("success");
	</script>
	
		
		<%

		response.setHeader("Refresh","0.05; URL=index.jsp");
	}
	
	else
	out.println("invalid");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>