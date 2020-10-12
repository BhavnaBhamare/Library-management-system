<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="com.pojo.*"
    import="com.model.*"
    import="java.util.*"
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
  color:green;
  }
 label
 {
  text-align:left;
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
<body background="images/d3.jpg">
<%
BLManager bl=new BLManager();
List<EBook>l=bl.getEBook();
session.setAttribute("list1",l);

%>


<br/>
<br/>
<br/>
<div class="container text-center text-center" style="align:center">
            <form action="IssueBook" method="post" style="width:300px">
    <div class="form-group">
   
<label for="callno1">Callno</label>
   
    <select class="form-control" name="callno" id="callno1" required>
  <c:forEach items="${sessionScope.list1}" var="l">
    <option>${l.callno}</option>
      </c:forEach>
    </select>
  
  </div>
  <div class="form-group">
    <label for="id1">Student Id</label>
    <input type="number" class="form-control" name="studentid" id="id1" placeholder="Student Id" required/>
  </div>
  <div class="form-group">
    <label for="name1">Student Name</label>
    <input type="text" class="form-control" name="studentname" id="name1" placeholder="Student Name" required/>
  </div>
  <div class="form-group">
    <label for="mobile1">Student Mobile</label>
    <input type="number" class="form-control" name="studentmobile" id="mobile1" placeholder="Student Mobile" required/>
  </div>
  <button type="submit" class="btn btn-primary">Issue Book</button>
</form>
           
        </div> <!-- ./container -->
		
	
		
		</body>
		</html>