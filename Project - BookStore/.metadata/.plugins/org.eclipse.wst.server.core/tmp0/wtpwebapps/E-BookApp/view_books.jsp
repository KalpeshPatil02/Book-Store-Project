<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp"%>
<%@page isELIgnored="false"%>
<meta charset="UTF-8">
<title>Booky-Binders</title>

<style type="text/css">
.btn1 {
	padding: 10px 20px;
	border-radius: 10px;
	width: 50px;
}
</style>
</head>
<body style="background-color: #f0f1f2;">

	<%@include file="components/navbar.jsp"%><hr>
	
	<%
	
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
	BookDtls b = dao.getBookById(bid);
	
	
	
	%>

	<div class="container p-3">
		<div class="row p-5">



			<div class="col-md-6 text-center p-5 border bg-white">
				<img alt="" src="Book Images/<%= b.getPhoto()%>"
							style="width: 150px; border: 1px solid; height: 200px;"
							class="img-thumblin">
				<h4 class="mt-4">
					Book Name : <span class="text-success"><%= b.getBookName() %></span>
				</h4>
				<h4>
					Author Name : <span class="text-success"><%= b.getAuthor() %></span>
				</h4>
				<h4>
					Category : <span class="text-success"><%= b.getBookCategory() %></span>
				</h4>
			</div>



			<div class="col-md-6 text-center p-5 border bg-white">

				<h2 class="mb-3 mt-3">
					Book Name : <span class="text-success"><%= b.getBookName() %></span>
				</h2>
				
				<%
				
				if("Old".equals(b.getBookCategory())){
				%>
				<h5>Contact To Seller : </h5>
				<h5 class="text-primary"><i class="fas fa-envelope"></i> Email : <%=b.getEmail() %></h5>
				
				<%} %>

				<div class="row">

					<div class="col-md-4 text-danger text-center p-2">
						<i class="far fa-money-bill-alt fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-exchange-alt fa-2x"></i>
						<p>Return Available</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-truck-moving fa-2x"></i>
						<p>Free Delivery</p>
					</div>




				</div>
				
				
				<%
				
				if("Old".equals(b.getBookCategory())){
				%>
				
				
				<div class=" text-center p-3">


					<a href="" class="btb btn-success btn1 "><i
						class="fas fa-cart-plus"></i> Continue Shopping</a> <a href="index.jsp"
						class="btb btn-danger btn1"><%=b.getPrice() %> ₹</a>

				</div>
				
				
				
				<%}else{ %>
				
				<div class=" text-center p-3">


					<a href="" class="btb btn-primary btn1"><i
						class="fas fa-cart-plus"></i> Add To Cart</a> <a href=""
						class="btb btn-danger btn1"><%=b.getPrice() %></a>

				</div>
				

				<%} %>
			</div>
		</div>
	</div>



	<%@include file="components/footer.jsp"%>


</body>
</html>