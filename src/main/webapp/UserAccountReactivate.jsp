<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.carserviceapp.connection.*" import ="java.sql.*" import="com.carserviceapp.model.*"
    import="javax.servlet.http.HttpSession"  import="com.carserviceapp.daoimpl.*"  import="com.carserviceapp.dao.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Service Center</title>
    <link rel="stylesheet" href="carser.css">
<style>
*{
 margin: 0;
 padding: 0;   
}
body
{
    height: 100vh;
    background: url(https://www.volvocars.com/images/v/-/media/project/contentplatform/data/media/pdp/s60-fuel/s60-hero-21x9.jpg?iar=0&w=1366);
    background-position: center;
    background-size:cover;
     color:white;
    font-size:large;
}
.heading
{
  position: absolute;
  left: 10px;
  font-size: 15px;
}
#firsthead
{
    color:#fff;
    position: relative;
    left: 10px;
    top: 1px;
    font-size: 40px;
    text-decoration: none;
    font-family:Georgia, 'Times New Roman', Times, serif;
}
#secondhead
{
    color:#fff;
    position: relative;
    text-decoration: none;
    left: 10px;
    top: -2px;
    font-size: 18px;
    font-family:Georgia, 'Times New Roman', Times, serif;   
}
.navnames {
    width: 100%;
    background-color: #555;
    overflow: auto;
    height: 70px;
  }

  .navnames a{
    float: right;
    text-align: center;
    padding: 12px;
    color: white;
    text-decoration: none;
    font-size: 17px;
    font-family:  -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  }

  .navnames a:hover {
    background-color: #000;
  }
   .finish
  {
    position:relative;
    left:450px;
    top:170px;
  }
    .activatebtn
{
  background-color:black;
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin-left:60px;
  position:absolute;
  left:570px;  
  top:330px;
}
.activatebtn:hover
{
 background-color:white;
 color:black;
}
</style>
</head>
<body>
    <div class="container">
        <div class="heading">
       <a href="#" id="firsthead"> <b>Car Service Center</b></a><br>
       <a href="#" id="secondhead">A one stop solution for all brand car service</a>  
       </div>
       <div class="navnames">
        <a href="RegisterPage.jsp">Register</a>
        <a href="LogIn.jsp">Login</a>
        <a href="#">Contact Us</a>
        <a href="#">About Us</a>
        <a href="#" >Home</a>          
       </div>
    </div>
    
    <%session =request.getSession();
	 String username=session.getAttribute("username").toString(); 
     String password=session.getAttribute("password").toString(); 
	 CarCustomer cust = new CarCustomer(username,password);
	 CarCustomerDAOImpl cdao = new CarCustomerDAOImpl();
	 int l =cdao.reactivate(cust);
	 if(l==1)
	 {
		 response.sendRedirect("LogIn.jsp");
	 }
	 %>
    
</body>
</html>