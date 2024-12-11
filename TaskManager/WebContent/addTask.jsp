<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
      <title>EmployeeTask</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>      
     
    </head>
    <body>
     
<%
  String idd=null;

  try
  {
  	
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
  Statement stmt=con.createStatement();
  ResultSet   rs=stmt.executeQuery("select * from  emp_reg where status='1' ");

 
  %>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <form action="addTask_action.jsp" method="post" target="_parent">
           
                   
                   <div class="form-group">
                       <label style="margin-top:5px;">EmpId</label>
                      
                     <select name="t1"   class="form-control">
                     <% while(rs.next())
                     {
                         idd=rs.getString("empid");
                         %>   
                         <option value="<%=idd%>"><%=idd%></option> 
                    <%
                    
				
				 } 
				 
				 }
  catch(Exception e){
  	e.printStackTrace();
  }
 
 %>
				</select>
				</div> 
                      <div class="form-group">
                        <label>Task (*)</label>
                        <input type="text" name="t3" autocomplete="off" placeholder="Please enter projectname" class="form-control" required>
                    </div> 
                
                
                    <div class="form-group">
                        <label>Task Information (*)</label>
                        <textarea name="t2" rows="6" autocomplete="off" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit"  font-weight:bold" class="btn btn-success" value="Submit">
                    </div>
                    </form>
                     </div>
                </div>
              

	</body>
</html>
