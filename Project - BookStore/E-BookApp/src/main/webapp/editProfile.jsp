<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile : Booky Binders</title>

<%@ include file="components/allcss.jsp"%>
</head>
<body>

	
	<c:if test="${empty userobj }">
	<c:redirect url="login.jsp" />
	</c:if>
	

	<%@ include file="components/navbar.jsp"%> <hr>


	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">


				<div class="card">
					<div class="card-body">
					
					
					
					
					
					
					
					
					
					<h4 class="text-primary text-center">Edit Profile</h4>
					
					<c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
						


						<form action="update_profile" method="post">
						
						<input type="hidden" value="${userobj.id }" name="id">

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									type="text" class="form-control" id="exampleInputName1"
									aria-describedby="emailHelp" placeholder="Enter Your Name"
									required="required" name="fname" value="${userobj.name }">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Email Address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="xyz@gmail.com" required="required" name="email" value="${userobj.email }">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Phone Number</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									placeholder="+91 XXXXXXXXXX" required="required" name="phone" value="${userobj.phone }">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
						
						
						
						
						
						
						
						
						
						
						
						
						

					</div>
				</div>

			</div>

		</div>
	</div>



	<%@ include file="components/footer.jsp"%>
</body>
</html>