<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You For Purchase From Booky-Binders</title>
<%@include file="components/allcss.jsp"%>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
<hr>

<div class="container text-center mt-3">
<i class="fas fa-check-circle fa-5x text-success"></i>
<h1>Thank You..!!</h1>
<h2>Your Order Successfully..!</h2>
<h5>With in 7 Days Your Product will be Delivered To Your Address</h5>
<a href="index.jsp" class="btn btn-primary mt-3"> Home </a>
<a href="user_order.jsp" class="btn btn-danger mt-3"> View Order </a>
</div>


	<%@ include file="components/footer.jsp"%>
</body>
</html>