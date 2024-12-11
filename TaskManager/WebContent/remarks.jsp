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

<body>

<%
String empid=request.getParameter("empid");




%>

<%
try
{
	/* empid=session.getAttribute("empid").toString(); */
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  emp_reg where empid='"+empid+"'");

while(rs.next())
{

	empid=rs.getString("empid");
	
     
     
}}
catch(Exception e){
	e.printStackTrace();
}



%>
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
             
    <div class="col-sm-4">
    <h3>Remarks Page</h3>
    <form action="remarks_action.jsp" method="post" target="_parent">
   
    
        <div class="form-group">
              <label style="margin-top:5px;">Id</label>
      <input type="text" placeholder="Enter id" name="f1" value="<%=empid%>" class="form-control" required>
        </div>
         <div class="form-group">
        <label>Remarks</label>
        
       <input type="text" placeholder="please enter remarks for project" name="f2" class="form-control" required>
      </div>
       
       <input type="submit"  class="btn btn-primary" value="AddRemark">
       
    
    </form>
     
    </div>
    </div>
</body>
</html>