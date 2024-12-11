<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>  
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
             
    <div class="col-sm-4">
    <h3>Registration Form</h3>
    <form action="empregister_action.jsp" method="post" target="_parent" enctype="multipart/form-data">
     <div class="form-group">
    <label style="margin-top:5px;">Name</label>
     <input type="text" placeholder="Name" name="empname" class="form-control" required>
       </div>
        <div class="form-group">
              <label style="margin-top:5px;">Email</label>
      <input type="email" placeholder="Email" name="email"  class="form-control" required>
        </div>
         <div class="form-group">
        <label>Gender</label>
        
        
       <input type="radio" name="Gender" value="Male" checked="checked">Male
            <input type="radio" name="Gender" value="Female">Female
      </div>
       <div class="form-group">
        <label style="margin-top:5px;">DateofBirth</label>
       <input type="date" placeholder="date of birth" name="dob"  class="form-control" required>
       </div>
        <div class="form-group">
        <label style="margin-top:5px;">Role</label>
          <select name="Role" class="form-control" >
				 <option value="choose category">Choose Category</option> 
				<option value="Employee">Employee</option>
				<option value="Supervisor">Supervisor</option>	
				</select>
				</div>
				 <div class="form-group">
				<label style="margin-top:4px;">Phone Number</label>
        <input type="text" placeholder="phone number" name="phoneno" class="form-control" required>
        </div>
         <div class="form-group">
       <label style="margin-top:2px;">Address</label>
        <textarea name="address" class="form-control"> </textarea>
       </div>
        <div class="form-group">
       <label style="margin-top:2px;">Image</label>
        <input type="file" name="image" class="form-control"> 
       </div>
       <input type="submit"  class="btn btn-primary" value="Register"> <input type="reset"  class="btn btn-primary" value="Cancel">
       
    
    </form>
    </div>
    </div>
</body>
</html>




 
