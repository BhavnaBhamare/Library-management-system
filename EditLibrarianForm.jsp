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
  text-align:center;
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
<body background="images/d3.jpg">

<div id="colorlib-contact">
		<div class="container">
			<div class="row">								
				<div class="col-md-12 animate-box">
					<div class="row">
						<div class="col-md-6">
<h2 style="text-align:left;color:yellow;">Librarian Form</h2>
<br/>
<br/>
	<form action="EditLibrarianForm"  method="post"  >
								
			<div class="row form-group" style="text-align:left;">
					
						<div class="col-md-6">
						
				<label for="finst" id="lablecolor" >Id</label>
						<input type="text" class="form-control mb"  value="${list.id}"   
					name="id" style="width:80%" readonly >
						
																																
											
			<label for="finstdate" id="lablecolor" >Name</label>
			<input type="text"  class="form-control"    value="${list.name}"   
				name="name"    required style="width:80%">
										
														
									
											
														<label for="sinst" id="lablecolor" >Password</label>
														<input type="password"  class="form-control mb" 
value="${list.password}"    name="password"   required style="width:80%">		
<br/>													
						<label for="sinstdate" id="lablecolor" >Email</label>
													<input type="email"  class="form-control"    value="${list.email}"  
													name="email"   required style="width:80%">
												
													<label for="sinstdate" id="lablecolor" >Mobile</label>
													<input type="number"  class="form-control"    value="${list.mobile}"  
													name="mobile"   required style="width:80%">
								<br/>
								<br/>
									<input type="submit" value="submit" class="btn btn-primary" style="width:50%; align:left;"  >
																		
									</div>	
									</div>						
							
							</form>
</div>
</div></div></div></div></div>

</body>
</html>