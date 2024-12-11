
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            
</head>
<body>

        
    
<table class="table table-striped" border="2">
<tr>
<th>EMP.ID</th><th>TASK NAME</th><th>DATE</th><th>TaskInformation</th><!-- <th colspan="2">Action</th> --></tr>


<%
String empid=null,task=null,date=null,taskname=null;
try{
	/* empid=session.getAttribute("empid").toString(); */
	
String	search=request.getParameter("search status");
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from dailystatus where emid LIKE '%" + search + "%'  ");
while(rs.next()){
	
	 empid= rs.getString("emid");
	System.out.println(empid);
	 task= rs.getString("taskstatus");
	 System.out.println(task);
	 date =rs.getString("date");
	 System.out.println(date);
	 taskname=rs.getString("taskname");
	
%>
<tr><td><%=empid%></td><td><%=taskname%></td><td><%=date%></td><td><%=task%></td>

</tr>


<%	


}


	}
catch(Exception e){
	e.printStackTrace();
	
}
%>
</table>
</body>
</html>