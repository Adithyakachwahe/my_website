<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGED USERS</title>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="lib/hover/hoverex-all.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

</head>
<body style="background-color: #7FDBFF ;">

     <!-- Fixed navbar -->
  <div class="myclass" style="background-color:#384452;" >
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
     	<c:set var="str" value="ADMIN USER"></c:set>
     	

      </div>
      <div class="navbar-collapse collapse navbar-right">
        <ul class="nav navbar-nav">
        
        	<li><a href="login.jsp">LOGOUT</a></li>
          <li><a href="login_db.jsp">LOGED USERS</a></li>
          <li><a href="contact_db.jsp">CONTACT MESSAGES</a></li>

             
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    </div>
<h2>USER LOGED IN ARE GIVEN BELOW</h2>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/database_1" user="root" password="systemserver" />
<sql:query var="rs" dataSource="${db }">SELECT * FROM database_1.login</sql:query>
<table border=2 style="margin-left:10rem;">
		<tr>
	 	<th style="padding:5px;">Identification number</th>
	 	<th style="padding:5px;">User-Name</th>
	 	<th style="padding:5px;">Pass-Word</th>
	 	</tr>
	<c:forEach var="ele" items="${rs.rows}">

	
	<tr>
	 	<td style="padding:5px;"><c:out value="${ele.id}"></c:out></td>
	 	<td style="padding:5px;"><c:out value="${ele.uname}"></c:out></td>
	 	<td style="padding:5px;"><c:out value="${ele.pass}"></c:out></td>
	</tr>
	</c:forEach>
</table>

    	  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>