package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/editbooks")
public class EditBookServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("bname");
			String bookauthor = req.getParameter("author");
			String price =req.getParameter("price");
			String status = req.getParameter("bstatus");
			

			
			
			BookDtls b = new BookDtls();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(bookauthor);
			b.setPrice(price);
			b.setStatus(status);
			
			
			
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			
			boolean f =dao.updateEditBook(b);

			HttpSession session = req.getSession();
			
			if (f) {
				session.setAttribute("succMsg", "Book Updated Successfully..");
				resp.sendRedirect("admin/view_books.jsp");
			}
			else {
				session.setAttribute("failedMsg", "Book Not Updated");
				resp.sendRedirect("admin/view_books.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	

}
