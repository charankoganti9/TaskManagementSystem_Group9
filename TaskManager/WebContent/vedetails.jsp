
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

        
     <center><h3>EMPLOYEE DETAILS</h3></center>
<table border="2">
<tr>
<th>EMP.ID</th><th>EMPLOYEE NAME</th><th>EMAIL</th><th>Gender</th><th>DOB</th><th>Role</th><th>PhoneNo</th><th>Address</th><th>Image</th><th colspan="2">Action</th></tr>


<%

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from emp_reg ");
while(rs.next()){
	
	String name= rs.getString("empname");
	
	String email= rs.getString("email");
	
	String gender= rs.getString("Gender"); 
	
	String dob= rs.getString("dob");
	
	String role= rs.getString("Role");
	
	
	String phonenumber= rs.getString("phoneno");
	
	String address= rs.getString("address");
	String profile=rs.getString("image");
	String id= rs.getString("empid");
	String status=rs.getString("status");
	
	String approve;
	if(status.equals("0")){
		approve="pending";
		
	}
	else{
		approve="Accept";
	}
%>
<tr><td><%=id%></td>
<td><%=name %></td>
<td><%=email%></td>
<td><%=gender %>
</td><td><%=dob%></td>
<td><%=role%></td>
<td><%=phonenumber%></td>
<td><%=address%></td>
<td><img alt="" src="upload/<%=profile%>" style="width:120px;height:120px;"></td>

<%

if(status.equals("0")){
	approve="pending";
	%><td> <a href="accept.jsp?id=<%=id%>&status=1"><input type="button" value="pending" target="_parent"></a></td>
	<%-- <td> <a href="reject.jsp?id=<%=id%>&status=2"><input type="button" value="Reject" target="_parent"></a></td> --%>
<% 
}
else{
	approve="Accepted";
	%>
	<td><%=approve %></td>
<% 
}

%>



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