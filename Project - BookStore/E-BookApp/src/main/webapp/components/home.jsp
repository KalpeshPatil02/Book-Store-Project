<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<h1>Admin : Home</h1>

	<%@include file="navbar.jsp"%>
	<hr>

	<div class="container">

		<div class="row p-5" >
			<div class="col-md-3">
			
			<a href="add_books.jsp">
			
			<div class="card">
			<div class="card-body text-center">
			<i class="fas fa-plus-square fa-3x text-primary"></i>
			<br>
			<h4 class="mt-3">Add Book</h4>--------
			</div>
			</div>
			</a>
			</div>
			
			<div class="col-md-3">
			
			<a href="view_books.jsp">
			
			<div class="card">
			<div class="card-body text-center">
			<i class="fas fa-book fa-3x text-danger"></i>
			<br>
			<h4 class="mt-3">View Books</h4>--------
			</div>
			</div>
			</a>
			</div>
			
			<div class="col-md-3">
			
			<a href="orders.jsp">
			
			<div class="card">
			<div class="card-body text-center">
			<i class="fas fa-box fa-3x text-warning"></i>
			<br>
			<h4 class="mt-3">Orders</h4>--------
			</div>
			</div>
			</a>
			</div>
			
			<div class="col-md-3">
			
			<a href="logout.jsp">
			
			<div class="card">
			<div class="card-body text-center">
			<i class="fas fa-sign-out-alt fa-3x text-primary"></i>
			<br>
			<h4 class="mt-3">Log-Out</h4>--------
			</div>
			</div>
			
			</div>
			</a>
		</div>
		
		
		
		

	</div>



	<%@include file="footer.jsp"%>

</body>
</html>