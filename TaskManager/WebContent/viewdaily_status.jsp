
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
<th>D.ID</th><th>EMP.ID</th><th>Date</th><th>TaskName</th><th>TaskInformation</th></tr>


<%

try{
	 /* String eid=session.getAttribute("empid").toString(); */
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from dailystatus");
while(rs.next()){
	
	 String eid= rs.getString("emid"); 
	
	String date= rs.getString("date");
	
	String status= rs.getString("taskstatus"); 
	
	String taskname=rs.getString("taskname");
	
	String did= rs.getString("did");
%>
<tr><td><%=did%></td><td><%=eid %></td><td><%=date%></td><td><%=taskname%></td><td><%=status %></td>
<td><a href="remarks.jsp?empid=<%=eid%>"><input type="submit" value="Remarks" class="btn btn-primary" ></a></td>
<%-- <td> <a href="accept.jsp?id=<%=id%>&status=1"><input type="button" value="Accept" target="_parent"></a></td>
<td> <a href="reject.jsp?id=<%=id%>&status=2"><input type="button" value="Reject" target="_parent"></a></td> --%>
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