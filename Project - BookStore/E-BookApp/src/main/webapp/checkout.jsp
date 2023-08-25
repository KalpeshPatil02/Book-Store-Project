<%@page import="java.util.List"%>
<%@page import="com.entity.cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart : Booky Binders</title>
<%@include file="components/allcss.jsp"%>
</head>
<body>

	<%@ include file="components/navbar.jsp"%>
	<hr>








	<c:if test="${not empty succMsg }">

		<div class="alert alert-success text-center" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />

	</c:if>





	<c:if test="${not empty failedMsg }">

		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="succMsg" scope="session" />

	</c:if>







	<c:if test="${empty userobj}">

		<c:redirect url="login.jsp"></c:redirect>

	</c:if>


	<div class="container">



		<div class="row p-2">

			<div class="col-md-6">




				<div class="card bg-white">

					<h3 class="text-center text-success">Your Selected Items</h3>

					<div class="card-body">

						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());

								List<cart> list = dao.getBookByUser(u.getId());

								double totalprice = 0;

								for (cart c : list) {
									totalprice += c.getPrice();
								%>
								<tr>
									<th><%=c.getBookName()%></th>
									<td><%=c.getAuthor()%></td>
									<td scope="row"><%=c.getPrice()%></td>
									<td><a
										href="removeBook?cid=<%=c.getCid()%>&&uid=<%=c.getUserId()%>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>
								<%
								}
								%>
								<tr>
									<th scope="row">Total Price :</th>
									<td></td>
									<td></td>
									<td><%=totalprice%></td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>


			</div>







			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Items</h3>
						<form action="order" method="post">

							<input type="hidden" value="${userobj.id }" name="id">



							<div class="form-row">
								<div class="form-group col-md-6">


									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control" id="inputEmail4" value="${userobj.name }"
										name="name">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email"
										class="form-control" id="inputPassword4"
										value="${userobj.email }" name="mail">>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone Number</label> <input
										type="number" class="form-control" id="inputEmail4"
										value="${userobj.phone }" name="phone">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4" placeholder="eg. xyz"
										name="add">>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4" name="landmark">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4"
										placeholder="eg. Hotel Name" name="city">
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text"
										class="form-control" id="inputEmail4"
										placeholder="eg. Maharashtra" name="state">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Zip/Pin Code</label> <input
										type="text" class="form-control" id="inputPassword4"
										placeholder="100-001" name="zip">
								</div>
							</div>



							<div class="form-group">
								<label>Payment</label> <select class="form-control"
									name="payment">
									<option value="noselect">--Select Mode--</option>
									<option value="COD">Cash On Delivery</option>
								</select>

							</div>



							<div class="text-center mt-4">

								<button class="btn btn-warning">Order Now</button>

								<a href="index.jsp" class="btn btn-success"> Continue
									Shopping </a>

							</div>



						</form>

					</div>
				</div>


			</div>

		</div>



	</div>
	</div>









</body>
</html>