<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Explore : New Books</title>
<%@include file="components/allcss.jsp"%>
<style>
.crd-ho:hover {
	background-color: #f0dada;
}



#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #ff80ab;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}



</style>
</head>
<body>

<%
User u = (User)session.getAttribute("userobj");
%>


<c:if test="${not empty addCart }">

<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<c:remove var="addCart" scope="session"/>

</c:if>



<%@ include file="components/navbar.jsp"%> <hr>


<div class="mb-4"></div><hr>
  <h3 class="text-center mt-3">Recently Updated New Books</h3><hr>
    <div class="container">
  
    
        <div class="row">
              <%
            BookDAOImpl  dao2 = new BookDAOImpl(DBConnect.getConnection());
            List<BookDtls> list2 = dao2.getAllNewBooks();
            for (BookDtls b : list2) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho mb-2">
                    <div class="card-body text-center">
                        <img alt="" src="Book Images/<%=b.getPhoto()%>" style="width: 150px; border: 1px solid; height: 190px;" class="img-thumblin">
                        <hr>
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <%
                        if(b.getBookCategory().equals("Old")) {
                        %>
                        <p> Category : <%= b.getBookCategory() %></p>
                        <div class="row ml-4">
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%= b.getPrice() %> ₹</a>
                        </div>
                        <%
                        } else {
                        %>
                        <p> Category : <%= b.getBookCategory() %></p>
                        <div class="row">
                          
                          
                            <%if(u==null)
                        	{%>
                        	    <a href="login.jsp" class="btn btn-danger btn-sm ml-4"><i class="fas fa-shopping-cart"></i> Add Cart</a>
                        	
                        	<%} else{%>
                        	 <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-4"><i class="fas fa-shopping-cart"></i> Add Cart</a>
                        	<%} %>
                          
                          
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%= b.getPrice() %> ₹</a>
                        </div>
                        
                        <%
                        }
                        %>
                    </div>
                </div>
            </div>
            <%
            }
            %>
      </div>
      </div>

    <br>
    <hr>








<%@ include file="components/footer.jsp"%>
</body>
</html>