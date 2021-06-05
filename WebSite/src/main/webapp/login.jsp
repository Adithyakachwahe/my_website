<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
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
            margin-top: 166px;
            margin-left:4px;
        }
    </style>
    
    
</head>
<body>

    <div class="container">

        <form action="Login">
            <h2>Login Page</h2>
            <label>Username:</label>
            <input type="text" name="username">
            <br>
            <br>

            <label >Password:</label>
            <input type="password" name="password"><br>
            <link><a class="pw" href="#">Forgot password</a></link>
            <br>
            <br>

            <button type="submit">Submit</button>
            <button type="reset">Reset</button>


        </form>
            <form class="container2" action="create.jsp">
                <input type="submit" value="Create Account">
            </form>
            </form>
            <form class="container2" action="admin_login.jsp">
                <input type="submit" value="Admin">
            </form>
    </div>
    

</body>
</html>