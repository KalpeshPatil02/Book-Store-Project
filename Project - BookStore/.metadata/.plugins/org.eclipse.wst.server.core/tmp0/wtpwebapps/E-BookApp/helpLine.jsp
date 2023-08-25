<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Support : Booky Binder's</title>
<%@ include file="components/allcss.jsp"%>
</head>
<body>
	
	<c:if test="${empty userobj }">
	<c:redirect url="login.jsp" />
	</c:if>
	
	<%@ include file="components/navbar.jsp"%>
	<hr>



	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">


			

					<div class="text-success text-center"><i class="fas fa-phone-square-alt fa-7x text-success"></i></div>
					<h3 class="text-center">24x7 Service</h3>
					<h4 class="text-center">Help Line Number</h4>

					<h5 class="text-center">+91 8181818181</h5>
					<hr>
					<div class="text-center"><a href="index.jsp" class="btn btn-primary text center">  Home  </a></div>
					
					
					<hr>
					

				
			</div>
		</div>
	</div>



	<%@ include file="components/footer.jsp"%>

</body>
</html>