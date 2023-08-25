



<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Edit Information Of Books</title>
<%@include file="allcss.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
</head>
<body>

	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp" />
	</c:if>

	<hr>

	<div class="container 50%">
		<div class="row">
			<div class="col-md-6 offset-md-3 w">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Information Of Books</h4>
						<hr>
						
						
						
						
						<% 
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
						BookDtls b= dao.getBookById(id);
						
						%>
						
						<form action="../editbooks" method="post">

<input type="hidden" name="id" value="<%=  b.getBookId()%>">
							<div class="form-group">

								<label for="exampleInputEmail1">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Auther Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Price of Book*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1" value="<%=b.getPrice()%>">
							</div>

						
							<div class="form-group">
								<label for="inputState">Book Status*</label> <select
									name="bstatus" class="form-control">
									
									
									<% if("Active".equals(b.getStatus()))
											{ %>
										<option value="Active">Active</option>
												<option value="Inactive">Inactive</option>
											<% } else{%>
											<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%} %>
								</select>
							</div>


							

							<button type="submit" class="btn btn-primary">Update Book Data</button>


						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>

	<%@include file="footer.jsp"%>

</body>
</html>