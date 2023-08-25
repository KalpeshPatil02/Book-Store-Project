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


	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp" />
	</c:if>
	
	
	<hr>

	<div class="container">

		<div class="row p-5" >
			<div class="col-md-3">
			
			<a href="add_book.jsp">
			
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
			
			
			
			<a href="" data-toggle="modal" data-target="#exampleModalCenter">
			
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
	
	

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Confirmation Credentials Selection</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
             <h4>Do You Want To Logout ?</h4>
             <hr>
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Confirm Logout</a>
        </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


<!-- end Logout Modal -->



	<%@include file="footer.jsp"%>

</body>
</html>