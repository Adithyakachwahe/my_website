<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE ACCOUNT</title>

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

        <form action="Create">
            <h2>Creating Account</h2>
            <label>Enter Your Username:</label>
            <input type="text" name="un">
            <br>
            <br>

            <label >Enter Your Password:</label>
            <input type="password" name="ps"><br>
           
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