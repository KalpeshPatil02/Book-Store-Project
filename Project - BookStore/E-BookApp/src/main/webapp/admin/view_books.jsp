
<%@page import="com.entity.BookDtls"%>
<%@page
	import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Open Books</title>
<%@include file="allcss.jsp"%>

<style type="text/css">
.bgt {
	background-color: #ff80ab;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp" />
	</c:if>
	
		<h2 class="text-center">Hello Admin</h2>
		
		
	<c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>




	<%--<div class="container"> --%>

	<table class="table table-striped ">
		<thead class="bgt">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Book Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Category</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			List<BookDtls> list = dao.getAllBooks();

			for (BookDtls b : list) {
			%>

			<tr>
				<td><%=b.getBookId()%></td>
				<td><img alt="#" src="../Book Images/<%=b.getPhoto()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_book.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary"><i class="far fa-edit"></i> Edit</a> 
				<a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Delete</a></td>
			</tr>


			<%
			}
			%>

		</tbody>
	</table>


</body>
</html>