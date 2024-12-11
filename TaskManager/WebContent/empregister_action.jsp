
<%@page import="java.util.Random"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
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

File file14;
int maxFileSize = 50000 * 1024;
int maxMemSize = 50000 * 1024;
                     
String filePath = "C:/upload/";

DiskFileItemFactory factory= new DiskFileItemFactory();
factory.setSizeThreshold(maxMemSize);        
factory.setRepository(new File("c:\\temp"));
ServletFileUpload upload=new ServletFileUpload(factory);
if(!ServletFileUpload.isMultipartContent(request)){
System.out.println("sorry, no Image Uploaded");
return;
}
   upload.setSizeMax( maxFileSize );
   try{ 
      List fileItems = upload.parseRequest(request);
      	
        FileItem empname = (FileItem) fileItems.get(0);
		String s1 = empname.getString();
		/* System.out.println(s1); */
		
		 FileItem email = (FileItem) fileItems.get(1);
	        String s2 = email.getString();
       	/*  System.out.println(s2); */

		 FileItem Gender = (FileItem) fileItems.get(2);
			String s3 = Gender.getString();
			/* System.out.println(s3); */
			
			  FileItem dob = (FileItem) fileItems.get(3);
				String s4 = dob.getString();
				/* System.out.println(s4); */
			
			 FileItem Role = (FileItem) fileItems.get(4);
				String s5 = Role.getString();
				/* System.out.println(s5); */
				
				 FileItem phoneno = (FileItem) fileItems.get(5);
					String s6 =phoneno.getString();
					/* System.out.println(s6); */
			
					 FileItem address = (FileItem) fileItems.get(6);
					   String s7 =address.getString();  
					   /* System.out.println(s7); */
					   
				 
								
      FileItem f14=(FileItem)fileItems.get(7);
      String fieldName14 = f14.getFieldName();
      String fileName14 = f14.getName();
      
      String format14 = "none";
      int index14 = fileName14.lastIndexOf(".");
      if(index14 > 0){
                     format14 = fileName14.substring(index14+1);
                     format14 = format14.toLowerCase();
      }
      
      Random rand = new Random(); 
      int n = rand.nextInt(90000) + 10000;

      
      String fname14=n+"photo."+format14;
      System.out.println(s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+fname14+" ");
      
      boolean isInMemory14 = f14.isInMemory();
      long sizeInBytes14 = f14.getSize();
      file14 = new File( filePath + fname14) ;
      f14.write( file14)  ;
     
int status=0;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanager","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into emp_reg (empname,email,Gender,dob,Role,phoneno,address,image,status)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+fname14+"','0')");

if(i>0){
	out.println("Registered successfully");
	response.sendRedirect("index.jsp");
}
else{
	out.println("connection error");
}
con.close();
}
   
catch(Exception e)
{
e.printStackTrace();	
}}
catch(Exception e)
{
e.printStackTrace();	
}
 


 

%>
</body>
</html>