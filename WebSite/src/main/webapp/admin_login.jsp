<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN PAGE</title>

   <style>
        .container{
            border:2px solid black;
            border-radius:5px;
  			background-color: none; 
            display:flex;
            justify-content:center;
            padding-bottom: 2.3rem;
            margin:0px auto 0px auto;
        }
        .pw{
            text-decoration: none;
            color:red;
        }
         .container2{
            margin-top: 148px;
        }
    </style>
</head>
<body>


    <div class="container">

        <form action="Admin">
            <h2>Admin Login Page</h2>
            <label>User-Id:</label>
            <input type="text" name="userid">
            <br>
            <br>

            <label >Password:</label>
            <input type="password" name="p"><br>
           
            <br>

            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
            
            
            </form>
     
	
	            <form class="container2" action="login.jsp">
                <input type="submit" value="Back">
            </form>
 </div>
    
</body>
</html>