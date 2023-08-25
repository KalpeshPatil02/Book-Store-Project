

	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<div class="top-color" style="height: 10px;background-color: #ff80ab"></div>

<div class="container-parent p-3">
	<div class="row">

		<div class="col-md-3">
			<h3>Book-Binders</h3>
		</div>

		<div class="col-md-6">
		<form class="form-inline my-2 my-lg-0">
		<input class="form-control mr-sm-2 w-25" type="search"
		placeholder="search" area-label="search">
		<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
		</form>
		</div>
		
		<div class="col-md-3">
		
		
		<c:if test="${not empty userobj}">
		
		
		<!-- Button trigger modal -->

		
		
		<a href="" class="btn btn-success" >
		<i class="fas fa-user"></i> ${userobj.name}</a>
		</c:if>
		<a href="../register.jsp" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white"><i class="fas fa-sign-in-alt"></i> Logout</a>
		<c:if test="${empty userobj}">
		
		</c:if>
		
		
		
	

	</div>
</div>


<!-- logout popup warning Modal -->



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


<nav class="navbar navbar-expand-lg navbar-dark nvcustom">
	<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
	</div>
</nav>