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
String empid=null, name=null, email=null,gender=null,dob=null,role=null,phno=null,address=null,image=null;




%>

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
     
}}
catch(Exception e){
	e.printStackTrace();
}



%>
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
             
    <div class="col-sm-4">
    <h3>Update Emp profile</h3>
    <form action="editprofile_action.jsp" method="post" target="_parent" enctype="multipart/form-data">
   <%--  <div class="form-group">
    <label style="margin-top:5px;">Empid</label>
     <input type="hidden" placeholder="Name" name="empid" value="<%=empid%>" class="form-control" required>
       </div> --%>
     <div class="form-group">
    <label style="margin-top:5px;">Name</label>
     <input type="text" placeholder="Name" name="f1" value="<%=name%>" class="form-control" required>
       </div>
        <div class="form-group">
              <label style="margin-top:5px;">Email</label>
      <input type="email" placeholder="Email" name="f2" value="<%=email%>" class="form-control" required>
        </div>
         <div class="form-group">
        <label>Gender</label>
        
        
       <input type="text" name="f3"  checked="checked" value="<%=gender%>" class="form-control">
            <%-- <input type="radio" name="Gender" value="Female" value="<%=gender%>">Female --%>
      </div>
       <div class="form-group">
        <label style="margin-top:5px;">DateofBirth</label>
       <input type="date" placeholder="date of birth" name="f4" value="<%=dob%>" class="form-control" required>
       </div>
        <div class="form-group">
        <label style="margin-top:5px;">Role</label>
         <input type="text" placeholder="Role" name="f5" value="<%=role%>" class="form-control" required>   
          <%-- <select name="Role" class="form-control" value="<%=role%>" >
				 <option value="choose category">Choose Category</option> 
				<option value="Employee">Employee</option>
				<option value="Supervisor">Supervisor</option>	
				</select> --%>
				</div>
				 <div class="form-group">
				<label style="margin-top:4px;">Phone Number</label>
        <input type="text" placeholder="phone number" name="f6" value="<%=phno%>"  class="form-control" required>
        </div>
         <div class="form-group">
       <label style="margin-top:2px;">Address</label>
        <input type="text" placeholder="Address" name="f7" value="<%=address%>" class="form-control" required>
       </div>
       <div class="form-group">
       <label style="margin-top:2px;">Image</label>
        <input type="file" placeholder="please upload image" name="f8" value="<%=image%>" class="form-control" required>
       </div>
       <input type="submit"  class="btn btn-primary" value="Update"> <input type="reset"  class="btn btn-primary" value="Cancel">
       
    
    </form>
     
    </div>
    </div>
</body>
</html>