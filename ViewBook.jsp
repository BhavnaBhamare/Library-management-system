<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="com.pojo.*" 
    import="java.util.List"
    import="com.model.BLManager"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
  
  h2
  {
  text-align:left;
   color:yellow;
  }
 th
 {
   color:orange;
 } 
 td
 {
 color:red;
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
        <li><a href="addbookform.jsp">Add Book</a></li>
        <li><a href="ViewBook.jsp">View Book</a></li>
        <li><a href="issuebookform.jsp">Issue Book</a></li>
        <li><a href="ViewIssuedBook.jsp">View Issued Book</a></li>
        <li><a href="return.jsp">Return Book</a></li>
        <li><a href="LogoutLibrarian">Logout</a></li>
       </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br/>
<br/>
<br/>
<body background="images/d9.jpg">
<%
BLManager bl=new BLManager();
List<EBook>l=bl.getEBook();
session.setAttribute("list1",l);
%>
<div id="colorlib-contact">
		<div class="container">				
			<div class="row">												
				<div class="col-md-12 animate-box">
<h2 style="text-align:center" id="lablecolor">Book Details</h2>
							<table class="table table-hover table-bordered table-striped">
								<thead>
								  <tr>
									<th scope="col">CallNo</th>
									<th scope="col">Name</th>
									<th scope="col">Author</th>
									<th scope="col">Publisher</th>
									<th scope="col">Quantity</th>
									<th scope="col">Issued</th>
									<th scope="col">Delete</th>
				</tr>
								 </thead><tbody>
<c:forEach items="${sessionScope.list1}" var="l">

<tr>

<td>${l.callno}</td>
<td>${l.name}</td>
<td>${l.author}</td>
<td>${l.publisher}</td>
<td>${l.quantity}</td>
<td>${l.issued}</td>
<td><a href="DeleteBook?callno=${l.callno}"> Delete</a> </td>


</tr>		

</c:forEach>

	
		
					</tbody>
					    </table>
					    </div></div></div></div>
</body>
</html>