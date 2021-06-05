<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN PAGE</title>
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
    
 <!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
  <div id="blue">
    <div class="container">
      <div class="row">
        <h3>WELCOME ADMIN</h3>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /blue -->

  <!-- *****************************************************************************************************************
	 TITLE & CONTENT
	 ***************************************************************************************************************** -->

  <div class="container mt">
    <div class="row">
      <div class="col-lg-10 col-lg-offset-1 centered">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="img/portfolio/single01.jpg" alt="">
            </div>
            <div class="item">
              <img src="img/portfolio/single02.jpg" alt="">
            </div>
            <div class="item">
              <img src="img/portfolio/single03.jpg" alt="">
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-5 col-lg-offset-1">
        <div class="spacing"></div>
        <h4>YOUR PROJECT NAME</h4>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
          It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
        <h4>Our Proposal</h4>
        <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
      </div>

      <div class="col-lg-4 col-lg-offset-1">
        <div class="spacing"></div>
        <h4>Project Details</h4>
        <div class="hline"></div>
        <p><b>Date:</b> April 18, 2014</p>
        <p><b>Author:</b> Marcel Newman</p>
        <p><b>Categories:</b> Illustration, Web Design, Wordpress</p>
        <p><b>Tagged:</b> Flat, UI, Development</p>
        <p><b>Client:</b> Wonder Corp.</p>
        <p><b>Website:</b> <a href="index.jsp">http://example.com</a></p>
      </div>

    </div>
  </div>

	<%@ include file="footer.jsp" %>
</body>
</html>