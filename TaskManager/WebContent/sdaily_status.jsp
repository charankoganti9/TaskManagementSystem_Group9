
    <!DOCTYPE html>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
  idd=session.getAttribute("empid").toString();
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
  Statement stmt=con.createStatement();
  ResultSet   rs=stmt.executeQuery("select * from  emp_reg where empid='"+idd+"' ");

 
  %>
   

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <form action="sdaily_status_action.jsp" method="post" target="_parent">
           
                 <div class="form-group">
                        <label>Employee&nbsp;Id (*)</label>
                       <%--  <input type="text" name="t1" autocomplete="off" class="form-control"  placeholder="empid" value="<%=idd%>" required > --%>
                        <% while(rs.next())
                     {
                         idd=rs.getString("empid");
                         %>   
                        <input type="text" name="t1" autocomplete="off" class="form-control"  placeholder="empid" value="<%=idd%>" required >
                    <%
                    
				
				 } 
				 
				 }
  catch(Exception e){
  	e.printStackTrace();
  }
 
 %>
                  </div>
                    <div class="form-group">
                        <label>Date (*)</label>
                        <input type="date" name="t2" autocomplete="off" placeholder="2019-10-24" min="2019-10-17" max="2019-10-25" class="form-control" required>
                    </div>
                     <div class="form-group">
                        <label>Task Name(*)</label>
                        <input type="text" name="t4" autocomplete="off" placeholder="please enter task name"  class="form-control" required>
                    </div>
               
                
                    <div class="form-group">
                        <label>Task Information (*)</label>
                        <textarea name="t3" rows="6" autocomplete="off" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit"  font-weight:bold" class="btn btn-success" value="Submit">
                    </div>
                    </form>
                     </div>
                </div>
                
   
	</body>
</html>

   
   
	