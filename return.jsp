<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.model.*"
    import="com.pojo.*"
   import="java.util.*"
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
      <a class="navbar-brand" href="index.jsp">eLibrary</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="addbookform.jsp">Add Book</a></li>
        <li><a href="ViewBook.jsp">View Book</a></li>
        <li><a href="issuebookform.jsp">Issue Book</a></li>
        <li><a href="ViewIssuedBook.jsp">View Issued Book</a></li>
        <li><a href="returnbookform.jsp">Return Book</a></li>
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
List<EIssuebook>l=bl.getEIssuebook();
session.setAttribute("list1",l);
List<EBook>l1=bl.getEBook();
session.setAttribute("list2",l1);
%>
<div id="colorlib-contact">
		<div class="container">
			<div class="row">								
				<div class="col-md-12 animate-box">
					<div class="row">
						<div class="col-md-6">
<h3><b>Return Book Form</b></h3>
<form action="ReturnBook" method="post" style="width:300px">
  <div class="form-group">
   
<label for="callno1">Callno</label>
   <select class="form-control" name="callno" id="callno1" placeholder="StudentId" required>
  <c:forEach items="${sessionScope.list2}" var="l1">
    <option>${l1.callno}</option>
      </c:forEach>
    </select>
  </div>
  <div class="form-group">
    <label for="studentid1">Student Id</label>
      
    <select class="form-control" name="studentid" id="studentid1" placeholder="StudentId" required>
  <c:forEach items="${sessionScope.list1}" var="l">
    <option>${l.studentid}</option>  </c:forEach>
    </select>
  
  </div>
  <button type="submit" class="btn btn-primary">Return Book</button>
</form></div></div></div></div></div></div>
</body>
</html>