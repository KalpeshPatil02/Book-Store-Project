<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Explore : Recent Books</title>
<%@include file="components/allcss.jsp"%>
<style>
.crd-ho:hover {
	background-color: #f0dada;
}
</style>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
<div class="mb-4"></div><hr>
  <h3 class="text-center mt-3">Recently Updated Books</h3><hr>
    <div class="container">
  
    
        <div class="row">
              <%
              User u = (User)session.getAttribute("userobj");
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConnection());
            List<BookDtls> list2 = dao2.getAllRecentBooks();
            for (BookDtls b : list2) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho mb-4">
                    <div class="card-body text-center">
                        <img alt="" src="Book Images/<%=b.getPhoto()%>" style="width: 150px; border: 1px solid; height: 200px;" class="img-thumblin">
                        <hr>
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <%
                        if(b.getBookCategory().equals("Old")) {
                        %>
                        <p> Category : <%= b.getBookCategory() %></p>
                        <div class="row ml-4">
                            <a href="view_books.jsp?bid=<%= b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
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
                            
                            <a href="view_books.jsp?bid=<%= b.getBookId() %>" class="btn btn-success btn-sm ml-1">View</a>
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