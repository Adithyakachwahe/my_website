<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HEADER</title>


 <%@ include file="link" %>

</head>
<body>
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
          
     	<c:set var="str" value="${user}"></c:set>
     	
        <a class="navbar-brand" href="index.jsp">${fn:toUpperCase(str)}</a>
      </div>
      <div class="navbar-collapse collapse navbar-right">
        <ul class="nav navbar-nav">
        
        
          <li class="active"><a href="index.jsp">HOME</a></li>
          <li><a href="about.jsp">ABOUT</a></li>
          <li><a href="contact.jsp">CONTACT</a></li>
          <li><a href="login.jsp">LOGOUT</a></li>
          
     
    <!--   <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="index.jsp">HOME</a></li>
              <li><a href="about.jsp">ABOUT</a></li>
              <li><a href="contact.jsp">CONTACT</a></li>
              <li><a href="login.jsp">LOGOUT</a></li>
            </ul>
          </li>
         
      -->          
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    </div>
    
    <%@ include file="script" %>

</body>
</html>