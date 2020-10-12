<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
  
  h3
  {
  text-align:left;
   color:yellow;
  }
 label
 {
   color:orange;
 } 
 
 
  </style>
  
</head>


<nav class="navbar navbar-inverse">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">eLibrary</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         <li><a href="index.jsp">Home</a></li>
      <li><a href="addlibrarianform.jsp">Add Librarian</a></li>   
        
        <li><a href="ViewLibrarian.jsp">View Librarian</a></li>
        <li><a href="LogoutAdmin">Logout</a></li>
       </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br/>
<br/>
<br/>
<body background="images/d9.jpg" >

<div id="colorlib-contact">
		<div class="container">
			<div class="row">								
				<div class="col-md-12 animate-box">
					<div class="row">
						<div class="col-md-6">
						<h3><b>Add Librarian<b></b></h3>
  <form action="AddLibrarian" method="post" style="width:300px">
  <div class="form-group">
    <label for="name1">Name</label>
    <input type="text" class="form-control" name="name" id="name1" placeholder="Name" required/>
  </div>
  <div class="form-group">
    <label for="email1">Email address</label>
    <input type="email" class="form-control" name="email" id="email1" placeholder="Email" required/>
  </div>
  <div class="form-group">
    <label for="password1">Password</label>
    <input type="password" class="form-control" name="password" id="password1" placeholder="Password" required/>
  </div>  
  <div class="form-group">
    <label for="mobile1">Mobile Number</label>
    <input type="number" class="form-control" name="mobile" id="mobile1" placeholder="Mobile" required/>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div></div></div></div></div>
</div>
 <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</body>
</html>