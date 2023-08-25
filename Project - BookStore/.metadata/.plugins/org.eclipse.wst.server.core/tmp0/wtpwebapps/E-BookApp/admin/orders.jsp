<%@page import="com.entity.Book_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
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

<style type="text/css">
.bgt {
	background-color: #ff80ab;
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%><hr>

	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>

	<table class="table table-striped ">
		<thead class="bgt">
			<tr>
				<th scope="col">Order ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>


			<%
		
		BookOrderImpl dao = new BookOrderImpl(DBConnect.getConnection());
		List<Book_order> blist = dao.getAllbook();
		
		for(Book_order b : blist)
		{
		%>
			<tr>
				<th scope="row"><%=b.getOrderId()%></th>
				<td><%=b.getUsername()%></td>
				
					<td><%=b.getEmail()%></td>
						<td><%= b.getFullAdd()%></td>
						<td><%= b.getPhone() %></td>
						<td><%=b.getBookName()%></td>
				<td>@<%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td>@<%=b.getPayment()%></td>
			
			
			</tr>



			<%
				}
				%>




		</tbody>
	</table>

</body>
</html>